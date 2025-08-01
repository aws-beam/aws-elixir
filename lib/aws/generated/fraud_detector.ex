# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FraudDetector do
  @moduledoc """
  This is the Amazon Fraud Detector API Reference.

  This guide is for developers who need
  detailed information about Amazon Fraud Detector API actions, data types, and
  errors. For
  more information about Amazon Fraud Detector features, see the [Amazon Fraud Detector User Guide](https://docs.aws.amazon.com/frauddetector/latest/ug/).

  We provide the Query API as well as AWS software development kits (SDK) for
  Amazon Fraud Detector in Java and Python programming languages.

  The Amazon Fraud Detector Query API provides HTTPS requests that use the HTTP
  verb GET or POST and a Query parameter `Action`. AWS SDK provides libraries,
  sample code, tutorials, and other resources for software developers who prefer
  to build applications using language-specific APIs instead of submitting a
  request over
  HTTP or HTTPS. These libraries provide basic functions that automatically take
  care of tasks such as cryptographically signing your requests, retrying
  requests, and
  handling error responses, so that it is easier for you to get started. For more
  information about the AWS SDKs, go to [Tools to build on AWS](https://aws.amazon.com/developer/tools/) page,
  scroll down to the **SDK** section, and choose plus (+) sign to expand the
  section.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_batch_import_job_request() :: %{
        required("jobId") => String.t() | Atom.t()
      }
      
  """
  @type cancel_batch_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_variable_request() :: %{
        required("names") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_variable_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      external_model() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "inputConfiguration" => model_input_configuration(),
        "invokeModelEndpointRoleArn" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "modelEndpoint" => String.t() | Atom.t(),
        "modelEndpointStatus" => list(any()),
        "modelSource" => list(any()),
        "outputConfiguration" => model_output_configuration()
      }
      
  """
  @type external_model() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("detectorId") => String.t() | Atom.t(),
        required("expression") => String.t() | Atom.t(),
        required("language") => list(any()),
        required("outcomes") => list(String.t() | Atom.t()),
        required("ruleId") => String.t() | Atom.t()
      }
      
  """
  @type create_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_list_result() :: %{}
      
  """
  @type update_list_result() :: %{}

  @typedoc """

  ## Example:
      
      batch_create_variable_error() :: %{
        "code" => integer(),
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type batch_create_variable_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      field_validation_message() :: %{
        "content" => String.t() | Atom.t(),
        "fieldName" => String.t() | Atom.t(),
        "identifier" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t(),
        "type" => String.t() | Atom.t()
      }
      
  """
  @type field_validation_message() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      a_t_i_training_metrics_value() :: %{
        "metricDataPoints" => list(a_t_i_metric_data_point()),
        "modelPerformance" => a_t_i_model_performance()
      }
      
  """
  @type a_t_i_training_metrics_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_version_result() :: %{
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any()),
        "modelVersionNumber" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t()
      }
      
  """
  @type create_model_version_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceARN") => String.t() | Atom.t(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_variable_result() :: %{}
      
  """
  @type update_variable_result() :: %{}

  @typedoc """

  ## Example:
      
      create_model_result() :: %{}
      
  """
  @type create_model_result() :: %{}

  @typedoc """

  ## Example:
      
      create_list_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("elements") => list(String.t() | Atom.t()),
        optional("tags") => list(tag()),
        optional("variableType") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type create_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_version_request() :: %{
        optional("externalEventsDetail") => external_events_detail(),
        optional("ingestedEventsDetail") => ingested_events_detail(),
        optional("tags") => list(tag()),
        required("majorVersionNumber") => String.t() | Atom.t(),
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any())
      }
      
  """
  @type update_model_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_entity_type_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_entity_type_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_point() :: %{
        "fpr" => float(),
        "precision" => float(),
        "threshold" => float(),
        "tpr" => float()
      }
      
  """
  @type metric_data_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_list_elements_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type get_list_elements_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      filter_condition() :: %{
        "value" => String.t() | Atom.t()
      }
      
  """
  @type filter_condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_version_evaluation() :: %{
        "evaluationScore" => String.t() | Atom.t(),
        "outputVariableName" => String.t() | Atom.t(),
        "predictionExplanations" => prediction_explanations()
      }
      
  """
  @type model_version_evaluation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_outcome_result() :: %{}
      
  """
  @type delete_outcome_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_model_version_result() :: %{}
      
  """
  @type delete_model_version_result() :: %{}

  @typedoc """

  ## Example:
      
      get_kms_encryption_key_result() :: %{
        "kmsKey" => kms_key()
      }
      
  """
  @type get_kms_encryption_key_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      t_f_i_metric_data_point() :: %{
        "fpr" => float(),
        "precision" => float(),
        "threshold" => float(),
        "tpr" => float()
      }
      
  """
  @type t_f_i_metric_data_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_prediction_job_request() :: %{
        optional("detectorVersion") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("detectorName") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t(),
        required("iamRoleArn") => String.t() | Atom.t(),
        required("inputPath") => String.t() | Atom.t(),
        required("jobId") => String.t() | Atom.t(),
        required("outputPath") => String.t() | Atom.t()
      }
      
  """
  @type create_batch_prediction_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_lists_metadata_result() :: %{
        "lists" => list(allow_deny_list()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_lists_metadata_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{}
      
  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      get_event_result() :: %{
        "event" => event()
      }
      
  """
  @type get_event_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_version() :: %{
        "arn" => String.t() | Atom.t(),
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any()),
        "modelVersionNumber" => String.t() | Atom.t()
      }
      
  """
  @type model_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_label_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type put_label_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "entityId" => String.t() | Atom.t(),
        "entityType" => String.t() | Atom.t()
      }
      
  """
  @type entity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_version_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("expression") => String.t() | Atom.t(),
        required("language") => list(any()),
        required("outcomes") => list(String.t() | Atom.t()),
        required("rule") => rule()
      }
      
  """
  @type update_rule_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingested_event_statistics() :: %{
        "eventDataSizeInBytes" => float(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "leastRecentEvent" => String.t() | Atom.t(),
        "mostRecentEvent" => String.t() | Atom.t(),
        "numberOfEvents" => float()
      }
      
  """
  @type ingested_event_statistics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_input_configuration() :: %{
        "csvInputTemplate" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "format" => list(any()),
        "jsonInputTemplate" => String.t() | Atom.t(),
        "useEventVariables" => boolean()
      }
      
  """
  @type model_input_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_variable_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        optional("variableType") => String.t() | Atom.t(),
        required("dataSource") => list(any()),
        required("dataType") => list(any()),
        required("defaultValue") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type create_variable_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      o_f_i_training_metrics_value() :: %{
        "metricDataPoints" => list(o_f_i_metric_data_point()),
        "modelPerformance" => o_f_i_model_performance()
      }
      
  """
  @type o_f_i_training_metrics_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_version_detail() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "externalEventsDetail" => external_events_detail(),
        "ingestedEventsDetail" => ingested_events_detail(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any()),
        "modelVersionNumber" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "trainingDataSchema" => training_data_schema(),
        "trainingDataSource" => list(any()),
        "trainingResult" => training_result(),
        "trainingResultV2" => training_result_v2()
      }
      
  """
  @type model_version_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_label_result() :: %{}
      
  """
  @type update_event_label_result() :: %{}

  @typedoc """

  ## Example:
      
      create_list_result() :: %{}
      
  """
  @type create_list_result() :: %{}

  @typedoc """

  ## Example:
      
      allow_deny_list() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "updatedTime" => String.t() | Atom.t(),
        "variableType" => String.t() | Atom.t()
      }
      
  """
  @type allow_deny_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      variable_impact_explanation() :: %{
        "eventVariableName" => String.t() | Atom.t(),
        "logOddsImpact" => float(),
        "relativeImpact" => String.t() | Atom.t()
      }
      
  """
  @type variable_impact_explanation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_import_job_result() :: %{}
      
  """
  @type create_batch_import_job_result() :: %{}

  @typedoc """

  ## Example:
      
      create_model_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("eventTypeName") => String.t() | Atom.t(),
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any())
      }
      
  """
  @type create_model_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_request() :: %{
        optional("description") => String.t() | Atom.t(),
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any())
      }
      
  """
  @type update_model_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_batch_import_job_result() :: %{}
      
  """
  @type cancel_batch_import_job_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_detector_result() :: %{
        "arn" => String.t() | Atom.t(),
        "detectorId" => String.t() | Atom.t(),
        "detectorVersionSummaries" => list(detector_version_summary()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type describe_detector_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_outcomes_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_outcomes_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_entity_type_result() :: %{}
      
  """
  @type delete_entity_type_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_variable_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_variable_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      training_result_v2() :: %{
        "aggregatedVariablesImportanceMetrics" => aggregated_variables_importance_metrics(),
        "dataValidationMetrics" => data_validation_metrics(),
        "trainingMetricsV2" => training_metrics_v2(),
        "variableImportanceMetrics" => variable_importance_metrics()
      }
      
  """
  @type training_result_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_import_job_request() :: %{
        required("jobId") => String.t() | Atom.t()
      }
      
  """
  @type delete_batch_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_import_job_result() :: %{}
      
  """
  @type delete_batch_import_job_result() :: %{}

  @typedoc """

  ## Example:
      
      get_delete_events_by_event_type_status_request() :: %{
        required("eventTypeName") => String.t() | Atom.t()
      }
      
  """
  @type get_delete_events_by_event_type_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_import() :: %{
        "arn" => String.t() | Atom.t(),
        "completionTime" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "failedRecordsCount" => integer(),
        "failureReason" => String.t() | Atom.t(),
        "iamRoleArn" => String.t() | Atom.t(),
        "inputPath" => String.t() | Atom.t(),
        "jobId" => String.t() | Atom.t(),
        "outputPath" => String.t() | Atom.t(),
        "processedRecordsCount" => integer(),
        "startTime" => String.t() | Atom.t(),
        "status" => list(any()),
        "totalRecordsCount" => integer()
      }
      
  """
  @type batch_import() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceARN") => String.t() | Atom.t(),
        required("tagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      a_t_i_metric_data_point() :: %{
        "adr" => float(),
        "atodr" => float(),
        "cr" => float(),
        "threshold" => float()
      }
      
  """
  @type a_t_i_metric_data_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      evaluated_external_model() :: %{
        "inputVariables" => map(),
        "modelEndpoint" => String.t() | Atom.t(),
        "outputVariables" => map(),
        "useEventVariables" => boolean()
      }
      
  """
  @type evaluated_external_model() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_version_request() :: %{
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any()),
        required("modelVersionNumber") => String.t() | Atom.t()
      }
      
  """
  @type get_model_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_variables_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_variables_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_detail() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "detectorId" => String.t() | Atom.t(),
        "expression" => String.t() | Atom.t(),
        "language" => list(any()),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "outcomes" => list(String.t() | Atom.t()),
        "ruleId" => String.t() | Atom.t(),
        "ruleVersion" => String.t() | Atom.t()
      }
      
  """
  @type rule_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_list_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("detectorId") => String.t() | Atom.t()
      }
      
  """
  @type describe_detector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      event_variable_summary() :: %{
        "name" => String.t() | Atom.t(),
        "source" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }
      
  """
  @type event_variable_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      training_data_schema() :: %{
        "labelSchema" => label_schema(),
        "modelVariables" => list(String.t() | Atom.t())
      }
      
  """
  @type training_data_schema() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("modelId") => String.t() | Atom.t(),
        optional("modelType") => list(any()),
        optional("modelVersionNumber") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type describe_model_versions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_request() :: %{
        required("rule") => rule()
      }
      
  """
  @type delete_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_detector_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("detectorId") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t()
      }
      
  """
  @type put_detector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_types_result() :: %{
        "eventTypes" => list(event_type()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_event_types_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_event_request() :: %{
        optional("assignedLabel") => String.t() | Atom.t(),
        optional("labelTimestamp") => String.t() | Atom.t(),
        required("entities") => list(entity()),
        required("eventId") => String.t() | Atom.t(),
        required("eventTimestamp") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t(),
        required("eventVariables") => map()
      }
      
  """
  @type send_event_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_prediction() :: %{
        "arn" => String.t() | Atom.t(),
        "completionTime" => String.t() | Atom.t(),
        "detectorName" => String.t() | Atom.t(),
        "detectorVersion" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "failureReason" => String.t() | Atom.t(),
        "iamRoleArn" => String.t() | Atom.t(),
        "inputPath" => String.t() | Atom.t(),
        "jobId" => String.t() | Atom.t(),
        "lastHeartbeatTime" => String.t() | Atom.t(),
        "outputPath" => String.t() | Atom.t(),
        "processedRecordsCount" => integer(),
        "startTime" => String.t() | Atom.t(),
        "status" => list(any()),
        "totalRecordsCount" => integer()
      }
      
  """
  @type batch_prediction() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_variable_result() :: %{}
      
  """
  @type delete_variable_result() :: %{}

  @typedoc """

  ## Example:
      
      entity_type() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type entity_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_output_configuration() :: %{
        "csvIndexToVariableMap" => map(),
        "format" => list(any()),
        "jsonKeyToVariableMap" => map()
      }
      
  """
  @type model_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("modelVersions") => list(model_version()),
        optional("ruleExecutionMode") => list(any()),
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t(),
        required("externalModelEndpoints") => list(String.t() | Atom.t()),
        required("rules") => list(rule())
      }
      
  """
  @type update_detector_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      o_f_i_metric_data_point() :: %{
        "fpr" => float(),
        "precision" => float(),
        "threshold" => float(),
        "tpr" => float()
      }
      
  """
  @type o_f_i_metric_data_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_result() :: %{}
      
  """
  @type update_detector_version_result() :: %{}

  @typedoc """

  ## Example:
      
      t_f_i_model_performance() :: %{
        "auc" => float(),
        "uncertaintyRange" => uncertainty_range()
      }
      
  """
  @type t_f_i_model_performance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_version_result() :: %{
        "rule" => rule()
      }
      
  """
  @type update_rule_version_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_version_request() :: %{
        optional("externalEventsDetail") => external_events_detail(),
        optional("ingestedEventsDetail") => ingested_events_detail(),
        optional("tags") => list(tag()),
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any()),
        required("trainingDataSchema") => training_data_schema(),
        required("trainingDataSource") => list(any())
      }
      
  """
  @type create_model_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_prediction_job_result() :: %{}
      
  """
  @type create_batch_prediction_job_result() :: %{}

  @typedoc """

  ## Example:
      
      create_batch_import_job_request() :: %{
        optional("tags") => list(tag()),
        required("eventTypeName") => String.t() | Atom.t(),
        required("iamRoleArn") => String.t() | Atom.t(),
        required("inputPath") => String.t() | Atom.t(),
        required("jobId") => String.t() | Atom.t(),
        required("outputPath") => String.t() | Atom.t()
      }
      
  """
  @type create_batch_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_variable_result() :: %{
        "errors" => list(batch_get_variable_error()),
        "variables" => list(variable())
      }
      
  """
  @type batch_get_variable_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      prediction_explanations() :: %{
        "aggregatedVariablesImpactExplanations" => list(aggregated_variables_impact_explanation()),
        "variableImpactExplanations" => list(variable_impact_explanation())
      }
      
  """
  @type prediction_explanations() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      outcome() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type outcome() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_detector_result() :: %{}
      
  """
  @type put_detector_result() :: %{}

  @typedoc """

  ## Example:
      
      detector_version_summary() :: %{
        "description" => String.t() | Atom.t(),
        "detectorVersionId" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "status" => list(any())
      }
      
  """
  @type detector_version_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_metadata_request() :: %{
        required("description") => String.t() | Atom.t(),
        required("rule") => rule()
      }
      
  """
  @type update_rule_metadata_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      prediction_time_range() :: %{
        "endTime" => String.t() | Atom.t(),
        "startTime" => String.t() | Atom.t()
      }
      
  """
  @type prediction_time_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_detectors_request() :: %{
        optional("detectorId") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_detectors_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      variable_importance_metrics() :: %{
        "logOddsMetrics" => list(log_odds_metric())
      }
      
  """
  @type variable_importance_metrics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_label_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_label_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_kms_encryption_key_result() :: %{}
      
  """
  @type put_kms_encryption_key_result() :: %{}

  @typedoc """

  ## Example:
      
      put_external_model_result() :: %{}
      
  """
  @type put_external_model_result() :: %{}

  @typedoc """

  ## Example:
      
      get_event_request() :: %{
        required("eventId") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t()
      }
      
  """
  @type get_event_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingested_events_time_window() :: %{
        "endTime" => String.t() | Atom.t(),
        "startTime" => String.t() | Atom.t()
      }
      
  """
  @type ingested_events_time_window() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_labels_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_labels_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_scores() :: %{
        "modelVersion" => model_version(),
        "scores" => map()
      }
      
  """
  @type model_scores() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_variable_result() :: %{}
      
  """
  @type create_variable_result() :: %{}

  @typedoc """

  ## Example:
      
      event_orchestration() :: %{
        "eventBridgeEnabled" => boolean()
      }
      
  """
  @type event_orchestration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      data_validation_metrics() :: %{
        "fieldLevelMessages" => list(field_validation_message()),
        "fileLevelMessages" => list(file_validation_message())
      }
      
  """
  @type data_validation_metrics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_import_jobs_request() :: %{
        optional("jobId") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_batch_import_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      t_f_i_training_metrics_value() :: %{
        "metricDataPoints" => list(t_f_i_metric_data_point()),
        "modelPerformance" => t_f_i_model_performance()
      }
      
  """
  @type t_f_i_training_metrics_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_label_result() :: %{}
      
  """
  @type delete_label_result() :: %{}

  @typedoc """

  ## Example:
      
      update_variable_request() :: %{
        optional("defaultValue") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("variableType") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type update_variable_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_detectors_result() :: %{
        "detectors" => list(detector()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_detectors_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_list_elements_result() :: %{
        "elements" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_list_elements_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_external_model_result() :: %{}
      
  """
  @type delete_external_model_result() :: %{}

  @typedoc """

  ## Example:
      
      variable_entry() :: %{
        "dataSource" => String.t() | Atom.t(),
        "dataType" => String.t() | Atom.t(),
        "defaultValue" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "variableType" => String.t() | Atom.t()
      }
      
  """
  @type variable_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_entity_type_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type put_entity_type_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      training_metrics() :: %{
        "auc" => float(),
        "metricDataPoints" => list(metric_data_point())
      }
      
  """
  @type training_metrics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_variable_result() :: %{
        "errors" => list(batch_create_variable_error())
      }
      
  """
  @type batch_create_variable_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_version_status_request() :: %{
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any()),
        required("modelVersionNumber") => String.t() | Atom.t(),
        required("status") => list(any())
      }
      
  """
  @type update_model_version_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_metadata_request() :: %{
        required("description") => String.t() | Atom.t(),
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t()
      }
      
  """
  @type update_detector_version_metadata_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_prediction_result() :: %{
        "externalModelOutputs" => list(external_model_outputs()),
        "modelScores" => list(model_scores()),
        "ruleResults" => list(rule_result())
      }
      
  """
  @type get_event_prediction_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_labels_result() :: %{
        "labels" => list(label()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_labels_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_version_request() :: %{
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t()
      }
      
  """
  @type delete_detector_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_entity_types_result() :: %{
        "entityTypes" => list(entity_type()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_entity_types_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      file_validation_message() :: %{
        "content" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t(),
        "type" => String.t() | Atom.t()
      }
      
  """
  @type file_validation_message() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      external_events_detail() :: %{
        "dataAccessRoleArn" => String.t() | Atom.t(),
        "dataLocation" => String.t() | Atom.t()
      }
      
  """
  @type external_events_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      variable() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "dataSource" => list(any()),
        "dataType" => list(any()),
        "defaultValue" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "variableType" => String.t() | Atom.t()
      }
      
  """
  @type variable() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      log_odds_metric() :: %{
        "variableImportance" => float(),
        "variableName" => String.t() | Atom.t(),
        "variableType" => String.t() | Atom.t()
      }
      
  """
  @type log_odds_metric() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_outcome_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type put_outcome_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_type_result() :: %{}
      
  """
  @type delete_event_type_result() :: %{}

  @typedoc """

  ## Example:
      
      o_f_i_model_performance() :: %{
        "auc" => float(),
        "uncertaintyRange" => uncertainty_range()
      }
      
  """
  @type o_f_i_model_performance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_version_result() :: %{
        "arn" => String.t() | Atom.t(),
        "externalEventsDetail" => external_events_detail(),
        "ingestedEventsDetail" => ingested_events_detail(),
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any()),
        "modelVersionNumber" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "trainingDataSchema" => training_data_schema(),
        "trainingDataSource" => list(any())
      }
      
  """
  @type get_model_version_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_version_status_result() :: %{}
      
  """
  @type update_model_version_status_result() :: %{}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "detectorId" => String.t() | Atom.t(),
        "ruleId" => String.t() | Atom.t(),
        "ruleVersion" => String.t() | Atom.t()
      }
      
  """
  @type rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_request() :: %{
        optional("deleteAuditHistory") => boolean(),
        required("eventId") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t()
      }
      
  """
  @type delete_event_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_version_result() :: %{}
      
  """
  @type delete_detector_version_result() :: %{}

  @typedoc """

  ## Example:
      
      cancel_batch_prediction_job_result() :: %{}
      
  """
  @type cancel_batch_prediction_job_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_outcome_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_outcome_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_external_models_request() :: %{
        optional("maxResults") => integer(),
        optional("modelEndpoint") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_external_models_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      aggregated_variables_importance_metrics() :: %{
        "logOddsMetrics" => list(aggregated_log_odds_metric())
      }
      
  """
  @type aggregated_variables_importance_metrics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_models_result() :: %{
        "models" => list(model()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_models_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_rules_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("ruleId") => String.t() | Atom.t(),
        optional("ruleVersion") => String.t() | Atom.t(),
        required("detectorId") => String.t() | Atom.t()
      }
      
  """
  @type get_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_variable_request() :: %{
        optional("tags") => list(tag()),
        required("variableEntries") => list(variable_entry())
      }
      
  """
  @type batch_create_variable_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_external_model_request() :: %{
        required("modelEndpoint") => String.t() | Atom.t()
      }
      
  """
  @type delete_external_model_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "nextToken" => String.t() | Atom.t(),
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_prediction_jobs_request() :: %{
        optional("jobId") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_batch_prediction_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      external_model_summary() :: %{
        "modelEndpoint" => String.t() | Atom.t(),
        "modelSource" => list(any())
      }
      
  """
  @type external_model_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_event_type_result() :: %{}
      
  """
  @type put_event_type_result() :: %{}

  @typedoc """

  ## Example:
      
      evaluated_model_version() :: %{
        "evaluations" => list(model_version_evaluation()),
        "modelId" => String.t() | Atom.t(),
        "modelType" => String.t() | Atom.t(),
        "modelVersion" => String.t() | Atom.t()
      }
      
  """
  @type evaluated_model_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_entity_type_result() :: %{}
      
  """
  @type put_entity_type_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_model_versions_result() :: %{
        "modelVersionDetails" => list(model_version_detail()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type describe_model_versions_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "currentLabel" => String.t() | Atom.t(),
        "entities" => list(entity()),
        "eventId" => String.t() | Atom.t(),
        "eventTimestamp" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "eventVariables" => map(),
        "labelTimestamp" => String.t() | Atom.t()
      }
      
  """
  @type event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_version_request() :: %{
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any()),
        required("modelVersionNumber") => String.t() | Atom.t()
      }
      
  """
  @type delete_model_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      model_endpoint_data_blob() :: %{
        "byteBuffer" => binary(),
        "contentType" => String.t() | Atom.t()
      }
      
  """
  @type model_endpoint_data_blob() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_request() :: %{
        required("modelId") => String.t() | Atom.t(),
        required("modelType") => list(any())
      }
      
  """
  @type delete_model_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_detector_version_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("externalModelEndpoints") => list(String.t() | Atom.t()),
        optional("modelVersions") => list(model_version()),
        optional("ruleExecutionMode") => list(any()),
        optional("tags") => list(tag()),
        required("detectorId") => String.t() | Atom.t(),
        required("rules") => list(rule())
      }
      
  """
  @type create_detector_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_variable_error() :: %{
        "code" => integer(),
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type batch_get_variable_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_external_models_result() :: %{
        "externalModels" => list(external_model()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_external_models_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_status_request() :: %{
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t(),
        required("status") => list(any())
      }
      
  """
  @type update_detector_version_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_models_request() :: %{
        optional("maxResults") => integer(),
        optional("modelId") => String.t() | Atom.t(),
        optional("modelType") => list(any()),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_models_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_prediction_metadata_result() :: %{
        "detectorId" => String.t() | Atom.t(),
        "detectorVersionId" => String.t() | Atom.t(),
        "detectorVersionStatus" => String.t() | Atom.t(),
        "entityId" => String.t() | Atom.t(),
        "entityType" => String.t() | Atom.t(),
        "evaluatedExternalModels" => list(evaluated_external_model()),
        "evaluatedModelVersions" => list(evaluated_model_version()),
        "eventId" => String.t() | Atom.t(),
        "eventTimestamp" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "eventVariables" => list(event_variable_summary()),
        "outcomes" => list(String.t() | Atom.t()),
        "predictionTimestamp" => String.t() | Atom.t(),
        "ruleExecutionMode" => list(any()),
        "rules" => list(evaluated_rule())
      }
      
  """
  @type get_event_prediction_metadata_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      aggregated_log_odds_metric() :: %{
        "aggregatedVariablesImportance" => float(),
        "variableNames" => list(String.t() | Atom.t())
      }
      
  """
  @type aggregated_log_odds_metric() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_detector_version_request() :: %{
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t()
      }
      
  """
  @type get_detector_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_result() :: %{
        "outcomes" => list(String.t() | Atom.t()),
        "ruleId" => String.t() | Atom.t()
      }
      
  """
  @type rule_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_delete_events_by_event_type_status_result() :: %{
        "eventTypeName" => String.t() | Atom.t(),
        "eventsDeletionStatus" => list(any())
      }
      
  """
  @type get_delete_events_by_event_type_status_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_events_by_event_type_result() :: %{
        "eventTypeName" => String.t() | Atom.t(),
        "eventsDeletionStatus" => String.t() | Atom.t()
      }
      
  """
  @type delete_events_by_event_type_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_version_result() :: %{
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any()),
        "modelVersionNumber" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t()
      }
      
  """
  @type update_model_version_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_result() :: %{
        "rule" => rule()
      }
      
  """
  @type create_rule_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_list_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("elements") => list(String.t() | Atom.t()),
        optional("updateMode") => list(any()),
        optional("variableType") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type update_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_list_result() :: %{}
      
  """
  @type delete_list_result() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("resourceARN") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_result() :: %{}
      
  """
  @type delete_model_result() :: %{}

  @typedoc """

  ## Example:
      
      get_event_types_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_event_types_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_prediction_metadata_request() :: %{
        required("detectorId") => String.t() | Atom.t(),
        required("detectorVersionId") => String.t() | Atom.t(),
        required("eventId") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t(),
        required("predictionTimestamp") => String.t() | Atom.t()
      }
      
  """
  @type get_event_prediction_metadata_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_prediction_job_result() :: %{}
      
  """
  @type delete_batch_prediction_job_result() :: %{}

  @typedoc """

  ## Example:
      
      put_kms_encryption_key_request() :: %{
        required("kmsEncryptionKeyArn") => String.t() | Atom.t()
      }
      
  """
  @type put_kms_encryption_key_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_result() :: %{}
      
  """
  @type delete_event_result() :: %{}

  @typedoc """

  ## Example:
      
      evaluated_rule() :: %{
        "evaluated" => boolean(),
        "expression" => String.t() | Atom.t(),
        "expressionWithValues" => String.t() | Atom.t(),
        "matched" => boolean(),
        "outcomes" => list(String.t() | Atom.t()),
        "ruleId" => String.t() | Atom.t(),
        "ruleVersion" => String.t() | Atom.t()
      }
      
  """
  @type evaluated_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_prediction_jobs_result() :: %{
        "batchPredictions" => list(batch_prediction()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_batch_prediction_jobs_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{}
      
  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      update_event_label_request() :: %{
        required("assignedLabel") => String.t() | Atom.t(),
        required("eventId") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t(),
        required("labelTimestamp") => String.t() | Atom.t()
      }
      
  """
  @type update_event_label_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      event_type() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "entityTypes" => list(String.t() | Atom.t()),
        "eventIngestion" => list(any()),
        "eventOrchestration" => event_orchestration(),
        "eventVariables" => list(String.t() | Atom.t()),
        "ingestedEventStatistics" => ingested_event_statistics(),
        "labels" => list(String.t() | Atom.t()),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type event_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_outcome_result() :: %{}
      
  """
  @type put_outcome_result() :: %{}

  @typedoc """

  ## Example:
      
      training_result() :: %{
        "dataValidationMetrics" => data_validation_metrics(),
        "trainingMetrics" => training_metrics(),
        "variableImportanceMetrics" => variable_importance_metrics()
      }
      
  """
  @type training_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_variables_result() :: %{
        "nextToken" => String.t() | Atom.t(),
        "variables" => list(variable())
      }
      
  """
  @type get_variables_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      a_t_i_model_performance() :: %{
        "asi" => float()
      }
      
  """
  @type a_t_i_model_performance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      external_model_outputs() :: %{
        "externalModel" => external_model_summary(),
        "outputs" => map()
      }
      
  """
  @type external_model_outputs() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_lists_metadata_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_lists_metadata_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_event_result() :: %{}
      
  """
  @type send_event_result() :: %{}

  @typedoc """

  ## Example:
      
      kms_key() :: %{
        "kmsEncryptionKeyArn" => String.t() | Atom.t()
      }
      
  """
  @type kms_key() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_status_result() :: %{}
      
  """
  @type update_detector_version_status_result() :: %{}

  @typedoc """

  ## Example:
      
      put_external_model_request() :: %{
        optional("tags") => list(tag()),
        required("inputConfiguration") => model_input_configuration(),
        required("invokeModelEndpointRoleArn") => String.t() | Atom.t(),
        required("modelEndpoint") => String.t() | Atom.t(),
        required("modelEndpointStatus") => list(any()),
        required("modelSource") => list(any()),
        required("outputConfiguration") => model_output_configuration()
      }
      
  """
  @type put_external_model_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      aggregated_variables_impact_explanation() :: %{
        "eventVariableNames" => list(String.t() | Atom.t()),
        "logOddsImpact" => float(),
        "relativeImpact" => String.t() | Atom.t()
      }
      
  """
  @type aggregated_variables_impact_explanation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_events_by_event_type_request() :: %{
        required("eventTypeName") => String.t() | Atom.t()
      }
      
  """
  @type delete_events_by_event_type_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_result() :: %{}
      
  """
  @type update_model_result() :: %{}

  @typedoc """

  ## Example:
      
      event_prediction_summary() :: %{
        "detectorId" => String.t() | Atom.t(),
        "detectorVersionId" => String.t() | Atom.t(),
        "eventId" => String.t() | Atom.t(),
        "eventTimestamp" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "predictionTimestamp" => String.t() | Atom.t()
      }
      
  """
  @type event_prediction_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_predictions_result() :: %{
        "eventPredictionSummaries" => list(event_prediction_summary()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_event_predictions_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_type_request() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_event_type_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_predictions_request() :: %{
        optional("detectorId") => filter_condition(),
        optional("detectorVersionId") => filter_condition(),
        optional("eventId") => filter_condition(),
        optional("eventType") => filter_condition(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("predictionTimeRange") => prediction_time_range()
      }
      
  """
  @type list_event_predictions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      uncertainty_range() :: %{
        "lowerBoundValue" => float(),
        "upperBoundValue" => float()
      }
      
  """
  @type uncertainty_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_batch_prediction_job_request() :: %{
        required("jobId") => String.t() | Atom.t()
      }
      
  """
  @type cancel_batch_prediction_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_prediction_request() :: %{
        optional("detectorVersionId") => String.t() | Atom.t(),
        optional("externalModelEndpointDataBlobs") => map(),
        required("detectorId") => String.t() | Atom.t(),
        required("entities") => list(entity()),
        required("eventId") => String.t() | Atom.t(),
        required("eventTimestamp") => String.t() | Atom.t(),
        required("eventTypeName") => String.t() | Atom.t(),
        required("eventVariables") => map()
      }
      
  """
  @type get_event_prediction_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_detector_version_result() :: %{
        "detectorId" => String.t() | Atom.t(),
        "detectorVersionId" => String.t() | Atom.t(),
        "status" => list(any())
      }
      
  """
  @type create_detector_version_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_version_metadata_result() :: %{}
      
  """
  @type update_detector_version_metadata_result() :: %{}

  @typedoc """

  ## Example:
      
      model() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "modelId" => String.t() | Atom.t(),
        "modelType" => list(any())
      }
      
  """
  @type model() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_entity_types_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }
      
  """
  @type get_entity_types_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_label_result() :: %{}
      
  """
  @type put_label_result() :: %{}

  @typedoc """

  ## Example:
      
      label_schema() :: %{
        "labelMapper" => map(),
        "unlabeledEventsTreatment" => list(any())
      }
      
  """
  @type label_schema() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_outcomes_result() :: %{
        "nextToken" => String.t() | Atom.t(),
        "outcomes" => list(outcome())
      }
      
  """
  @type get_outcomes_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingested_events_detail() :: %{
        "ingestedEventsTimeWindow" => ingested_events_time_window()
      }
      
  """
  @type ingested_events_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_import_jobs_result() :: %{
        "batchImports" => list(batch_import()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_batch_import_jobs_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_event_type_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("eventIngestion") => list(any()),
        optional("eventOrchestration") => event_orchestration(),
        optional("labels") => list(String.t() | Atom.t()),
        optional("tags") => list(tag()),
        required("entityTypes") => list(String.t() | Atom.t()),
        required("eventVariables") => list(String.t() | Atom.t()),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type put_event_type_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_result() :: %{}
      
  """
  @type delete_detector_result() :: %{}

  @typedoc """

  ## Example:
      
      detector() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "detectorId" => String.t() | Atom.t(),
        "eventTypeName" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t()
      }
      
  """
  @type detector() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_metadata_result() :: %{}
      
  """
  @type update_rule_metadata_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_rule_result() :: %{}
      
  """
  @type delete_rule_result() :: %{}

  @typedoc """

  ## Example:
      
      training_metrics_v2() :: %{
        "ati" => a_t_i_training_metrics_value(),
        "ofi" => o_f_i_training_metrics_value(),
        "tfi" => t_f_i_training_metrics_value()
      }
      
  """
  @type training_metrics_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      label() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }
      
  """
  @type label() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_rules_result() :: %{
        "nextToken" => String.t() | Atom.t(),
        "ruleDetails" => list(rule_detail())
      }
      
  """
  @type get_rules_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_request() :: %{
        required("detectorId") => String.t() | Atom.t()
      }
      
  """
  @type delete_detector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_prediction_job_request() :: %{
        required("jobId") => String.t() | Atom.t()
      }
      
  """
  @type delete_batch_prediction_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_detector_version_result() :: %{
        "arn" => String.t() | Atom.t(),
        "createdTime" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "detectorId" => String.t() | Atom.t(),
        "detectorVersionId" => String.t() | Atom.t(),
        "externalModelEndpoints" => list(String.t() | Atom.t()),
        "lastUpdatedTime" => String.t() | Atom.t(),
        "modelVersions" => list(model_version()),
        "ruleExecutionMode" => list(any()),
        "rules" => list(rule()),
        "status" => list(any())
      }
      
  """
  @type get_detector_version_result() :: %{String.t() | Atom.t() => any()}

  @type batch_create_variable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_get_variable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type cancel_batch_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_batch_prediction_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_batch_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_batch_prediction_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_detector_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_variable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_batch_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_batch_prediction_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_detector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_detector_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_entity_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_event_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_events_by_event_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_external_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_label_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_outcome_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_variable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_detector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_model_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_batch_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_batch_prediction_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_delete_events_by_event_type_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_detector_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_detectors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_entity_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_prediction_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()

  @type get_event_prediction_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_external_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kms_encryption_key_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_labels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_list_elements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lists_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_outcomes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_variables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_predictions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type put_detector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type put_entity_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type put_event_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type put_external_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type put_kms_encryption_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_label_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type put_outcome_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type send_event_errors() ::
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
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_detector_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_detector_version_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_detector_version_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_event_label_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_list_errors() ::
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

  @type update_model_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_model_version_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_rule_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_rule_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_variable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-11-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "frauddetector",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "FraudDetector",
      signature_version: "v4",
      signing_name: "frauddetector",
      target_prefix: "AWSHawksNestServiceFacade"
    }
  end

  @doc """
  Creates a batch of variables.
  """
  @spec batch_create_variable(map(), batch_create_variable_request(), list()) ::
          {:ok, batch_create_variable_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_variable_errors()}
  def batch_create_variable(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchCreateVariable", input, options)
  end

  @doc """
  Gets a batch of variables.
  """
  @spec batch_get_variable(map(), batch_get_variable_request(), list()) ::
          {:ok, batch_get_variable_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_variable_errors()}
  def batch_get_variable(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetVariable", input, options)
  end

  @doc """
  Cancels an in-progress batch import job.
  """
  @spec cancel_batch_import_job(map(), cancel_batch_import_job_request(), list()) ::
          {:ok, cancel_batch_import_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_batch_import_job_errors()}
  def cancel_batch_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelBatchImportJob", input, options)
  end

  @doc """
  Cancels the specified batch prediction job.
  """
  @spec cancel_batch_prediction_job(map(), cancel_batch_prediction_job_request(), list()) ::
          {:ok, cancel_batch_prediction_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_batch_prediction_job_errors()}
  def cancel_batch_prediction_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelBatchPredictionJob", input, options)
  end

  @doc """
  Creates a batch import job.
  """
  @spec create_batch_import_job(map(), create_batch_import_job_request(), list()) ::
          {:ok, create_batch_import_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_batch_import_job_errors()}
  def create_batch_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBatchImportJob", input, options)
  end

  @doc """
  Creates a batch prediction job.
  """
  @spec create_batch_prediction_job(map(), create_batch_prediction_job_request(), list()) ::
          {:ok, create_batch_prediction_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_batch_prediction_job_errors()}
  def create_batch_prediction_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBatchPredictionJob", input, options)
  end

  @doc """
  Creates a detector version.

  The detector version starts in a `DRAFT` status.
  """
  @spec create_detector_version(map(), create_detector_version_request(), list()) ::
          {:ok, create_detector_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_detector_version_errors()}
  def create_detector_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDetectorVersion", input, options)
  end

  @doc """

  Creates a list.

  List is a set of input data for a variable in your event dataset. You use the
  input data in a rule that's associated with your detector.
  For more information, see
  [Lists](https://docs.aws.amazon.com/frauddetector/latest/ug/lists.html).
  """
  @spec create_list(map(), create_list_request(), list()) ::
          {:ok, create_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_list_errors()}
  def create_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateList", input, options)
  end

  @doc """
  Creates a model using the specified model type.
  """
  @spec create_model(map(), create_model_request(), list()) ::
          {:ok, create_model_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateModel", input, options)
  end

  @doc """
  Creates a version of the model using the specified model type and model id.
  """
  @spec create_model_version(map(), create_model_version_request(), list()) ::
          {:ok, create_model_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_version_errors()}
  def create_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateModelVersion", input, options)
  end

  @doc """
  Creates a rule for use with the specified detector.
  """
  @spec create_rule(map(), create_rule_request(), list()) ::
          {:ok, create_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRule", input, options)
  end

  @doc """
  Creates a variable.
  """
  @spec create_variable(map(), create_variable_request(), list()) ::
          {:ok, create_variable_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_variable_errors()}
  def create_variable(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVariable", input, options)
  end

  @doc """
  Deletes the specified batch import job ID record.

  This action does not delete the data that was batch imported.
  """
  @spec delete_batch_import_job(map(), delete_batch_import_job_request(), list()) ::
          {:ok, delete_batch_import_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_batch_import_job_errors()}
  def delete_batch_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBatchImportJob", input, options)
  end

  @doc """
  Deletes a batch prediction job.
  """
  @spec delete_batch_prediction_job(map(), delete_batch_prediction_job_request(), list()) ::
          {:ok, delete_batch_prediction_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_batch_prediction_job_errors()}
  def delete_batch_prediction_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBatchPredictionJob", input, options)
  end

  @doc """
  Deletes the detector.

  Before deleting a detector, you must first delete all detector versions and rule
  versions associated with the detector.

  When you delete a detector, Amazon Fraud Detector permanently deletes the
  detector and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_detector(map(), delete_detector_request(), list()) ::
          {:ok, delete_detector_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_detector_errors()}
  def delete_detector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDetector", input, options)
  end

  @doc """
  Deletes the detector version.

  You cannot delete detector versions that are in `ACTIVE` status.

  When you delete a detector version, Amazon Fraud Detector permanently deletes
  the detector and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_detector_version(map(), delete_detector_version_request(), list()) ::
          {:ok, delete_detector_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_detector_version_errors()}
  def delete_detector_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDetectorVersion", input, options)
  end

  @doc """
  Deletes an entity type.

  You cannot delete an entity type that is included in an event type.

  When you delete an entity type, Amazon Fraud Detector permanently deletes that
  entity type and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_entity_type(map(), delete_entity_type_request(), list()) ::
          {:ok, delete_entity_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_entity_type_errors()}
  def delete_entity_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEntityType", input, options)
  end

  @doc """
  Deletes the specified event.

  When you delete an event, Amazon Fraud Detector permanently deletes that event
  and the event data is no longer stored in Amazon Fraud Detector.
  If `deleteAuditHistory` is `True`, event data is available through search for up
  to 30 seconds after the delete operation is completed.
  """
  @spec delete_event(map(), delete_event_request(), list()) ::
          {:ok, delete_event_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_errors()}
  def delete_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEvent", input, options)
  end

  @doc """
  Deletes an event type.

  You cannot delete an event type that is used in a detector or a model.

  When you delete an event type, Amazon Fraud Detector permanently deletes that
  event type and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_event_type(map(), delete_event_type_request(), list()) ::
          {:ok, delete_event_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_type_errors()}
  def delete_event_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventType", input, options)
  end

  @doc """
  Deletes all events of a particular event type.
  """
  @spec delete_events_by_event_type(map(), delete_events_by_event_type_request(), list()) ::
          {:ok, delete_events_by_event_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_events_by_event_type_errors()}
  def delete_events_by_event_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventsByEventType", input, options)
  end

  @doc """
  Removes a SageMaker model from Amazon Fraud Detector.

  You can remove an Amazon SageMaker model if it is not associated with a detector
  version. Removing a SageMaker model disconnects it from Amazon Fraud Detector,
  but the model remains available in SageMaker.
  """
  @spec delete_external_model(map(), delete_external_model_request(), list()) ::
          {:ok, delete_external_model_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_external_model_errors()}
  def delete_external_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExternalModel", input, options)
  end

  @doc """
  Deletes a label.

  You cannot delete labels that are included in an event type in Amazon Fraud
  Detector.

  You cannot delete a label assigned to an event ID. You must first delete the
  relevant event ID.

  When you delete a label, Amazon Fraud Detector permanently deletes that label
  and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_label(map(), delete_label_request(), list()) ::
          {:ok, delete_label_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_label_errors()}
  def delete_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLabel", input, options)
  end

  @doc """

  Deletes the list, provided it is not used in a rule.

  When you delete a list, Amazon Fraud Detector permanently deletes that list and
  the elements in the list.
  """
  @spec delete_list(map(), delete_list_request(), list()) ::
          {:ok, delete_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_list_errors()}
  def delete_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteList", input, options)
  end

  @doc """
  Deletes a model.

  You can delete models and model versions in Amazon Fraud Detector, provided that
  they are not associated with a detector version.

  When you delete a model, Amazon Fraud Detector permanently deletes that model
  and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_model(map(), delete_model_request(), list()) ::
          {:ok, delete_model_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteModel", input, options)
  end

  @doc """
  Deletes a model version.

  You can delete models and model versions in Amazon Fraud Detector, provided that
  they are not associated with a detector version.

  When you delete a model version, Amazon Fraud Detector permanently deletes that
  model version and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_model_version(map(), delete_model_version_request(), list()) ::
          {:ok, delete_model_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_model_version_errors()}
  def delete_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteModelVersion", input, options)
  end

  @doc """
  Deletes an outcome.

  You cannot delete an outcome that is used in a rule version.

  When you delete an outcome, Amazon Fraud Detector permanently deletes that
  outcome and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_outcome(map(), delete_outcome_request(), list()) ::
          {:ok, delete_outcome_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_outcome_errors()}
  def delete_outcome(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOutcome", input, options)
  end

  @doc """
  Deletes the rule.

  You cannot delete a rule if it is used by an `ACTIVE` or `INACTIVE` detector
  version.

  When you delete a rule, Amazon Fraud Detector permanently deletes that rule and
  the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_rule(map(), delete_rule_request(), list()) ::
          {:ok, delete_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """
  Deletes a variable.

  You can't delete variables that are included in an event type in Amazon Fraud
  Detector.

  Amazon Fraud Detector automatically deletes model output variables and SageMaker
  model output variables when you delete the model. You can't delete these
  variables manually.

  When you delete a variable, Amazon Fraud Detector permanently deletes that
  variable and the data is no longer stored in Amazon Fraud Detector.
  """
  @spec delete_variable(map(), delete_variable_request(), list()) ::
          {:ok, delete_variable_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_variable_errors()}
  def delete_variable(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVariable", input, options)
  end

  @doc """
  Gets all versions for a specified detector.
  """
  @spec describe_detector(map(), describe_detector_request(), list()) ::
          {:ok, describe_detector_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_detector_errors()}
  def describe_detector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDetector", input, options)
  end

  @doc """
  Gets all of the model versions for the specified model type or for the specified
  model type and model ID.

  You can also get details for a single, specified model version.
  """
  @spec describe_model_versions(map(), describe_model_versions_request(), list()) ::
          {:ok, describe_model_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_model_versions_errors()}
  def describe_model_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeModelVersions", input, options)
  end

  @doc """
  Gets all batch import jobs or a specific job of the specified ID.

  This is a paginated API. If you provide a null `maxResults`,
  this action retrieves a maximum of 50 records per page. If you provide a
  `maxResults`, the value must be between 1 and 50.
  To get the next page results, provide the pagination token from the
  `GetBatchImportJobsResponse` as part of your request.
  A null pagination token fetches the records from the beginning.
  """
  @spec get_batch_import_jobs(map(), get_batch_import_jobs_request(), list()) ::
          {:ok, get_batch_import_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_batch_import_jobs_errors()}
  def get_batch_import_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBatchImportJobs", input, options)
  end

  @doc """
  Gets all batch prediction jobs or a specific job if you specify a job ID.

  This is a paginated API. If you provide a null maxResults, this action retrieves
  a maximum of 50 records per page. If you provide a maxResults, the value must be
  between 1 and 50. To get the next page results, provide the pagination token
  from the GetBatchPredictionJobsResponse as part of your request. A null
  pagination token fetches the records from the beginning.
  """
  @spec get_batch_prediction_jobs(map(), get_batch_prediction_jobs_request(), list()) ::
          {:ok, get_batch_prediction_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_batch_prediction_jobs_errors()}
  def get_batch_prediction_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBatchPredictionJobs", input, options)
  end

  @doc """
  Retrieves the status of a `DeleteEventsByEventType` action.
  """
  @spec get_delete_events_by_event_type_status(
          map(),
          get_delete_events_by_event_type_status_request(),
          list()
        ) ::
          {:ok, get_delete_events_by_event_type_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_delete_events_by_event_type_status_errors()}
  def get_delete_events_by_event_type_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeleteEventsByEventTypeStatus", input, options)
  end

  @doc """
  Gets a particular detector version.
  """
  @spec get_detector_version(map(), get_detector_version_request(), list()) ::
          {:ok, get_detector_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_detector_version_errors()}
  def get_detector_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDetectorVersion", input, options)
  end

  @doc """
  Gets all detectors or a single detector if a `detectorId` is specified.

  This is a paginated API. If you
  provide a null `maxResults`, this action retrieves a maximum of 10 records
  per page. If you provide a `maxResults`, the value must be between 5 and 10.
  To get the next page results, provide the pagination token from the
  `GetDetectorsResponse` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_detectors(map(), get_detectors_request(), list()) ::
          {:ok, get_detectors_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_detectors_errors()}
  def get_detectors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDetectors", input, options)
  end

  @doc """
  Gets all entity types or a specific entity type if a name is specified.

  This is a paginated API. If you
  provide a null `maxResults`, this action retrieves a maximum of 10 records
  per page. If you provide a `maxResults`, the value must be between 5 and 10.
  To get the next page results, provide the pagination token from the
  `GetEntityTypesResponse` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_entity_types(map(), get_entity_types_request(), list()) ::
          {:ok, get_entity_types_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_entity_types_errors()}
  def get_entity_types(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEntityTypes", input, options)
  end

  @doc """
  Retrieves details of events stored with Amazon Fraud Detector.

  This action does not retrieve prediction results.
  """
  @spec get_event(map(), get_event_request(), list()) ::
          {:ok, get_event_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_errors()}
  def get_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEvent", input, options)
  end

  @doc """
  Evaluates an event against a detector version.

  If a version ID is not provided, the detector’s (`ACTIVE`) version is used.
  """
  @spec get_event_prediction(map(), get_event_prediction_request(), list()) ::
          {:ok, get_event_prediction_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_prediction_errors()}
  def get_event_prediction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEventPrediction", input, options)
  end

  @doc """

  Gets details of the past fraud predictions for the specified event ID, event
  type, detector ID, and detector version ID that was generated in the specified
  time period.
  """
  @spec get_event_prediction_metadata(map(), get_event_prediction_metadata_request(), list()) ::
          {:ok, get_event_prediction_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_prediction_metadata_errors()}
  def get_event_prediction_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEventPredictionMetadata", input, options)
  end

  @doc """
  Gets all event types or a specific event type if name is provided.

  This is a paginated API. If you
  provide a null `maxResults`, this action retrieves a maximum of 10 records
  per page. If you provide a `maxResults`, the value must be between 5 and 10.
  To get the next page results, provide the pagination token from the
  `GetEventTypesResponse` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_event_types(map(), get_event_types_request(), list()) ::
          {:ok, get_event_types_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_types_errors()}
  def get_event_types(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEventTypes", input, options)
  end

  @doc """
  Gets the details for one or more Amazon SageMaker models that have been imported
  into the
  service.

  This is a paginated API. If you provide a null `maxResults`, this
  actions retrieves a maximum of 10 records per page. If you provide a
  `maxResults`, the value must be between 5 and 10. To get the next page
  results, provide the pagination token from the `GetExternalModelsResult` as part
  of your request. A null pagination token fetches the records from the beginning.
  """
  @spec get_external_models(map(), get_external_models_request(), list()) ::
          {:ok, get_external_models_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_external_models_errors()}
  def get_external_models(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExternalModels", input, options)
  end

  @doc """
  Gets the encryption key if a KMS key has been specified to be used to encrypt
  content in Amazon Fraud Detector.
  """
  @spec get_kms_encryption_key(map(), %{}, list()) ::
          {:ok, get_kms_encryption_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kms_encryption_key_errors()}
  def get_kms_encryption_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetKMSEncryptionKey", input, options)
  end

  @doc """
  Gets all labels or a specific label if name is provided.

  This is a paginated API. If you
  provide a null `maxResults`, this action retrieves a maximum of 50 records
  per page. If you provide a `maxResults`, the value must be between 10 and 50.
  To get the next page results, provide the pagination token from the
  `GetGetLabelsResponse` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_labels(map(), get_labels_request(), list()) ::
          {:ok, get_labels_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_labels_errors()}
  def get_labels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLabels", input, options)
  end

  @doc """

  Gets all the elements in the specified list.
  """
  @spec get_list_elements(map(), get_list_elements_request(), list()) ::
          {:ok, get_list_elements_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_list_elements_errors()}
  def get_list_elements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetListElements", input, options)
  end

  @doc """

  Gets the metadata of either all the lists under the account or the specified
  list.
  """
  @spec get_lists_metadata(map(), get_lists_metadata_request(), list()) ::
          {:ok, get_lists_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lists_metadata_errors()}
  def get_lists_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetListsMetadata", input, options)
  end

  @doc """
  Gets the details of the specified model version.
  """
  @spec get_model_version(map(), get_model_version_request(), list()) ::
          {:ok, get_model_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_model_version_errors()}
  def get_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetModelVersion", input, options)
  end

  @doc """
  Gets one or more models.

  Gets all models for the Amazon Web Services account if no model type and no
  model id provided. Gets all models for the Amazon Web Services account and model
  type, if the model type is specified but model id is not provided. Gets a
  specific model if (model type, model id) tuple is specified.

  This is a paginated API. If you
  provide a null `maxResults`, this action retrieves a maximum of 10 records
  per page. If you provide a `maxResults`, the value must be between 1 and 10.
  To get the next page results, provide the pagination token from the
  response as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_models(map(), get_models_request(), list()) ::
          {:ok, get_models_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_models_errors()}
  def get_models(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetModels", input, options)
  end

  @doc """
  Gets one or more outcomes.

  This is a paginated
  API. If you provide a null `maxResults`, this actions retrieves a maximum of
  100 records per page. If you provide a `maxResults`, the value must be
  between 50 and 100. To get the next page results, provide the pagination token
  from the
  `GetOutcomesResult` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec get_outcomes(map(), get_outcomes_request(), list()) ::
          {:ok, get_outcomes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_outcomes_errors()}
  def get_outcomes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOutcomes", input, options)
  end

  @doc """
  Get all rules for a detector (paginated) if `ruleId` and `ruleVersion` are not
  specified.

  Gets all rules for the detector and the `ruleId` if present (paginated). Gets a
  specific rule if both the `ruleId` and the `ruleVersion` are specified.

  This is a paginated API. Providing null maxResults results in retrieving maximum
  of 100 records per page. If you provide maxResults the value must be between 50
  and 100. To get the next page result, a provide a pagination token from
  GetRulesResult as part of your request. Null pagination token fetches the
  records from the beginning.
  """
  @spec get_rules(map(), get_rules_request(), list()) ::
          {:ok, get_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rules_errors()}
  def get_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRules", input, options)
  end

  @doc """
  Gets all of the variables or the specific variable.

  This is a
  paginated API. Providing null `maxSizePerPage` results in retrieving maximum of
  100 records per page. If you provide `maxSizePerPage` the value must be between
  50 and 100. To get the next page result, a provide a pagination token from
  `GetVariablesResult` as part of your request. Null pagination token
  fetches the records from the beginning.
  """
  @spec get_variables(map(), get_variables_request(), list()) ::
          {:ok, get_variables_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_variables_errors()}
  def get_variables(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetVariables", input, options)
  end

  @doc """
  Gets a list of past predictions.

  The list can be filtered by detector ID, detector version ID, event ID, event
  type, or by specifying a time period.
  If filter is not specified, the most recent prediction is returned.

  For example, the following filter lists all past predictions for `xyz` event
  type -

  ```
  {
  "eventType":{
  "value": "xyz" }”
  }
  ```

  This is a paginated API. If you provide a null `maxResults`, this action will
  retrieve a maximum of 10 records per page.
  If you provide a `maxResults`, the value must be between 50 and 100. To get the
  next page results, provide
  the `nextToken` from the response as part of your request. A null `nextToken`
  fetches the records from the beginning.
  """
  @spec list_event_predictions(map(), list_event_predictions_request(), list()) ::
          {:ok, list_event_predictions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_predictions_errors()}
  def list_event_predictions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEventPredictions", input, options)
  end

  @doc """
  Lists all tags associated with the resource.

  This is a paginated API. To get the next page results, provide the pagination
  token from the
  response as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a detector.
  """
  @spec put_detector(map(), put_detector_request(), list()) ::
          {:ok, put_detector_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_detector_errors()}
  def put_detector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDetector", input, options)
  end

  @doc """
  Creates or updates an entity type.

  An entity represents who is performing the event. As part of a fraud prediction,
  you pass the entity ID to indicate the specific entity who performed the event.
  An entity type classifies the entity. Example classifications include customer,
  merchant, or account.
  """
  @spec put_entity_type(map(), put_entity_type_request(), list()) ::
          {:ok, put_entity_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_entity_type_errors()}
  def put_entity_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutEntityType", input, options)
  end

  @doc """
  Creates or updates an event type.

  An event is a business activity that is evaluated for fraud risk. With Amazon
  Fraud Detector, you generate fraud predictions for events. An event type defines
  the structure for an event sent to Amazon Fraud Detector. This includes the
  variables sent as part of the event, the entity performing the event (such as a
  customer), and the labels that classify the event. Example event types include
  online payment transactions, account registrations, and authentications.
  """
  @spec put_event_type(map(), put_event_type_request(), list()) ::
          {:ok, put_event_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_event_type_errors()}
  def put_event_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutEventType", input, options)
  end

  @doc """
  Creates or updates an Amazon SageMaker model endpoint.

  You can also use this action to update the configuration of the model endpoint,
  including the IAM role and/or the mapped variables.
  """
  @spec put_external_model(map(), put_external_model_request(), list()) ::
          {:ok, put_external_model_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_external_model_errors()}
  def put_external_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutExternalModel", input, options)
  end

  @doc """
  Specifies the KMS key to be used to encrypt content in Amazon Fraud Detector.
  """
  @spec put_kms_encryption_key(map(), put_kms_encryption_key_request(), list()) ::
          {:ok, put_kms_encryption_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_kms_encryption_key_errors()}
  def put_kms_encryption_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutKMSEncryptionKey", input, options)
  end

  @doc """
  Creates or updates label.

  A label classifies an event as fraudulent or legitimate. Labels are associated
  with event types and used to train supervised machine learning models in Amazon
  Fraud Detector.
  """
  @spec put_label(map(), put_label_request(), list()) ::
          {:ok, put_label_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_label_errors()}
  def put_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutLabel", input, options)
  end

  @doc """
  Creates or updates an outcome.
  """
  @spec put_outcome(map(), put_outcome_request(), list()) ::
          {:ok, put_outcome_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_outcome_errors()}
  def put_outcome(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutOutcome", input, options)
  end

  @doc """
  Stores events in Amazon Fraud Detector without generating fraud predictions for
  those events.

  For example, you can use `SendEvent` to upload a historical dataset, which you
  can then later use to train a model.
  """
  @spec send_event(map(), send_event_request(), list()) ::
          {:ok, send_event_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_event_errors()}
  def send_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendEvent", input, options)
  end

  @doc """
  Assigns tags to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a detector version.

  The detector version attributes that you can update include models, external
  model endpoints, rules, rule execution mode, and description. You can only
  update a `DRAFT` detector version.
  """
  @spec update_detector_version(map(), update_detector_version_request(), list()) ::
          {:ok, update_detector_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_detector_version_errors()}
  def update_detector_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDetectorVersion", input, options)
  end

  @doc """
  Updates the detector version's description.

  You can update the metadata for any detector version (`DRAFT, ACTIVE,` or
  `INACTIVE`).
  """
  @spec update_detector_version_metadata(
          map(),
          update_detector_version_metadata_request(),
          list()
        ) ::
          {:ok, update_detector_version_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_detector_version_metadata_errors()}
  def update_detector_version_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDetectorVersionMetadata", input, options)
  end

  @doc """
  Updates the detector version’s status.

  You can perform the following promotions or
  demotions using `UpdateDetectorVersionStatus`: `DRAFT` to `ACTIVE`, `ACTIVE` to
  `INACTIVE`, and `INACTIVE` to `ACTIVE`.
  """
  @spec update_detector_version_status(map(), update_detector_version_status_request(), list()) ::
          {:ok, update_detector_version_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_detector_version_status_errors()}
  def update_detector_version_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDetectorVersionStatus", input, options)
  end

  @doc """
  Updates the specified event with a new label.
  """
  @spec update_event_label(map(), update_event_label_request(), list()) ::
          {:ok, update_event_label_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_label_errors()}
  def update_event_label(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEventLabel", input, options)
  end

  @doc """

  Updates a list.
  """
  @spec update_list(map(), update_list_request(), list()) ::
          {:ok, update_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_list_errors()}
  def update_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateList", input, options)
  end

  @doc """
  Updates model description.
  """
  @spec update_model(map(), update_model_request(), list()) ::
          {:ok, update_model_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateModel", input, options)
  end

  @doc """
  Updates a model version.

  Updating a model version retrains an existing model version using updated
  training data and produces a new minor version of the model. You can update the
  training data set location and data access role attributes using this action.
  This action creates and trains a new minor version of the model, for example
  version 1.01, 1.02, 1.03.
  """
  @spec update_model_version(map(), update_model_version_request(), list()) ::
          {:ok, update_model_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_version_errors()}
  def update_model_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateModelVersion", input, options)
  end

  @doc """
  Updates the status of a model version.

  You can perform the following status updates:

    1.
  Change the `TRAINING_IN_PROGRESS` status to `TRAINING_CANCELLED`.

    2.
  Change the `TRAINING_COMPLETE` status to `ACTIVE`.

    3.
  Change `ACTIVE` to `INACTIVE`.
  """
  @spec update_model_version_status(map(), update_model_version_status_request(), list()) ::
          {:ok, update_model_version_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_version_status_errors()}
  def update_model_version_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateModelVersionStatus", input, options)
  end

  @doc """
  Updates a rule's metadata.

  The description attribute can be updated.
  """
  @spec update_rule_metadata(map(), update_rule_metadata_request(), list()) ::
          {:ok, update_rule_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_metadata_errors()}
  def update_rule_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuleMetadata", input, options)
  end

  @doc """
  Updates a rule version resulting in a new rule version.

  Updates a rule version resulting in a new rule version (version 1, 2, 3 ...).
  """
  @spec update_rule_version(map(), update_rule_version_request(), list()) ::
          {:ok, update_rule_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_version_errors()}
  def update_rule_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuleVersion", input, options)
  end

  @doc """
  Updates a variable.
  """
  @spec update_variable(map(), update_variable_request(), list()) ::
          {:ok, update_variable_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_variable_errors()}
  def update_variable(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVariable", input, options)
  end
end
