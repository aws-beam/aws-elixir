# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Comprehend do
  @moduledoc """
  Amazon Comprehend is an Amazon Web Services service for gaining insight into the
  content of documents.

  Use these actions to determine the topics contained in your documents, the
  topics they
  discuss, the predominant sentiment expressed in them, the predominant language
  used, and
  more.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      flywheel_iteration_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer()
      }
      
  """
  @type flywheel_iteration_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_detail() :: %{
        "Reason" => list(any())
      }
      
  """
  @type invalid_request_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_document_classifier_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Mode") => list(any()),
        optional("ModelKmsKeyId") => String.t() | atom(),
        optional("ModelPolicy") => String.t() | atom(),
        optional("OutputDataConfig") => document_classifier_output_data_config(),
        optional("Tags") => list(tag()),
        optional("VersionName") => String.t() | atom(),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DocumentClassifierName") => String.t() | atom(),
        required("InputDataConfig") => document_classifier_input_data_config(),
        required("LanguageCode") => list(any())
      }
      
  """
  @type create_document_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_events_detection_job_response() :: %{
        "EventsDetectionJobProperties" => events_detection_job_properties()
      }
      
  """
  @type describe_events_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_flywheel_request() :: %{
        optional("ActiveModelArn") => String.t() | atom(),
        optional("DataAccessRoleArn") => String.t() | atom(),
        optional("DataSecurityConfig") => update_data_security_config(),
        required("FlywheelArn") => String.t() | atom()
      }
      
  """
  @type update_flywheel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contains_pii_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type contains_pii_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizers_response() :: %{
        "EntityRecognizerPropertiesList" => list(entity_recognizer_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_entity_recognizers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_flywheel_iteration_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("FlywheelArn") => String.t() | atom()
      }
      
  """
  @type start_flywheel_iteration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pii_entities_detection_jobs_request() :: %{
        optional("Filter") => pii_entities_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_pii_entities_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_output_data_config() :: %{
        "FlywheelStatsS3Prefix" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type document_classifier_output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_training_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t() | atom()
      }
      
  """
  @type stop_training_document_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dominant_language_detection_job_response() :: %{
        "DominantLanguageDetectionJobProperties" => dominant_language_detection_job_properties()
      }
      
  """
  @type describe_dominant_language_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_targeted_sentiment_detection_job_response() :: %{
        "TargetedSentimentDetectionJobProperties" => targeted_sentiment_detection_job_properties()
      }
      
  """
  @type describe_targeted_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_input_data_config() :: %{
        "AugmentedManifests" => list(augmented_manifests_list_item()),
        "DataFormat" => list(any()),
        "DocumentReaderConfig" => document_reader_config(),
        "DocumentType" => list(any()),
        "Documents" => document_classifier_documents(),
        "LabelDelimiter" => String.t() | atom(),
        "S3Uri" => String.t() | atom(),
        "TestS3Uri" => String.t() | atom()
      }
      
  """
  @type document_classifier_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_dominant_language_item_result())
      }
      
  """
  @type batch_detect_dominant_language_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_events_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config(),
        required("TargetEventTypes") => list(String.t() | atom())
      }
      
  """
  @type start_events_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_document_classifier_input_data_config() :: %{
        "LabelDelimiter" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type dataset_document_classifier_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_response() :: %{
        "DesiredModelArn" => String.t() | atom()
      }
      
  """
  @type update_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      classifier_metadata() :: %{
        "EvaluationMetrics" => classifier_evaluation_metrics(),
        "NumberOfLabels" => integer(),
        "NumberOfTestDocuments" => integer(),
        "NumberOfTrainedDocuments" => integer()
      }
      
  """
  @type classifier_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_summary() :: %{
        "LatestVersionCreatedAt" => non_neg_integer(),
        "LatestVersionName" => String.t() | atom(),
        "LatestVersionStatus" => list(any()),
        "NumberOfVersions" => integer(),
        "RecognizerName" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_item_result() :: %{
        "Index" => integer(),
        "Languages" => list(dominant_language())
      }
      
  """
  @type batch_detect_dominant_language_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      events_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "TargetEventTypes" => list(String.t() | atom())
      }
      
  """
  @type events_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "DocumentReaderConfig" => document_reader_config(),
        "InputFormat" => list(any()),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_topics_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_topics_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      geometry() :: %{
        "BoundingBox" => bounding_box(),
        "Polygon" => list(point())
      }
      
  """
  @type geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_classification_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("DocumentClassifierArn") => String.t() | atom(),
        optional("FlywheelArn") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_document_classification_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_flywheel_iteration_history_response() :: %{
        "FlywheelIterationPropertiesList" => list(flywheel_iteration_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_flywheel_iteration_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "BeginOffset" => integer(),
        "BlockReferences" => list(block_reference()),
        "EndOffset" => integer(),
        "Score" => float(),
        "Text" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_phrases_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type key_phrases_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sentiment_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type sentiment_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_model_response() :: %{
        "ModelArn" => String.t() | atom()
      }
      
  """
  @type import_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t() | atom()
      }
      
  """
  @type delete_entity_recognizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_security_config() :: %{
        "DataLakeKmsKeyId" => String.t() | atom(),
        "ModelKmsKeyId" => String.t() | atom(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type data_security_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_properties() :: %{
        "ClassifierMetadata" => classifier_metadata(),
        "DataAccessRoleArn" => String.t() | atom(),
        "DocumentClassifierArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "FlywheelArn" => String.t() | atom(),
        "InputDataConfig" => document_classifier_input_data_config(),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "Mode" => list(any()),
        "ModelKmsKeyId" => String.t() | atom(),
        "OutputDataConfig" => document_classifier_output_data_config(),
        "SourceModelArn" => String.t() | atom(),
        "Status" => list(any()),
        "SubmitTime" => non_neg_integer(),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingStartTime" => non_neg_integer(),
        "VersionName" => String.t() | atom(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type document_classifier_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_flywheels_response() :: %{
        "FlywheelSummaryList" => list(flywheel_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_flywheels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_augmented_manifests_list_item() :: %{
        "AnnotationDataS3Uri" => String.t() | atom(),
        "AttributeNames" => list(String.t() | atom()),
        "DocumentType" => list(any()),
        "S3Uri" => String.t() | atom(),
        "SourceDocumentsS3Uri" => String.t() | atom()
      }
      
  """
  @type dataset_augmented_manifests_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      classify_document_request() :: %{
        optional("Bytes") => binary(),
        optional("DocumentReaderConfig") => document_reader_config(),
        optional("Text") => String.t() | atom(),
        required("EndpointArn") => String.t() | atom()
      }
      
  """
  @type classify_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_item_result() :: %{
        "Index" => integer(),
        "SyntaxTokens" => list(syntax_token())
      }
      
  """
  @type batch_detect_syntax_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_reader_config() :: %{
        "DocumentReadAction" => list(any()),
        "DocumentReadMode" => list(any()),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type document_reader_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classifier_summaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_document_classifier_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("DataAccessRoleArn") => String.t() | atom(),
        optional("FlywheelArn") => String.t() | atom(),
        optional("ModelArn") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("DesiredInferenceUnits") => integer(),
        required("EndpointName") => String.t() | atom()
      }
      
  """
  @type create_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("Filter") => dataset_filter(),
        optional("FlywheelArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_datasets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_key_phrases_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_key_phrases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_flywheels_request() :: %{
        optional("Filter") => flywheel_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_flywheels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entity_recognizer_response() :: %{
        "EntityRecognizerProperties" => entity_recognizer_properties()
      }
      
  """
  @type describe_entity_recognizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contains_pii_entities_response() :: %{
        "Labels" => list(entity_label())
      }
      
  """
  @type contains_pii_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_training_entity_recognizer_response() :: %{}
      
  """
  @type stop_training_entity_recognizer_response() :: %{}

  @typedoc """

  ## Example:
      
      augmented_manifests_list_item() :: %{
        "AnnotationDataS3Uri" => String.t() | atom(),
        "AttributeNames" => list(String.t() | atom()),
        "DocumentType" => list(any()),
        "S3Uri" => String.t() | atom(),
        "SourceDocumentsS3Uri" => String.t() | atom(),
        "Split" => list(any())
      }
      
  """
  @type augmented_manifests_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      part_of_speech_tag() :: %{
        "Score" => float(),
        "Tag" => list(any())
      }
      
  """
  @type part_of_speech_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_request() :: %{
        optional("DesiredDataAccessRoleArn") => String.t() | atom(),
        optional("DesiredInferenceUnits") => integer(),
        optional("DesiredModelArn") => String.t() | atom(),
        optional("FlywheelArn") => String.t() | atom(),
        required("EndpointArn") => String.t() | atom()
      }
      
  """
  @type update_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_sentiment_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_pii_entities_response() :: %{
        "Entities" => list(pii_entity())
      }
      
  """
  @type detect_pii_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_events_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_events_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_sentiment_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_topics_detection_job_response() :: %{
        "TopicsDetectionJobProperties" => topics_detection_job_properties()
      }
      
  """
  @type describe_topics_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizers_request() :: %{
        optional("Filter") => entity_recognizer_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_entity_recognizers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_syntax_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_filter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_documents() :: %{
        "InputFormat" => list(any()),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type dataset_entity_recognizer_documents() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "EntityRecognizerArn" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom(),
        "InputDataConfig" => entity_recognizer_input_data_config(),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "ModelKmsKeyId" => String.t() | atom(),
        "OutputDataConfig" => entity_recognizer_output_data_config(),
        "RecognizerMetadata" => entity_recognizer_metadata(),
        "SourceModelArn" => String.t() | atom(),
        "Status" => list(any()),
        "SubmitTime" => non_neg_integer(),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingStartTime" => non_neg_integer(),
        "VersionName" => String.t() | atom(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type entity_recognizer_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tag_keys_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_tag_keys_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_config() :: %{
        "DocumentClassificationConfig" => document_classification_config(),
        "EntityRecognitionConfig" => entity_recognition_config(),
        "LanguageCode" => list(any())
      }
      
  """
  @type task_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_evaluation_metrics() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type entity_recognizer_evaluation_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_entity_recognizer_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("ModelKmsKeyId") => String.t() | atom(),
        optional("ModelPolicy") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VersionName") => String.t() | atom(),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => entity_recognizer_input_data_config(),
        required("LanguageCode") => list(any()),
        required("RecognizerName") => String.t() | atom()
      }
      
  """
  @type create_entity_recognizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_targeted_sentiment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("EntityRecognizerArn") => String.t() | atom(),
        optional("FlywheelArn") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_document_classification_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_document_classification_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_entity_recognizer_response() :: %{}
      
  """
  @type delete_entity_recognizer_response() :: %{}

  @typedoc """

  ## Example:
      
      classifier_evaluation_metrics() :: %{
        "Accuracy" => float(),
        "F1Score" => float(),
        "HammingLoss" => float(),
        "MicroF1Score" => float(),
        "MicroPrecision" => float(),
        "MicroRecall" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type classifier_evaluation_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      topics_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "NumberOfTopics" => integer(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type topics_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_sentiment_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_input_data_config() :: %{
        "Annotations" => entity_recognizer_annotations(),
        "AugmentedManifests" => list(augmented_manifests_list_item()),
        "DataFormat" => list(any()),
        "Documents" => entity_recognizer_documents(),
        "EntityList" => entity_recognizer_entity_list(),
        "EntityTypes" => list(entity_types_list_item())
      }
      
  """
  @type entity_recognizer_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_syntax_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_syntax_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      syntax_token() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "PartOfSpeech" => part_of_speech_tag(),
        "Text" => String.t() | atom(),
        "TokenId" => integer()
      }
      
  """
  @type syntax_token() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_pii_entities_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_pii_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flywheel_summary() :: %{
        "ActiveModelArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DataLakeS3Uri" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestFlywheelIteration" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "ModelType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type flywheel_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_entities_response() :: %{
        "Blocks" => list(block()),
        "DocumentMetadata" => document_metadata(),
        "DocumentType" => list(document_type_list_item()),
        "Entities" => list(entity()),
        "Errors" => list(errors_list_item())
      }
      
  """
  @type detect_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_label() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type entity_label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      point() :: %{
        "X" => float(),
        "Y" => float()
      }
      
  """
  @type point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classifier_summaries_response() :: %{
        "DocumentClassifierSummariesList" => list(document_classifier_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_document_classifier_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_sentiment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sentiment_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t() | atom()
      }
      
  """
  @type create_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classification_jobs_response() :: %{
        "DocumentClassificationJobPropertiesList" => list(document_classification_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_document_classification_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_phrase() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "Score" => float(),
        "Text" => String.t() | atom()
      }
      
  """
  @type key_phrase() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_jobs_request() :: %{
        optional("Filter") => entities_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_entities_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pii_entities_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type pii_entities_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_topics_detection_jobs_request() :: %{
        optional("Filter") => topics_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_topics_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_entity_list() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_entity_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_targeted_sentiment_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_targeted_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t() | atom()
      }
      
  """
  @type delete_document_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sentiment_score() :: %{
        "Mixed" => float(),
        "Negative" => float(),
        "Neutral" => float(),
        "Positive" => float()
      }
      
  """
  @type sentiment_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_iteration_request() :: %{
        required("FlywheelArn") => String.t() | atom(),
        required("FlywheelIterationId") => String.t() | atom()
      }
      
  """
  @type describe_flywheel_iteration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_annotations() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type dataset_entity_recognizer_annotations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_entities_request() :: %{
        optional("Bytes") => binary(),
        optional("DocumentReaderConfig") => document_reader_config(),
        optional("EndpointArn") => String.t() | atom(),
        optional("LanguageCode") => list(any()),
        optional("Text") => String.t() | atom()
      }
      
  """
  @type detect_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      block_reference() :: %{
        "BeginOffset" => integer(),
        "BlockId" => String.t() | atom(),
        "ChildBlocks" => list(child_block()),
        "EndOffset" => integer()
      }
      
  """
  @type block_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sentiment_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_flywheel_iteration_history_request() :: %{
        optional("Filter") => flywheel_iteration_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("FlywheelArn") => String.t() | atom()
      }
      
  """
  @type list_flywheel_iteration_history_request() :: %{(String.t() | atom()) => any()}

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
      
      relationships_list_item() :: %{
        "Ids" => list(String.t() | atom()),
        "Type" => list(any())
      }
      
  """
  @type relationships_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_filter() :: %{
        "DocumentClassifierName" => String.t() | atom(),
        "Status" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type document_classifier_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Detail" => invalid_request_detail(),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_iteration_response() :: %{
        "FlywheelIterationProperties" => flywheel_iteration_properties()
      }
      
  """
  @type describe_flywheel_iteration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_response() :: %{}
      
  """
  @type delete_endpoint_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_key_phrases_item_result())
      }
      
  """
  @type batch_detect_key_phrases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_pii_entities_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_pii_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sentiment_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type sentiment_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mention_sentiment() :: %{
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type mention_sentiment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_response() :: %{
        "EndpointPropertiesList" => list(endpoint_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_input_data_config() :: %{
        "AugmentedManifests" => list(dataset_augmented_manifests_list_item()),
        "DataFormat" => list(any()),
        "DocumentClassifierInputDataConfig" => dataset_document_classifier_input_data_config(),
        "EntityRecognizerInputDataConfig" => dataset_entity_recognizer_input_data_config()
      }
      
  """
  @type dataset_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_document_classifier_response() :: %{
        "DocumentClassifierProperties" => document_classifier_properties()
      }
      
  """
  @type describe_document_classifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dominant_language() :: %{
        "LanguageCode" => String.t() | atom(),
        "Score" => float()
      }
      
  """
  @type dominant_language() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "ModelArn" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type endpoint_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_dominant_language_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_dominant_language_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_events_detection_jobs_response() :: %{
        "EventsDetectionJobPropertiesList" => list(events_detection_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_events_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sentiment_detection_jobs_request() :: %{
        optional("Filter") => sentiment_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_sentiment_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_size_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type batch_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_document_classifier_response() :: %{
        "DocumentClassifierArn" => String.t() | atom()
      }
      
  """
  @type create_document_classifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pii_output_data_config() :: %{
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type pii_output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_label() :: %{
        "Name" => String.t() | atom(),
        "Page" => integer(),
        "Score" => float()
      }
      
  """
  @type document_label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_sentiment_item_result())
      }
      
  """
  @type batch_detect_sentiment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classifiers_response() :: %{
        "DocumentClassifierPropertiesList" => list(document_classifier_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_document_classifiers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_pii_entities_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_pii_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "Subnets" => list(String.t() | atom())
      }
      
  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_mention() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "GroupScore" => float(),
        "MentionSentiment" => mention_sentiment(),
        "Score" => float(),
        "Text" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type targeted_sentiment_mention() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_security_config() :: %{
        "ModelKmsKeyId" => String.t() | atom(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type update_data_security_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_request() :: %{
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_dominant_language_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_targeted_sentiment_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_targeted_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_request() :: %{
        required("EndpointArn") => String.t() | atom()
      }
      
  """
  @type describe_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      errors_list_item() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom(),
        "Page" => integer()
      }
      
  """
  @type errors_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_entity_recognizer_response() :: %{
        "EntityRecognizerArn" => String.t() | atom()
      }
      
  """
  @type create_entity_recognizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      text_segment() :: %{
        "Text" => String.t() | atom()
      }
      
  """
  @type text_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_document_classification_job_response() :: %{
        "DocumentClassificationJobProperties" => document_classification_job_properties()
      }
      
  """
  @type describe_document_classification_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_syntax_response() :: %{
        "SyntaxTokens" => list(syntax_token())
      }
      
  """
  @type detect_syntax_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_key_phrases_response() :: %{
        "KeyPhrases" => list(key_phrase())
      }
      
  """
  @type detect_key_phrases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_key_phrases_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_key_phrases_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_dominant_language_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_dominant_language_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArn" => String.t() | atom(),
        "DatasetName" => String.t() | atom(),
        "DatasetS3Uri" => String.t() | atom(),
        "DatasetType" => list(any()),
        "Description" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "NumberOfDocuments" => float(),
        "Status" => list(any())
      }
      
  """
  @type dataset_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_flywheel_request() :: %{
        optional("ActiveModelArn") => String.t() | atom(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("DataSecurityConfig") => data_security_config(),
        optional("ModelType") => list(any()),
        optional("Tags") => list(tag()),
        optional("TaskConfig") => task_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DataLakeS3Uri") => String.t() | atom(),
        required("FlywheelName") => String.t() | atom()
      }
      
  """
  @type create_flywheel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_documents() :: %{
        "InputFormat" => list(any()),
        "S3Uri" => String.t() | atom(),
        "TestS3Uri" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_documents() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_training_document_classifier_response() :: %{}
      
  """
  @type stop_training_document_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_dominant_language_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_dominant_language_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_toxic_content_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextSegments") => list(text_segment())
      }
      
  """
  @type detect_toxic_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_targeted_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_targeted_sentiment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_filter() :: %{
        "RecognizerName" => String.t() | atom(),
        "Status" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type entity_recognizer_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_flywheel_response() :: %{}
      
  """
  @type delete_flywheel_response() :: %{}

  @typedoc """

  ## Example:
      
      dominant_language_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type dominant_language_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t() | atom()
      }
      
  """
  @type describe_entity_recognizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dominant_language_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_dominant_language_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_summary() :: %{
        "DocumentClassifierName" => String.t() | atom(),
        "LatestVersionCreatedAt" => non_neg_integer(),
        "LatestVersionName" => String.t() | atom(),
        "LatestVersionStatus" => list(any()),
        "NumberOfVersions" => integer()
      }
      
  """
  @type document_classifier_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sentiment_detection_jobs_response() :: %{
        "NextToken" => String.t() | atom(),
        "SentimentDetectionJobPropertiesList" => list(sentiment_detection_job_properties())
      }
      
  """
  @type list_sentiment_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_item_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "Index" => integer()
      }
      
  """
  @type batch_item_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_topics_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_topics_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_response() :: %{
        "FlywheelProperties" => flywheel_properties()
      }
      
  """
  @type describe_flywheel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_jobs_response() :: %{
        "EntitiesDetectionJobPropertiesList" => list(entities_detection_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_entities_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redaction_config() :: %{
        "MaskCharacter" => String.t() | atom(),
        "MaskMode" => list(any()),
        "PiiEntityTypes" => list(list(any())())
      }
      
  """
  @type redaction_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_entity() :: %{
        "DescriptiveMentionIndex" => list(integer()),
        "Mentions" => list(targeted_sentiment_mention())
      }
      
  """
  @type targeted_sentiment_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entities_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "EntityRecognizerArn" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type entities_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_training_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t() | atom()
      }
      
  """
  @type stop_training_entity_recognizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pii_entity() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "Score" => float(),
        "Type" => list(any())
      }
      
  """
  @type pii_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizer_summaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_entity_recognizer_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      warnings_list_item() :: %{
        "Page" => integer(),
        "WarnCode" => list(any()),
        "WarnMessage" => String.t() | atom()
      }
      
  """
  @type warnings_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_sentiment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classifier_documents() :: %{
        "S3Uri" => String.t() | atom(),
        "TestS3Uri" => String.t() | atom()
      }
      
  """
  @type document_classifier_documents() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_targeted_sentiment_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_targeted_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_targeted_sentiment_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_targeted_sentiment_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_type_list_item() :: %{
        "Page" => integer(),
        "Type" => list(any())
      }
      
  """
  @type document_type_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bounding_box() :: %{
        "Height" => float(),
        "Left" => float(),
        "Top" => float(),
        "Width" => float()
      }
      
  """
  @type bounding_box() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_dominant_language_response() :: %{
        "Languages" => list(dominant_language())
      }
      
  """
  @type detect_dominant_language_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_request() :: %{
        optional("Filter") => endpoint_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type targeted_sentiment_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "CurrentInferenceUnits" => integer(),
        "DataAccessRoleArn" => String.t() | atom(),
        "DesiredDataAccessRoleArn" => String.t() | atom(),
        "DesiredInferenceUnits" => integer(),
        "DesiredModelArn" => String.t() | atom(),
        "EndpointArn" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "ModelArn" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type endpoint_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_request() :: %{
        required("EndpointArn") => String.t() | atom()
      }
      
  """
  @type delete_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_item_result() :: %{
        "Index" => integer(),
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type batch_detect_sentiment_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom(),
        required("ResourcePolicy") => String.t() | atom()
      }
      
  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classification_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type document_classification_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t() | atom()
      }
      
  """
  @type describe_document_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognition_config() :: %{
        "EntityTypes" => list(entity_types_list_item())
      }
      
  """
  @type entity_recognition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      text_size_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type text_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_key_phrases_detection_job_response() :: %{
        "KeyPhrasesDetectionJobProperties" => key_phrases_detection_job_properties()
      }
      
  """
  @type describe_key_phrases_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_key_phrases_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_key_phrases_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_response() :: %{
        "EndpointProperties" => endpoint_properties()
      }
      
  """
  @type describe_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_job_response() :: %{
        "EntityRecognizerArn" => String.t() | atom(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_metadata_entity_types_list_item() :: %{
        "EvaluationMetrics" => entity_types_evaluation_metrics(),
        "NumberOfTrainMentions" => integer(),
        "Type" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_metadata_entity_types_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      entity_recognizer_annotations() :: %{
        "S3Uri" => String.t() | atom(),
        "TestS3Uri" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_annotations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_phrases_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type key_phrases_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_flywheel_response() :: %{
        "ActiveModelArn" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom()
      }
      
  """
  @type create_flywheel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pii_entities_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "Mode" => list(any()),
        "OutputDataConfig" => pii_output_data_config(),
        "RedactionConfig" => redaction_config(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type pii_entities_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_key_phrases_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_key_phrases_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_language_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_language_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "DatasetProperties" => dataset_properties()
      }
      
  """
  @type describe_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_metadata() :: %{
        "EntityTypes" => list(entity_recognizer_metadata_entity_types_list_item()),
        "EvaluationMetrics" => entity_recognizer_evaluation_metrics(),
        "NumberOfTestDocuments" => integer(),
        "NumberOfTrainedDocuments" => integer()
      }
      
  """
  @type entity_recognizer_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_document_classifier_response() :: %{}
      
  """
  @type delete_document_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      flywheel_iteration_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "EvaluatedModelArn" => String.t() | atom(),
        "EvaluatedModelMetrics" => flywheel_model_evaluation_metrics(),
        "EvaluationManifestS3Prefix" => String.t() | atom(),
        "FlywheelArn" => String.t() | atom(),
        "FlywheelIterationId" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Status" => list(any()),
        "TrainedModelArn" => String.t() | atom(),
        "TrainedModelMetrics" => flywheel_model_evaluation_metrics()
      }
      
  """
  @type flywheel_iteration_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_key_phrases_detection_jobs_request() :: %{
        optional("Filter") => key_phrases_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_key_phrases_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_item_result() :: %{
        "Index" => integer(),
        "KeyPhrases" => list(key_phrase())
      }
      
  """
  @type batch_detect_key_phrases_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("DatasetType") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("DatasetName") => String.t() | atom(),
        required("FlywheelArn") => String.t() | atom(),
        required("InputDataConfig") => dataset_input_data_config()
      }
      
  """
  @type create_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_dominant_language_request() :: %{
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_dominant_language_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_metadata() :: %{
        "ExtractedCharacters" => list(extracted_characters_list_item()),
        "Pages" => integer()
      }
      
  """
  @type document_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_flywheel_response() :: %{
        "FlywheelProperties" => flywheel_properties()
      }
      
  """
  @type update_flywheel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classification_jobs_request() :: %{
        optional("Filter") => document_classification_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_document_classification_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_key_phrases_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_key_phrases_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_pii_entities_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_pii_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_targeted_sentiment_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_targeted_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_pii_entities_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("RedactionConfig") => redaction_config(),
        optional("Tags") => list(tag()),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("Mode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_pii_entities_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_pii_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t() | atom()
      }
      
  """
  @type detect_pii_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_events_detection_job_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type stop_events_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      topics_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type topics_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "PolicyRevisionId" => String.t() | atom(),
        "ResourcePolicy" => String.t() | atom()
      }
      
  """
  @type describe_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_job_response() :: %{
        "EntitiesDetectionJobProperties" => entities_detection_job_properties()
      }
      
  """
  @type describe_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_topics_detection_jobs_response() :: %{
        "NextToken" => String.t() | atom(),
        "TopicsDetectionJobPropertiesList" => list(topics_detection_job_properties())
      }
      
  """
  @type list_topics_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_item_result() :: %{
        "Entities" => list(targeted_sentiment_entity()),
        "Index" => integer()
      }
      
  """
  @type batch_detect_targeted_sentiment_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_targeted_sentiment_detection_jobs_response() :: %{
        "NextToken" => String.t() | atom(),
        "TargetedSentimentDetectionJobPropertiesList" => list(targeted_sentiment_detection_job_properties())
      }
      
  """
  @type list_targeted_sentiment_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      toxic_content() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type toxic_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_events_detection_jobs_request() :: %{
        optional("Filter") => events_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_events_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_targeted_sentiment_detection_jobs_request() :: %{
        optional("Filter") => targeted_sentiment_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_targeted_sentiment_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "PolicyRevisionId" => String.t() | atom()
      }
      
  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dominant_language_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type dominant_language_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_sentiment_response() :: %{
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type detect_sentiment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t() | atom())
      }
      
  """
  @type batch_detect_key_phrases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_pii_entities_detection_job_response() :: %{
        "PiiEntitiesDetectionJobProperties" => pii_entities_detection_job_properties()
      }
      
  """
  @type describe_pii_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_item_result() :: %{
        "Entities" => list(entity()),
        "Index" => integer()
      }
      
  """
  @type batch_detect_entities_item_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      toxic_labels() :: %{
        "Labels" => list(toxic_content()),
        "Toxicity" => float()
      }
      
  """
  @type toxic_labels() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_targeted_sentiment_response() :: %{
        "Entities" => list(targeted_sentiment_entity())
      }
      
  """
  @type detect_targeted_sentiment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_types_list_item() :: %{
        "Type" => String.t() | atom()
      }
      
  """
  @type entity_types_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type job_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_key_phrases_detection_jobs_response() :: %{
        "KeyPhrasesDetectionJobPropertiesList" => list(key_phrases_detection_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_key_phrases_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flywheel_model_evaluation_metrics() :: %{
        "AverageAccuracy" => float(),
        "AverageF1Score" => float(),
        "AveragePrecision" => float(),
        "AverageRecall" => float()
      }
      
  """
  @type flywheel_model_evaluation_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_flywheel_iteration_response() :: %{
        "FlywheelArn" => String.t() | atom(),
        "FlywheelIterationId" => String.t() | atom()
      }
      
  """
  @type start_flywheel_iteration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_targeted_sentiment_item_result())
      }
      
  """
  @type batch_detect_targeted_sentiment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetArn") => String.t() | atom()
      }
      
  """
  @type describe_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_classification_job_response() :: %{
        "DocumentClassifierArn" => String.t() | atom(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_document_classification_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "DatasetPropertiesList" => list(dataset_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_datasets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_response() :: %{
        "EndpointArn" => String.t() | atom(),
        "ModelArn" => String.t() | atom()
      }
      
  """
  @type create_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      events_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type events_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flywheel_properties() :: %{
        "ActiveModelArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DataAccessRoleArn" => String.t() | atom(),
        "DataLakeS3Uri" => String.t() | atom(),
        "DataSecurityConfig" => data_security_config(),
        "FlywheelArn" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestFlywheelIteration" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "ModelType" => list(any()),
        "Status" => list(any()),
        "TaskConfig" => task_config()
      }
      
  """
  @type flywheel_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_toxic_content_response() :: %{
        "ResultList" => list(toxic_labels())
      }
      
  """
  @type detect_toxic_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_dominant_language_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_dominant_language_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_key_phrases_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_key_phrases_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_sentiment_detection_job_response() :: %{
        "SentimentDetectionJobProperties" => sentiment_detection_job_properties()
      }
      
  """
  @type describe_sentiment_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      block() :: %{
        "BlockType" => list(any()),
        "Geometry" => geometry(),
        "Id" => String.t() | atom(),
        "Page" => integer(),
        "Relationships" => list(relationships_list_item()),
        "Text" => String.t() | atom()
      }
      
  """
  @type block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "DatasetType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type dataset_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      child_block() :: %{
        "BeginOffset" => integer(),
        "ChildBlockId" => String.t() | atom(),
        "EndOffset" => integer()
      }
      
  """
  @type child_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_events_detection_job_response() :: %{
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_events_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizer_summaries_response() :: %{
        "EntityRecognizerSummariesList" => list(entity_recognizer_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_entity_recognizer_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type targeted_sentiment_detection_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_entities_item_result())
      }
      
  """
  @type batch_detect_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_model_request() :: %{
        optional("DataAccessRoleArn") => String.t() | atom(),
        optional("ModelKmsKeyId") => String.t() | atom(),
        optional("ModelName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VersionName") => String.t() | atom(),
        required("SourceModelArn") => String.t() | atom()
      }
      
  """
  @type import_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_events_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_events_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_key_validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type kms_key_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_entities_detection_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dominant_language_detection_jobs_request() :: %{
        optional("Filter") => dominant_language_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_dominant_language_detection_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pii_entities_detection_jobs_response() :: %{
        "NextToken" => String.t() | atom(),
        "PiiEntitiesDetectionJobPropertiesList" => list(pii_entities_detection_job_properties())
      }
      
  """
  @type list_pii_entities_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_request() :: %{
        required("FlywheelArn") => String.t() | atom()
      }
      
  """
  @type describe_flywheel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_input_data_config() :: %{
        "Annotations" => dataset_entity_recognizer_annotations(),
        "Documents" => dataset_entity_recognizer_documents(),
        "EntityList" => dataset_entity_recognizer_entity_list()
      }
      
  """
  @type dataset_entity_recognizer_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_entity_list() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type dataset_entity_recognizer_entity_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_document_classifiers_request() :: %{
        optional("Filter") => document_classifier_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_document_classifiers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flywheel_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type flywheel_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_response() :: %{
        "ErrorList" => list(batch_item_error()),
        "ResultList" => list(batch_detect_syntax_item_result())
      }
      
  """
  @type batch_detect_syntax_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_output_data_config() :: %{
        "FlywheelStatsS3Prefix" => String.t() | atom()
      }
      
  """
  @type entity_recognizer_output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      extracted_characters_list_item() :: %{
        "Count" => integer(),
        "Page" => integer()
      }
      
  """
  @type extracted_characters_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classification_config() :: %{
        "Labels" => list(String.t() | atom()),
        "Mode" => list(any())
      }
      
  """
  @type document_classification_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      classify_document_response() :: %{
        "Classes" => list(document_class()),
        "DocumentMetadata" => document_metadata(),
        "DocumentType" => list(document_type_list_item()),
        "Errors" => list(errors_list_item()),
        "Labels" => list(document_label()),
        "Warnings" => list(warnings_list_item())
      }
      
  """
  @type classify_document_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_flywheel_request() :: %{
        required("FlywheelArn") => String.t() | atom()
      }
      
  """
  @type delete_flywheel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_topics_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("NumberOfTopics") => integer(),
        optional("Tags") => list(tag()),
        optional("VolumeKmsKeyId") => String.t() | atom(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_topics_detection_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type describe_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_class() :: %{
        "Name" => String.t() | atom(),
        "Page" => integer(),
        "Score" => float()
      }
      
  """
  @type document_class() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_types_evaluation_metrics() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type entity_types_evaluation_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entities_detection_job_filter() :: %{
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type entities_detection_job_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_classification_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DocumentClassifierArn" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "FlywheelArn" => String.t() | atom(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t() | atom(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type document_classification_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dominant_language_detection_jobs_response() :: %{
        "DominantLanguageDetectionJobPropertiesList" => list(dominant_language_detection_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_dominant_language_detection_jobs_response() :: %{(String.t() | atom()) => any()}

  @type batch_detect_dominant_language_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_key_phrases_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_syntax_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_targeted_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type classify_document_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_unavailable_exception()

  @type contains_pii_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type create_dataset_errors() ::
          too_many_tags_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_document_classifier_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_endpoint_errors() ::
          too_many_tags_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type create_entity_recognizer_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_flywheel_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_endpoint_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type delete_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_flywheel_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_dataset_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_document_classification_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_dominant_language_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_endpoint_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_entities_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_events_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_flywheel_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_flywheel_iteration_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_key_phrases_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_pii_entities_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_sentiment_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_targeted_sentiment_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_topics_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type detect_dominant_language_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_unavailable_exception()

  @type detect_key_phrases_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_pii_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_syntax_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_targeted_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_toxic_content_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type import_model_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type list_datasets_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_document_classification_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_document_classifier_summaries_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_document_classifiers_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_dominant_language_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_endpoints_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_entities_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_entity_recognizer_summaries_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_entity_recognizers_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_events_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_flywheel_iteration_history_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_flywheels_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_key_phrases_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_pii_entities_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_sentiment_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_targeted_sentiment_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_topics_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type put_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_document_classification_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type start_dominant_language_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_entities_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type start_events_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_flywheel_iteration_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_key_phrases_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_pii_entities_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_sentiment_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_targeted_sentiment_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_topics_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type stop_dominant_language_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_entities_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_events_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_key_phrases_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_pii_entities_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_sentiment_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_targeted_sentiment_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_training_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type stop_training_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          concurrent_modification_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_tag_keys_exception()

  @type update_endpoint_errors() ::
          internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type update_flywheel_errors() ::
          kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "comprehend",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Comprehend",
      signature_version: "v4",
      signing_name: "comprehend",
      target_prefix: "Comprehend_20171127"
    }
  end

  @doc """
  Determines the dominant language of the input text for a batch of documents.

  For a list
  of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  @spec batch_detect_dominant_language(map(), batch_detect_dominant_language_request(), list()) ::
          {:ok, batch_detect_dominant_language_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_dominant_language_errors()}
  def batch_detect_dominant_language(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectDominantLanguage", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for named entities and returns
  information
  about them.

  For more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html)
  in the Comprehend Developer Guide.
  """
  @spec batch_detect_entities(map(), batch_detect_entities_request(), list()) ::
          {:ok, batch_detect_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_entities_errors()}
  def batch_detect_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in a batch of documents.
  """
  @spec batch_detect_key_phrases(map(), batch_detect_key_phrases_request(), list()) ::
          {:ok, batch_detect_key_phrases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_key_phrases_errors()}
  def batch_detect_key_phrases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectKeyPhrases", input, options)
  end

  @doc """
  Inspects a batch of documents and returns an inference of the prevailing
  sentiment,
  `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`,
  in each one.
  """
  @spec batch_detect_sentiment(map(), batch_detect_sentiment_request(), list()) ::
          {:ok, batch_detect_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_sentiment_errors()}
  def batch_detect_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectSentiment", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for the syntax and part of speech of
  the words
  in the document and returns information about them.

  For more information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.
  """
  @spec batch_detect_syntax(map(), batch_detect_syntax_request(), list()) ::
          {:ok, batch_detect_syntax_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_syntax_errors()}
  def batch_detect_syntax(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectSyntax", input, options)
  end

  @doc """
  Inspects a batch of documents and returns a sentiment analysis
  for each entity identified in the documents.

  For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec batch_detect_targeted_sentiment(map(), batch_detect_targeted_sentiment_request(), list()) ::
          {:ok, batch_detect_targeted_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_detect_targeted_sentiment_errors()}
  def batch_detect_targeted_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectTargetedSentiment", input, options)
  end

  @doc """
  Creates a classification request to analyze a single document in real-time.

  `ClassifyDocument`
  supports the following model types:

    *
  Custom classifier - a custom model that you have created and trained.
  For input, you can provide plain text, a single-page document (PDF, Word, or
  image), or
  Amazon Textract API output. For more information, see [Custom classification](https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html)
  in the *Amazon Comprehend Developer Guide*.

    *
  Prompt safety classifier - Amazon Comprehend provides a pre-trained model for
  classifying
  input prompts for generative AI applications.
  For input, you provide English plain text input.
  For prompt safety classification, the response includes only the `Classes`
  field.
  For more information about prompt safety classifiers, see [Prompt safety classification](https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification)
  in the *Amazon Comprehend Developer Guide*.

  If the system detects errors while processing a page in the input document,
  the API response includes an `Errors` field that describes the errors.

  If the system detects a document-level error in your input document, the API
  returns an
  `InvalidRequestException` error response.
  For details about this exception, see
  [
  Errors in semi-structured
  documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
  in the Comprehend Developer Guide.
  """
  @spec classify_document(map(), classify_document_request(), list()) ::
          {:ok, classify_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, classify_document_errors()}
  def classify_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ClassifyDocument", input, options)
  end

  @doc """
  Analyzes input text for the presence of personally identifiable information
  (PII) and
  returns the labels of identified PII entity types such as name, address, bank
  account number,
  or phone number.
  """
  @spec contains_pii_entities(map(), contains_pii_entities_request(), list()) ::
          {:ok, contains_pii_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, contains_pii_entities_errors()}
  def contains_pii_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ContainsPiiEntities", input, options)
  end

  @doc """
  Creates a dataset to upload training or test data for a model associated with a
  flywheel.

  For more information about datasets, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec create_dataset(map(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a new document classifier that you can use to categorize documents.

  To create a
  classifier, you provide a set of training documents that are labeled with the
  categories that you
  want to use. For more information, see
  [Training classifier models](https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html)
  in the Comprehend Developer Guide.
  """
  @spec create_document_classifier(map(), create_document_classifier_request(), list()) ::
          {:ok, create_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_document_classifier_errors()}
  def create_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDocumentClassifier", input, options)
  end

  @doc """
  Creates a model-specific endpoint for synchronous inference for a previously
  trained
  custom model
  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  @spec create_endpoint(map(), create_endpoint_request(), list()) ::
          {:ok, create_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_endpoint_errors()}
  def create_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an entity recognizer using submitted files.

  After your
  `CreateEntityRecognizer` request is submitted, you can check job status using
  the
  `DescribeEntityRecognizer` API.
  """
  @spec create_entity_recognizer(map(), create_entity_recognizer_request(), list()) ::
          {:ok, create_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_entity_recognizer_errors()}
  def create_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEntityRecognizer", input, options)
  end

  @doc """
  A flywheel is an Amazon Web Services resource that orchestrates the ongoing
  training of a model for custom classification
  or custom entity recognition.

  You can create a flywheel to start with an existing trained model, or
  Comprehend can create and train a new model.

  When you create the flywheel, Comprehend creates a data lake in your account.
  The data lake holds the training
  data and test data for all versions of the model.

  To use a flywheel with an existing trained model, you specify the active model
  version. Comprehend copies the model's
  training data and test data into the flywheel's data lake.

  To use the flywheel with a new model, you need to provide a dataset for training
  data (and optional test data)
  when you create the flywheel.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec create_flywheel(map(), create_flywheel_request(), list()) ::
          {:ok, create_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_flywheel_errors()}
  def create_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFlywheel", input, options)
  end

  @doc """
  Deletes a previously created document classifier

  Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be
  deleted.

  If an active inference job is using the model, a `ResourceInUseException` will
  be
  returned.

  This is an asynchronous action that puts the classifier into a DELETING state,
  and it is
  then removed by a background job. Once removed, the classifier disappears from
  your account
  and is no longer available for use.
  """
  @spec delete_document_classifier(map(), delete_document_classifier_request(), list()) ::
          {:ok, delete_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_document_classifier_errors()}
  def delete_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDocumentClassifier", input, options)
  end

  @doc """
  Deletes a model-specific endpoint for a previously-trained custom model.

  All endpoints
  must be deleted in order for the model to be deleted.
  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  @spec delete_endpoint(map(), delete_endpoint_request(), list()) ::
          {:ok, delete_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an entity recognizer.

  Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be
  deleted.
  If an active inference job is using the model, a `ResourceInUseException` will
  be
  returned.

  This is an asynchronous action that puts the recognizer into a DELETING state,
  and it is
  then removed by a background job. Once removed, the recognizer disappears from
  your account
  and is no longer available for use.
  """
  @spec delete_entity_recognizer(map(), delete_entity_recognizer_request(), list()) ::
          {:ok, delete_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_entity_recognizer_errors()}
  def delete_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEntityRecognizer", input, options)
  end

  @doc """
  Deletes a flywheel.

  When you delete the flywheel, Amazon Comprehend
  does not delete the data lake or the model associated with the flywheel.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec delete_flywheel(map(), delete_flywheel_request(), list()) ::
          {:ok, delete_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_flywheel_errors()}
  def delete_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFlywheel", input, options)
  end

  @doc """
  Deletes a resource-based policy that is attached to a custom model.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Returns information about the dataset that you specify.

  For more information about datasets, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec describe_dataset(map(), describe_dataset_request(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Gets the properties associated with a document classification job.

  Use this operation to
  get the status of a classification job.
  """
  @spec describe_document_classification_job(
          map(),
          describe_document_classification_job_request(),
          list()
        ) ::
          {:ok, describe_document_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_document_classification_job_errors()}
  def describe_document_classification_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentClassificationJob", input, options)
  end

  @doc """
  Gets the properties associated with a document classifier.
  """
  @spec describe_document_classifier(map(), describe_document_classifier_request(), list()) ::
          {:ok, describe_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_document_classifier_errors()}
  def describe_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentClassifier", input, options)
  end

  @doc """
  Gets the properties associated with a dominant language detection job.

  Use this operation
  to get the status of a detection job.
  """
  @spec describe_dominant_language_detection_job(
          map(),
          describe_dominant_language_detection_job_request(),
          list()
        ) ::
          {:ok, describe_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dominant_language_detection_job_errors()}
  def describe_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a specific endpoint.

  Use this operation to get the
  status of an endpoint.
  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  @spec describe_endpoint(map(), describe_endpoint_request(), list()) ::
          {:ok, describe_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoint_errors()}
  def describe_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoint", input, options)
  end

  @doc """
  Gets the properties associated with an entities detection job.

  Use this operation to get
  the status of a detection job.
  """
  @spec describe_entities_detection_job(map(), describe_entities_detection_job_request(), list()) ::
          {:ok, describe_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_entities_detection_job_errors()}
  def describe_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntitiesDetectionJob", input, options)
  end

  @doc """
  Provides details about an entity recognizer including status, S3 buckets
  containing
  training data, recognizer metadata, metrics, and so on.
  """
  @spec describe_entity_recognizer(map(), describe_entity_recognizer_request(), list()) ::
          {:ok, describe_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_entity_recognizer_errors()}
  def describe_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntityRecognizer", input, options)
  end

  @doc """
  Gets the status and details of an events detection job.
  """
  @spec describe_events_detection_job(map(), describe_events_detection_job_request(), list()) ::
          {:ok, describe_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_events_detection_job_errors()}
  def describe_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventsDetectionJob", input, options)
  end

  @doc """
  Provides configuration information about the flywheel.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec describe_flywheel(map(), describe_flywheel_request(), list()) ::
          {:ok, describe_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flywheel_errors()}
  def describe_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlywheel", input, options)
  end

  @doc """
  Retrieve the configuration properties of a flywheel iteration.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec describe_flywheel_iteration(map(), describe_flywheel_iteration_request(), list()) ::
          {:ok, describe_flywheel_iteration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flywheel_iteration_errors()}
  def describe_flywheel_iteration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlywheelIteration", input, options)
  end

  @doc """
  Gets the properties associated with a key phrases detection job.

  Use this operation to get
  the status of a detection job.
  """
  @spec describe_key_phrases_detection_job(
          map(),
          describe_key_phrases_detection_job_request(),
          list()
        ) ::
          {:ok, describe_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_key_phrases_detection_job_errors()}
  def describe_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a PII entities detection job.

  For example, you can use
  this operation to get the job status.
  """
  @spec describe_pii_entities_detection_job(
          map(),
          describe_pii_entities_detection_job_request(),
          list()
        ) ::
          {:ok, describe_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pii_entities_detection_job_errors()}
  def describe_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Gets the details of a resource-based policy that is attached to a custom model,
  including
  the JSON body of the policy.
  """
  @spec describe_resource_policy(map(), describe_resource_policy_request(), list()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Gets the properties associated with a sentiment detection job.

  Use this operation to get
  the status of a detection job.
  """
  @spec describe_sentiment_detection_job(
          map(),
          describe_sentiment_detection_job_request(),
          list()
        ) ::
          {:ok, describe_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_sentiment_detection_job_errors()}
  def describe_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a targeted sentiment detection job.

  Use this operation
  to get the status of the job.
  """
  @spec describe_targeted_sentiment_detection_job(
          map(),
          describe_targeted_sentiment_detection_job_request(),
          list()
        ) ::
          {:ok, describe_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_targeted_sentiment_detection_job_errors()}
  def describe_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a topic detection job.

  Use this operation to get
  the status of a detection job.
  """
  @spec describe_topics_detection_job(map(), describe_topics_detection_job_request(), list()) ::
          {:ok, describe_topics_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_topics_detection_job_errors()}
  def describe_topics_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTopicsDetectionJob", input, options)
  end

  @doc """
  Determines the dominant language of the input text.

  For a list of languages that Amazon
  Comprehend can detect, see [Amazon Comprehend Supported Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  @spec detect_dominant_language(map(), detect_dominant_language_request(), list()) ::
          {:ok, detect_dominant_language_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_dominant_language_errors()}
  def detect_dominant_language(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectDominantLanguage", input, options)
  end

  @doc """
  Detects named entities in input text when you use the pre-trained model.

  Detects custom entities if you have a custom entity recognition model.

  When detecting named entities using the pre-trained model, use plain text as the
  input.
  For more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in the Comprehend Developer Guide.

  When you use a custom entity recognition model,
  you can input plain text or you can upload a single-page input document (text,
  PDF, Word, or image).

  If the system detects errors while processing a page in the input document, the
  API response
  includes an entry in `Errors` for each error.

  If the system detects a document-level error in your input document, the API
  returns an
  `InvalidRequestException` error response.
  For details about this exception, see
  [
  Errors in semi-structured
  documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
  in the Comprehend Developer Guide.
  """
  @spec detect_entities(map(), detect_entities_request(), list()) ::
          {:ok, detect_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_entities_errors()}
  def detect_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in the text.
  """
  @spec detect_key_phrases(map(), detect_key_phrases_request(), list()) ::
          {:ok, detect_key_phrases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_key_phrases_errors()}
  def detect_key_phrases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectKeyPhrases", input, options)
  end

  @doc """
  Inspects the input text for entities that contain personally identifiable
  information
  (PII) and returns information about them.
  """
  @spec detect_pii_entities(map(), detect_pii_entities_request(), list()) ::
          {:ok, detect_pii_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_pii_entities_errors()}
  def detect_pii_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectPiiEntities", input, options)
  end

  @doc """
  Inspects text and returns an inference of the prevailing sentiment
  (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).
  """
  @spec detect_sentiment(map(), detect_sentiment_request(), list()) ::
          {:ok, detect_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_sentiment_errors()}
  def detect_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectSentiment", input, options)
  end

  @doc """
  Inspects text for syntax and the part of speech of words in the document.

  For more
  information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.
  """
  @spec detect_syntax(map(), detect_syntax_request(), list()) ::
          {:ok, detect_syntax_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_syntax_errors()}
  def detect_syntax(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectSyntax", input, options)
  end

  @doc """
  Inspects the input text and returns a sentiment analysis for each entity
  identified in the text.

  For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec detect_targeted_sentiment(map(), detect_targeted_sentiment_request(), list()) ::
          {:ok, detect_targeted_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_targeted_sentiment_errors()}
  def detect_targeted_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectTargetedSentiment", input, options)
  end

  @doc """
  Performs toxicity analysis on the list of text strings that you provide as
  input.

  The API response contains a results list that matches the size of the input
  list.
  For more information about toxicity detection, see [Toxicity detection](https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec detect_toxic_content(map(), detect_toxic_content_request(), list()) ::
          {:ok, detect_toxic_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_toxic_content_errors()}
  def detect_toxic_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectToxicContent", input, options)
  end

  @doc """
  Creates a new custom model that replicates a source custom model that you
  import.

  The
  source model can be in your Amazon Web Services account or another one.

  If the source model is in another Amazon Web Services account, then it must have
  a resource-based policy
  that authorizes you to import it.

  The source model must be in the same Amazon Web Services Region that you're
  using when you import. You
  can't import a model that's in a different Region.
  """
  @spec import_model(map(), import_model_request(), list()) ::
          {:ok, import_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_model_errors()}
  def import_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportModel", input, options)
  end

  @doc """
  List the datasets that you have configured in this Region.

  For more information about datasets, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec list_datasets(map(), list_datasets_request(), list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Gets a list of the documentation classification jobs that you have submitted.
  """
  @spec list_document_classification_jobs(
          map(),
          list_document_classification_jobs_request(),
          list()
        ) ::
          {:ok, list_document_classification_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_document_classification_jobs_errors()}
  def list_document_classification_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassificationJobs", input, options)
  end

  @doc """
  Gets a list of summaries of the document classifiers that you have created
  """
  @spec list_document_classifier_summaries(
          map(),
          list_document_classifier_summaries_request(),
          list()
        ) ::
          {:ok, list_document_classifier_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_document_classifier_summaries_errors()}
  def list_document_classifier_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassifierSummaries", input, options)
  end

  @doc """
  Gets a list of the document classifiers that you have created.
  """
  @spec list_document_classifiers(map(), list_document_classifiers_request(), list()) ::
          {:ok, list_document_classifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_document_classifiers_errors()}
  def list_document_classifiers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassifiers", input, options)
  end

  @doc """
  Gets a list of the dominant language detection jobs that you have submitted.
  """
  @spec list_dominant_language_detection_jobs(
          map(),
          list_dominant_language_detection_jobs_request(),
          list()
        ) ::
          {:ok, list_dominant_language_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dominant_language_detection_jobs_errors()}
  def list_dominant_language_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDominantLanguageDetectionJobs", input, options)
  end

  @doc """
  Gets a list of all existing endpoints that you've created.

  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  @spec list_endpoints(map(), list_endpoints_request(), list()) ::
          {:ok, list_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_endpoints_errors()}
  def list_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpoints", input, options)
  end

  @doc """
  Gets a list of the entity detection jobs that you have submitted.
  """
  @spec list_entities_detection_jobs(map(), list_entities_detection_jobs_request(), list()) ::
          {:ok, list_entities_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entities_detection_jobs_errors()}
  def list_entities_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of summaries for the entity recognizers that you have created.
  """
  @spec list_entity_recognizer_summaries(
          map(),
          list_entity_recognizer_summaries_request(),
          list()
        ) ::
          {:ok, list_entity_recognizer_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entity_recognizer_summaries_errors()}
  def list_entity_recognizer_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityRecognizerSummaries", input, options)
  end

  @doc """
  Gets a list of the properties of all entity recognizers that you created,
  including
  recognizers currently in training.

  Allows you to filter the list of recognizers based on
  criteria such as status and submission time. This call returns up to 500 entity
  recognizers in
  the list, with a default number of 100 recognizers in the list.

  The results of this list are not in any particular order. Please get the list
  and sort
  locally if needed.
  """
  @spec list_entity_recognizers(map(), list_entity_recognizers_request(), list()) ::
          {:ok, list_entity_recognizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entity_recognizers_errors()}
  def list_entity_recognizers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityRecognizers", input, options)
  end

  @doc """
  Gets a list of the events detection jobs that you have submitted.
  """
  @spec list_events_detection_jobs(map(), list_events_detection_jobs_request(), list()) ::
          {:ok, list_events_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_events_detection_jobs_errors()}
  def list_events_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventsDetectionJobs", input, options)
  end

  @doc """
  Information about the history of a flywheel iteration.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec list_flywheel_iteration_history(map(), list_flywheel_iteration_history_request(), list()) ::
          {:ok, list_flywheel_iteration_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flywheel_iteration_history_errors()}
  def list_flywheel_iteration_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlywheelIterationHistory", input, options)
  end

  @doc """
  Gets a list of the flywheels that you have created.
  """
  @spec list_flywheels(map(), list_flywheels_request(), list()) ::
          {:ok, list_flywheels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flywheels_errors()}
  def list_flywheels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlywheels", input, options)
  end

  @doc """
  Get a list of key phrase detection jobs that you have submitted.
  """
  @spec list_key_phrases_detection_jobs(map(), list_key_phrases_detection_jobs_request(), list()) ::
          {:ok, list_key_phrases_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_key_phrases_detection_jobs_errors()}
  def list_key_phrases_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListKeyPhrasesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the PII entity detection jobs that you have submitted.
  """
  @spec list_pii_entities_detection_jobs(
          map(),
          list_pii_entities_detection_jobs_request(),
          list()
        ) ::
          {:ok, list_pii_entities_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pii_entities_detection_jobs_errors()}
  def list_pii_entities_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPiiEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of sentiment detection jobs that you have submitted.
  """
  @spec list_sentiment_detection_jobs(map(), list_sentiment_detection_jobs_request(), list()) ::
          {:ok, list_sentiment_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sentiment_detection_jobs_errors()}
  def list_sentiment_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSentimentDetectionJobs", input, options)
  end

  @doc """
  Lists all tags associated with a given Amazon Comprehend resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of targeted sentiment detection jobs that you have submitted.
  """
  @spec list_targeted_sentiment_detection_jobs(
          map(),
          list_targeted_sentiment_detection_jobs_request(),
          list()
        ) ::
          {:ok, list_targeted_sentiment_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_targeted_sentiment_detection_jobs_errors()}
  def list_targeted_sentiment_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTargetedSentimentDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the topic detection jobs that you have submitted.
  """
  @spec list_topics_detection_jobs(map(), list_topics_detection_jobs_request(), list()) ::
          {:ok, list_topics_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_topics_detection_jobs_errors()}
  def list_topics_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTopicsDetectionJobs", input, options)
  end

  @doc """
  Attaches a resource-based policy to a custom model.

  You can use this policy to authorize
  an entity in another Amazon Web Services account to import the custom model,
  which replicates it in Amazon
  Comprehend in their account.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Starts an asynchronous document classification job using a custom classification
  model.

  Use the
  `DescribeDocumentClassificationJob`
  operation to track the progress of the job.
  """
  @spec start_document_classification_job(
          map(),
          start_document_classification_job_request(),
          list()
        ) ::
          {:ok, start_document_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_document_classification_job_errors()}
  def start_document_classification_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDocumentClassificationJob", input, options)
  end

  @doc """
  Starts an asynchronous dominant language detection job for a collection of
  documents.

  Use
  the operation to track the status
  of a job.
  """
  @spec start_dominant_language_detection_job(
          map(),
          start_dominant_language_detection_job_request(),
          list()
        ) ::
          {:ok, start_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_dominant_language_detection_job_errors()}
  def start_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous entity detection job for a collection of documents.

  Use the operation to track the status of a job.

  This API can be used for either standard entity detection or custom entity
  recognition. In
  order to be used for custom entity recognition, the optional
  `EntityRecognizerArn`
  must be used in order to provide access to the recognizer being used to detect
  the custom
  entity.
  """
  @spec start_entities_detection_job(map(), start_entities_detection_job_request(), list()) ::
          {:ok, start_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_entities_detection_job_errors()}
  def start_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous event detection job for a collection of documents.
  """
  @spec start_events_detection_job(map(), start_events_detection_job_request(), list()) ::
          {:ok, start_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_events_detection_job_errors()}
  def start_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEventsDetectionJob", input, options)
  end

  @doc """
  Start the flywheel iteration.This operation uses any new datasets to train a new
  model version.

  For more information about flywheels, see [
  Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  @spec start_flywheel_iteration(map(), start_flywheel_iteration_request(), list()) ::
          {:ok, start_flywheel_iteration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_flywheel_iteration_errors()}
  def start_flywheel_iteration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFlywheelIteration", input, options)
  end

  @doc """
  Starts an asynchronous key phrase detection job for a collection of documents.

  Use the
  operation to track the status of a
  job.
  """
  @spec start_key_phrases_detection_job(map(), start_key_phrases_detection_job_request(), list()) ::
          {:ok, start_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_key_phrases_detection_job_errors()}
  def start_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous PII entity detection job for a collection of documents.
  """
  @spec start_pii_entities_detection_job(
          map(),
          start_pii_entities_detection_job_request(),
          list()
        ) ::
          {:ok, start_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_pii_entities_detection_job_errors()}
  def start_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous sentiment detection job for a collection of documents.

  Use the
  operation to track the status of a
  job.
  """
  @spec start_sentiment_detection_job(map(), start_sentiment_detection_job_request(), list()) ::
          {:ok, start_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_sentiment_detection_job_errors()}
  def start_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous targeted sentiment detection job for a collection of
  documents.

  Use the
  `DescribeTargetedSentimentDetectionJob` operation to track the status of a
  job.
  """
  @spec start_targeted_sentiment_detection_job(
          map(),
          start_targeted_sentiment_detection_job_request(),
          list()
        ) ::
          {:ok, start_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_targeted_sentiment_detection_job_errors()}
  def start_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous topic detection job.

  Use the
  `DescribeTopicDetectionJob` operation to track the status of a job.
  """
  @spec start_topics_detection_job(map(), start_topics_detection_job_request(), list()) ::
          {:ok, start_topics_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_topics_detection_job_errors()}
  def start_topics_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTopicsDetectionJob", input, options)
  end

  @doc """
  Stops a dominant language detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it
  is put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  @spec stop_dominant_language_detection_job(
          map(),
          stop_dominant_language_detection_job_request(),
          list()
        ) ::
          {:ok, stop_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_dominant_language_detection_job_errors()}
  def stop_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Stops an entities detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it
  is put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  @spec stop_entities_detection_job(map(), stop_entities_detection_job_request(), list()) ::
          {:ok, stop_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_entities_detection_job_errors()}
  def stop_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops an events detection job in progress.
  """
  @spec stop_events_detection_job(map(), stop_events_detection_job_request(), list()) ::
          {:ok, stop_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_events_detection_job_errors()}
  def stop_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEventsDetectionJob", input, options)
  end

  @doc """
  Stops a key phrases detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it
  is put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  @spec stop_key_phrases_detection_job(map(), stop_key_phrases_detection_job_request(), list()) ::
          {:ok, stop_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_key_phrases_detection_job_errors()}
  def stop_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Stops a PII entities detection job in progress.
  """
  @spec stop_pii_entities_detection_job(map(), stop_pii_entities_detection_job_request(), list()) ::
          {:ok, stop_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_pii_entities_detection_job_errors()}
  def stop_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops a sentiment detection job in progress.

  If the job state is `IN_PROGRESS`, the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it
  is put into the `COMPLETED` state; otherwise the job is be stopped and put into
  the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  @spec stop_sentiment_detection_job(map(), stop_sentiment_detection_job_request(), list()) ::
          {:ok, stop_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_sentiment_detection_job_errors()}
  def stop_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a targeted sentiment detection job in progress.

  If the job state is `IN_PROGRESS`, the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it
  is put into the `COMPLETED` state; otherwise the job is be stopped and put into
  the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  @spec stop_targeted_sentiment_detection_job(
          map(),
          stop_targeted_sentiment_detection_job_request(),
          list()
        ) ::
          {:ok, stop_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_targeted_sentiment_detection_job_errors()}
  def stop_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a document classifier training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be
  stopped, it is put into the `TRAINED`; otherwise the training job is stopped and
  put into the `STOPPED` state and the service sends back an HTTP 200 response
  with
  an empty HTTP body.
  """
  @spec stop_training_document_classifier(
          map(),
          stop_training_document_classifier_request(),
          list()
        ) ::
          {:ok, stop_training_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_training_document_classifier_errors()}
  def stop_training_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrainingDocumentClassifier", input, options)
  end

  @doc """
  Stops an entity recognizer training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be
  stopped, it is put into the `TRAINED`; otherwise the training job is stopped and
  putted into the `STOPPED` state and the service sends back an HTTP 200 response
  with an empty HTTP body.
  """
  @spec stop_training_entity_recognizer(map(), stop_training_entity_recognizer_request(), list()) ::
          {:ok, stop_training_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_training_entity_recognizer_errors()}
  def stop_training_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrainingEntityRecognizer", input, options)
  end

  @doc """
  Associates a specific tag with an Amazon Comprehend resource.

  A tag is a key-value pair
  that adds as a metadata to a resource used by Amazon Comprehend. For example, a
  tag with
  "Sales" as the key might be added to a resource to indicate its use by the sales
  department.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a specific tag associated with an Amazon Comprehend resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates information about the specified endpoint.

  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  @spec update_endpoint(map(), update_endpoint_request(), list()) ::
          {:ok, update_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_endpoint_errors()}
  def update_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpoint", input, options)
  end

  @doc """
  Update the configuration information for an existing flywheel.
  """
  @spec update_flywheel(map(), update_flywheel_request(), list()) ::
          {:ok, update_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flywheel_errors()}
  def update_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFlywheel", input, options)
  end
end
