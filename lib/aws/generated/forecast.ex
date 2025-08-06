# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecast do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_forecast_export_jobs_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_forecast_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      weighted_quantile_loss() :: %{
        "LossValue" => float(),
        "Quantile" => float()
      }
      
  """
  @type weighted_quantile_loss() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecasts_response() :: %{
        "NextToken" => String.t() | atom(),
        "WhatIfForecasts" => list(what_if_forecast_summary())
      }
      
  """
  @type list_what_if_forecasts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_export_request() :: %{
        required("ExplainabilityExportArn") => String.t() | atom()
      }
      
  """
  @type describe_explainability_export_request() :: %{(String.t() | atom()) => any()}

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
      
      create_predictor_request() :: %{
        optional("AlgorithmArn") => String.t() | atom(),
        optional("AutoMLOverrideStrategy") => list(any()),
        optional("EncryptionConfig") => encryption_config(),
        optional("EvaluationParameters") => evaluation_parameters(),
        optional("ForecastTypes") => list(String.t() | atom()),
        optional("HPOConfig") => hyper_parameter_tuning_job_config(),
        optional("OptimizationMetric") => list(any()),
        optional("PerformAutoML") => boolean(),
        optional("PerformHPO") => boolean(),
        optional("Tags") => list(tag()),
        optional("TrainingParameters") => map(),
        required("FeaturizationConfig") => featurization_config(),
        required("ForecastHorizon") => integer(),
        required("InputDataConfig") => input_data_config(),
        required("PredictorName") => String.t() | atom()
      }
      
  """
  @type create_predictor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integer_parameter_range() :: %{
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Name" => String.t() | atom(),
        "ScalingType" => list(any())
      }
      
  """
  @type integer_parameter_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_export_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ExplainabilityArn" => String.t() | atom(),
        "ExplainabilityExportArn" => String.t() | atom(),
        "ExplainabilityExportName" => String.t() | atom(),
        "Format" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_explainability_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_config() :: %{
        "KMSKeyArn" => String.t() | atom(),
        "RoleArn" => String.t() | atom()
      }
      
  """
  @type encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_predictor_summary() :: %{
        "Arn" => String.t() | atom(),
        "State" => list(any())
      }
      
  """
  @type reference_predictor_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_request() :: %{
        required("MonitorArn") => String.t() | atom()
      }
      
  """
  @type delete_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_monitors_response() :: %{
        "Monitors" => list(monitor_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_monitors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_monitor_evaluations_response() :: %{
        "NextToken" => String.t() | atom(),
        "PredictorMonitorEvaluations" => list(predictor_monitor_evaluation())
      }
      
  """
  @type list_monitor_evaluations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_forecast_request() :: %{
        required("ForecastArn") => String.t() | atom()
      }
      
  """
  @type delete_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_request() :: %{
        required("ForecastArn") => String.t() | atom()
      }
      
  """
  @type describe_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_accuracy_metrics_response() :: %{
        "AutoMLOverrideStrategy" => list(any()),
        "IsAutoPredictor" => boolean(),
        "OptimizationMetric" => list(any()),
        "PredictorEvaluationResults" => list(evaluation_result())
      }
      
  """
  @type get_accuracy_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_monitor_evaluation() :: %{
        "EvaluationState" => String.t() | atom(),
        "EvaluationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "MetricResults" => list(metric_result()),
        "MonitorArn" => String.t() | atom(),
        "MonitorDataSource" => monitor_data_source(),
        "NumItemsEvaluated" => float(),
        "PredictorEvent" => predictor_event(),
        "ResourceArn" => String.t() | atom(),
        "WindowEndDatetime" => non_neg_integer(),
        "WindowStartDatetime" => non_neg_integer()
      }
      
  """
  @type predictor_monitor_evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "DatasetGroupArn" => String.t() | atom(),
        "SupplementaryFeatures" => list(supplementary_feature())
      }
      
  """
  @type input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_auto_predictor_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataConfig" => data_config(),
        "DatasetImportJobArns" => list(String.t() | atom()),
        "EncryptionConfig" => encryption_config(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ExplainabilityInfo" => explainability_info(),
        "ForecastDimensions" => list(String.t() | atom()),
        "ForecastFrequency" => String.t() | atom(),
        "ForecastHorizon" => integer(),
        "ForecastTypes" => list(String.t() | atom()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "MonitorInfo" => monitor_info(),
        "OptimizationMetric" => list(any()),
        "PredictorArn" => String.t() | atom(),
        "PredictorName" => String.t() | atom(),
        "ReferencePredictorSummary" => reference_predictor_summary(),
        "Status" => String.t() | atom(),
        "TimeAlignmentBoundary" => time_alignment_boundary()
      }
      
  """
  @type describe_auto_predictor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitor_config() :: %{
        "MonitorName" => String.t() | atom()
      }
      
  """
  @type monitor_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSize" => float(),
        "DataSource" => data_source(),
        "DatasetArn" => String.t() | atom(),
        "DatasetImportJobArn" => String.t() | atom(),
        "DatasetImportJobName" => String.t() | atom(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "FieldStatistics" => map(),
        "Format" => String.t() | atom(),
        "GeolocationFormat" => String.t() | atom(),
        "ImportMode" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TimeZone" => String.t() | atom(),
        "TimestampFormat" => String.t() | atom(),
        "UseGeolocationForTimeZone" => boolean()
      }
      
  """
  @type describe_dataset_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute_config() :: %{
        "AttributeName" => String.t() | atom(),
        "Transformations" => map()
      }
      
  """
  @type attribute_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_analyses_response() :: %{
        "NextToken" => String.t() | atom(),
        "WhatIfAnalyses" => list(what_if_analysis_summary())
      }
      
  """
  @type list_what_if_analyses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      featurization_method() :: %{
        "FeaturizationMethodName" => list(any()),
        "FeaturizationMethodParameters" => map()
      }
      
  """
  @type featurization_method() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parameter_ranges() :: %{
        "CategoricalParameterRanges" => list(categorical_parameter_range()),
        "ContinuousParameterRanges" => list(continuous_parameter_range()),
        "IntegerParameterRanges" => list(integer_parameter_range())
      }
      
  """
  @type parameter_ranges() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_predictor_response() :: %{
        "PredictorArn" => String.t() | atom()
      }
      
  """
  @type create_predictor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_forecast_export_jobs_response() :: %{
        "ForecastExportJobs" => list(forecast_export_job_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_forecast_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_explainability_export_request() :: %{
        optional("Format") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Destination") => data_destination(),
        required("ExplainabilityArn") => String.t() | atom(),
        required("ExplainabilityExportName") => String.t() | atom()
      }
      
  """
  @type create_explainability_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dataset_group_response() :: %{}
      
  """
  @type update_dataset_group_response() :: %{}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_datasets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecast_exports_response() :: %{
        "NextToken" => String.t() | atom(),
        "WhatIfForecastExports" => list(what_if_forecast_export_summary())
      }
      
  """
  @type list_what_if_forecast_exports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluation_parameters() :: %{
        "BackTestWindowOffset" => integer(),
        "NumberOfBacktestWindows" => integer()
      }
      
  """
  @type evaluation_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      featurization_config() :: %{
        "Featurizations" => list(featurization()),
        "ForecastDimensions" => list(String.t() | atom()),
        "ForecastFrequency" => String.t() | atom()
      }
      
  """
  @type featurization_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_monitors_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_monitors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_predictors_response() :: %{
        "NextToken" => String.t() | atom(),
        "Predictors" => list(predictor_summary())
      }
      
  """
  @type list_predictors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_predictor_backtest_export_job_response() :: %{
        "PredictorBacktestExportJobArn" => String.t() | atom()
      }
      
  """
  @type create_predictor_backtest_export_job_response() :: %{(String.t() | atom()) => any()}

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
      
      monitor_info() :: %{
        "MonitorArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type monitor_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_monitor_response() :: %{
        "MonitorArn" => String.t() | atom()
      }
      
  """
  @type create_monitor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecasts_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_what_if_forecasts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      explainability_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ExplainabilityArn" => String.t() | atom(),
        "ExplainabilityConfig" => explainability_config(),
        "ExplainabilityName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type explainability_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_request() :: %{
        optional("DatasetArns") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        required("DatasetGroupName") => String.t() | atom(),
        required("Domain") => list(any())
      }
      
  """
  @type create_dataset_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t() | atom(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastArn" => String.t() | atom(),
        "ForecastName" => String.t() | atom(),
        "ForecastTypes" => list(String.t() | atom()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PredictorArn" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TimeSeriesSelector" => time_series_selector()
      }
      
  """
  @type describe_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_export_request() :: %{
        required("WhatIfForecastExportArn") => String.t() | atom()
      }
      
  """
  @type describe_what_if_forecast_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      baseline() :: %{
        "PredictorBaseline" => predictor_baseline()
      }
      
  """
  @type baseline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_selector() :: %{
        "TimeSeriesIdentifiers" => time_series_identifiers()
      }
      
  """
  @type time_series_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_execution_details() :: %{
        "PredictorExecutions" => list(predictor_execution())
      }
      
  """
  @type predictor_execution_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forecast_summary() :: %{
        "CreatedUsingAutoPredictor" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t() | atom(),
        "ForecastArn" => String.t() | atom(),
        "ForecastName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PredictorArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type forecast_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_response() :: %{
        "AlgorithmArn" => String.t() | atom(),
        "AutoMLAlgorithmArns" => list(String.t() | atom()),
        "AutoMLOverrideStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DatasetImportJobArns" => list(String.t() | atom()),
        "EncryptionConfig" => encryption_config(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "EvaluationParameters" => evaluation_parameters(),
        "FeaturizationConfig" => featurization_config(),
        "ForecastHorizon" => integer(),
        "ForecastTypes" => list(String.t() | atom()),
        "HPOConfig" => hyper_parameter_tuning_job_config(),
        "InputDataConfig" => input_data_config(),
        "IsAutoPredictor" => boolean(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "OptimizationMetric" => list(any()),
        "PerformAutoML" => boolean(),
        "PerformHPO" => boolean(),
        "PredictorArn" => String.t() | atom(),
        "PredictorExecutionDetails" => predictor_execution_details(),
        "PredictorName" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TrainingParameters" => map()
      }
      
  """
  @type describe_predictor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      what_if_forecast_export_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "WhatIfForecastArns" => list(String.t() | atom()),
        "WhatIfForecastExportArn" => String.t() | atom(),
        "WhatIfForecastExportName" => String.t() | atom()
      }
      
  """
  @type what_if_forecast_export_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_window_summary() :: %{
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TestWindowEnd" => non_neg_integer(),
        "TestWindowStart" => non_neg_integer()
      }
      
  """
  @type test_window_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type stop_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_explainability_exports_response() :: %{
        "ExplainabilityExports" => list(explainability_export_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_explainability_exports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_auto_predictor_response() :: %{
        "PredictorArn" => String.t() | atom()
      }
      
  """
  @type create_auto_predictor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t() | atom()
      }
      
  """
  @type create_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metrics() :: %{
        "AverageWeightedQuantileLoss" => float(),
        "ErrorMetrics" => list(error_metric()),
        "RMSE" => float(),
        "WeightedQuantileLosses" => list(weighted_quantile_loss())
      }
      
  """
  @type metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      explainability_export_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ExplainabilityExportArn" => String.t() | atom(),
        "ExplainabilityExportName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type explainability_export_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_response() :: %{
        "CreationTime" => non_neg_integer(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastTypes" => list(String.t() | atom()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TimeSeriesReplacementsDataSource" => time_series_replacements_data_source(),
        "TimeSeriesTransformations" => list(time_series_transformation()),
        "WhatIfAnalysisArn" => String.t() | atom(),
        "WhatIfForecastArn" => String.t() | atom(),
        "WhatIfForecastName" => String.t() | atom()
      }
      
  """
  @type describe_what_if_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      supplementary_feature() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type supplementary_feature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_dataset_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_response() :: %{
        "WhatIfForecastArn" => String.t() | atom()
      }
      
  """
  @type create_what_if_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forecast_export_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ForecastExportJobArn" => String.t() | atom(),
        "ForecastExportJobName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type forecast_export_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSource" => data_source(),
        "EnableVisualization" => boolean(),
        "EndDateTime" => String.t() | atom(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ExplainabilityArn" => String.t() | atom(),
        "ExplainabilityConfig" => explainability_config(),
        "ExplainabilityName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "Schema" => schema(),
        "StartDateTime" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_explainability_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      explainability_info() :: %{
        "ExplainabilityArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type explainability_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_accuracy_metrics_request() :: %{
        required("PredictorArn") => String.t() | atom()
      }
      
  """
  @type get_accuracy_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArn" => String.t() | atom(),
        "DatasetName" => String.t() | atom(),
        "DatasetType" => list(any()),
        "Domain" => list(any()),
        "LastModificationTime" => non_neg_integer()
      }
      
  """
  @type dataset_summary() :: %{(String.t() | atom()) => any()}

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
      
      describe_auto_predictor_request() :: %{
        required("PredictorArn") => String.t() | atom()
      }
      
  """
  @type describe_auto_predictor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type resume_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "KMSKeyArn" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "RoleArn" => String.t() | atom()
      }
      
  """
  @type s3_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_import_job_request() :: %{
        required("DatasetImportJobArn") => String.t() | atom()
      }
      
  """
  @type delete_dataset_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_forecast_export_job_request() :: %{
        required("ForecastExportJobArn") => String.t() | atom()
      }
      
  """
  @type delete_forecast_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_transformation() :: %{
        "Action" => action(),
        "TimeSeriesConditions" => list(time_series_condition())
      }
      
  """
  @type time_series_transformation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_config() :: %{
        "AdditionalDatasets" => list(additional_dataset()),
        "AttributeConfigs" => list(attribute_config()),
        "DatasetGroupArn" => String.t() | atom()
      }
      
  """
  @type data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_forecast_export_job_response() :: %{
        "ForecastExportJobArn" => String.t() | atom()
      }
      
  """
  @type create_forecast_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_request() :: %{
        optional("Tags") => list(tag()),
        optional("TimeSeriesReplacementsDataSource") => time_series_replacements_data_source(),
        optional("TimeSeriesTransformations") => list(time_series_transformation()),
        required("WhatIfAnalysisArn") => String.t() | atom(),
        required("WhatIfForecastName") => String.t() | atom()
      }
      
  """
  @type create_what_if_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_auto_predictor_request() :: %{
        optional("DataConfig") => data_config(),
        optional("EncryptionConfig") => encryption_config(),
        optional("ExplainPredictor") => boolean(),
        optional("ForecastDimensions") => list(String.t() | atom()),
        optional("ForecastFrequency") => String.t() | atom(),
        optional("ForecastHorizon") => integer(),
        optional("ForecastTypes") => list(String.t() | atom()),
        optional("MonitorConfig") => monitor_config(),
        optional("OptimizationMetric") => list(any()),
        optional("ReferencePredictorArn") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TimeAlignmentBoundary") => time_alignment_boundary(),
        required("PredictorName") => String.t() | atom()
      }
      
  """
  @type create_auto_predictor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_response() :: %{
        "DatasetGroups" => list(dataset_group_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_dataset_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_analysis_response() :: %{
        "WhatIfAnalysisArn" => String.t() | atom()
      }
      
  """
  @type create_what_if_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_analyses_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_what_if_analyses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_predictors_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_predictors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_analysis_response() :: %{
        "CreationTime" => non_neg_integer(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastArn" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TimeSeriesSelector" => time_series_selector(),
        "WhatIfAnalysisArn" => String.t() | atom(),
        "WhatIfAnalysisName" => String.t() | atom()
      }
      
  """
  @type describe_what_if_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema() :: %{
        "Attributes" => list(schema_attribute())
      }
      
  """
  @type schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_dataset_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_forecasts_response() :: %{
        "Forecasts" => list(forecast_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_forecasts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_explainability_request() :: %{
        required("ExplainabilityArn") => String.t() | atom()
      }
      
  """
  @type delete_explainability_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_predictor_backtest_export_jobs_response() :: %{
        "NextToken" => String.t() | atom(),
        "PredictorBacktestExportJobs" => list(predictor_backtest_export_job_summary())
      }
      
  """
  @type list_predictor_backtest_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_analysis_request() :: %{
        optional("Tags") => list(tag()),
        optional("TimeSeriesSelector") => time_series_selector(),
        required("ForecastArn") => String.t() | atom(),
        required("WhatIfAnalysisName") => String.t() | atom()
      }
      
  """
  @type create_what_if_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_analysis_request() :: %{
        required("WhatIfAnalysisArn") => String.t() | atom()
      }
      
  """
  @type describe_what_if_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      baseline_metric() :: %{
        "Name" => String.t() | atom(),
        "Value" => float()
      }
      
  """
  @type baseline_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      categorical_parameter_range() :: %{
        "Name" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type categorical_parameter_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_backtest_export_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "Format" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PredictorArn" => String.t() | atom(),
        "PredictorBacktestExportJobArn" => String.t() | atom(),
        "PredictorBacktestExportJobName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_predictor_backtest_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Condition" => list(any()),
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_explainabilities_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_explainabilities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_condition() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeValue" => String.t() | atom(),
        "Condition" => list(any())
      }
      
  """
  @type time_series_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_explainability_request() :: %{
        optional("DataSource") => data_source(),
        optional("EnableVisualization") => boolean(),
        optional("EndDateTime") => String.t() | atom(),
        optional("Schema") => schema(),
        optional("StartDateTime") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ExplainabilityConfig") => explainability_config(),
        required("ExplainabilityName") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type create_explainability_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_predictor_request() :: %{
        required("PredictorArn") => String.t() | atom()
      }
      
  """
  @type delete_predictor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metric_result() :: %{
        "MetricName" => String.t() | atom(),
        "MetricValue" => float()
      }
      
  """
  @type metric_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_destination() :: %{
        "S3Config" => s3_config()
      }
      
  """
  @type data_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      explainability_config() :: %{
        "TimePointGranularity" => list(any()),
        "TimeSeriesGranularity" => list(any())
      }
      
  """
  @type explainability_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_execution() :: %{
        "AlgorithmArn" => String.t() | atom(),
        "TestWindows" => list(test_window_summary())
      }
      
  """
  @type predictor_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitor_data_source() :: %{
        "DatasetImportJobArn" => String.t() | atom(),
        "ForecastArn" => String.t() | atom(),
        "PredictorArn" => String.t() | atom()
      }
      
  """
  @type monitor_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_export_response() :: %{
        "WhatIfForecastExportArn" => String.t() | atom()
      }
      
  """
  @type create_what_if_forecast_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "AttributeName" => String.t() | atom(),
        "Operation" => list(any()),
        "Value" => float()
      }
      
  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_attribute() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeType" => list(any())
      }
      
  """
  @type schema_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_explainability_export_response() :: %{
        "ExplainabilityExportArn" => String.t() | atom()
      }
      
  """
  @type create_explainability_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_import_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSource" => data_source(),
        "DatasetImportJobArn" => String.t() | atom(),
        "DatasetImportJobName" => String.t() | atom(),
        "ImportMode" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type dataset_import_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_backtest_export_job_request() :: %{
        required("PredictorBacktestExportJobArn") => String.t() | atom()
      }
      
  """
  @type describe_predictor_backtest_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_response() :: %{
        "DatasetImportJobs" => list(dataset_import_job_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_dataset_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_metric() :: %{
        "ForecastType" => String.t() | atom(),
        "MAPE" => float(),
        "MASE" => float(),
        "RMSE" => float(),
        "WAPE" => float()
      }
      
  """
  @type error_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_group_request() :: %{
        required("DatasetGroupArn") => String.t() | atom()
      }
      
  """
  @type delete_dataset_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t() | atom(),
        "IsAutoPredictor" => boolean(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PredictorArn" => String.t() | atom(),
        "PredictorName" => String.t() | atom(),
        "ReferencePredictorSummary" => reference_predictor_summary(),
        "Status" => String.t() | atom()
      }
      
  """
  @type predictor_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dataset_group_request() :: %{
        required("DatasetArns") => list(String.t() | atom()),
        required("DatasetGroupArn") => String.t() | atom()
      }
      
  """
  @type update_dataset_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_predictor_request() :: %{
        required("PredictorArn") => String.t() | atom()
      }
      
  """
  @type describe_predictor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecast_exports_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_what_if_forecast_exports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_forecast_export_job_request() :: %{
        optional("Format") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Destination") => data_destination(),
        required("ForecastArn") => String.t() | atom(),
        required("ForecastExportJobName") => String.t() | atom()
      }
      
  """
  @type create_forecast_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_predictor_backtest_export_job_request() :: %{
        optional("Format") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Destination") => data_destination(),
        required("PredictorArn") => String.t() | atom(),
        required("PredictorBacktestExportJobName") => String.t() | atom()
      }
      
  """
  @type create_predictor_backtest_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_response() :: %{
        "DatasetGroupArn" => String.t() | atom()
      }
      
  """
  @type create_dataset_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statistics() :: %{
        "Avg" => float(),
        "Count" => integer(),
        "CountDistinct" => integer(),
        "CountDistinctLong" => float(),
        "CountLong" => float(),
        "CountNan" => integer(),
        "CountNanLong" => float(),
        "CountNull" => integer(),
        "CountNullLong" => float(),
        "Max" => String.t() | atom(),
        "Min" => String.t() | atom(),
        "Stddev" => float()
      }
      
  """
  @type statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_forecast_request() :: %{
        required("WhatIfForecastArn") => String.t() | atom()
      }
      
  """
  @type delete_what_if_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_backtest_export_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PredictorBacktestExportJobArn" => String.t() | atom(),
        "PredictorBacktestExportJobName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type predictor_backtest_export_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataFrequency" => String.t() | atom(),
        "DatasetArn" => String.t() | atom(),
        "DatasetName" => String.t() | atom(),
        "DatasetType" => list(any()),
        "Domain" => list(any()),
        "EncryptionConfig" => encryption_config(),
        "LastModificationTime" => non_neg_integer(),
        "Schema" => schema(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_export_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "Format" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "WhatIfForecastArns" => list(String.t() | atom()),
        "WhatIfForecastExportArn" => String.t() | atom(),
        "WhatIfForecastExportName" => String.t() | atom()
      }
      
  """
  @type describe_what_if_forecast_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_request() :: %{
        required("WhatIfForecastArn") => String.t() | atom()
      }
      
  """
  @type describe_what_if_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_analysis_request() :: %{
        required("WhatIfAnalysisArn") => String.t() | atom()
      }
      
  """
  @type delete_what_if_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("DataFrequency") => String.t() | atom(),
        optional("EncryptionConfig") => encryption_config(),
        optional("Tags") => list(tag()),
        required("DatasetName") => String.t() | atom(),
        required("DatasetType") => list(any()),
        required("Domain") => list(any()),
        required("Schema") => schema()
      }
      
  """
  @type create_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_request() :: %{
        required("DatasetGroupArn") => String.t() | atom()
      }
      
  """
  @type describe_dataset_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_predictor_backtest_export_job_request() :: %{
        required("PredictorBacktestExportJobArn") => String.t() | atom()
      }
      
  """
  @type delete_predictor_backtest_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      continuous_parameter_range() :: %{
        "MaxValue" => float(),
        "MinValue" => float(),
        "Name" => String.t() | atom(),
        "ScalingType" => list(any())
      }
      
  """
  @type continuous_parameter_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_request() :: %{
        optional("Format") => String.t() | atom(),
        optional("GeolocationFormat") => String.t() | atom(),
        optional("ImportMode") => list(any()),
        optional("Tags") => list(tag()),
        optional("TimeZone") => String.t() | atom(),
        optional("TimestampFormat") => String.t() | atom(),
        optional("UseGeolocationForTimeZone") => boolean(),
        required("DataSource") => data_source(),
        required("DatasetArn") => String.t() | atom(),
        required("DatasetImportJobName") => String.t() | atom()
      }
      
  """
  @type create_dataset_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_monitor_request() :: %{
        required("MonitorArn") => String.t() | atom()
      }
      
  """
  @type describe_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_event() :: %{
        "Datetime" => non_neg_integer(),
        "Detail" => String.t() | atom()
      }
      
  """
  @type predictor_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_request() :: %{
        required("ExplainabilityArn") => String.t() | atom()
      }
      
  """
  @type describe_explainability_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_export_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ForecastArn" => String.t() | atom(),
        "ForecastExportJobArn" => String.t() | atom(),
        "ForecastExportJobName" => String.t() | atom(),
        "Format" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_forecast_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_explainability_response() :: %{
        "ExplainabilityArn" => String.t() | atom()
      }
      
  """
  @type create_explainability_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_monitor_response() :: %{
        "Baseline" => baseline(),
        "CreationTime" => non_neg_integer(),
        "EstimatedEvaluationTimeRemainingInMinutes" => float(),
        "LastEvaluationState" => String.t() | atom(),
        "LastEvaluationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "MonitorArn" => String.t() | atom(),
        "MonitorName" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_monitor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_request() :: %{
        required("DatasetImportJobArn") => String.t() | atom()
      }
      
  """
  @type describe_dataset_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_export_job_request() :: %{
        required("ForecastExportJobArn") => String.t() | atom()
      }
      
  """
  @type describe_forecast_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_export_request() :: %{
        optional("Format") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Destination") => data_destination(),
        required("WhatIfForecastArns") => list(String.t() | atom()),
        required("WhatIfForecastExportName") => String.t() | atom()
      }
      
  """
  @type create_what_if_forecast_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      what_if_analysis_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ForecastArn" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "WhatIfAnalysisArn" => String.t() | atom(),
        "WhatIfAnalysisName" => String.t() | atom()
      }
      
  """
  @type what_if_analysis_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_monitor_evaluations_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("MonitorArn") => String.t() | atom()
      }
      
  """
  @type list_monitor_evaluations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArns" => list(String.t() | atom()),
        "DatasetGroupArn" => String.t() | atom(),
        "DatasetGroupName" => String.t() | atom(),
        "Domain" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Status" => String.t() | atom()
      }
      
  """
  @type describe_dataset_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "AlgorithmArn" => String.t() | atom(),
        "TestWindows" => list(window_summary())
      }
      
  """
  @type evaluation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_forecasts_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_forecasts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetArn") => String.t() | atom()
      }
      
  """
  @type describe_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        required("DatasetArn") => String.t() | atom()
      }
      
  """
  @type delete_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "Datasets" => list(dataset_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_datasets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      what_if_forecast_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "WhatIfAnalysisArn" => String.t() | atom(),
        "WhatIfForecastArn" => String.t() | atom(),
        "WhatIfForecastName" => String.t() | atom()
      }
      
  """
  @type what_if_forecast_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_forecast_request() :: %{
        optional("ForecastTypes") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("TimeSeriesSelector") => time_series_selector(),
        required("ForecastName") => String.t() | atom(),
        required("PredictorArn") => String.t() | atom()
      }
      
  """
  @type create_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      additional_dataset() :: %{
        "Configuration" => map(),
        "Name" => String.t() | atom()
      }
      
  """
  @type additional_dataset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_explainability_export_request() :: %{
        required("ExplainabilityExportArn") => String.t() | atom()
      }
      
  """
  @type delete_explainability_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_monitor_request() :: %{
        optional("Tags") => list(tag()),
        required("MonitorName") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type create_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_explainability_exports_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_explainability_exports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "S3Config" => s3_config()
      }
      
  """
  @type data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_tree_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type delete_resource_tree_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      window_summary() :: %{
        "EvaluationType" => list(any()),
        "ItemCount" => integer(),
        "Metrics" => metrics(),
        "TestWindowEnd" => non_neg_integer(),
        "TestWindowStart" => non_neg_integer()
      }
      
  """
  @type window_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_explainabilities_response() :: %{
        "Explainabilities" => list(explainability_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_explainabilities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predictor_baseline() :: %{
        "BaselineMetrics" => list(baseline_metric())
      }
      
  """
  @type predictor_baseline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_config() :: %{
        "ParameterRanges" => parameter_ranges()
      }
      
  """
  @type hyper_parameter_tuning_job_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_forecast_response() :: %{
        "ForecastArn" => String.t() | atom()
      }
      
  """
  @type create_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_replacements_data_source() :: %{
        "Format" => String.t() | atom(),
        "S3Config" => s3_config(),
        "Schema" => schema(),
        "TimestampFormat" => String.t() | atom()
      }
      
  """
  @type time_series_replacements_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_forecast_export_request() :: %{
        required("WhatIfForecastExportArn") => String.t() | atom()
      }
      
  """
  @type delete_what_if_forecast_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitor_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "MonitorArn" => String.t() | atom(),
        "MonitorName" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type monitor_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_alignment_boundary() :: %{
        "DayOfMonth" => integer(),
        "DayOfWeek" => list(any()),
        "Hour" => integer(),
        "Month" => list(any())
      }
      
  """
  @type time_alignment_boundary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      featurization() :: %{
        "AttributeName" => String.t() | atom(),
        "FeaturizationPipeline" => list(featurization_method())
      }
      
  """
  @type featurization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_predictor_backtest_export_jobs_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_predictor_backtest_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_identifiers() :: %{
        "DataSource" => data_source(),
        "Format" => String.t() | atom(),
        "Schema" => schema()
      }
      
  """
  @type time_series_identifiers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_response() :: %{
        "DatasetImportJobArn" => String.t() | atom()
      }
      
  """
  @type create_dataset_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dataset_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t() | atom(),
        "DatasetGroupName" => String.t() | atom(),
        "LastModificationTime" => non_neg_integer()
      }
      
  """
  @type dataset_group_summary() :: %{(String.t() | atom()) => any()}

  @type create_auto_predictor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()

  @type create_dataset_group_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_import_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_explainability_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_explainability_export_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_forecast_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_forecast_export_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_monitor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_predictor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_predictor_backtest_export_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_analysis_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_forecast_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_forecast_export_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_dataset_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_import_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_explainability_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_explainability_export_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_forecast_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_monitor_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_predictor_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_predictor_backtest_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_resource_tree_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_analysis_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_forecast_export_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type describe_auto_predictor_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_import_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_explainability_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_explainability_export_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_forecast_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_forecast_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_monitor_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_predictor_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_predictor_backtest_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_analysis_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_forecast_export_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type get_accuracy_metrics_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type list_dataset_groups_errors() :: invalid_next_token_exception()

  @type list_dataset_import_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_datasets_errors() :: invalid_next_token_exception()

  @type list_explainabilities_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_explainability_exports_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_forecast_export_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_forecasts_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_monitor_evaluations_errors() ::
          invalid_input_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_predictor_backtest_export_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_predictors_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_what_if_analyses_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_what_if_forecast_exports_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_what_if_forecasts_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type resume_resource_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type stop_resource_errors() ::
          limit_exceeded_exception() | invalid_input_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception() | invalid_input_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type update_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2018-06-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "forecast",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "forecast",
      signature_version: "v4",
      signing_name: "forecast",
      target_prefix: "AmazonForecast"
    }
  end

  @doc """
  Creates an Amazon Forecast predictor.

  Amazon Forecast creates predictors with AutoPredictor, which involves applying
  the
  optimal combination of algorithms to each time series in your datasets. You can
  use
  `CreateAutoPredictor` to create new predictors or upgrade/retrain
  existing predictors.

  ## Creating new predictors

  The following parameters are required when creating a new predictor:

    *

  `PredictorName` - A unique name for the predictor.

    *

  `DatasetGroupArn` - The ARN of the dataset group used to train the
  predictor.

    *

  `ForecastFrequency` - The granularity of your forecasts (hourly,
  daily, weekly, etc).

    *

  `ForecastHorizon` - The number of time-steps that the model
  predicts. The forecast horizon is also called the prediction length.

  When creating a new predictor, do not specify a value for
  `ReferencePredictorArn`.

  ## Upgrading and retraining predictors

  The following parameters are required when retraining or upgrading a predictor:

    *

  `PredictorName` - A unique name for the predictor.

    *

  `ReferencePredictorArn` - The ARN of the predictor to retrain or
  upgrade.

  When upgrading or retraining a predictor, only specify values for the
  `ReferencePredictorArn` and `PredictorName`.
  """
  @spec create_auto_predictor(map(), create_auto_predictor_request(), list()) ::
          {:ok, create_auto_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_auto_predictor_errors()}
  def create_auto_predictor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAutoPredictor", input, options)
  end

  @doc """
  Creates an Amazon Forecast dataset.

  The information about the dataset that you provide helps
  Forecast understand how to consume the data for model training. This includes
  the
  following:

    *

  *
  `DataFrequency`
  * - How frequently your historical
  time-series data is collected.

    *

  *
  `Domain`
  * and
  *
  `DatasetType`
  * - Each dataset has an associated dataset
  domain and a type within the domain. Amazon Forecast provides a list of
  predefined domains and
  types within each domain. For each unique dataset domain and type within the
  domain,
  Amazon Forecast requires your data to include a minimum set of predefined
  fields.

    *

  *
  `Schema`
  * - A schema specifies the fields in the dataset,
  including the field name and data type.

  After creating a dataset, you import your training data into it and add the
  dataset to a
  dataset group. You use the dataset group to create a predictor. For more
  information, see
  [Importing datasets](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

  To get a list of all your datasets, use the
  [ListDatasets](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html) operation.

  For example Forecast datasets, see the [Amazon Forecast Sample GitHub
  repository](https://github.com/aws-samples/amazon-forecast-samples).

  The `Status` of a dataset must be `ACTIVE` before you can import
  training data. Use the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation to get
  the status.
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
  Creates a dataset group, which holds a collection of related datasets.

  You can add
  datasets to the dataset group when you create the dataset group, or later by
  using the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html) operation.

  After creating a dataset group and adding datasets, you use the dataset group
  when you
  create a predictor. For more information, see [Dataset
  groups](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

  To get a list of all your datasets groups, use the
  [ListDatasetGroups](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html) operation.

  The `Status` of a dataset group must be `ACTIVE` before you can
  use the dataset group to create a predictor. To get the status, use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.
  """
  @spec create_dataset_group(map(), create_dataset_group_request(), list()) ::
          {:ok, create_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_group_errors()}
  def create_dataset_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDatasetGroup", input, options)
  end

  @doc """
  Imports your training data to an Amazon Forecast dataset.

  You provide the location of your
  training data in an Amazon Simple Storage Service (Amazon S3) bucket and the
  Amazon Resource Name (ARN) of the dataset
  that you want to import the data to.

  You must specify a
  [DataSource](https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html) object that includes an
  Identity and Access Management (IAM) role that Amazon Forecast can assume to
  access the data, as Amazon Forecast makes a copy
  of your data and processes it in an internal Amazon Web Services system. For
  more information, see [Set up
  permissions](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html).

  The training data must be in CSV or Parquet format. The delimiter must be a
  comma (,).

  You can specify the path to a specific file, the S3 bucket, or to a folder in
  the S3
  bucket. For the latter two cases, Amazon Forecast imports all files up to the
  limit of 10,000
  files.

  Because dataset imports are not aggregated, your most recent dataset import is
  the one
  that is used when training a predictor or generating a forecast. Make sure that
  your most
  recent dataset import contains all of the data you want to model off of, and not
  just the new
  data collected since the previous import.

  To get a list of all your dataset import jobs, filtered by specified criteria,
  use the
  [ListDatasetImportJobs](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html)
  operation.
  """
  @spec create_dataset_import_job(map(), create_dataset_import_job_request(), list()) ::
          {:ok, create_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_import_job_errors()}
  def create_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDatasetImportJob", input, options)
  end

  @doc """

  Explainability is only available for Forecasts and Predictors generated from an
  AutoPredictor (`CreateAutoPredictor`)

  Creates an Amazon Forecast Explainability.

  Explainability helps you better understand how the attributes in your datasets
  impact
  forecast. Amazon Forecast uses a metric called Impact scores to quantify the
  relative
  impact of each attribute and determine whether they increase or decrease
  forecast
  values.

  To enable Forecast Explainability, your predictor must include at least one of
  the
  following: related time series, item metadata, or additional datasets like
  Holidays and
  the Weather Index.

  CreateExplainability accepts either a Predictor ARN or Forecast ARN. To receive
  aggregated Impact scores for all time series and time points in your datasets,
  provide a
  Predictor ARN. To receive Impact scores for specific time series and time
  points,
  provide a Forecast ARN.

  ## CreateExplainability with a Predictor ARN

  You can only have one Explainability resource per predictor. If you already
  enabled `ExplainPredictor` in `CreateAutoPredictor`, that
  predictor already has an Explainability resource.

  The following parameters are required when providing a Predictor ARN:

    *

  `ExplainabilityName` - A unique name for the Explainability.

    *

  `ResourceArn` - The Arn of the predictor.

    *

  `TimePointGranularity` - Must be set to “ALL”.

    *

  `TimeSeriesGranularity` - Must be set to “ALL”.

  Do not specify a value for the following parameters:

    *

  `DataSource` - Only valid when TimeSeriesGranularity is
  “SPECIFIC”.

    *

  `Schema` - Only valid when TimeSeriesGranularity is
  “SPECIFIC”.

    *

  `StartDateTime` - Only valid when TimePointGranularity is
  “SPECIFIC”.

    *

  `EndDateTime` - Only valid when TimePointGranularity is
  “SPECIFIC”.

  ## CreateExplainability with a Forecast ARN

  You can specify a maximum of 50 time series and 500 time points.

  The following parameters are required when providing a Predictor ARN:

    *

  `ExplainabilityName` - A unique name for the Explainability.

    *

  `ResourceArn` - The Arn of the forecast.

    *

  `TimePointGranularity` - Either “ALL” or “SPECIFIC”.

    *

  `TimeSeriesGranularity` - Either “ALL” or “SPECIFIC”.

  If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide the
  following:

    *

  `DataSource` - The S3 location of the CSV file specifying your time
  series.

    *

  `Schema` - The Schema defines the attributes and attribute types
  listed in the Data Source.

  If you set TimePointGranularity to “SPECIFIC”, you must also provide the
  following:

    *

  `StartDateTime` - The first timestamp in the range of time
  points.

    *

  `EndDateTime` - The last timestamp in the range of time
  points.
  """
  @spec create_explainability(map(), create_explainability_request(), list()) ::
          {:ok, create_explainability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_explainability_errors()}
  def create_explainability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExplainability", input, options)
  end

  @doc """
  Exports an Explainability resource created by the `CreateExplainability`
  operation.

  Exported files are exported to an Amazon Simple Storage Service (Amazon
  S3) bucket.

  You must specify a `DataDestination` object that includes an Amazon S3
  bucket and an Identity and Access Management (IAM) role that Amazon Forecast can
  assume to access the Amazon S3
  bucket. For more information, see `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you
  can access the export in your Amazon S3 bucket. To get the status, use the
  `DescribeExplainabilityExport` operation.
  """
  @spec create_explainability_export(map(), create_explainability_export_request(), list()) ::
          {:ok, create_explainability_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_explainability_export_errors()}
  def create_explainability_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExplainabilityExport", input, options)
  end

  @doc """
  Creates a forecast for each item in the `TARGET_TIME_SERIES` dataset that was
  used to train the predictor.

  This is known as inference. To retrieve the forecast for a single
  item at low latency, use the operation. To
  export the complete forecast into your Amazon Simple Storage Service (Amazon S3)
  bucket, use the `CreateForecastExportJob` operation.

  The range of the forecast is determined by the `ForecastHorizon` value, which
  you specify in the `CreatePredictor` request. When you query a forecast, you
  can request a specific date range within the forecast.

  To get a list of all your forecasts, use the `ListForecasts`
  operation.

  The forecasts generated by Amazon Forecast are in the same time zone as the
  dataset that was
  used to create the predictor.

  For more information, see `howitworks-forecast`.

  The `Status` of the forecast must be `ACTIVE` before you can query
  or export the forecast. Use the `DescribeForecast` operation to get the
  status.

  By default, a forecast includes predictions for every item (`item_id`) in the
  dataset group that was used to train the predictor.
  However, you can use the `TimeSeriesSelector` object to generate a forecast on a
  subset of time series. Forecast creation is skipped for any time series that you
  specify that are not in the input dataset. The forecast export file will not
  contain these time series or their forecasted values.
  """
  @spec create_forecast(map(), create_forecast_request(), list()) ::
          {:ok, create_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_forecast_errors()}
  def create_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateForecast` operation to your
  Amazon Simple Storage Service (Amazon S3) bucket.

  The forecast file name will match the following conventions:

  __

  where the component is in Java SimpleDateFormat
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Identity and Access
  Management
  (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For
  more information, see
  `aws-forecast-iam-roles`.

  For more information, see `howitworks-forecast`.

  To get a list of all your forecast export jobs, use the `ListForecastExportJobs`
  operation.

  The `Status` of the forecast export job must be `ACTIVE` before
  you can access the forecast in your Amazon S3 bucket. To get the status, use the
  `DescribeForecastExportJob` operation.
  """
  @spec create_forecast_export_job(map(), create_forecast_export_job_request(), list()) ::
          {:ok, create_forecast_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_forecast_export_job_errors()}
  def create_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateForecastExportJob", input, options)
  end

  @doc """
  Creates a predictor monitor resource for an existing auto predictor.

  Predictor monitoring allows you to see how your predictor's performance changes
  over time.
  For more information, see [Predictor Monitoring](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).
  """
  @spec create_monitor(map(), create_monitor_request(), list()) ::
          {:ok, create_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMonitor", input, options)
  end

  @doc """

  This operation creates a legacy predictor that does not include all the
  predictor
  functionalities provided by Amazon Forecast.

  To create a predictor that is compatible with all
  aspects of Forecast, use `CreateAutoPredictor`.

  Creates an Amazon Forecast predictor.

  In the request, provide a dataset group and either specify an algorithm or let
  Amazon Forecast
  choose an algorithm for you using AutoML. If you specify an algorithm, you also
  can override
  algorithm-specific hyperparameters.

  Amazon Forecast uses the algorithm to train a predictor using the latest version
  of the datasets
  in the specified dataset group. You can then generate a forecast using the
  `CreateForecast` operation.

  To see the evaluation metrics, use the `GetAccuracyMetrics` operation.

  You can specify a featurization configuration to fill and aggregate the data
  fields in the
  `TARGET_TIME_SERIES` dataset to improve model training. For more information,
  see
  `FeaturizationConfig`.

  For RELATED_TIME_SERIES datasets, `CreatePredictor` verifies that the
  `DataFrequency` specified when the dataset was created matches the
  `ForecastFrequency`. TARGET_TIME_SERIES datasets don't have this restriction.
  Amazon Forecast also verifies the delimiter and timestamp format. For more
  information, see `howitworks-datasets-groups`.

  By default, predictors are trained and evaluated at the 0.1 (P10), 0.5 (P50),
  and 0.9
  (P90) quantiles. You can choose custom forecast types to train and evaluate your
  predictor by
  setting the `ForecastTypes`.

  ## AutoML

  If you want Amazon Forecast to evaluate each algorithm and choose the one that
  minimizes the
  `objective function`, set `PerformAutoML` to `true`. The
  `objective function` is defined as the mean of the weighted losses over the
  forecast types. By default, these are the p10, p50, and p90 quantile losses. For
  more
  information, see `EvaluationResult`.

  When AutoML is enabled, the following properties are disallowed:

    *

  `AlgorithmArn`

    *

  `HPOConfig`

    *

  `PerformHPO`

    *

  `TrainingParameters`

  To get a list of all of your predictors, use the `ListPredictors`
  operation.

  Before you can use the predictor to create a forecast, the `Status` of the
  predictor must be `ACTIVE`, signifying that training has completed. To get the
  status, use the `DescribePredictor` operation.
  """
  @spec create_predictor(map(), create_predictor_request(), list()) ::
          {:ok, create_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_predictor_errors()}
  def create_predictor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePredictor", input, options)
  end

  @doc """
  Exports backtest forecasts and accuracy metrics generated by the
  `CreateAutoPredictor` or `CreatePredictor` operations.

  Two
  folders containing CSV or Parquet files are exported to your specified S3
  bucket.

  The export file names will match the following conventions:

  `__.csv`

  The component is in Java SimpleDate format
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Amazon S3
  bucket and an Identity and Access Management (IAM) role that Amazon Forecast can
  assume to access the Amazon S3
  bucket. For more information, see `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you
  can access the export in your Amazon S3 bucket. To get the status, use the
  `DescribePredictorBacktestExportJob` operation.
  """
  @spec create_predictor_backtest_export_job(
          map(),
          create_predictor_backtest_export_job_request(),
          list()
        ) ::
          {:ok, create_predictor_backtest_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_predictor_backtest_export_job_errors()}
  def create_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePredictorBacktestExportJob", input, options)
  end

  @doc """
  What-if analysis is a scenario modeling technique where you make a hypothetical
  change to a time series and
  compare the forecasts generated by these changes against the baseline, unchanged
  time series.

  It is important to
  remember that the purpose of a what-if analysis is to understand how a forecast
  can change given different
  modifications to the baseline time series.

  For example, imagine you are a clothing retailer who is considering an end of
  season sale
  to clear space for new styles. After creating a baseline forecast, you can use a
  what-if
  analysis to investigate how different sales tactics might affect your goals.

  You could create a scenario where everything is given a 25% markdown, and
  another where
  everything is given a fixed dollar markdown. You could create a scenario where
  the sale lasts for one week and
  another where the sale lasts for one month.
  With a what-if analysis, you can compare many different scenarios against each
  other.

  Note that a what-if analysis is meant to display what the forecasting model has
  learned and how it will behave in the scenarios that you are evaluating. Do not
  blindly use the results of the what-if analysis to make business decisions. For
  instance, forecasts might not be accurate for novel scenarios where there is no
  reference available to determine whether a forecast is good.

  The `TimeSeriesSelector` object defines the items that you want in the what-if
  analysis.
  """
  @spec create_what_if_analysis(map(), create_what_if_analysis_request(), list()) ::
          {:ok, create_what_if_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_what_if_analysis_errors()}
  def create_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfAnalysis", input, options)
  end

  @doc """
  A what-if forecast is a forecast that is created from a modified version of the
  baseline forecast.

  Each
  what-if forecast incorporates either a replacement dataset or a set of
  transformations to the original dataset.
  """
  @spec create_what_if_forecast(map(), create_what_if_forecast_request(), list()) ::
          {:ok, create_what_if_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_what_if_forecast_errors()}
  def create_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateWhatIfForecast` operation to your
  Amazon Simple Storage Service (Amazon S3) bucket.

  The forecast file name will match the following conventions:

  `≈__`

  The component is in Java SimpleDateFormat
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Identity and Access
  Management
  (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For
  more information, see
  `aws-forecast-iam-roles`.

  For more information, see `howitworks-forecast`.

  To get a list of all your what-if forecast export jobs, use the
  `ListWhatIfForecastExports`
  operation.

  The `Status` of the forecast export job must be `ACTIVE` before
  you can access the forecast in your Amazon S3 bucket. To get the status, use the
  `DescribeWhatIfForecastExport` operation.
  """
  @spec create_what_if_forecast_export(map(), create_what_if_forecast_export_request(), list()) ::
          {:ok, create_what_if_forecast_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_what_if_forecast_export_errors()}
  def create_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfForecastExport", input, options)
  end

  @doc """
  Deletes an Amazon Forecast dataset that was created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html) operation.

  You can
  only delete datasets that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status use the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation.

  Forecast does not automatically update any dataset groups that contain the
  deleted dataset.
  In order to update the dataset group, use the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
  operation,
  omitting the deleted dataset's ARN.
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
  Deletes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html) operation.

  You can only delete dataset groups that have a status of `ACTIVE`,
  `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.

  This operation deletes only the dataset group, not the datasets in the group.
  """
  @spec delete_dataset_group(map(), delete_dataset_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_group_errors()}
  def delete_dataset_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDatasetGroup", input, options)
  end

  @doc """
  Deletes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html) operation.

  You can delete only dataset import jobs that have a status of `ACTIVE`
  or `CREATE_FAILED`. To get the status, use the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation.
  """
  @spec delete_dataset_import_job(map(), delete_dataset_import_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_import_job_errors()}
  def delete_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDatasetImportJob", input, options)
  end

  @doc """
  Deletes an Explainability resource.

  You can delete only predictor that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeExplainability` operation.
  """
  @spec delete_explainability(map(), delete_explainability_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_explainability_errors()}
  def delete_explainability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExplainability", input, options)
  end

  @doc """
  Deletes an Explainability export.
  """
  @spec delete_explainability_export(map(), delete_explainability_export_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_explainability_export_errors()}
  def delete_explainability_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExplainabilityExport", input, options)
  end

  @doc """
  Deletes a forecast created using the `CreateForecast` operation.

  You can
  delete only forecasts that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribeForecast` operation.

  You can't delete a forecast while it is being exported. After a forecast is
  deleted, you
  can no longer query the forecast.
  """
  @spec delete_forecast(map(), delete_forecast_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_forecast_errors()}
  def delete_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteForecast", input, options)
  end

  @doc """
  Deletes a forecast export job created using the `CreateForecastExportJob`
  operation.

  You can delete only export jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeForecastExportJob`
  operation.
  """
  @spec delete_forecast_export_job(map(), delete_forecast_export_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_forecast_export_job_errors()}
  def delete_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteForecastExportJob", input, options)
  end

  @doc """
  Deletes a monitor resource.

  You can only delete a monitor resource with a status of `ACTIVE`,
  `ACTIVE_STOPPED`, `CREATE_FAILED`, or `CREATE_STOPPED`.
  """
  @spec delete_monitor(map(), delete_monitor_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMonitor", input, options)
  end

  @doc """
  Deletes a predictor created using the `DescribePredictor` or `CreatePredictor`
  operations.

  You can delete only predictor that have a status of
  `ACTIVE` or `CREATE_FAILED`. To get the status, use the `DescribePredictor`
  operation.
  """
  @spec delete_predictor(map(), delete_predictor_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_predictor_errors()}
  def delete_predictor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePredictor", input, options)
  end

  @doc """
  Deletes a predictor backtest export job.
  """
  @spec delete_predictor_backtest_export_job(
          map(),
          delete_predictor_backtest_export_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_predictor_backtest_export_job_errors()}
  def delete_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePredictorBacktestExportJob", input, options)
  end

  @doc """
  Deletes an entire resource tree.

  This operation will delete the parent resource and
  its child resources.

  Child resources are resources that were created from another resource. For
  example,
  when a forecast is generated from a predictor, the forecast is the child
  resource and
  the predictor is the parent resource.

  Amazon Forecast resources possess the following parent-child resource
  hierarchies:

    *

  **Dataset**: dataset import jobs

    *

  **Dataset Group**: predictors, predictor backtest
  export jobs, forecasts, forecast export jobs

    *

  **Predictor**: predictor backtest export jobs,
  forecasts, forecast export jobs

    *

  **Forecast**: forecast export jobs

  `DeleteResourceTree` will only delete Amazon Forecast resources, and will not
  delete datasets or exported files stored in Amazon S3.
  """
  @spec delete_resource_tree(map(), delete_resource_tree_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_tree_errors()}
  def delete_resource_tree(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourceTree", input, options)
  end

  @doc """
  Deletes a what-if analysis created using the `CreateWhatIfAnalysis`
  operation.

  You can delete only what-if analyses that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfAnalysis` operation.

  You can't delete a what-if analysis while any of its forecasts are being
  exported.
  """
  @spec delete_what_if_analysis(map(), delete_what_if_analysis_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_what_if_analysis_errors()}
  def delete_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfAnalysis", input, options)
  end

  @doc """
  Deletes a what-if forecast created using the `CreateWhatIfForecast`
  operation.

  You can delete only what-if forecasts that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfForecast` operation.

  You can't delete a what-if forecast while it is being exported. After a what-if
  forecast is deleted, you can no longer query the what-if analysis.
  """
  @spec delete_what_if_forecast(map(), delete_what_if_forecast_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_what_if_forecast_errors()}
  def delete_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecast", input, options)
  end

  @doc """
  Deletes a what-if forecast export created using the `CreateWhatIfForecastExport`
  operation.

  You can delete only what-if forecast exports that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfForecastExport`
  operation.
  """
  @spec delete_what_if_forecast_export(map(), delete_what_if_forecast_export_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_what_if_forecast_export_errors()}
  def delete_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecastExport", input, options)
  end

  @doc """
  Describes a predictor created using the CreateAutoPredictor operation.
  """
  @spec describe_auto_predictor(map(), describe_auto_predictor_request(), list()) ::
          {:ok, describe_auto_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_auto_predictor_errors()}
  def describe_auto_predictor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAutoPredictor", input, options)
  end

  @doc """
  Describes an Amazon Forecast dataset created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
  operation.

  In addition to listing the parameters specified in the `CreateDataset` request,
  this operation includes the following dataset properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`
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
  Describes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
  operation.

  In addition to listing the parameters provided in the `CreateDatasetGroup`
  request, this operation includes the following properties:

    *

  `DatasetArns` - The datasets belonging to the group.

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`
  """
  @spec describe_dataset_group(map(), describe_dataset_group_request(), list()) ::
          {:ok, describe_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_group_errors()}
  def describe_dataset_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDatasetGroup", input, options)
  end

  @doc """
  Describes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
  operation.

  In addition to listing the parameters provided in the `CreateDatasetImportJob`
  request, this operation includes the following properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `DataSize`

    *

  `FieldStatistics`

    *

  `Status`

    *

  `Message` - If an error occurred, information about the error.
  """
  @spec describe_dataset_import_job(map(), describe_dataset_import_job_request(), list()) ::
          {:ok, describe_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_import_job_errors()}
  def describe_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDatasetImportJob", input, options)
  end

  @doc """
  Describes an Explainability resource created using the `CreateExplainability`
  operation.
  """
  @spec describe_explainability(map(), describe_explainability_request(), list()) ::
          {:ok, describe_explainability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_explainability_errors()}
  def describe_explainability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExplainability", input, options)
  end

  @doc """
  Describes an Explainability export created using the
  `CreateExplainabilityExport` operation.
  """
  @spec describe_explainability_export(map(), describe_explainability_export_request(), list()) ::
          {:ok, describe_explainability_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_explainability_export_errors()}
  def describe_explainability_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExplainabilityExport", input, options)
  end

  @doc """
  Describes a forecast created using the `CreateForecast` operation.

  In addition to listing the properties provided in the `CreateForecast` request,
  this operation lists the following properties:

    *

  `DatasetGroupArn` - The dataset group that provided the training
  data.

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`

    *

  `Message` - If an error occurred, information about the error.
  """
  @spec describe_forecast(map(), describe_forecast_request(), list()) ::
          {:ok, describe_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_forecast_errors()}
  def describe_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeForecast", input, options)
  end

  @doc """
  Describes a forecast export job created using the `CreateForecastExportJob`
  operation.

  In addition to listing the properties provided by the user in the
  `CreateForecastExportJob` request, this operation lists the following
  properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`

    *

  `Message` - If an error occurred, information about the error.
  """
  @spec describe_forecast_export_job(map(), describe_forecast_export_job_request(), list()) ::
          {:ok, describe_forecast_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_forecast_export_job_errors()}
  def describe_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeForecastExportJob", input, options)
  end

  @doc """
  Describes a monitor resource.

  In addition to listing the properties provided in the `CreateMonitor` request,
  this operation lists the following properties:

    *

  `Baseline`

    *

  `CreationTime`

    *

  `LastEvaluationTime`

    *

  `LastEvaluationState`

    *

  `LastModificationTime`

    *

  `Message`

    *

  `Status`
  """
  @spec describe_monitor(map(), describe_monitor_request(), list()) ::
          {:ok, describe_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_monitor_errors()}
  def describe_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMonitor", input, options)
  end

  @doc """

  This operation is only valid for legacy predictors created with CreatePredictor.

  If you
  are not using a legacy predictor, use `DescribeAutoPredictor`.

  Describes a predictor created using the `CreatePredictor`
  operation.

  In addition to listing the properties provided in the `CreatePredictor`
  request, this operation lists the following properties:

    *

  `DatasetImportJobArns` - The dataset import jobs used to import training
  data.

    *

  `AutoMLAlgorithmArns` - If AutoML is performed, the algorithms that were
  evaluated.

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`

    *

  `Message` - If an error occurred, information about the error.
  """
  @spec describe_predictor(map(), describe_predictor_request(), list()) ::
          {:ok, describe_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_predictor_errors()}
  def describe_predictor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePredictor", input, options)
  end

  @doc """
  Describes a predictor backtest export job created using the
  `CreatePredictorBacktestExportJob` operation.

  In addition to listing the properties provided by the user in the
  `CreatePredictorBacktestExportJob` request, this operation lists the
  following properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Status`

    *

  `Message` (if an error occurred)
  """
  @spec describe_predictor_backtest_export_job(
          map(),
          describe_predictor_backtest_export_job_request(),
          list()
        ) ::
          {:ok, describe_predictor_backtest_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_predictor_backtest_export_job_errors()}
  def describe_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePredictorBacktestExportJob", input, options)
  end

  @doc """
  Describes the what-if analysis created using the `CreateWhatIfAnalysis`
  operation.

  In addition to listing the properties provided in the `CreateWhatIfAnalysis`
  request, this operation lists the following properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Message` - If an error occurred, information about the error.

    *

  `Status`
  """
  @spec describe_what_if_analysis(map(), describe_what_if_analysis_request(), list()) ::
          {:ok, describe_what_if_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_what_if_analysis_errors()}
  def describe_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfAnalysis", input, options)
  end

  @doc """
  Describes the what-if forecast created using the `CreateWhatIfForecast`
  operation.

  In addition to listing the properties provided in the `CreateWhatIfForecast`
  request, this operation lists the following properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Message` - If an error occurred, information about the error.

    *

  `Status`
  """
  @spec describe_what_if_forecast(map(), describe_what_if_forecast_request(), list()) ::
          {:ok, describe_what_if_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_what_if_forecast_errors()}
  def describe_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecast", input, options)
  end

  @doc """
  Describes the what-if forecast export created using the
  `CreateWhatIfForecastExport` operation.

  In addition to listing the properties provided in the
  `CreateWhatIfForecastExport` request, this operation lists the following
  properties:

    *

  `CreationTime`

    *

  `LastModificationTime`

    *

  `Message` - If an error occurred, information about the error.

    *

  `Status`
  """
  @spec describe_what_if_forecast_export(
          map(),
          describe_what_if_forecast_export_request(),
          list()
        ) ::
          {:ok, describe_what_if_forecast_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_what_if_forecast_export_errors()}
  def describe_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecastExport", input, options)
  end

  @doc """
  Provides metrics on the accuracy of the models that were trained by the
  `CreatePredictor` operation.

  Use metrics to see how well the model performed and
  to decide whether to use the predictor to generate a forecast. For more
  information, see
  [Predictor Metrics](https://docs.aws.amazon.com/forecast/latest/dg/metrics.html).

  This operation generates metrics for each backtest window that was evaluated.
  The number
  of backtest windows (`NumberOfBacktestWindows`) is specified using the
  `EvaluationParameters` object, which is optionally included in the
  `CreatePredictor` request. If `NumberOfBacktestWindows` isn't
  specified, the number defaults to one.

  The parameters of the `filling` method determine which items contribute to the
  metrics. If you want all items to contribute, specify `zero`. If you want only
  those items that have complete data in the range being evaluated to contribute,
  specify
  `nan`. For more information, see `FeaturizationMethod`.

  Before you can get accuracy metrics, the `Status` of the predictor must be
  `ACTIVE`, signifying that training has completed. To get the status, use the
  `DescribePredictor` operation.
  """
  @spec get_accuracy_metrics(map(), get_accuracy_metrics_request(), list()) ::
          {:ok, get_accuracy_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_accuracy_metrics_errors()}
  def get_accuracy_metrics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccuracyMetrics", input, options)
  end

  @doc """
  Returns a list of dataset groups created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html) operation.

  For each dataset group, this operation returns a summary of its properties,
  including its
  Amazon Resource Name (ARN). You can retrieve the complete set of properties by
  using the
  dataset group ARN with the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.
  """
  @spec list_dataset_groups(map(), list_dataset_groups_request(), list()) ::
          {:ok, list_dataset_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_groups_errors()}
  def list_dataset_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetGroups", input, options)
  end

  @doc """
  Returns a list of dataset import jobs created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html) operation.

  For each import job, this operation returns a summary of its properties,
  including
  its Amazon Resource Name (ARN). You can retrieve the complete set of properties
  by using the
  ARN with the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation. You can filter the list by providing an array of
  [Filter](https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html)
  objects.
  """
  @spec list_dataset_import_jobs(map(), list_dataset_import_jobs_request(), list()) ::
          {:ok, list_dataset_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_import_jobs_errors()}
  def list_dataset_import_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetImportJobs", input, options)
  end

  @doc """
  Returns a list of datasets created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html) operation.

  For each
  dataset, a summary of its properties, including its Amazon Resource Name (ARN),
  is returned.
  To retrieve the complete set of properties, use the ARN with the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation.
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
  Returns a list of Explainability resources created using the
  `CreateExplainability` operation.

  This operation returns a summary for
  each Explainability. You can filter the list using an array of `Filter`
  objects.

  To retrieve the complete set of properties for a particular Explainability
  resource,
  use the ARN with the `DescribeExplainability` operation.
  """
  @spec list_explainabilities(map(), list_explainabilities_request(), list()) ::
          {:ok, list_explainabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_explainabilities_errors()}
  def list_explainabilities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExplainabilities", input, options)
  end

  @doc """
  Returns a list of Explainability exports created using the
  `CreateExplainabilityExport` operation.

  This operation returns a summary
  for each Explainability export. You can filter the list using an array of
  `Filter` objects.

  To retrieve the complete set of properties for a particular Explainability
  export, use
  the ARN with the `DescribeExplainability` operation.
  """
  @spec list_explainability_exports(map(), list_explainability_exports_request(), list()) ::
          {:ok, list_explainability_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_explainability_exports_errors()}
  def list_explainability_exports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExplainabilityExports", input, options)
  end

  @doc """
  Returns a list of forecast export jobs created using the
  `CreateForecastExportJob` operation.

  For each forecast export job, this operation
  returns a summary of its properties, including its Amazon Resource Name (ARN).
  To retrieve the
  complete set of properties, use the ARN with the `DescribeForecastExportJob`
  operation. You can filter the list using an array of `Filter` objects.
  """
  @spec list_forecast_export_jobs(map(), list_forecast_export_jobs_request(), list()) ::
          {:ok, list_forecast_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_forecast_export_jobs_errors()}
  def list_forecast_export_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListForecastExportJobs", input, options)
  end

  @doc """
  Returns a list of forecasts created using the `CreateForecast` operation.

  For each forecast, this operation returns a summary of its properties, including
  its Amazon
  Resource Name (ARN). To retrieve the complete set of properties, specify the ARN
  with the
  `DescribeForecast` operation. You can filter the list using an array of
  `Filter` objects.
  """
  @spec list_forecasts(map(), list_forecasts_request(), list()) ::
          {:ok, list_forecasts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_forecasts_errors()}
  def list_forecasts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListForecasts", input, options)
  end

  @doc """
  Returns a list of the monitoring evaluation results and predictor events
  collected by
  the monitor resource during different windows of time.

  For information about monitoring see `predictor-monitoring`. For
  more information about retrieving monitoring results see [Viewing Monitoring Results](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).
  """
  @spec list_monitor_evaluations(map(), list_monitor_evaluations_request(), list()) ::
          {:ok, list_monitor_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_monitor_evaluations_errors()}
  def list_monitor_evaluations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMonitorEvaluations", input, options)
  end

  @doc """
  Returns a list of monitors created with the `CreateMonitor` operation and
  `CreateAutoPredictor` operation.

  For each monitor resource, this operation returns of a summary of its
  properties, including its Amazon Resource Name (ARN). You
  can retrieve a complete set of properties of a monitor resource by specify the
  monitor's ARN in the `DescribeMonitor` operation.
  """
  @spec list_monitors(map(), list_monitors_request(), list()) ::
          {:ok, list_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_monitors_errors()}
  def list_monitors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMonitors", input, options)
  end

  @doc """
  Returns a list of predictor backtest export jobs created using the
  `CreatePredictorBacktestExportJob` operation.

  This operation returns a
  summary for each backtest export job. You can filter the list using an array of
  `Filter` objects.

  To retrieve the complete set of properties for a particular backtest export job,
  use
  the ARN with the `DescribePredictorBacktestExportJob` operation.
  """
  @spec list_predictor_backtest_export_jobs(
          map(),
          list_predictor_backtest_export_jobs_request(),
          list()
        ) ::
          {:ok, list_predictor_backtest_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_predictor_backtest_export_jobs_errors()}
  def list_predictor_backtest_export_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPredictorBacktestExportJobs", input, options)
  end

  @doc """
  Returns a list of predictors created using the `CreateAutoPredictor` or
  `CreatePredictor` operations.

  For each predictor, this operation returns a
  summary of its properties, including its Amazon Resource Name (ARN).

  You can retrieve the complete set of properties by using the ARN with the
  `DescribeAutoPredictor` and `DescribePredictor` operations. You
  can filter the list using an array of `Filter` objects.
  """
  @spec list_predictors(map(), list_predictors_request(), list()) ::
          {:ok, list_predictors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_predictors_errors()}
  def list_predictors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPredictors", input, options)
  end

  @doc """
  Lists the tags for an Amazon Forecast resource.
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
  Returns a list of what-if analyses created using the `CreateWhatIfAnalysis`
  operation.

  For each what-if analysis, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the what-if analysis ARN with the `DescribeWhatIfAnalysis`
  operation.
  """
  @spec list_what_if_analyses(map(), list_what_if_analyses_request(), list()) ::
          {:ok, list_what_if_analyses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_what_if_analyses_errors()}
  def list_what_if_analyses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfAnalyses", input, options)
  end

  @doc """
  Returns a list of what-if forecast exports created using the
  `CreateWhatIfForecastExport` operation.

  For each what-if forecast export, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the what-if forecast export ARN with the
  `DescribeWhatIfForecastExport` operation.
  """
  @spec list_what_if_forecast_exports(map(), list_what_if_forecast_exports_request(), list()) ::
          {:ok, list_what_if_forecast_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_what_if_forecast_exports_errors()}
  def list_what_if_forecast_exports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfForecastExports", input, options)
  end

  @doc """
  Returns a list of what-if forecasts created using the `CreateWhatIfForecast`
  operation.

  For each what-if forecast, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the what-if forecast ARN with the `DescribeWhatIfForecast`
  operation.
  """
  @spec list_what_if_forecasts(map(), list_what_if_forecasts_request(), list()) ::
          {:ok, list_what_if_forecasts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_what_if_forecasts_errors()}
  def list_what_if_forecasts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfForecasts", input, options)
  end

  @doc """
  Resumes a stopped monitor resource.
  """
  @spec resume_resource(map(), resume_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_resource_errors()}
  def resume_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResumeResource", input, options)
  end

  @doc """
  Stops a resource.

  The resource undergoes the following states: `CREATE_STOPPING` and
  `CREATE_STOPPED`. You cannot resume a resource once it has been
  stopped.

  This operation can be applied to the following resources (and their
  corresponding child
  resources):

    *
  Dataset Import Job

    *
  Predictor Job

    *
  Forecast Job

    *
  Forecast Export Job

    *
  Predictor Backtest Export Job

    *
  Explainability Job

    *
  Explainability Export Job
  """
  @spec stop_resource(map(), stop_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_resource_errors()}
  def stop_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopResource", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not
  changed. When a resource is deleted, the tags associated with that resource are
  also
  deleted.
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
  Deletes the specified tags from a resource.
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
  Replaces the datasets in a dataset group with the specified datasets.

  The `Status` of the dataset group must be `ACTIVE` before you can
  use the dataset group to create a predictor. Use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation to get the status.
  """
  @spec update_dataset_group(map(), update_dataset_group_request(), list()) ::
          {:ok, update_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dataset_group_errors()}
  def update_dataset_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDatasetGroup", input, options)
  end
end
