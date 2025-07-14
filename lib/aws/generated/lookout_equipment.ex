# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutEquipment do
  @moduledoc """
  Amazon Lookout for Equipment is a machine learning service that uses advanced
  analytics to identify
  anomalies in machines from sensor data for use in predictive maintenance.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_retraining_scheduler_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type delete_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_schedulers_request() :: %{
        optional("InferenceSchedulerNameBeginsWith") => String.t(),
        optional("MaxResults") => integer(),
        optional("ModelName") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_inference_schedulers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_active_model_version_request() :: %{
        required("ModelName") => String.t(),
        required("ModelVersion") => float()
      }
      
  """
  @type update_active_model_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_input_name_configuration() :: %{
        "ComponentTimestampDelimiter" => String.t(),
        "TimestampFormat" => String.t()
      }
      
  """
  @type inference_input_name_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_request() :: %{
        optional("DatasetNameBeginsWith") => String.t(),
        optional("MaxResults") => integer(),
        optional("ModelNameBeginsWith") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_response() :: %{
        "ModelSummaries" => list(model_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labels_response() :: %{
        "LabelSummaries" => list(label_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_labels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_label_group_response() :: %{
        "LabelGroupArn" => String.t(),
        "LabelGroupName" => String.t()
      }
      
  """
  @type create_label_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      count_percent() :: %{
        "Count" => integer(),
        "Percentage" => float()
      }
      
  """
  @type count_percent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      inference_output_configuration() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputConfiguration" => inference_s3_output_configuration()
      }
      
  """
  @type inference_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monotonic_values() :: %{
        "Monotonicity" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type monotonic_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingestion_input_configuration() :: %{
        "S3InputConfiguration" => ingestion_s3_input_configuration()
      }
      
  """
  @type ingestion_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_label_request() :: %{
        optional("Equipment") => String.t(),
        optional("FaultCode") => String.t(),
        optional("Notes") => String.t(),
        required("ClientToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("LabelGroupName") => String.t(),
        required("Rating") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type create_label_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_summary() :: %{
        "ActiveModelVersion" => float(),
        "ActiveModelVersionArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "LatestScheduledRetrainingModelVersion" => float(),
        "LatestScheduledRetrainingStartTime" => non_neg_integer(),
        "LatestScheduledRetrainingStatus" => list(any()),
        "ModelArn" => String.t(),
        "ModelDiagnosticsOutputConfiguration" => model_diagnostics_output_configuration(),
        "ModelName" => String.t(),
        "ModelQuality" => list(any()),
        "NextScheduledRetrainingStartDate" => non_neg_integer(),
        "RetrainingSchedulerStatus" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retraining_scheduler_summary() :: %{
        "LookbackWindow" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "RetrainingFrequency" => String.t(),
        "RetrainingStartDate" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type retraining_scheduler_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_timestamps() :: %{
        "TotalNumberOfDuplicateTimestamps" => integer()
      }
      
  """
  @type duplicate_timestamps() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multiple_operating_modes() :: %{
        "Status" => list(any())
      }
      
  """
  @type multiple_operating_modes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_executions_response() :: %{
        "InferenceExecutionSummaries" => list(inference_execution_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_scheduler_request() :: %{
        optional("DataDelayOffsetInMinutes") => float(),
        optional("ServerSideKmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("DataInputConfiguration") => inference_input_configuration(),
        required("DataOutputConfiguration") => inference_output_configuration(),
        required("DataUploadFrequency") => list(any()),
        required("InferenceSchedulerName") => String.t(),
        required("ModelName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_schema() :: %{
        "InlineDataSchema" => String.t()
      }
      
  """
  @type dataset_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("DatasetNameBeginsWith") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_request() :: %{
        optional("DataPreProcessingConfiguration") => data_pre_processing_configuration(),
        optional("DatasetSchema") => dataset_schema(),
        optional("EvaluationDataEndTime") => non_neg_integer(),
        optional("EvaluationDataStartTime") => non_neg_integer(),
        optional("LabelsInputConfiguration") => labels_input_configuration(),
        optional("ModelDiagnosticsOutputConfiguration") => model_diagnostics_output_configuration(),
        optional("OffCondition") => String.t(),
        optional("RoleArn") => String.t(),
        optional("ServerSideKmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        optional("TrainingDataEndTime") => non_neg_integer(),
        optional("TrainingDataStartTime") => non_neg_integer(),
        required("ClientToken") => String.t(),
        required("DatasetName") => String.t(),
        required("ModelName") => String.t()
      }
      
  """
  @type create_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_request() :: %{
        optional("LabelsInputConfiguration") => labels_input_configuration(),
        optional("ModelDiagnosticsOutputConfiguration") => model_diagnostics_output_configuration(),
        optional("RoleArn") => String.t(),
        required("ModelName") => String.t()
      }
      
  """
  @type update_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_scheduler_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataDelayOffsetInMinutes" => float(),
        "DataInputConfiguration" => inference_input_configuration(),
        "DataOutputConfiguration" => inference_output_configuration(),
        "DataUploadFrequency" => list(any()),
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "LatestInferenceResult" => list(any()),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "RoleArn" => String.t(),
        "ServerSideKmsKeyId" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type describe_inference_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_timestamps() :: %{
        "TotalNumberOfUnsupportedTimestamps" => integer()
      }
      
  """
  @type unsupported_timestamps() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type describe_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_versions_response() :: %{
        "ModelVersionSummaries" => list(model_version_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_label_response() :: %{
        "LabelId" => String.t()
      }
      
  """
  @type create_label_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_ingestion_job_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataEndTime" => non_neg_integer(),
        "DataQualitySummary" => data_quality_summary(),
        "DataStartTime" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "FailedReason" => String.t(),
        "IngestedDataSize" => float(),
        "IngestedFilesSummary" => ingested_files_summary(),
        "IngestionInputConfiguration" => ingestion_input_configuration(),
        "JobId" => String.t(),
        "RoleArn" => String.t(),
        "SourceDatasetArn" => String.t(),
        "Status" => list(any()),
        "StatusDetail" => String.t()
      }
      
  """
  @type describe_data_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingestion_s3_input_configuration() :: %{
        "Bucket" => String.t(),
        "KeyPattern" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type ingestion_s3_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_inference_scheduler_response() :: %{
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type stop_inference_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_event_summary() :: %{
        "Diagnostics" => String.t(),
        "EventDurationInSeconds" => float(),
        "EventEndTime" => non_neg_integer(),
        "EventStartTime" => non_neg_integer(),
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t()
      }
      
  """
  @type inference_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_response() :: %{
        "Status" => list(any()),
        "SourceModelVersionArn" => String.t(),
        "EvaluationDataStartTime" => non_neg_integer(),
        "PreviousActiveModelVersion" => float(),
        "ModelQuality" => list(any()),
        "PreviousActiveModelVersionArn" => String.t(),
        "ModelVersionActivatedAt" => non_neg_integer(),
        "TrainingDataStartTime" => non_neg_integer(),
        "ModelDiagnosticsOutputConfiguration" => model_diagnostics_output_configuration(),
        "ActiveModelVersion" => float(),
        "ModelArn" => String.t(),
        "EvaluationDataEndTime" => non_neg_integer(),
        "CreatedAt" => non_neg_integer(),
        "LatestScheduledRetrainingFailedReason" => String.t(),
        "TrainingExecutionEndTime" => non_neg_integer(),
        "PreviousModelVersionActivatedAt" => non_neg_integer(),
        "PriorModelMetrics" => String.t(),
        "DatasetArn" => String.t(),
        "Schema" => String.t(),
        "TrainingExecutionStartTime" => non_neg_integer(),
        "ImportJobEndTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "LatestScheduledRetrainingStartTime" => non_neg_integer(),
        "DatasetName" => String.t(),
        "DataPreProcessingConfiguration" => data_pre_processing_configuration(),
        "AccumulatedInferenceDataStartTime" => non_neg_integer(),
        "LatestScheduledRetrainingModelVersion" => float(),
        "ActiveModelVersionArn" => String.t(),
        "LatestScheduledRetrainingAvailableDataInDays" => integer(),
        "ImportJobStartTime" => non_neg_integer(),
        "ModelMetrics" => String.t(),
        "RetrainingSchedulerStatus" => list(any()),
        "FailedReason" => String.t(),
        "LabelsInputConfiguration" => labels_input_configuration(),
        "LatestScheduledRetrainingStatus" => list(any()),
        "NextScheduledRetrainingStartDate" => non_neg_integer(),
        "RoleArn" => String.t(),
        "OffCondition" => String.t(),
        "TrainingDataEndTime" => non_neg_integer(),
        "AccumulatedInferenceDataEndTime" => non_neg_integer(),
        "ServerSideKmsKeyId" => String.t(),
        "ModelName" => String.t()
      }
      
  """
  @type describe_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_executions_request() :: %{
        optional("DataEndTimeBefore") => non_neg_integer(),
        optional("DataStartTimeAfter") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any()),
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type list_inference_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labels_input_configuration() :: %{
        "LabelGroupName" => String.t(),
        "S3InputConfiguration" => labels_s3_input_configuration()
      }
      
  """
  @type labels_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_label_request() :: %{
        required("LabelGroupName") => String.t(),
        required("LabelId") => String.t()
      }
      
  """
  @type describe_label_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_retraining_scheduler_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type stop_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_label_group_request() :: %{
        optional("FaultCodes") => list(String.t()),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("LabelGroupName") => String.t()
      }
      
  """
  @type create_label_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensors_with_short_date_range() :: %{
        "AffectedSensorCount" => integer()
      }
      
  """
  @type sensors_with_short_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type dataset_summary() :: %{String.t() => any()}

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
      
      start_retraining_scheduler_response() :: %{
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type start_retraining_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_label_request() :: %{
        required("LabelGroupName") => String.t(),
        required("LabelId") => String.t()
      }
      
  """
  @type delete_label_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retraining_scheduler_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type describe_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_label_groups_response() :: %{
        "LabelGroupSummaries" => list(label_group_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_label_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_inference_scheduler_request() :: %{
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type stop_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_scheduler_summary() :: %{
        "DataDelayOffsetInMinutes" => float(),
        "DataUploadFrequency" => list(any()),
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "LatestInferenceResult" => list(any()),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type inference_scheduler_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_ingestion_jobs_request() :: %{
        optional("DatasetName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_data_ingestion_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_retraining_schedulers_request() :: %{
        optional("MaxResults") => integer(),
        optional("ModelNameBeginsWith") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_retraining_schedulers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labels_request() :: %{
        optional("Equipment") => String.t(),
        optional("FaultCode") => String.t(),
        optional("IntervalEndTime") => non_neg_integer(),
        optional("IntervalStartTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LabelGroupName") => String.t()
      }
      
  """
  @type list_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_ingestion_job_response() :: %{
        "JobId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type start_data_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_events_response() :: %{
        "InferenceEventSummaries" => list(inference_event_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_label_group_request() :: %{
        required("LabelGroupName") => String.t()
      }
      
  """
  @type describe_label_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_retraining_scheduler_request() :: %{
        optional("PromoteMode") => list(any()),
        optional("RetrainingStartDate") => non_neg_integer(),
        required("ClientToken") => String.t(),
        required("LookbackWindow") => String.t(),
        required("ModelName") => String.t(),
        required("RetrainingFrequency") => String.t()
      }
      
  """
  @type create_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_diagnostics_output_configuration() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputConfiguration" => model_diagnostics_s3_output_configuration()
      }
      
  """
  @type model_diagnostics_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_diagnostics_s3_output_configuration() :: %{
        "Bucket" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type model_diagnostics_s3_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_s3_input_configuration() :: %{
        "Bucket" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type inference_s3_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_response() :: %{
        "ModelArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type create_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_active_model_version_response() :: %{
        "CurrentActiveVersion" => float(),
        "CurrentActiveVersionArn" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "PreviousActiveVersion" => float(),
        "PreviousActiveVersionArn" => String.t()
      }
      
  """
  @type update_active_model_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_label_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "Equipment" => String.t(),
        "FaultCode" => String.t(),
        "LabelGroupArn" => String.t(),
        "LabelGroupName" => String.t(),
        "LabelId" => String.t(),
        "Notes" => String.t(),
        "Rating" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type describe_label_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_ingestion_job_request() :: %{
        required("ClientToken") => String.t(),
        required("DatasetName") => String.t(),
        required("IngestionInputConfiguration") => ingestion_input_configuration(),
        required("RoleArn") => String.t()
      }
      
  """
  @type start_data_ingestion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_ingestion_jobs_response() :: %{
        "DataIngestionJobSummaries" => list(data_ingestion_job_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_data_ingestion_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_label_group_request() :: %{
        required("LabelGroupName") => String.t()
      }
      
  """
  @type delete_label_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_model_version_request() :: %{
        optional("InferenceDataImportStrategy") => list(any()),
        optional("LabelsInputConfiguration") => labels_input_configuration(),
        optional("ModelName") => String.t(),
        optional("RoleArn") => String.t(),
        optional("ServerSideKmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("DatasetName") => String.t(),
        required("SourceModelVersionArn") => String.t()
      }
      
  """
  @type import_model_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_retraining_schedulers_response() :: %{
        "NextToken" => String.t(),
        "RetrainingSchedulerSummaries" => list(retraining_scheduler_summary())
      }
      
  """
  @type list_retraining_schedulers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_inference_scheduler_response() :: %{
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type start_inference_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_model_version_response() :: %{
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "ModelVersion" => float(),
        "ModelVersionArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type import_model_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type delete_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sensor_statistics_request() :: %{
        optional("IngestionJobId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DatasetName") => String.t()
      }
      
  """
  @type list_sensor_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_input_configuration() :: %{
        "InferenceInputNameConfiguration" => inference_input_name_configuration(),
        "InputTimeZoneOffset" => String.t(),
        "S3InputConfiguration" => inference_s3_input_configuration()
      }
      
  """
  @type inference_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_ingestion_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_data_ingestion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_complete_sensor_data() :: %{
        "AffectedSensorCount" => integer()
      }
      
  """
  @type missing_complete_sensor_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensor_statistics_summary() :: %{
        "CategoricalValues" => categorical_values(),
        "ComponentName" => String.t(),
        "DataEndTime" => non_neg_integer(),
        "DataExists" => boolean(),
        "DataStartTime" => non_neg_integer(),
        "DuplicateTimestamps" => count_percent(),
        "InvalidDateEntries" => count_percent(),
        "InvalidValues" => count_percent(),
        "LargeTimestampGaps" => large_timestamp_gaps(),
        "MissingValues" => count_percent(),
        "MonotonicValues" => monotonic_values(),
        "MultipleOperatingModes" => multiple_operating_modes(),
        "SensorName" => String.t()
      }
      
  """
  @type sensor_statistics_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("ClientToken") => String.t(),
        required("ResourceArn") => String.t(),
        required("ResourcePolicy") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_scheduler_request() :: %{
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type describe_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingested_files_summary() :: %{
        "DiscardedFiles" => list(s3_object()),
        "IngestedNumberOfFiles" => integer(),
        "TotalNumberOfFiles" => integer()
      }
      
  """
  @type ingested_files_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      data_ingestion_job_summary() :: %{
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "IngestionInputConfiguration" => ingestion_input_configuration(),
        "JobId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type data_ingestion_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InferenceSchedulerName") => String.t(),
        required("IntervalEndTime") => non_neg_integer(),
        required("IntervalStartTime") => non_neg_integer()
      }
      
  """
  @type list_inference_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_label_group_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "FaultCodes" => list(String.t()),
        "LabelGroupArn" => String.t(),
        "LabelGroupName" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type describe_label_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_quality_summary() :: %{
        "DuplicateTimestamps" => duplicate_timestamps(),
        "InsufficientSensorData" => insufficient_sensor_data(),
        "InvalidSensorData" => invalid_sensor_data(),
        "MissingSensorData" => missing_sensor_data(),
        "UnsupportedTimestamps" => unsupported_timestamps()
      }
      
  """
  @type data_quality_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_version_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "ModelQuality" => list(any()),
        "ModelVersion" => float(),
        "ModelVersionArn" => String.t(),
        "SourceType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type model_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_version_response() :: %{
        "Status" => list(any()),
        "SourceType" => list(any()),
        "SourceModelVersionArn" => String.t(),
        "EvaluationDataStartTime" => non_neg_integer(),
        "ModelQuality" => list(any()),
        "TrainingDataStartTime" => non_neg_integer(),
        "ModelDiagnosticsOutputConfiguration" => model_diagnostics_output_configuration(),
        "ModelArn" => String.t(),
        "EvaluationDataEndTime" => non_neg_integer(),
        "CreatedAt" => non_neg_integer(),
        "TrainingExecutionEndTime" => non_neg_integer(),
        "PriorModelMetrics" => String.t(),
        "DatasetArn" => String.t(),
        "Schema" => String.t(),
        "TrainingExecutionStartTime" => non_neg_integer(),
        "RetrainingAvailableDataInDays" => integer(),
        "ModelDiagnosticsResultsObject" => s3_object(),
        "ImportJobEndTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "DatasetName" => String.t(),
        "ModelVersion" => float(),
        "DataPreProcessingConfiguration" => data_pre_processing_configuration(),
        "AutoPromotionResultReason" => String.t(),
        "ImportedDataSizeInBytes" => float(),
        "ImportJobStartTime" => non_neg_integer(),
        "ModelMetrics" => String.t(),
        "AutoPromotionResult" => list(any()),
        "FailedReason" => String.t(),
        "LabelsInputConfiguration" => labels_input_configuration(),
        "ModelVersionArn" => String.t(),
        "RoleArn" => String.t(),
        "OffCondition" => String.t(),
        "TrainingDataEndTime" => non_neg_integer(),
        "ServerSideKmsKeyId" => String.t(),
        "ModelName" => String.t()
      }
      
  """
  @type describe_model_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_sensor_data() :: %{
        "AffectedSensorCount" => integer(),
        "TotalNumberOfInvalidValues" => integer()
      }
      
  """
  @type invalid_sensor_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataEndTime" => non_neg_integer(),
        "DataQualitySummary" => data_quality_summary(),
        "DataStartTime" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "IngestedFilesSummary" => ingested_files_summary(),
        "IngestionInputConfiguration" => ingestion_input_configuration(),
        "LastUpdatedAt" => non_neg_integer(),
        "RoleArn" => String.t(),
        "Schema" => String.t(),
        "ServerSideKmsKeyId" => String.t(),
        "SourceDatasetArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sensor_statistics_response() :: %{
        "NextToken" => String.t(),
        "SensorStatisticsSummaries" => list(sensor_statistics_summary())
      }
      
  """
  @type list_sensor_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_label_groups_request() :: %{
        optional("LabelGroupNameBeginsWith") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_label_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_retraining_scheduler_response() :: %{
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type create_retraining_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("DatasetSchema") => dataset_schema(),
        optional("ServerSideKmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("DatasetName") => String.t()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_inference_scheduler_request() :: %{
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type start_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_version_request() :: %{
        required("ModelName") => String.t(),
        required("ModelVersion") => float()
      }
      
  """
  @type describe_model_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_pre_processing_configuration() :: %{
        "TargetSamplingRate" => list(any())
      }
      
  """
  @type data_pre_processing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "PolicyRevisionId" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type describe_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_group_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "LabelGroupArn" => String.t(),
        "LabelGroupName" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type label_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      large_timestamp_gaps() :: %{
        "MaxTimestampGapInDays" => integer(),
        "NumberOfLargeTimestampGaps" => integer(),
        "Status" => list(any())
      }
      
  """
  @type large_timestamp_gaps() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_sensor_data() :: %{
        "MissingCompleteSensorData" => missing_complete_sensor_data(),
        "SensorsWithShortDateRange" => sensors_with_short_date_range()
      }
      
  """
  @type insufficient_sensor_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retraining_scheduler_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "LookbackWindow" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "PromoteMode" => list(any()),
        "RetrainingFrequency" => String.t(),
        "RetrainingStartDate" => non_neg_integer(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type describe_retraining_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_label_group_request() :: %{
        optional("FaultCodes") => list(String.t()),
        required("LabelGroupName") => String.t()
      }
      
  """
  @type update_label_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "PolicyRevisionId" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_values() :: %{
        "NumberOfCategory" => integer(),
        "Status" => list(any())
      }
      
  """
  @type categorical_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_s3_output_configuration() :: %{
        "Bucket" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type inference_s3_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_dataset_request() :: %{
        optional("DatasetName") => String.t(),
        optional("ServerSideKmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("SourceDatasetArn") => String.t()
      }
      
  """
  @type import_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inference_scheduler_request() :: %{
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type delete_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_scheduler_request() :: %{
        optional("DataDelayOffsetInMinutes") => float(),
        optional("DataInputConfiguration") => inference_input_configuration(),
        optional("DataOutputConfiguration") => inference_output_configuration(),
        optional("DataUploadFrequency") => list(any()),
        optional("RoleArn") => String.t(),
        required("InferenceSchedulerName") => String.t()
      }
      
  """
  @type update_inference_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetName") => String.t()
      }
      
  """
  @type describe_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        required("DatasetName") => String.t()
      }
      
  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "DatasetSummaries" => list(dataset_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_execution_summary() :: %{
        "CustomerResultObject" => s3_object(),
        "DataEndTime" => non_neg_integer(),
        "DataInputConfiguration" => inference_input_configuration(),
        "DataOutputConfiguration" => inference_output_configuration(),
        "DataStartTime" => non_neg_integer(),
        "FailedReason" => String.t(),
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "ModelVersion" => float(),
        "ModelVersionArn" => String.t(),
        "ScheduledStartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type inference_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labels_s3_input_configuration() :: %{
        "Bucket" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type labels_s3_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_retraining_scheduler_request() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type start_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_retraining_scheduler_response() :: %{
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type stop_retraining_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_schedulers_response() :: %{
        "InferenceSchedulerSummaries" => list(inference_scheduler_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_schedulers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_dataset_response() :: %{
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "JobId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type import_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_scheduler_response() :: %{
        "InferenceSchedulerArn" => String.t(),
        "InferenceSchedulerName" => String.t(),
        "ModelQuality" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type create_inference_scheduler_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "Equipment" => String.t(),
        "FaultCode" => String.t(),
        "LabelGroupArn" => String.t(),
        "LabelGroupName" => String.t(),
        "LabelId" => String.t(),
        "Rating" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type label_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_retraining_scheduler_request() :: %{
        optional("LookbackWindow") => String.t(),
        optional("PromoteMode") => list(any()),
        optional("RetrainingFrequency") => String.t(),
        optional("RetrainingStartDate") => non_neg_integer(),
        required("ModelName") => String.t()
      }
      
  """
  @type update_retraining_scheduler_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_sensor_data() :: %{
        "AffectedSensorCount" => integer(),
        "TotalNumberOfMissingValues" => integer()
      }
      
  """
  @type missing_sensor_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type describe_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_versions_request() :: %{
        optional("CreatedAtEndTime") => non_neg_integer(),
        optional("CreatedAtStartTime") => non_neg_integer(),
        optional("MaxModelVersion") => float(),
        optional("MaxResults") => integer(),
        optional("MinModelVersion") => float(),
        optional("NextToken") => String.t(),
        optional("SourceType") => list(any()),
        optional("Status") => list(any()),
        required("ModelName") => String.t()
      }
      
  """
  @type list_model_versions_request() :: %{String.t() => any()}

  @type create_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_label_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_label_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_label_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_label_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_data_ingestion_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_label_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_label_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type import_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_ingestion_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_datasets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_inference_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_inference_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_inference_schedulers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_label_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_labels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_model_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_retraining_schedulers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sensor_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_data_ingestion_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_active_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_inference_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_label_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_retraining_scheduler_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-12-15",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "lookoutequipment",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "LookoutEquipment",
      signature_version: "v4",
      signing_name: "lookoutequipment",
      target_prefix: "AWSLookoutEquipmentFrontendService"
    }
  end

  @doc """
  Creates a container for a collection of data being ingested for analysis.

  The dataset
  contains the metadata describing where the data is and what the data actually
  looks like.
  For example, it contains the location of the data source, the data schema, and
  other
  information. A dataset also contains any tags associated with the ingested data.
  """
  @spec create_dataset(map(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a scheduled inference.

  Scheduling an inference is setting up a continuous
  real-time inference plan to analyze new measurement data. When setting up the
  schedule, you
  provide an S3 bucket location for the input data, assign it a delimiter between
  separate
  entries in the data, set an offset delay if desired, and set the frequency of
  inferencing.
  You must also provide an S3 bucket location for the output data.
  """
  @spec create_inference_scheduler(map(), create_inference_scheduler_request(), list()) ::
          {:ok, create_inference_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_inference_scheduler_errors()}
  def create_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInferenceScheduler", input, options)
  end

  @doc """
  Creates a label for an event.
  """
  @spec create_label(map(), create_label_request(), list()) ::
          {:ok, create_label_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_label_errors()}
  def create_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLabel", input, options)
  end

  @doc """
  Creates a group of labels.
  """
  @spec create_label_group(map(), create_label_group_request(), list()) ::
          {:ok, create_label_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_label_group_errors()}
  def create_label_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLabelGroup", input, options)
  end

  @doc """
  Creates a machine learning model for data inference.

  A machine-learning (ML) model is a mathematical model that finds patterns in
  your data.
  In Amazon Lookout for Equipment, the model learns the patterns of normal
  behavior and detects abnormal
  behavior that could be potential equipment failure (or maintenance events). The
  models are
  made by analyzing normal data and abnormalities in machine behavior that have
  already
  occurred.

  Your model is trained using a portion of the data from your dataset and uses
  that data
  to learn patterns of normal behavior and abnormal patterns that lead to
  equipment failure.
  Another portion of the data is used to evaluate the model's accuracy.
  """
  @spec create_model(map(), create_model_request(), list()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateModel", input, options)
  end

  @doc """
  Creates a retraining scheduler on the specified model.
  """
  @spec create_retraining_scheduler(map(), create_retraining_scheduler_request(), list()) ::
          {:ok, create_retraining_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_retraining_scheduler_errors()}
  def create_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRetrainingScheduler", input, options)
  end

  @doc """
  Deletes a dataset and associated artifacts.

  The operation will check to see if any
  inference scheduler or data ingestion job is currently using the dataset, and if
  there
  isn't, the dataset, its metadata, and any associated data stored in S3 will be
  deleted.
  This does not affect any models that used this dataset for training and
  evaluation, but
  does prevent it from being used in the future.
  """
  @spec delete_dataset(map(), delete_dataset_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes an inference scheduler that has been set up.

  Prior inference results will not be
  deleted.
  """
  @spec delete_inference_scheduler(map(), delete_inference_scheduler_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_inference_scheduler_errors()}
  def delete_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInferenceScheduler", input, options)
  end

  @doc """
  Deletes a label.
  """
  @spec delete_label(map(), delete_label_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_label_errors()}
  def delete_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLabel", input, options)
  end

  @doc """
  Deletes a group of labels.
  """
  @spec delete_label_group(map(), delete_label_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_label_group_errors()}
  def delete_label_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLabelGroup", input, options)
  end

  @doc """
  Deletes a machine learning model currently available for Amazon Lookout for
  Equipment.

  This will prevent it
  from being used with an inference scheduler, even one that is already set up.
  """
  @spec delete_model(map(), delete_model_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteModel", input, options)
  end

  @doc """
  Deletes the resource policy attached to the resource.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a retraining scheduler from a model.

  The retraining scheduler must be in the
  `STOPPED` status.
  """
  @spec delete_retraining_scheduler(map(), delete_retraining_scheduler_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_retraining_scheduler_errors()}
  def delete_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRetrainingScheduler", input, options)
  end

  @doc """
  Provides information on a specific data ingestion job such as creation time,
  dataset
  ARN, and status.
  """
  @spec describe_data_ingestion_job(map(), describe_data_ingestion_job_request(), list()) ::
          {:ok, describe_data_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_ingestion_job_errors()}
  def describe_data_ingestion_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataIngestionJob", input, options)
  end

  @doc """
  Provides a JSON description of the data in each time series dataset, including
  names,
  column names, and data types.
  """
  @spec describe_dataset(map(), describe_dataset_request(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Specifies information about the inference scheduler being used, including name,
  model,
  status, and associated metadata
  """
  @spec describe_inference_scheduler(map(), describe_inference_scheduler_request(), list()) ::
          {:ok, describe_inference_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_inference_scheduler_errors()}
  def describe_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInferenceScheduler", input, options)
  end

  @doc """
  Returns the name of the label.
  """
  @spec describe_label(map(), describe_label_request(), list()) ::
          {:ok, describe_label_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_label_errors()}
  def describe_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLabel", input, options)
  end

  @doc """
  Returns information about the label group.
  """
  @spec describe_label_group(map(), describe_label_group_request(), list()) ::
          {:ok, describe_label_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_label_group_errors()}
  def describe_label_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLabelGroup", input, options)
  end

  @doc """
  Provides a JSON containing the overall information about a specific machine
  learning
  model, including model name and ARN, dataset, training and evaluation
  information, status,
  and so on.
  """
  @spec describe_model(map(), describe_model_request(), list()) ::
          {:ok, describe_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_model_errors()}
  def describe_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeModel", input, options)
  end

  @doc """
  Retrieves information about a specific machine learning model version.
  """
  @spec describe_model_version(map(), describe_model_version_request(), list()) ::
          {:ok, describe_model_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_model_version_errors()}
  def describe_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeModelVersion", input, options)
  end

  @doc """
  Provides the details of a resource policy attached to a resource.
  """
  @spec describe_resource_policy(map(), describe_resource_policy_request(), list()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Provides a description of the retraining scheduler, including information such
  as the
  model name and retraining parameters.
  """
  @spec describe_retraining_scheduler(map(), describe_retraining_scheduler_request(), list()) ::
          {:ok, describe_retraining_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_retraining_scheduler_errors()}
  def describe_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRetrainingScheduler", input, options)
  end

  @doc """
  Imports a dataset.
  """
  @spec import_dataset(map(), import_dataset_request(), list()) ::
          {:ok, import_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_dataset_errors()}
  def import_dataset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportDataset", input, options)
  end

  @doc """
  Imports a model that has been trained successfully.
  """
  @spec import_model_version(map(), import_model_version_request(), list()) ::
          {:ok, import_model_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_model_version_errors()}
  def import_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportModelVersion", input, options)
  end

  @doc """
  Provides a list of all data ingestion jobs, including dataset name and ARN, S3
  location
  of the input data, status, and so on.
  """
  @spec list_data_ingestion_jobs(map(), list_data_ingestion_jobs_request(), list()) ::
          {:ok, list_data_ingestion_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_ingestion_jobs_errors()}
  def list_data_ingestion_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDataIngestionJobs", input, options)
  end

  @doc """
  Lists all datasets currently available in your account, filtering on the dataset
  name.
  """
  @spec list_datasets(map(), list_datasets_request(), list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Lists all inference events that have been found for the specified inference
  scheduler.
  """
  @spec list_inference_events(map(), list_inference_events_request(), list()) ::
          {:ok, list_inference_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_inference_events_errors()}
  def list_inference_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInferenceEvents", input, options)
  end

  @doc """
  Lists all inference executions that have been performed by the specified
  inference
  scheduler.
  """
  @spec list_inference_executions(map(), list_inference_executions_request(), list()) ::
          {:ok, list_inference_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_inference_executions_errors()}
  def list_inference_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInferenceExecutions", input, options)
  end

  @doc """
  Retrieves a list of all inference schedulers currently available for your
  account.
  """
  @spec list_inference_schedulers(map(), list_inference_schedulers_request(), list()) ::
          {:ok, list_inference_schedulers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_inference_schedulers_errors()}
  def list_inference_schedulers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInferenceSchedulers", input, options)
  end

  @doc """
  Returns a list of the label groups.
  """
  @spec list_label_groups(map(), list_label_groups_request(), list()) ::
          {:ok, list_label_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_label_groups_errors()}
  def list_label_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLabelGroups", input, options)
  end

  @doc """
  Provides a list of labels.
  """
  @spec list_labels(map(), list_labels_request(), list()) ::
          {:ok, list_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_labels_errors()}
  def list_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLabels", input, options)
  end

  @doc """
  Generates a list of all model versions for a given model, including the model
  version,
  model version ARN, and status.

  To list a subset of versions, use the
  `MaxModelVersion` and `MinModelVersion` fields.
  """
  @spec list_model_versions(map(), list_model_versions_request(), list()) ::
          {:ok, list_model_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_model_versions_errors()}
  def list_model_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListModelVersions", input, options)
  end

  @doc """
  Generates a list of all models in the account, including model name and ARN,
  dataset,
  and status.
  """
  @spec list_models(map(), list_models_request(), list()) ::
          {:ok, list_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_models_errors()}
  def list_models(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListModels", input, options)
  end

  @doc """
  Lists all retraining schedulers in your account, filtering by model name prefix
  and
  status.
  """
  @spec list_retraining_schedulers(map(), list_retraining_schedulers_request(), list()) ::
          {:ok, list_retraining_schedulers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_retraining_schedulers_errors()}
  def list_retraining_schedulers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRetrainingSchedulers", input, options)
  end

  @doc """
  Lists statistics about the data collected for each of the sensors that have been
  successfully ingested in the particular dataset.

  Can also be used to retreive Sensor
  Statistics for a previous ingestion job.
  """
  @spec list_sensor_statistics(map(), list_sensor_statistics_request(), list()) ::
          {:ok, list_sensor_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sensor_statistics_errors()}
  def list_sensor_statistics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSensorStatistics", input, options)
  end

  @doc """
  Lists all the tags for a specified resource, including key and value.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates a resource control policy for a given resource.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Starts a data ingestion job.

  Amazon Lookout for Equipment returns the job status.
  """
  @spec start_data_ingestion_job(map(), start_data_ingestion_job_request(), list()) ::
          {:ok, start_data_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_data_ingestion_job_errors()}
  def start_data_ingestion_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDataIngestionJob", input, options)
  end

  @doc """
  Starts an inference scheduler.
  """
  @spec start_inference_scheduler(map(), start_inference_scheduler_request(), list()) ::
          {:ok, start_inference_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_inference_scheduler_errors()}
  def start_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartInferenceScheduler", input, options)
  end

  @doc """
  Starts a retraining scheduler.
  """
  @spec start_retraining_scheduler(map(), start_retraining_scheduler_request(), list()) ::
          {:ok, start_retraining_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_retraining_scheduler_errors()}
  def start_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartRetrainingScheduler", input, options)
  end

  @doc """
  Stops an inference scheduler.
  """
  @spec stop_inference_scheduler(map(), stop_inference_scheduler_request(), list()) ::
          {:ok, stop_inference_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_inference_scheduler_errors()}
  def stop_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopInferenceScheduler", input, options)
  end

  @doc """
  Stops a retraining scheduler.
  """
  @spec stop_retraining_scheduler(map(), stop_retraining_scheduler_request(), list()) ::
          {:ok, stop_retraining_scheduler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_retraining_scheduler_errors()}
  def stop_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopRetrainingScheduler", input, options)
  end

  @doc """
  Associates a given tag to a resource in your account.

  A tag is a key-value pair which
  can be added to an Amazon Lookout for Equipment resource as metadata. Tags can
  be used for organizing your
  resources as well as helping you to search and filter by tag. Multiple tags can
  be added to
  a resource, either when you create it, or later. Up to 50 tags can be associated
  with each
  resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a specific tag from a given resource.

  The tag is specified by its key.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Sets the active model version for a given machine learning model.
  """
  @spec update_active_model_version(map(), update_active_model_version_request(), list()) ::
          {:ok, update_active_model_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_active_model_version_errors()}
  def update_active_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateActiveModelVersion", input, options)
  end

  @doc """
  Updates an inference scheduler.
  """
  @spec update_inference_scheduler(map(), update_inference_scheduler_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_inference_scheduler_errors()}
  def update_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateInferenceScheduler", input, options)
  end

  @doc """
  Updates the label group.
  """
  @spec update_label_group(map(), update_label_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_label_group_errors()}
  def update_label_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLabelGroup", input, options)
  end

  @doc """
  Updates a model in the account.
  """
  @spec update_model(map(), update_model_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateModel", input, options)
  end

  @doc """
  Updates a retraining scheduler.
  """
  @spec update_retraining_scheduler(map(), update_retraining_scheduler_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_retraining_scheduler_errors()}
  def update_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRetrainingScheduler", input, options)
  end
end
