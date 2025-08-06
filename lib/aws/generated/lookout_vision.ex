# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutVision do
  @moduledoc """
  This is the Amazon Lookout for Vision API Reference.

  It provides descriptions of actions,
  data types, common parameters, and common errors.

  Amazon Lookout for Vision enables you to find visual defects in industrial
  products,
  accurately and at scale. It uses computer vision to identify missing components
  in an industrial product,
  damage to vehicles or structures, irregularities in production lines, and even
  minuscule defects in
  silicon wafers — or any other physical item where quality is important such as a
  missing capacitor
  on printed circuit boards.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "ProjectDescription" => project_description()
      }

  """
  @type describe_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dataset_entries_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Changes") => binary()
      }

  """
  @type update_dataset_entries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greengrass_output_details() :: %{
        "ComponentName" => String.t() | atom(),
        "ComponentVersion" => String.t() | atom(),
        "ComponentVersionArn" => String.t() | atom()
      }

  """
  @type greengrass_output_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_models_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_models_response() :: %{
        "Models" => list(model_metadata()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Datasets" => list(dataset_metadata()),
        "ProjectArn" => String.t() | atom(),
        "ProjectName" => String.t() | atom()
      }

  """
  @type project_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dataset_entries_response() :: %{
        "Status" => list(any())
      }

  """
  @type update_dataset_entries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{}

  """
  @type delete_dataset_response() :: %{}

  @typedoc """

  ## Example:

      dataset_source() :: %{
        "GroundTruthManifest" => dataset_ground_truth_manifest()
      }

  """
  @type dataset_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ModelArn" => String.t() | atom(),
        "ModelVersion" => String.t() | atom(),
        "Performance" => model_performance(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type model_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pixel_anomaly() :: %{
        "Color" => String.t() | atom(),
        "TotalPercentageArea" => float()
      }

  """
  @type pixel_anomaly() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetType" => String.t() | atom(),
        "ImageStats" => dataset_image_stats(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ProjectName" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type dataset_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      model_packaging_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "JobName" => String.t() | atom(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ModelPackagingConfiguration" => model_packaging_configuration(),
        "ModelPackagingJobDescription" => String.t() | atom(),
        "ModelPackagingMethod" => String.t() | atom(),
        "ModelPackagingOutputDetails" => model_packaging_output_details(),
        "ModelVersion" => String.t() | atom(),
        "ProjectName" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type model_packaging_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_model_packaging_job_request() :: %{}

  """
  @type describe_model_packaging_job_request() :: %{}

  @typedoc """

  ## Example:

      output_s3_object() :: %{
        "Bucket" => String.t() | atom(),
        "Key" => String.t() | atom()
      }

  """
  @type output_s3_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      create_model_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("OutputConfig") => output_config()
      }

  """
  @type create_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_model_request() :: %{}

  """
  @type describe_model_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_model_response() :: %{
        "Status" => list(any())
      }

  """
  @type start_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "ProjectArn" => String.t() | atom(),
        "ProjectName" => String.t() | atom()
      }

  """
  @type project_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_model_response() :: %{
        "ModelDescription" => model_description()
      }

  """
  @type describe_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_anomalies_response() :: %{
        "DetectAnomalyResult" => detect_anomaly_result()
      }

  """
  @type detect_anomalies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "DatasetMetadata" => dataset_metadata()
      }

  """
  @type create_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "ProjectMetadata" => project_metadata()
      }

  """
  @type create_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_model_packaging_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_model_packaging_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any()),
        "ServiceCode" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_image_stats() :: %{
        "Anomaly" => integer(),
        "Labeled" => integer(),
        "Normal" => integer(),
        "Total" => integer()
      }

  """
  @type dataset_image_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_model_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type stop_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "NextToken" => String.t() | atom(),
        "Projects" => list(project_metadata())
      }

  """
  @type list_projects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_entries_request() :: %{
        optional("AfterCreationDate") => non_neg_integer(),
        optional("AnomalyClass") => String.t() | atom(),
        optional("BeforeCreationDate") => non_neg_integer(),
        optional("Labeled") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SourceRefContains") => String.t() | atom()
      }

  """
  @type list_dataset_entries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_model_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("MaxInferenceUnits") => integer(),
        required("MinInferenceUnits") => integer()
      }

  """
  @type start_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "Bucket" => String.t() | atom(),
        "Prefix" => String.t() | atom()
      }

  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_anomaly_result() :: %{
        "Anomalies" => list(anomaly()),
        "AnomalyMask" => binary(),
        "Confidence" => float(),
        "IsAnomalous" => boolean(),
        "Source" => image_source()
      }

  """
  @type detect_anomaly_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_model_response() :: %{
        "ModelMetadata" => model_metadata()
      }

  """
  @type create_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_source() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type image_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_packaging_output_details() :: %{
        "Greengrass" => greengrass_output_details()
      }

  """
  @type model_packaging_output_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_packaging_job_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "JobName" => String.t() | atom(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ModelPackagingJobDescription" => String.t() | atom(),
        "ModelPackagingMethod" => String.t() | atom(),
        "ModelVersion" => String.t() | atom(),
        "ProjectName" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type model_packaging_job_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_model_packaging_jobs_response() :: %{
        "ModelPackagingJobs" => list(model_packaging_job_metadata()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_model_packaging_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_anomalies_request() :: %{
        required("Body") => binary(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type detect_anomalies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_performance() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }

  """
  @type model_performance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_ground_truth_manifest() :: %{
        "S3Object" => input_s3_object()
      }

  """
  @type dataset_ground_truth_manifest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{
        "ProjectArn" => String.t() | atom()
      }

  """
  @type delete_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      anomaly() :: %{
        "Name" => String.t() | atom(),
        "PixelAnomaly" => pixel_anomaly()
      }

  """
  @type anomaly() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_model_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type delete_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_model_packaging_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        required("Configuration") => model_packaging_configuration(),
        required("ModelVersion") => String.t() | atom()
      }

  """
  @type start_model_packaging_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      output_config() :: %{
        "S3Location" => s3_location()
      }

  """
  @type output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "DatasetDescription" => dataset_description()
      }

  """
  @type describe_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
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

      target_platform() :: %{
        "Accelerator" => list(any()),
        "Arch" => list(any()),
        "Os" => list(any())
      }

  """
  @type target_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DatasetSource") => dataset_source(),
        required("DatasetType") => String.t() | atom()
      }

  """
  @type create_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "RetryAfterSeconds" => integer(),
        "ServiceCode" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ProjectName") => String.t() | atom()
      }

  """
  @type create_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_projects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_packaging_configuration() :: %{
        "Greengrass" => greengrass_configuration()
      }

  """
  @type model_packaging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greengrass_configuration() :: %{
        "CompilerOptions" => String.t() | atom(),
        "ComponentDescription" => String.t() | atom(),
        "ComponentName" => String.t() | atom(),
        "ComponentVersion" => String.t() | atom(),
        "S3OutputLocation" => s3_location(),
        "Tags" => list(tag()),
        "TargetDevice" => list(any()),
        "TargetPlatform" => target_platform()
      }

  """
  @type greengrass_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_model_packaging_job_response() :: %{
        "ModelPackagingDescription" => model_packaging_description()
      }

  """
  @type describe_model_packaging_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_model_packaging_job_response() :: %{
        "JobName" => String.t() | atom()
      }

  """
  @type start_model_packaging_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EvaluationEndTimestamp" => non_neg_integer(),
        "EvaluationManifest" => output_s3_object(),
        "EvaluationResult" => output_s3_object(),
        "KmsKeyId" => String.t() | atom(),
        "MaxInferenceUnits" => integer(),
        "MinInferenceUnits" => integer(),
        "ModelArn" => String.t() | atom(),
        "ModelVersion" => String.t() | atom(),
        "OutputConfig" => output_config(),
        "Performance" => model_performance(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type model_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{}

  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type delete_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_model_response() :: %{
        "Status" => list(any())
      }

  """
  @type stop_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type delete_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_model_response() :: %{
        "ModelArn" => String.t() | atom()
      }

  """
  @type delete_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_entries_response() :: %{
        "DatasetEntries" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_dataset_entries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetType" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type dataset_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_s3_object() :: %{
        "Bucket" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type input_s3_object() :: %{(String.t() | atom()) => any()}

  @type create_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_dataset_errors() ::
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

  @type delete_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_model_packaging_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type detect_anomalies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_dataset_entries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_model_packaging_jobs_errors() ::
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
          | resource_not_found_exception()
          | conflict_exception()

  @type list_projects_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_model_packaging_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_model_errors() ::
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
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_dataset_entries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-11-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lookoutvision",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "LookoutVision",
      signature_version: "v4",
      signing_name: "lookoutvision",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new dataset in an Amazon Lookout for Vision project.

  `CreateDataset` can create a
  training or a test dataset from a valid dataset source (`DatasetSource`).

  If you want a single dataset project, specify `train` for the value of
  `DatasetType`.

  To have a project with separate training and test datasets, call `CreateDataset`
  twice.
  On the first call, specify `train` for the value of
  `DatasetType`. On the second call, specify `test` for the value of
  `DatasetType`.

  This operation requires permissions to perform the
  `lookoutvision:CreateDataset` operation.
  """
  @spec create_dataset(map(), String.t() | atom(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Creates a new version of a model within an an Amazon Lookout for Vision project.

  `CreateModel` is an asynchronous operation in which Amazon Lookout for Vision
  trains, tests,
  and evaluates a new version of a model.

  To get the current status, check the `Status` field returned
  in the response from `DescribeModel`.

  If the project has a single dataset, Amazon Lookout for Vision internally splits
  the dataset
  to create a training and a test dataset.
  If the project has a training and a test dataset, Lookout for Vision uses the
  respective datasets to train and test
  the model.

  After training completes, the evaluation metrics are stored at the location
  specified in
  `OutputConfig`.

  This operation requires permissions to perform the
  `lookoutvision:CreateModel` operation. If you want to tag your model, you also
  require
  permission to the `lookoutvision:TagResource` operation.
  """
  @spec create_model(map(), String.t() | atom(), create_model_request(), list()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Creates an empty Amazon Lookout for Vision project.

  After you create the project, add a dataset by calling
  `CreateDataset`.

  This operation requires permissions to perform the
  `lookoutvision:CreateProject` operation.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/2020-11-20/projects"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes an existing Amazon Lookout for Vision `dataset`.

  If your the project has a single
  dataset, you must create a new dataset before you can create a model.

  If you project has a training dataset and a test dataset consider the following.

    *
  If you delete the test dataset, your project reverts to a single dataset
  project. If you then
  train the model, Amazon Lookout for Vision internally splits the remaining
  dataset into a training and test dataset.

    *
  If you delete the training dataset, you must create a training dataset before
  you can create a model.

  This operation requires permissions to perform the
  `lookoutvision:DeleteDataset` operation.
  """
  @spec delete_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_dataset_request(),
          list()
        ) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, dataset_type, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision model.

  You can't delete a running model. To stop a running model,
  use the `StopModel` operation.

  It might take a few seconds to delete a model. To determine if a model has been
  deleted, call
  `ListModels` and check if the version of the model (`ModelVersion`) is in the
  `Models` array.

  This operation requires permissions to perform the
  `lookoutvision:DeleteModel` operation.
  """
  @spec delete_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_model_request(),
          list()
        ) ::
          {:ok, delete_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision project.

  To delete a project, you must first delete each version of the model associated
  with
  the project. To delete a model use the `DeleteModel` operation.

  You also have to delete the dataset(s) associated with the model. For more
  information, see
  `DeleteDataset`. The images referenced by the training and test datasets aren't
  deleted.

  This operation requires permissions to perform the
  `lookoutvision:DeleteProject` operation.
  """
  @spec delete_project(map(), String.t() | atom(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Describe an Amazon Lookout for Vision dataset.

  This operation requires permissions to perform the
  `lookoutvision:DescribeDataset` operation.
  """
  @spec describe_dataset(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a version of an Amazon Lookout for Vision model.

  This operation requires permissions to perform the
  `lookoutvision:DescribeModel` operation.
  """
  @spec describe_model(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_model_errors()}
  def describe_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Amazon Lookout for Vision model packaging job.

  This operation requires permissions to perform the
  `lookoutvision:DescribeModelPackagingJob` operation.

  For more information, see
  *Using your Amazon Lookout for Vision model on an edge device* in the Amazon
  Lookout for Vision Developer Guide.
  """
  @spec describe_model_packaging_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_model_packaging_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_model_packaging_job_errors()}
  def describe_model_packaging_job(%Client{} = client, job_name, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs/#{AWS.Util.encode_uri(job_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Amazon Lookout for Vision project.

  This operation requires permissions to perform the
  `lookoutvision:DescribeProject` operation.
  """
  @spec describe_project(map(), String.t() | atom(), list()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Detects anomalies in an image that you supply.

  The response from `DetectAnomalies` includes a boolean prediction
  that the image contains one or more anomalies and a confidence value for the
  prediction.
  If the model is an image segmentation model, the response also includes
  segmentation
  information for each type of anomaly found in the image.

  Before calling `DetectAnomalies`, you must first start your model with the
  `StartModel` operation.
  You are charged for the amount of time, in minutes, that a model runs and for
  the number of anomaly detection units that your
  model uses. If you are not using a model, use the `StopModel` operation to stop
  your model.

  For more information, see *Detecting anomalies in an image* in the Amazon
  Lookout for Vision developer guide.

  This operation requires permissions to perform the
  `lookoutvision:DetectAnomalies` operation.
  """
  @spec detect_anomalies(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          detect_anomalies_request(),
          list()
        ) ::
          {:ok, detect_anomalies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_anomalies_errors()}
  def detect_anomalies(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/detect"

    {headers, input} =
      [
        {"ContentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
  Lists the JSON Lines within a dataset.

  An Amazon Lookout for Vision JSON Line contains the anomaly
  information for a single image, including the image location and the assigned
  label.

  This operation requires permissions to perform the
  `lookoutvision:ListDatasetEntries` operation.
  """
  @spec list_dataset_entries(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_entries_errors()}
  def list_dataset_entries(
        %Client{} = client,
        dataset_type,
        project_name,
        after_creation_date \\ nil,
        anomaly_class \\ nil,
        before_creation_date \\ nil,
        labeled \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        source_ref_contains \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    headers = []
    query_params = []

    query_params =
      if !is_nil(source_ref_contains) do
        [{"sourceRefContains", source_ref_contains} | query_params]
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

    query_params =
      if !is_nil(labeled) do
        [{"labeled", labeled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(before_creation_date) do
        [{"createdBefore", before_creation_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(anomaly_class) do
        [{"anomalyClass", anomaly_class} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_creation_date) do
        [{"createdAfter", after_creation_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists the model packaging jobs created for an Amazon Lookout for Vision project.

  This operation requires permissions to perform the
  `lookoutvision:ListModelPackagingJobs` operation.

  For more information, see
  *Using your Amazon Lookout for Vision model on an edge device* in the Amazon
  Lookout for Vision Developer Guide.
  """
  @spec list_model_packaging_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_model_packaging_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_model_packaging_jobs_errors()}
  def list_model_packaging_jobs(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"
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
  Lists the versions of a model in an Amazon Lookout for Vision project.

  The `ListModels` operation is eventually consistent.
  Recent calls to `CreateModel` might
  take a while to appear in the response from `ListProjects`.

  This operation requires permissions to perform the
  `lookoutvision:ListModels` operation.
  """
  @spec list_models(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_models_errors()}
  def list_models(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"
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
  Lists the Amazon Lookout for Vision projects in your AWS account that are in the
  AWS Region in
  which you call `ListProjects`.

  The `ListProjects` operation is eventually consistent.
  Recent calls to `CreateProject` and `DeleteProject` might
  take a while to appear in the response from `ListProjects`.

  This operation requires permissions to perform the
  `lookoutvision:ListProjects` operation.
  """
  @spec list_projects(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2020-11-20/projects"
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
  Returns a list of tags attached to the specified Amazon Lookout for Vision
  model.

  This operation requires permissions to perform the
  `lookoutvision:ListTagsForResource` operation.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the running of the version of an Amazon Lookout for Vision model.

  Starting a model takes a while
  to complete. To check the current state of the model, use `DescribeModel`.

  A model is ready to use when its status is `HOSTED`.

  Once the model is running, you can detect custom labels in new images by calling
  `DetectAnomalies`.

  You are charged for the amount of time that the model is running. To stop a
  running
  model, call `StopModel`.

  This operation requires permissions to perform the
  `lookoutvision:StartModel` operation.
  """
  @spec start_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_model_request(),
          list()
        ) ::
          {:ok, start_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_model_errors()}
  def start_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/start"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Starts an Amazon Lookout for Vision model packaging job.

  A model packaging job creates an AWS IoT Greengrass component for
  a Lookout for Vision model. You can use the component to deploy your model to an
  edge device managed by Greengrass.

  Use the `DescribeModelPackagingJob` API to determine the current status of the
  job.

  The model packaging job is complete if the value of `Status` is `SUCCEEDED`.

  To deploy the component
  to the target device, use the component name and component version
  with the AWS IoT Greengrass
  [CreateDeployment](https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html)
  API.

  This operation requires the following permissions:

    *

  `lookoutvision:StartModelPackagingJob`

    *

  `s3:PutObject`

    *

  `s3:GetBucketLocation`

    *

  `kms:GenerateDataKey`

    *

  `greengrass:CreateComponentVersion`

    *

  `greengrass:DescribeComponent`

    *
  (Optional) `greengrass:TagResource`. Only required if you want to tag the
  component.

  For more information, see
  *Using your Amazon Lookout for Vision model on an edge device* in the Amazon
  Lookout for Vision Developer Guide.
  """
  @spec start_model_packaging_job(
          map(),
          String.t() | atom(),
          start_model_packaging_job_request(),
          list()
        ) ::
          {:ok, start_model_packaging_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_model_packaging_job_errors()}
  def start_model_packaging_job(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Stops the hosting of a running model.

  The operation might take a while to complete. To
  check the current status, call `DescribeModel`.

  After the model hosting stops, the `Status` of the model is `TRAINED`.

  This operation requires permissions to perform the
  `lookoutvision:StopModel` operation.
  """
  @spec stop_model(map(), String.t() | atom(), String.t() | atom(), stop_model_request(), list()) ::
          {:ok, stop_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_model_errors()}
  def stop_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/stop"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Adds one or more key-value tags to an Amazon Lookout for Vision model.

  For more information, see *Tagging a model* in the *Amazon Lookout for Vision
  Developer Guide*.

  This operation requires permissions to perform the
  `lookoutvision:TagResource` operation.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tags from an Amazon Lookout for Vision model.

  For more information, see
  *Tagging a model* in the *Amazon Lookout for Vision Developer Guide*.

  This operation requires permissions to perform the
  `lookoutvision:UntagResource` operation.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
  Adds or updates one or more JSON Line entries in a dataset.

  A JSON Line includes information about an image
  used for training or testing an Amazon Lookout for Vision model.

  To update an existing JSON Line, use the `source-ref` field to identify the JSON
  Line. The JSON line
  that you supply replaces the existing JSON line. Any existing annotations that
  are not in the new JSON line are removed from the dataset.

  For more information, see
  *Defining JSON lines for anomaly classification* in the Amazon Lookout for
  Vision Developer Guide.

  The images you reference in the `source-ref` field of a JSON line, must be
  in the same S3 bucket as the existing images in the dataset.

  Updating a dataset might take a while to complete. To check the current status,
  call `DescribeDataset` and
  check the `Status` field in the response.

  This operation requires permissions to perform the
  `lookoutvision:UpdateDatasetEntries` operation.
  """
  @spec update_dataset_entries(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_dataset_entries_request(),
          list()
        ) ::
          {:ok, update_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dataset_entries_errors()}
  def update_dataset_entries(%Client{} = client, dataset_type, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end
end
