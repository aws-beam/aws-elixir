# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Personalize do
  @moduledoc """
  Amazon Personalize is a machine learning service that makes it easy to add
  individualized
  recommendations to customers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      hyper_parameter_ranges() :: %{
        "categoricalHyperParameterRanges" => list(categorical_hyper_parameter_range()()),
        "continuousHyperParameterRanges" => list(continuous_hyper_parameter_range()()),
        "integerHyperParameterRanges" => list(integer_hyper_parameter_range()())
      }
      
  """
  @type hyper_parameter_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_deletion_job() :: %{
        "creationDateTime" => non_neg_integer(),
        "dataDeletionJobArn" => String.t(),
        "dataSource" => data_source(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "numDeleted" => integer(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type data_deletion_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_tracker_request() :: %{
        optional("tags") => list(tag()()),
        required("datasetGroupArn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_event_tracker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_tracker_request() :: %{
        required("eventTrackerArn") => String.t()
      }
      
  """
  @type describe_event_tracker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_metric_attribution_request() :: %{
        required("metricAttributionArn") => String.t()
      }
      
  """
  @type delete_metric_attribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_solution_response() :: %{
        "solution" => solution()
      }
      
  """
  @type describe_solution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metric_attribution_request() :: %{
        required("metricAttributionArn") => String.t()
      }
      
  """
  @type describe_metric_attribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_solution_request() :: %{
        optional("performAutoTraining") => boolean(),
        optional("solutionUpdateConfig") => solution_update_config(),
        required("solutionArn") => String.t()
      }
      
  """
  @type update_solution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_segment_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("solutionVersionArn") => String.t()
      }
      
  """
  @type list_batch_segment_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_campaign_response() :: %{
        "campaign" => campaign()
      }
      
  """
  @type describe_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_campaign_response() :: %{
        "campaignArn" => String.t()
      }
      
  """
  @type update_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_inference_job_response() :: %{
        "batchInferenceJob" => batch_inference_job()
      }
      
  """
  @type describe_batch_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_inference_job_request() :: %{
        optional("batchInferenceJobConfig") => batch_inference_job_config(),
        optional("batchInferenceJobMode") => list(any()),
        optional("filterArn") => String.t(),
        optional("numResults") => integer(),
        optional("tags") => list(tag()()),
        optional("themeGenerationConfig") => theme_generation_config(),
        required("jobInput") => batch_inference_job_input(),
        required("jobName") => String.t(),
        required("jobOutput") => batch_inference_job_output(),
        required("roleArn") => String.t(),
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type create_batch_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "filterArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type filter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_inference_jobs_response() :: %{
        "batchInferenceJobs" => list(batch_inference_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_batch_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_deletion_jobs_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_data_deletion_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schema_request() :: %{
        optional("domain") => list(any()),
        required("name") => String.t(),
        required("schema") => String.t()
      }
      
  """
  @type create_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign() :: %{
        "campaignArn" => String.t(),
        "campaignConfig" => campaign_config(),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "latestCampaignUpdate" => campaign_update_summary(),
        "minProvisionedTPS" => integer(),
        "name" => String.t(),
        "solutionVersionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recipes_response() :: %{
        "nextToken" => String.t(),
        "recipes" => list(recipe_summary()())
      }
      
  """
  @type list_recipes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommender_update_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "recommenderConfig" => recommender_config(),
        "status" => String.t()
      }
      
  """
  @type recommender_update_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_tracker_response() :: %{
        "eventTrackerArn" => String.t(),
        "trackingId" => String.t()
      }
      
  """
  @type create_event_tracker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_recommender_request() :: %{
        optional("recommenderConfig") => recommender_config(),
        optional("tags") => list(tag()()),
        required("datasetGroupArn") => String.t(),
        required("name") => String.t(),
        required("recipeArn") => String.t()
      }
      
  """
  @type create_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_integer_hyper_parameter_range() :: %{
        "isTunable" => boolean(),
        "maxValue" => integer(),
        "minValue" => integer(),
        "name" => String.t()
      }
      
  """
  @type default_integer_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recommender_response() :: %{
        "recommenderArn" => String.t()
      }
      
  """
  @type update_recommender_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_schema_request() :: %{
        required("schemaArn") => String.t()
      }
      
  """
  @type describe_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_training_config() :: %{
        "schedulingExpression" => String.t()
      }
      
  """
  @type auto_training_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_response() :: %{
        "datasetArn" => String.t()
      }
      
  """
  @type update_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_categorical_hyper_parameter_range() :: %{
        "isTunable" => boolean(),
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type default_categorical_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_solution_version_request() :: %{
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type describe_solution_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_hyper_parameter_range() :: %{
        "maxValue" => float(),
        "minValue" => float(),
        "name" => String.t()
      }
      
  """
  @type continuous_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_solution_request() :: %{
        optional("eventType") => String.t(),
        optional("performAutoML") => boolean(),
        optional("performAutoTraining") => boolean(),
        optional("performHPO") => boolean(),
        optional("recipeArn") => String.t(),
        optional("solutionConfig") => solution_config(),
        optional("tags") => list(tag()()),
        required("datasetGroupArn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_solution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_metric_attribution_response() :: %{
        "metricAttributionArn" => String.t()
      }
      
  """
  @type create_metric_attribution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_schema_request() :: %{
        required("schemaArn") => String.t()
      }
      
  """
  @type delete_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_deletion_job_response() :: %{
        "dataDeletionJobArn" => String.t()
      }
      
  """
  @type create_data_deletion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_attribution_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "metricAttributionArn" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type metric_attribution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_segment_job_output() :: %{
        "s3DataDestination" => s3_data_config()
      }
      
  """
  @type batch_segment_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_response() :: %{
        "datasetImportJob" => dataset_import_job()
      }
      
  """
  @type describe_dataset_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution() :: %{
        "autoMLResult" => auto_ml_result(),
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "eventType" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "latestSolutionUpdate" => solution_update_summary(),
        "latestSolutionVersion" => solution_version_summary(),
        "name" => String.t(),
        "performAutoML" => boolean(),
        "performAutoTraining" => boolean(),
        "performHPO" => boolean(),
        "recipeArn" => String.t(),
        "solutionArn" => String.t(),
        "solutionConfig" => solution_config(),
        "status" => String.t()
      }
      
  """
  @type solution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_segment_job_response() :: %{
        "batchSegmentJobArn" => String.t()
      }
      
  """
  @type create_batch_segment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_recommender_response() :: %{
        "recommenderArn" => String.t()
      }
      
  """
  @type start_recommender_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_schema() :: %{
        "creationDateTime" => non_neg_integer(),
        "domain" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "schema" => String.t(),
        "schemaArn" => String.t()
      }
      
  """
  @type dataset_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm() :: %{
        "algorithmArn" => String.t(),
        "algorithmImage" => algorithm_image(),
        "creationDateTime" => non_neg_integer(),
        "defaultHyperParameterRanges" => default_hyper_parameter_ranges(),
        "defaultHyperParameters" => map(),
        "defaultResourceConfig" => map(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "trainingInputMode" => String.t()
      }
      
  """
  @type algorithm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recipe_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "domain" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "recipeArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type recipe_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_campaigns_response() :: %{
        "campaigns" => list(campaign_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_parameters() :: %{
        "eventType" => String.t(),
        "eventValueThreshold" => float(),
        "weight" => float()
      }
      
  """
  @type event_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_filter_response() :: %{
        "filterArn" => String.t()
      }
      
  """
  @type create_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      theme_generation_config() :: %{
        "fieldsForThemeGeneration" => fields_for_theme_generation()
      }
      
  """
  @type theme_generation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_hyper_parameter_ranges() :: %{
        "categoricalHyperParameterRanges" => list(default_categorical_hyper_parameter_range()()),
        "continuousHyperParameterRanges" => list(default_continuous_hyper_parameter_range()()),
        "integerHyperParameterRanges" => list(default_integer_hyper_parameter_range()())
      }
      
  """
  @type default_hyper_parameter_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_schema_response() :: %{
        "schema" => dataset_schema()
      }
      
  """
  @type describe_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_campaign_request() :: %{
        required("campaignArn") => String.t()
      }
      
  """
  @type delete_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_campaign_request() :: %{
        required("campaignArn") => String.t()
      }
      
  """
  @type describe_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_attribution_metrics_request() :: %{
        optional("maxResults") => integer(),
        optional("metricAttributionArn") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_metric_attribution_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solutions_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_solutions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_algorithm_request() :: %{
        required("algorithmArn") => String.t()
      }
      
  """
  @type describe_algorithm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schema_response() :: %{
        "schemaArn" => String.t()
      }
      
  """
  @type create_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_inference_job_input() :: %{
        "s3DataSource" => s3_data_config()
      }
      
  """
  @type batch_inference_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_inference_job_config() :: %{
        "itemExplorationConfig" => map()
      }
      
  """
  @type batch_inference_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_solution_metrics_request() :: %{
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type get_solution_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign_config() :: %{
        "enableMetadataWithRecommendations" => boolean(),
        "itemExplorationConfig" => map(),
        "syncWithLatestSolutionVersion" => boolean()
      }
      
  """
  @type campaign_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_deletion_job_response() :: %{
        "dataDeletionJob" => data_deletion_job()
      }
      
  """
  @type describe_data_deletion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_deletion_jobs_response() :: %{
        "dataDeletionJobs" => list(data_deletion_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_deletion_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_trackers_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_event_trackers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_request() :: %{
        optional("domain") => list(any()),
        optional("kmsKeyArn") => String.t(),
        optional("roleArn") => String.t(),
        optional("tags") => list(tag()()),
        required("name") => String.t()
      }
      
  """
  @type create_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tag_keys_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tag_keys_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "recipeArn" => String.t(),
        "solutionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type solution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommender_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "recipeArn" => String.t(),
        "recommenderArn" => String.t(),
        "recommenderConfig" => recommender_config(),
        "status" => String.t()
      }
      
  """
  @type recommender_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_solution_request() :: %{
        required("solutionArn") => String.t()
      }
      
  """
  @type describe_solution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recommender_request() :: %{
        required("recommenderArn") => String.t(),
        required("recommenderConfig") => recommender_config()
      }
      
  """
  @type update_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_metric_attribution_request() :: %{
        required("datasetGroupArn") => String.t(),
        required("metrics") => list(metric_attribute()()),
        required("metricsOutputConfig") => metric_attribution_output(),
        required("name") => String.t()
      }
      
  """
  @type create_metric_attribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_inference_job() :: %{
        "batchInferenceJobArn" => String.t(),
        "batchInferenceJobConfig" => batch_inference_job_config(),
        "batchInferenceJobMode" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "filterArn" => String.t(),
        "jobInput" => batch_inference_job_input(),
        "jobName" => String.t(),
        "jobOutput" => batch_inference_job_output(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "numResults" => integer(),
        "roleArn" => String.t(),
        "solutionVersionArn" => String.t(),
        "status" => String.t(),
        "themeGenerationConfig" => theme_generation_config()
      }
      
  """
  @type batch_inference_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetArn" => String.t(),
        "datasetGroupArn" => String.t(),
        "datasetType" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "latestDatasetUpdate" => dataset_update_summary(),
        "name" => String.t(),
        "schemaArn" => String.t(),
        "status" => String.t(),
        "trackingId" => String.t()
      }
      
  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_export_job_response() :: %{
        "datasetExportJob" => dataset_export_job()
      }
      
  """
  @type describe_dataset_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "datasetArn" => String.t()
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_campaigns_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("solutionArn") => String.t()
      }
      
  """
  @type list_campaigns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_segment_job_summary() :: %{
        "batchSegmentJobArn" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "solutionVersionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type batch_segment_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_segment_job_response() :: %{
        "batchSegmentJob" => batch_segment_job()
      }
      
  """
  @type describe_batch_segment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign_update_summary() :: %{
        "campaignConfig" => campaign_config(),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "minProvisionedTPS" => integer(),
        "solutionVersionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type campaign_update_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_inference_job_output() :: %{
        "s3DataDestination" => s3_data_config()
      }
      
  """
  @type batch_inference_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_import_job() :: %{
        "creationDateTime" => non_neg_integer(),
        "dataSource" => data_source(),
        "datasetArn" => String.t(),
        "datasetImportJobArn" => String.t(),
        "failureReason" => String.t(),
        "importMode" => list(any()),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "publishAttributionMetricsToS3" => boolean(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_import_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_attribute() :: %{
        "eventType" => String.t(),
        "expression" => String.t(),
        "metricName" => String.t()
      }
      
  """
  @type metric_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_version() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "eventType" => String.t(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "performAutoML" => boolean(),
        "performHPO" => boolean(),
        "recipeArn" => String.t(),
        "solutionArn" => String.t(),
        "solutionConfig" => solution_config(),
        "solutionVersionArn" => String.t(),
        "status" => String.t(),
        "trainingHours" => float(),
        "trainingMode" => list(any()),
        "trainingType" => list(any()),
        "tunedHPOParams" => tuned_h_p_o_params()
      }
      
  """
  @type solution_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_export_job_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetExportJobArn" => String.t(),
        "failureReason" => String.t(),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type dataset_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fields_for_theme_generation() :: %{
        "itemName" => String.t()
      }
      
  """
  @type fields_for_theme_generation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_request() :: %{
        optional("datasetArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_dataset_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_tracker_request() :: %{
        required("eventTrackerArn") => String.t()
      }
      
  """
  @type delete_event_tracker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_filter_request() :: %{
        optional("tags") => list(tag()()),
        required("datasetGroupArn") => String.t(),
        required("filterExpression") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommender() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "latestRecommenderUpdate" => recommender_update_summary(),
        "modelMetrics" => map(),
        "name" => String.t(),
        "recipeArn" => String.t(),
        "recommenderArn" => String.t(),
        "recommenderConfig" => recommender_config(),
        "status" => String.t()
      }
      
  """
  @type recommender() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_solution_version_request() :: %{
        optional("name") => String.t(),
        optional("tags") => list(tag()()),
        optional("trainingMode") => list(any()),
        required("solutionArn") => String.t()
      }
      
  """
  @type create_solution_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_attribution() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "metricAttributionArn" => String.t(),
        "metricsOutputConfig" => metric_attribution_output(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type metric_attribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_solution_version_response() :: %{
        "solutionVersion" => solution_version()
      }
      
  """
  @type describe_solution_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_segment_job_request() :: %{
        required("batchSegmentJobArn") => String.t()
      }
      
  """
  @type describe_batch_segment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetArn" => String.t(),
        "datasetType" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tuned_h_p_o_params() :: %{
        "algorithmHyperParameters" => map()
      }
      
  """
  @type tuned_h_p_o_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "tagKey" => String.t(),
        "tagValue" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_segment_job_input() :: %{
        "s3DataSource" => s3_data_config()
      }
      
  """
  @type batch_segment_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_solution_version_response() :: %{
        "solutionVersionArn" => String.t()
      }
      
  """
  @type create_solution_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_inference_job_response() :: %{
        "batchInferenceJobArn" => String.t()
      }
      
  """
  @type create_batch_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_version_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "solutionVersionArn" => String.t(),
        "status" => String.t(),
        "trainingMode" => list(any()),
        "trainingType" => list(any())
      }
      
  """
  @type solution_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_recommender_request() :: %{
        required("recommenderArn") => String.t()
      }
      
  """
  @type delete_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recipe_response() :: %{
        "recipe" => recipe()
      }
      
  """
  @type describe_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_attributions_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_metric_attributions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_response() :: %{
        "datasetGroups" => list(dataset_group_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_dataset_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recipe() :: %{
        "algorithmArn" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "featureTransformationArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "recipeArn" => String.t(),
        "recipeType" => String.t(),
        "status" => String.t()
      }
      
  """
  @type recipe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_segment_job() :: %{
        "batchSegmentJobArn" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "filterArn" => String.t(),
        "jobInput" => batch_segment_job_input(),
        "jobName" => String.t(),
        "jobOutput" => batch_segment_job_output(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "numResults" => integer(),
        "roleArn" => String.t(),
        "solutionVersionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type batch_segment_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_objective() :: %{
        "itemAttribute" => String.t(),
        "objectiveSensitivity" => list(any())
      }
      
  """
  @type optimization_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_attribution_metrics_response() :: %{
        "metrics" => list(metric_attribute()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_metric_attribution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_dataset_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_recommender_request() :: %{
        required("recommenderArn") => String.t()
      }
      
  """
  @type start_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_recommender_response() :: %{
        "recommenderArn" => String.t()
      }
      
  """
  @type stop_recommender_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      events_config() :: %{
        "eventParametersList" => list(event_parameters()())
      }
      
  """
  @type events_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integer_hyper_parameter_range() :: %{
        "maxValue" => integer(),
        "minValue" => integer(),
        "name" => String.t()
      }
      
  """
  @type integer_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_hyper_parameter_range() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type categorical_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommender_request() :: %{
        required("recommenderArn") => String.t()
      }
      
  """
  @type describe_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_segment_jobs_response() :: %{
        "batchSegmentJobs" => list(batch_segment_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_batch_segment_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_request() :: %{
        required("datasetArn") => String.t(),
        required("schemaArn") => String.t()
      }
      
  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solutions_response() :: %{
        "nextToken" => String.t(),
        "solutions" => list(solution_summary()())
      }
      
  """
  @type list_solutions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_solution_request() :: %{
        required("solutionArn") => String.t()
      }
      
  """
  @type delete_solution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "filterArn" => String.t(),
        "filterExpression" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_transformation_request() :: %{
        required("featureTransformationArn") => String.t()
      }
      
  """
  @type describe_feature_transformation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_update_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "schemaArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_update_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_algorithm_response() :: %{
        "algorithm" => algorithm()
      }
      
  """
  @type describe_algorithm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recipe_request() :: %{
        required("recipeArn") => String.t()
      }
      
  """
  @type describe_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_filter_request() :: %{
        required("filterArn") => String.t()
      }
      
  """
  @type describe_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      h_p_o_objective() :: %{
        "metricName" => String.t(),
        "metricRegex" => String.t(),
        "type" => String.t()
      }
      
  """
  @type h_p_o_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_deletion_job_request() :: %{
        optional("tags") => list(tag()()),
        required("dataSource") => data_source(),
        required("datasetGroupArn") => String.t(),
        required("jobName") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_data_deletion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_recommender_response() :: %{
        "recommenderArn" => String.t()
      }
      
  """
  @type create_recommender_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommender_response() :: %{
        "recommender" => recommender()
      }
      
  """
  @type describe_recommender_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_inference_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("solutionVersionArn") => String.t()
      }
      
  """
  @type list_batch_inference_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_export_job() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetArn" => String.t(),
        "datasetExportJobArn" => String.t(),
        "failureReason" => String.t(),
        "ingestionMode" => list(any()),
        "jobName" => String.t(),
        "jobOutput" => dataset_export_job_output(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_export_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_config() :: %{
        "metricName" => String.t(),
        "recipeList" => list(String.t()())
      }
      
  """
  @type auto_ml_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_recommender_request() :: %{
        required("recommenderArn") => String.t()
      }
      
  """
  @type stop_recommender_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_inference_job_request() :: %{
        required("batchInferenceJobArn") => String.t()
      }
      
  """
  @type describe_batch_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_import_job_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetImportJobArn" => String.t(),
        "failureReason" => String.t(),
        "importMode" => list(any()),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type dataset_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_segment_job_request() :: %{
        optional("filterArn") => String.t(),
        optional("numResults") => integer(),
        optional("tags") => list(tag()()),
        required("jobInput") => batch_segment_job_input(),
        required("jobName") => String.t(),
        required("jobOutput") => batch_segment_job_output(),
        required("roleArn") => String.t(),
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type create_batch_segment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_deletion_job_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "dataDeletionJobArn" => String.t(),
        "datasetGroupArn" => String.t(),
        "failureReason" => String.t(),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type data_deletion_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_response() :: %{
        "datasetImportJobs" => list(dataset_import_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_dataset_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      h_p_o_resource_config() :: %{
        "maxNumberOfTrainingJobs" => String.t(),
        "maxParallelTrainingJobs" => String.t()
      }
      
  """
  @type h_p_o_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_tracker_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "eventTrackerArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type event_tracker_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_group_request() :: %{
        required("datasetGroupArn") => String.t()
      }
      
  """
  @type delete_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_update_config() :: %{
        "autoTrainingConfig" => auto_training_config(),
        "eventsConfig" => events_config()
      }
      
  """
  @type solution_update_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_campaign_request() :: %{
        optional("campaignConfig") => campaign_config(),
        optional("minProvisionedTPS") => integer(),
        optional("tags") => list(tag()()),
        required("name") => String.t(),
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type create_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_export_jobs_response() :: %{
        "datasetExportJobs" => list(dataset_export_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_dataset_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_tracker() :: %{
        "accountId" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "eventTrackerArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t(),
        "trackingId" => String.t()
      }
      
  """
  @type event_tracker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_response() :: %{
        "datasetGroupArn" => String.t(),
        "domain" => list(any())
      }
      
  """
  @type create_dataset_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_inference_job_summary() :: %{
        "batchInferenceJobArn" => String.t(),
        "batchInferenceJobMode" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "jobName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "solutionVersionArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type batch_inference_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_transformation_response() :: %{
        "featureTransformation" => feature_transformation()
      }
      
  """
  @type describe_feature_transformation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_tracker_response() :: %{
        "eventTracker" => event_tracker()
      }
      
  """
  @type describe_event_tracker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommenders_response() :: %{
        "nextToken" => String.t(),
        "recommenders" => list(recommender_summary()())
      }
      
  """
  @type list_recommenders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metric_attribution_response() :: %{
        "metricAttribution" => metric_attribution()
      }
      
  """
  @type describe_metric_attribution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "dataset" => dataset()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommender_config() :: %{
        "enableMetadataWithRecommendations" => boolean(),
        "itemExplorationConfig" => map(),
        "minRecommendationRequestsPerSecond" => integer(),
        "trainingDataConfig" => training_data_config()
      }
      
  """
  @type recommender_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_result() :: %{
        "bestRecipeArn" => String.t()
      }
      
  """
  @type auto_ml_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_solution_version_creation_request() :: %{
        required("solutionVersionArn") => String.t()
      }
      
  """
  @type stop_solution_version_creation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("tags") => list(tag()()),
        required("datasetGroupArn") => String.t(),
        required("datasetType") => String.t(),
        required("name") => String.t(),
        required("schemaArn") => String.t()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_request() :: %{
        required("datasetGroupArn") => String.t()
      }
      
  """
  @type describe_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_attributions_response() :: %{
        "metricAttributions" => list(metric_attribution_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_metric_attributions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_trackers_response() :: %{
        "eventTrackers" => list(event_tracker_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_event_trackers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_transformation() :: %{
        "creationDateTime" => non_neg_integer(),
        "defaultParameters" => map(),
        "featureTransformationArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type feature_transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_request() :: %{
        optional("importMode") => list(any()),
        optional("publishAttributionMetricsToS3") => boolean(),
        optional("tags") => list(tag()()),
        required("dataSource") => data_source(),
        required("datasetArn") => String.t(),
        required("jobName") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_dataset_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_config() :: %{
        "algorithmHyperParameters" => map(),
        "autoMLConfig" => auto_ml_config(),
        "autoTrainingConfig" => auto_training_config(),
        "eventValueThreshold" => String.t(),
        "eventsConfig" => events_config(),
        "featureTransformationParameters" => map(),
        "hpoConfig" => h_p_o_config(),
        "optimizationObjective" => optimization_objective(),
        "trainingDataConfig" => training_data_config()
      }
      
  """
  @type solution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solution_versions_response() :: %{
        "nextToken" => String.t(),
        "solutionVersions" => list(solution_version_summary()())
      }
      
  """
  @type list_solution_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_schema_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "domain" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "schemaArn" => String.t()
      }
      
  """
  @type dataset_schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_request() :: %{
        required("datasetImportJobArn") => String.t()
      }
      
  """
  @type describe_dataset_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_metric_attribution_request() :: %{
        optional("addMetrics") => list(metric_attribute()()),
        optional("metricAttributionArn") => String.t(),
        optional("metricsOutputConfig") => metric_attribution_output(),
        optional("removeMetrics") => list(String.t()())
      }
      
  """
  @type update_metric_attribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_config() :: %{
        "kmsKeyArn" => String.t(),
        "path" => String.t()
      }
      
  """
  @type s3_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_solution_response() :: %{
        "solutionArn" => String.t()
      }
      
  """
  @type create_solution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_attribution_output() :: %{
        "roleArn" => String.t(),
        "s3DataDestination" => s3_data_config()
      }
      
  """
  @type metric_attribution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_metric_attribution_response() :: %{
        "metricAttributionArn" => String.t()
      }
      
  """
  @type update_metric_attribution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_response() :: %{
        "datasetGroup" => dataset_group()
      }
      
  """
  @type describe_dataset_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_continuous_hyper_parameter_range() :: %{
        "isTunable" => boolean(),
        "maxValue" => float(),
        "minValue" => float(),
        "name" => String.t()
      }
      
  """
  @type default_continuous_hyper_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_solution_metrics_response() :: %{
        "metrics" => map(),
        "solutionVersionArn" => String.t()
      }
      
  """
  @type get_solution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_update_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "performAutoTraining" => boolean(),
        "solutionUpdateConfig" => solution_update_config(),
        "status" => String.t()
      }
      
  """
  @type solution_update_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_campaign_request() :: %{
        optional("campaignConfig") => campaign_config(),
        optional("minProvisionedTPS") => integer(),
        optional("solutionVersionArn") => String.t(),
        required("campaignArn") => String.t()
      }
      
  """
  @type update_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("datasetArn") => String.t()
      }
      
  """
  @type describe_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        required("datasetArn") => String.t()
      }
      
  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "datasets" => list(dataset_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_image() :: %{
        "dockerURI" => String.t(),
        "name" => String.t()
      }
      
  """
  @type algorithm_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_export_jobs_request() :: %{
        optional("datasetArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_dataset_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      h_p_o_config() :: %{
        "algorithmHyperParameterRanges" => hyper_parameter_ranges(),
        "hpoObjective" => h_p_o_objective(),
        "hpoResourceConfig" => h_p_o_resource_config()
      }
      
  """
  @type h_p_o_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "dataLocation" => String.t()
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_solution_response() :: %{
        "solutionArn" => String.t()
      }
      
  """
  @type update_solution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_deletion_job_request() :: %{
        required("dataDeletionJobArn") => String.t()
      }
      
  """
  @type describe_data_deletion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_export_job_output() :: %{
        "s3DataDestination" => s3_data_config()
      }
      
  """
  @type dataset_export_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_campaign_response() :: %{
        "campaignArn" => String.t()
      }
      
  """
  @type create_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_response() :: %{
        "nextToken" => String.t(),
        "schemas" => list(dataset_schema_summary()())
      }
      
  """
  @type list_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_export_job_response() :: %{
        "datasetExportJobArn" => String.t()
      }
      
  """
  @type create_dataset_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_export_job_request() :: %{
        optional("ingestionMode") => list(any()),
        optional("tags") => list(tag()()),
        required("datasetArn") => String.t(),
        required("jobName") => String.t(),
        required("jobOutput") => dataset_export_job_output(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_dataset_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_data_config() :: %{
        "excludedDatasetColumns" => map()
      }
      
  """
  @type training_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recipes_request() :: %{
        optional("domain") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("recipeProvider") => list(any())
      }
      
  """
  @type list_recipes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solution_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("solutionArn") => String.t()
      }
      
  """
  @type list_solution_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_filters_response() :: %{
        "Filters" => list(filter_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_filter_response() :: %{
        "filter" => filter()
      }
      
  """
  @type describe_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_group() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "domain" => list(any()),
        "failureReason" => String.t(),
        "kmsKeyArn" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign_summary() :: %{
        "campaignArn" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type campaign_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_export_job_request() :: %{
        required("datasetExportJobArn") => String.t()
      }
      
  """
  @type describe_dataset_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_filter_request() :: %{
        required("filterArn") => String.t()
      }
      
  """
  @type delete_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommenders_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_recommenders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_response() :: %{
        "datasetImportJobArn" => String.t()
      }
      
  """
  @type create_dataset_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_filters_request() :: %{
        optional("datasetGroupArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_group_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "datasetGroupArn" => String.t(),
        "domain" => list(any()),
        "failureReason" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type dataset_group_summary() :: %{String.t() => any()}

  @type create_batch_inference_job_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_batch_segment_job_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_campaign_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_data_deletion_job_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_export_job_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_group_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()

  @type create_dataset_import_job_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_event_tracker_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_filter_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type create_metric_attribution_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_recommender_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_schema_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()

  @type create_solution_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_solution_version_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_campaign_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_event_tracker_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_filter_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_metric_attribution_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_recommender_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_schema_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_solution_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type describe_algorithm_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_batch_inference_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_batch_segment_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_campaign_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_data_deletion_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_import_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_event_tracker_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_feature_transformation_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_filter_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_metric_attribution_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_recipe_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_recommender_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_schema_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_solution_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_solution_version_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type get_solution_metrics_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type list_batch_inference_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_batch_segment_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_campaigns_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_data_deletion_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_dataset_export_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_dataset_groups_errors() :: invalid_next_token_exception()

  @type list_dataset_import_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_datasets_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_event_trackers_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_filters_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_metric_attribution_metrics_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_metric_attributions_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_recipes_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_recommenders_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_schemas_errors() :: invalid_next_token_exception()

  @type list_solution_versions_errors() ::
          invalid_input_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type list_solutions_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type start_recommender_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type stop_recommender_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type stop_solution_version_creation_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_resource_errors() ::
          invalid_input_exception()
          | resource_not_found_exception()
          | too_many_tag_keys_exception()
          | resource_in_use_exception()

  @type update_campaign_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type update_dataset_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type update_metric_attribution_errors() ::
          resource_already_exists_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_recommender_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type update_solution_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2018-05-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "personalize",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Personalize",
      signature_version: "v4",
      signing_name: "personalize",
      target_prefix: "AmazonPersonalize"
    }
  end

  @doc """
  Generates batch recommendations based on a list of items or users stored in
  Amazon S3
  and exports the recommendations to an Amazon S3 bucket.

  To generate batch recommendations, specify the ARN of a solution version and an
  Amazon S3 URI for the input and output data.
  For user personalization, popular items, and personalized ranking solutions, the
  batch inference job generates a list of
  recommended items for each user ID in the input file. For related items
  solutions, the job generates a list of recommended
  items for each item ID in the input file.

  For more information, see [Creating a batch inference job
  ](https://docs.aws.amazon.com/personalize/latest/dg/getting-batch-recommendations.html).

  If you use the Similar-Items recipe, Amazon Personalize can add descriptive
  themes to batch recommendations.
  To generate themes, set the job's mode to
  `THEME_GENERATION` and specify the name of the field that contains item names in
  the
  input data.

  For more information about generating themes, see [Batch recommendations with themes from Content Generator
  ](https://docs.aws.amazon.com/personalize/latest/dg/themed-batch-recommendations.html).

  You can't get batch recommendations with the Trending-Now or Next-Best-Action
  recipes.
  """
  @spec create_batch_inference_job(map(), create_batch_inference_job_request(), list()) ::
          {:ok, create_batch_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_batch_inference_job_errors()}
  def create_batch_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBatchInferenceJob", input, options)
  end

  @doc """
  Creates a batch segment job.

  The operation can handle up to 50 million records and the
  input file must be in JSON format. For more information, see
  [Getting batch recommendations and user segments](https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html).
  """
  @spec create_batch_segment_job(map(), create_batch_segment_job_request(), list()) ::
          {:ok, create_batch_segment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_batch_segment_job_errors()}
  def create_batch_segment_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBatchSegmentJob", input, options)
  end

  @doc """

  You incur campaign costs while it is active.

  To avoid unnecessary costs, make sure to delete the campaign when you are
  finished. For information about campaign
  costs, see [Amazon Personalize pricing](https://aws.amazon.com/personalize/pricing/).

  Creates a campaign that deploys a solution version. When a client calls the
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)  and
  [GetPersonalizedRanking](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html)

  APIs, a campaign is specified in the request.

  ## Minimum Provisioned TPS and Auto-Scaling

  A high `minProvisionedTPS` will increase your cost. We recommend starting with 1
  for `minProvisionedTPS` (the default). Track
  your usage using Amazon CloudWatch metrics, and increase the `minProvisionedTPS`
  as necessary.

  When you create an Amazon Personalize campaign, you can specify the minimum
  provisioned transactions per second
  (`minProvisionedTPS`) for the campaign. This is the baseline transaction
  throughput for the campaign provisioned by
  Amazon Personalize. It sets the minimum billing charge for the campaign while it
  is active. A transaction is a single `GetRecommendations` or
  `GetPersonalizedRanking` request. The default `minProvisionedTPS` is 1.

  If your TPS increases beyond the `minProvisionedTPS`, Amazon Personalize
  auto-scales the provisioned capacity up
  and down, but never below `minProvisionedTPS`.
  There's a short time delay while the capacity is increased
  that might cause loss of transactions. When your traffic reduces, capacity
  returns to the `minProvisionedTPS`.

  You are charged for the
  the minimum provisioned TPS or, if your requests exceed the `minProvisionedTPS`,
  the actual TPS.
  The actual TPS is the total number of recommendation requests you make.
  We recommend starting with a low `minProvisionedTPS`, track
  your usage using Amazon CloudWatch metrics, and then increase the
  `minProvisionedTPS` as necessary.

  For more information about campaign costs, see [Amazon Personalize pricing](https://aws.amazon.com/personalize/pricing/).

  ## Status

  A campaign can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  DELETE PENDING > DELETE IN_PROGRESS

  To get the campaign status, call
  [DescribeCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html). 
  Wait until the `status` of the campaign
  is `ACTIVE` before asking the campaign for recommendations.

  ## Related APIs

    *

  [ListCampaigns](https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html)

    *

  [DescribeCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html) 

    *

  [UpdateCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html)

    *

  [DeleteCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html)
  """
  @spec create_campaign(map(), create_campaign_request(), list()) ::
          {:ok, create_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_campaign_errors()}
  def create_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCampaign", input, options)
  end

  @doc """
  Creates a batch job that deletes all
  references to specific users from an Amazon Personalize dataset group in
  batches.

  You specify the users to delete in a CSV file of userIds in
  an Amazon S3 bucket. After a job completes, Amazon Personalize no longer trains
  on the users’ data and no longer considers the users when generating user
  segments.
  For more information about creating a data deletion job, see [Deleting users](https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html).

    *
  Your input file must be a CSV file with a single USER_ID column that lists the
  users IDs. For more information
  about preparing the CSV file, see [Preparing your data deletion file and uploading it to Amazon
  S3](https://docs.aws.amazon.com/personalize/latest/dg/prepare-deletion-input-file.html).

    *
  To give Amazon Personalize permission to access your input CSV file of userIds,
  you must specify an IAM service role that has permission to
  read from the data source. This role
  needs `GetObject` and `ListBucket` permissions for the bucket and its content.
  These permissions are the same as importing data. For information on granting
  access to your Amazon S3
  bucket, see [Giving Amazon Personalize Access to Amazon S3
  Resources](https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

  After you create a job, it can take up to a day to delete all references to the
  users from datasets and models. Until the job completes,
  Amazon Personalize continues to use the data when training. And if you use a
  User Segmentation recipe, the users might appear in user segments.

  ## Status

  A data deletion job can have one of the following statuses:

    *
  PENDING > IN_PROGRESS > COMPLETED -or- FAILED

  To get the status of the data deletion job, call
  [DescribeDataDeletionJob](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html) API operation and specify the Amazon Resource Name
  (ARN) of the job. If the status is FAILED, the response
  includes a `failureReason` key, which describes why the job
  failed.

  ## Related APIs

    *

  [ListDataDeletionJobs](https://docs.aws.amazon.com/personalize/latest/dg/API_ListDataDeletionJobs.html)

    *

  [DescribeDataDeletionJob](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html)
  """
  @spec create_data_deletion_job(map(), create_data_deletion_job_request(), list()) ::
          {:ok, create_data_deletion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_deletion_job_errors()}
  def create_data_deletion_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataDeletionJob", input, options)
  end

  @doc """
  Creates an empty dataset and adds it to the specified dataset group.

  Use
  [CreateDatasetImportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html) to import your training data to a
  dataset.

  There are 5 types of datasets:

    *
  Item interactions

    *
  Items

    *
  Users

    *
  Action interactions

    *
  Actions

  Each dataset type has an associated schema with required field types.
  Only the `Item interactions` dataset is required in order to train a
  model (also referred to as creating a solution).

  A dataset can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
  FAILED

    *
  DELETE PENDING > DELETE IN_PROGRESS

  To get the status of the dataset, call
  [DescribeDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html).

  ## Related APIs

    *

  [CreateDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html) 

    *

  [ListDatasets](https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html)

    *

  [DescribeDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html) 

    *

  [DeleteDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html)
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
  Creates a job that exports data from your dataset to an Amazon S3 bucket.

  To allow Amazon Personalize to export the training data, you must specify an
  service-linked IAM role that gives Amazon Personalize `PutObject`
  permissions for your Amazon S3 bucket. For information, see [Exporting a dataset](https://docs.aws.amazon.com/personalize/latest/dg/export-data.html) in
  the Amazon Personalize developer guide.

  ## Status

  A dataset export job can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
  FAILED

  To get the status of the export job, call
  [DescribeDatasetExportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html),
  and specify the Amazon Resource Name
  (ARN) of the dataset export job. The dataset export is complete when the
  status shows as ACTIVE. If the status shows as CREATE FAILED, the response
  includes a `failureReason` key, which describes why the job
  failed.
  """
  @spec create_dataset_export_job(map(), create_dataset_export_job_request(), list()) ::
          {:ok, create_dataset_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_export_job_errors()}
  def create_dataset_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatasetExportJob", input, options)
  end

  @doc """
  Creates an empty dataset group.

  A dataset group is a container for
  Amazon Personalize resources. A dataset group can contain at most three
  datasets, one
  for each type of dataset:

    *
  Item interactions

    *
  Items

    *
  Users

    *
  Actions

    *
  Action interactions

  A dataset group can be a Domain dataset group, where you specify a
  domain and use pre-configured resources like recommenders, or a
  Custom dataset group, where you use custom resources, such as a solution
  with a solution version, that you deploy with a campaign. If you start
  with a Domain dataset group, you can still add custom resources such as
  solutions and solution versions trained with recipes for custom use cases
  and deployed with campaigns.

  A dataset group can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
  FAILED

    *
  DELETE PENDING

  To get the status of the dataset group, call
  [DescribeDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html). If the status shows as CREATE FAILED, the
  response includes a `failureReason` key, which describes why
  the creation failed.

  You must wait until the `status` of the dataset group is
  `ACTIVE` before adding a dataset to the group.

  You can specify an Key Management Service (KMS) key to encrypt the datasets in
  the group. If you specify a KMS key, you must also include an Identity and
  Access Management
  (IAM) role that has permission to access the key.

  ## APIs that require a dataset group ARN in the request

    *

  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html)

    *

  [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html) 

    *

  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)

  ## Related APIs

    *

  [ListDatasetGroups](https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html) 

    *

  [DescribeDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html)

    *

  [DeleteDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html)
  """
  @spec create_dataset_group(map(), create_dataset_group_request(), list()) ::
          {:ok, create_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_group_errors()}
  def create_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatasetGroup", input, options)
  end

  @doc """
  Creates a job that imports training data from your data source (an
  Amazon S3 bucket) to an Amazon Personalize dataset.

  To allow Amazon Personalize to import the
  training data, you must specify an IAM service role that has permission to
  read from the data source, as Amazon Personalize makes a copy of your data and
  processes it internally. For information on granting access to your Amazon S3
  bucket, see [Giving Amazon Personalize Access to Amazon S3
  Resources](https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

  If you already created a recommender or deployed a custom solution version with
  a campaign, how new bulk records
  influence recommendations depends on the domain use case or recipe that you use.
  For more information, see [How new data influences real-time
  recommendations](https://docs.aws.amazon.com/personalize/latest/dg/how-new-data-influences-recommendations.html).

  By default, a dataset import job replaces any existing data in the
  dataset that you imported in bulk. To add new records without replacing
  existing data, specify INCREMENTAL for the import mode in the
  CreateDatasetImportJob operation.

  ## Status

  A dataset import job can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
  FAILED

  To get the status of the import job, call
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html), providing the Amazon Resource Name
  (ARN) of the dataset import job. The dataset import is complete when the
  status shows as ACTIVE. If the status shows as CREATE FAILED, the response
  includes a `failureReason` key, which describes why the job
  failed.

  Importing takes time. You must wait until the status shows as ACTIVE
  before training a model using the dataset.

  ## Related APIs

    *

  [ListDatasetImportJobs](https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html)

    *

  [DescribeDatasetImportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html)
  """
  @spec create_dataset_import_job(map(), create_dataset_import_job_request(), list()) ::
          {:ok, create_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_import_job_errors()}
  def create_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatasetImportJob", input, options)
  end

  @doc """
  Creates an event tracker that you use when adding event data to a specified
  dataset
  group using the
  [PutEvents](https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html) API.

  Only one event tracker can be associated with a dataset group. You will get
  an error if you call `CreateEventTracker` using the same dataset group as an
  existing event tracker.

  When you create an event tracker, the response includes a tracking ID, which you
  pass as a parameter when you use the
  [PutEvents](https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
  operation.
  Amazon Personalize then appends the event data to the Item interactions dataset
  of the dataset group you specify
  in your event tracker.

  The event tracker can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  DELETE PENDING > DELETE IN_PROGRESS

  To get the status of the event tracker, call
  [DescribeEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html). 
  The event tracker must be in the ACTIVE state before using the tracking ID.

  ## Related APIs

    *

  [ListEventTrackers](https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html)

    *

  [DescribeEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html) 

    *

  [DeleteEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html)
  """
  @spec create_event_tracker(map(), create_event_tracker_request(), list()) ::
          {:ok, create_event_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_tracker_errors()}
  def create_event_tracker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventTracker", input, options)
  end

  @doc """
  Creates a recommendation filter.

  For more information, see [Filtering recommendations and user segments](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
  """
  @spec create_filter(map(), create_filter_request(), list()) ::
          {:ok, create_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_filter_errors()}
  def create_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFilter", input, options)
  end

  @doc """
  Creates a metric attribution.

  A metric attribution creates reports on the data that you import into Amazon
  Personalize. Depending on how you imported the data, you can view reports in
  Amazon CloudWatch or Amazon S3.
  For more information, see [Measuring impact of recommendations](https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).
  """
  @spec create_metric_attribution(map(), create_metric_attribution_request(), list()) ::
          {:ok, create_metric_attribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_metric_attribution_errors()}
  def create_metric_attribution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMetricAttribution", input, options)
  end

  @doc """
  Creates a recommender with the recipe (a Domain dataset group use case) you
  specify.

  You create recommenders for a Domain dataset group and specify the recommender's
  Amazon Resource Name (ARN) when you make a
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)  request.

  ## Minimum recommendation requests per second

  A high `minRecommendationRequestsPerSecond` will increase your bill. We
  recommend starting with 1 for `minRecommendationRequestsPerSecond` (the
  default). Track
  your usage using Amazon CloudWatch metrics, and increase the
  `minRecommendationRequestsPerSecond`
  as necessary.

  When you create a recommender, you can configure the recommender's minimum
  recommendation requests per second. The minimum recommendation requests per
  second
  (`minRecommendationRequestsPerSecond`) specifies the baseline recommendation
  request throughput provisioned by
  Amazon Personalize. The default minRecommendationRequestsPerSecond is `1`. A
  recommendation request is a single `GetRecommendations` operation.
  Request throughput is measured in requests per second and Amazon Personalize
  uses your requests per second to derive
  your requests per hour and the price of your recommender usage.

  If your requests per second increases beyond
  `minRecommendationRequestsPerSecond`, Amazon Personalize auto-scales the
  provisioned capacity up and down,
  but never below `minRecommendationRequestsPerSecond`.
  There's a short time delay while the capacity is increased that might cause loss
  of
  requests.

  Your bill is the greater of either the minimum requests per hour (based on
  minRecommendationRequestsPerSecond)
  or the actual number of requests. The actual request throughput used is
  calculated as the average requests/second within a one-hour window.

  We recommend starting with the default `minRecommendationRequestsPerSecond`,
  track
  your usage using Amazon CloudWatch metrics, and then increase the
  `minRecommendationRequestsPerSecond`
  as necessary.

  ## Status

  A recommender can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS >
  ACTIVE

    *
  DELETE PENDING > DELETE IN_PROGRESS

  To get the recommender status, call
  [DescribeRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html).

  Wait until the `status` of the recommender
  is `ACTIVE` before asking the recommender for recommendations.

  ## Related APIs

    *

  [ListRecommenders](https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html) 

    *

  [DescribeRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html)

    *

  [UpdateRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html) 

    *

  [DeleteRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html)
  """
  @spec create_recommender(map(), create_recommender_request(), list()) ::
          {:ok, create_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_recommender_errors()}
  def create_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRecommender", input, options)
  end

  @doc """
  Creates an Amazon Personalize schema from the specified schema string.

  The schema you create
  must be in Avro JSON format.

  Amazon Personalize recognizes three schema variants. Each schema is associated
  with a dataset
  type and has a set of required field and keywords. If you are creating a schema
  for a dataset in a Domain dataset group, you
  provide the domain of the Domain dataset group.
  You specify a schema when you call
  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html). 
  ## Related APIs

    *

  [ListSchemas](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html)

    *

  [DescribeSchema](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html) 

    *

  [DeleteSchema](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html)
  """
  @spec create_schema(map(), create_schema_request(), list()) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schema_errors()}
  def create_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSchema", input, options)
  end

  @doc """

  By default, all new solutions use automatic training.

  With automatic training, you incur training costs while
  your solution is active. To avoid unnecessary costs, when you are finished you
  can
  [update the solution](https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html)
  to turn off automatic training.
  For information about training
  costs, see [Amazon Personalize pricing](https://aws.amazon.com/personalize/pricing/).

  Creates the configuration for training a model (creating a solution version).
  This configuration
  includes the recipe to use for model training and optional training
  configuration, such as columns to use
  in training and feature transformation parameters. For more information about
  configuring a solution, see [Creating and configuring a solution](https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html).

  By default, new solutions use automatic training to create solution versions
  every 7 days. You can change the training frequency.
  Automatic solution version creation starts within one hour after the solution is
  ACTIVE. If you manually create a solution version within
  the hour, the solution skips the first automatic training. For more information,
  see [Configuring automatic training](https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html).

  To turn off automatic training, set `performAutoTraining` to false. If you turn
  off automatic training, you must manually create a solution version
  by calling the
  [CreateSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html) operation.

  After training starts, you can
  get the solution version's Amazon Resource Name (ARN) with the
  [ListSolutionVersions](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)
  API operation.
  To get its status, use the
  [DescribeSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html). 
  After training completes you can evaluate model accuracy by calling
  [GetSolutionMetrics](https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html).
  When you are satisfied with the solution version, you
  deploy it using
  [CreateCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html). The campaign provides recommendations
  to a client through the
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
  API.

  Amazon Personalize doesn't support configuring the `hpoObjective`
  for solution hyperparameter optimization at this time.

  ## Status

  A solution can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  DELETE PENDING > DELETE IN_PROGRESS

  To get the status of the solution, call
  [DescribeSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html). If you use
  manual training, the status must be ACTIVE before you call
  `CreateSolutionVersion`.

  ## Related APIs

    *

  [UpdateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html)

    *

  [ListSolutions](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html) 

    *

  [CreateSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html)

    *

  [DescribeSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html) 

    *

  [DeleteSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html)

    *

  [ListSolutionVersions](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html) 

    *

  [DescribeSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html)
  """
  @spec create_solution(map(), create_solution_request(), list()) ::
          {:ok, create_solution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_solution_errors()}
  def create_solution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSolution", input, options)
  end

  @doc """
  Trains or retrains an active solution in a Custom dataset group.

  A solution is created using the
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html) operation and must be in the ACTIVE state before calling
  `CreateSolutionVersion`. A new version of the solution is created every time you
  call this operation.

  ## Status

  A solution version can be in one of the following states:

    *
  CREATE PENDING

    *
  CREATE IN_PROGRESS

    *
  ACTIVE

    *
  CREATE FAILED

    *
  CREATE STOPPING

    *
  CREATE STOPPED

  To get the status of the version, call
  [DescribeSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html).
  Wait
  until the status shows as ACTIVE before calling `CreateCampaign`.

  If the status shows as CREATE FAILED, the response includes a `failureReason`
  key, which describes why the job failed.

  ## Related APIs

    *

  [ListSolutionVersions](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html) 

    *

  [DescribeSolutionVersion](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html)

    *

  [ListSolutions](https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html) 

    *

  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)

    *

  [DescribeSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html) 

    *

  [DeleteSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html)
  """
  @spec create_solution_version(map(), create_solution_version_request(), list()) ::
          {:ok, create_solution_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_solution_version_errors()}
  def create_solution_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSolutionVersion", input, options)
  end

  @doc """
  Removes a campaign by deleting the solution deployment.

  The solution that
  the campaign is based on is not deleted and can be redeployed when needed. A
  deleted campaign can no
  longer be specified in a
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)  request.
  For information on creating campaigns, see
  [CreateCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).
  """
  @spec delete_campaign(map(), delete_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_errors()}
  def delete_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCampaign", input, options)
  end

  @doc """
  Deletes a dataset.

  You can't delete a dataset if an associated
  `DatasetImportJob` or `SolutionVersion` is in the
  CREATE PENDING or IN PROGRESS state. For more information about deleting
  datasets,
  see [Deleting a dataset](https://docs.aws.amazon.com/personalize/latest/dg/delete-dataset.html).
  """
  @spec delete_dataset(map(), delete_dataset_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes a dataset group.

  Before you delete a dataset group, you must
  delete the following:

    *
  All associated event trackers.

    *
  All associated solutions.

    *
  All datasets in the dataset group.
  """
  @spec delete_dataset_group(map(), delete_dataset_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_group_errors()}
  def delete_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDatasetGroup", input, options)
  end

  @doc """
  Deletes the event tracker.

  Does not delete the dataset from
  the dataset group. For more
  information on event trackers, see
  [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).
  """
  @spec delete_event_tracker(map(), delete_event_tracker_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_tracker_errors()}
  def delete_event_tracker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventTracker", input, options)
  end

  @doc """
  Deletes a filter.
  """
  @spec delete_filter(map(), delete_filter_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_filter_errors()}
  def delete_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFilter", input, options)
  end

  @doc """
  Deletes a metric attribution.
  """
  @spec delete_metric_attribution(map(), delete_metric_attribution_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_metric_attribution_errors()}
  def delete_metric_attribution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMetricAttribution", input, options)
  end

  @doc """
  Deactivates and removes a recommender.

  A deleted recommender can no longer be specified in a
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
  request.
  """
  @spec delete_recommender(map(), delete_recommender_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recommender_errors()}
  def delete_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRecommender", input, options)
  end

  @doc """
  Deletes a schema.

  Before deleting a schema, you must delete all
  datasets referencing the schema. For more information on schemas, see
  [CreateSchema](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).
  """
  @spec delete_schema(map(), delete_schema_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schema_errors()}
  def delete_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSchema", input, options)
  end

  @doc """
  Deletes all versions of a solution and the `Solution` object itself.

  Before deleting a solution, you must delete all campaigns based on
  the solution. To determine what campaigns are using the solution, call
  [ListCampaigns](https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html) and supply the Amazon Resource Name (ARN) of the solution.
  You can't delete a solution if an associated `SolutionVersion` is in the
  CREATE PENDING or IN PROGRESS state.
  For more information on solutions, see
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).
  """
  @spec delete_solution(map(), delete_solution_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_solution_errors()}
  def delete_solution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSolution", input, options)
  end

  @doc """
  Describes the given algorithm.
  """
  @spec describe_algorithm(map(), describe_algorithm_request(), list()) ::
          {:ok, describe_algorithm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_algorithm_errors()}
  def describe_algorithm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAlgorithm", input, options)
  end

  @doc """
  Gets the properties of a batch inference job including name, Amazon Resource
  Name (ARN),
  status, input and output configurations, and the ARN of the solution version
  used to generate
  the recommendations.
  """
  @spec describe_batch_inference_job(map(), describe_batch_inference_job_request(), list()) ::
          {:ok, describe_batch_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_batch_inference_job_errors()}
  def describe_batch_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBatchInferenceJob", input, options)
  end

  @doc """
  Gets the properties of a batch segment job including name, Amazon Resource Name
  (ARN),
  status, input and output configurations, and the ARN of the solution version
  used to generate
  segments.
  """
  @spec describe_batch_segment_job(map(), describe_batch_segment_job_request(), list()) ::
          {:ok, describe_batch_segment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_batch_segment_job_errors()}
  def describe_batch_segment_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBatchSegmentJob", input, options)
  end

  @doc """
  Describes the given campaign, including its status.

  A campaign can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  DELETE PENDING > DELETE IN_PROGRESS

  When the `status` is `CREATE FAILED`, the response includes the
  `failureReason` key, which describes why.

  For more information on campaigns, see
  [CreateCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).
  """
  @spec describe_campaign(map(), describe_campaign_request(), list()) ::
          {:ok, describe_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_campaign_errors()}
  def describe_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCampaign", input, options)
  end

  @doc """
  Describes the data deletion job created by
  [CreateDataDeletionJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataDeletionJob.html),
  including the job status.
  """
  @spec describe_data_deletion_job(map(), describe_data_deletion_job_request(), list()) ::
          {:ok, describe_data_deletion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_deletion_job_errors()}
  def describe_data_deletion_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataDeletionJob", input, options)
  end

  @doc """
  Describes the given dataset.

  For more information on datasets, see
  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).
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
  Describes the dataset export job created by
  [CreateDatasetExportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html),
  including the export job status.
  """
  @spec describe_dataset_export_job(map(), describe_dataset_export_job_request(), list()) ::
          {:ok, describe_dataset_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_export_job_errors()}
  def describe_dataset_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDatasetExportJob", input, options)
  end

  @doc """
  Describes the given dataset group.

  For more information on dataset
  groups, see
  [CreateDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html).
  """
  @spec describe_dataset_group(map(), describe_dataset_group_request(), list()) ::
          {:ok, describe_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_group_errors()}
  def describe_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDatasetGroup", input, options)
  end

  @doc """
  Describes the dataset import job created by
  [CreateDatasetImportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html),
  including the import job status.
  """
  @spec describe_dataset_import_job(map(), describe_dataset_import_job_request(), list()) ::
          {:ok, describe_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_import_job_errors()}
  def describe_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDatasetImportJob", input, options)
  end

  @doc """
  Describes an event tracker.

  The response includes the `trackingId` and
  `status` of the event tracker.
  For more information on event trackers, see
  [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).
  """
  @spec describe_event_tracker(map(), describe_event_tracker_request(), list()) ::
          {:ok, describe_event_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_tracker_errors()}
  def describe_event_tracker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventTracker", input, options)
  end

  @doc """
  Describes the given feature transformation.
  """
  @spec describe_feature_transformation(map(), describe_feature_transformation_request(), list()) ::
          {:ok, describe_feature_transformation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_feature_transformation_errors()}
  def describe_feature_transformation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFeatureTransformation", input, options)
  end

  @doc """
  Describes a filter's properties.
  """
  @spec describe_filter(map(), describe_filter_request(), list()) ::
          {:ok, describe_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_filter_errors()}
  def describe_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFilter", input, options)
  end

  @doc """
  Describes a metric attribution.
  """
  @spec describe_metric_attribution(map(), describe_metric_attribution_request(), list()) ::
          {:ok, describe_metric_attribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_metric_attribution_errors()}
  def describe_metric_attribution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetricAttribution", input, options)
  end

  @doc """
  Describes a recipe.

  A recipe contains three items:

    *
  An algorithm that trains a model.

    *
  Hyperparameters that govern the training.

    *
  Feature transformation information for modifying the input data before training.

  Amazon Personalize provides a set of predefined recipes. You specify a recipe
  when you create a
  solution with the
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html) API.
  `CreateSolution` trains a model by using the algorithm
  in the specified recipe and a training dataset. The solution, when deployed as a
  campaign,
  can provide recommendations using the
  [GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
  API.
  """
  @spec describe_recipe(map(), describe_recipe_request(), list()) ::
          {:ok, describe_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_recipe_errors()}
  def describe_recipe(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecipe", input, options)
  end

  @doc """
  Describes the given recommender, including its status.

  A recommender can be in one of the following states:

    *
  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

    *
  STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS >
  ACTIVE

    *
  DELETE PENDING > DELETE IN_PROGRESS

  When the `status` is `CREATE FAILED`, the response includes the
  `failureReason` key, which describes why.

  The `modelMetrics` key is null when
  the recommender is being created or deleted.

  For more information on recommenders, see
  [CreateRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html).
  """
  @spec describe_recommender(map(), describe_recommender_request(), list()) ::
          {:ok, describe_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_recommender_errors()}
  def describe_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecommender", input, options)
  end

  @doc """
  Describes a schema.

  For more information on schemas, see
  [CreateSchema](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).
  """
  @spec describe_schema(map(), describe_schema_request(), list()) ::
          {:ok, describe_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_schema_errors()}
  def describe_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSchema", input, options)
  end

  @doc """
  Describes a solution.

  For more information on solutions, see
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).
  """
  @spec describe_solution(map(), describe_solution_request(), list()) ::
          {:ok, describe_solution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_solution_errors()}
  def describe_solution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSolution", input, options)
  end

  @doc """
  Describes a specific version of a solution.

  For more information on solutions, see
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)
  """
  @spec describe_solution_version(map(), describe_solution_version_request(), list()) ::
          {:ok, describe_solution_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_solution_version_errors()}
  def describe_solution_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSolutionVersion", input, options)
  end

  @doc """
  Gets the metrics for the specified solution version.
  """
  @spec get_solution_metrics(map(), get_solution_metrics_request(), list()) ::
          {:ok, get_solution_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_solution_metrics_errors()}
  def get_solution_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSolutionMetrics", input, options)
  end

  @doc """
  Gets a list of the batch inference jobs that have been performed off of a
  solution
  version.
  """
  @spec list_batch_inference_jobs(map(), list_batch_inference_jobs_request(), list()) ::
          {:ok, list_batch_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_inference_jobs_errors()}
  def list_batch_inference_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBatchInferenceJobs", input, options)
  end

  @doc """
  Gets a list of the batch segment jobs that have been performed off of a solution
  version that you specify.
  """
  @spec list_batch_segment_jobs(map(), list_batch_segment_jobs_request(), list()) ::
          {:ok, list_batch_segment_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_segment_jobs_errors()}
  def list_batch_segment_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBatchSegmentJobs", input, options)
  end

  @doc """
  Returns a list of campaigns that use the given solution.

  When a solution is not specified, all the campaigns associated with the account
  are listed.
  The response provides the properties for each campaign, including the Amazon
  Resource Name (ARN).
  For more information on campaigns, see
  [CreateCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).
  """
  @spec list_campaigns(map(), list_campaigns_request(), list()) ::
          {:ok, list_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_campaigns_errors()}
  def list_campaigns(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCampaigns", input, options)
  end

  @doc """
  Returns a list of data deletion jobs for a dataset group ordered by creation
  time,
  with the most recent first.

  When
  a dataset group is not specified, all the data deletion jobs associated with
  the account are listed. The response provides the properties for each
  job, including the Amazon Resource Name (ARN). For more
  information on data deletion jobs, see [Deleting users](https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html).
  """
  @spec list_data_deletion_jobs(map(), list_data_deletion_jobs_request(), list()) ::
          {:ok, list_data_deletion_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_deletion_jobs_errors()}
  def list_data_deletion_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataDeletionJobs", input, options)
  end

  @doc """
  Returns a list of dataset export jobs that use the given dataset.

  When
  a dataset is not specified, all the dataset export jobs associated with
  the account are listed. The response provides the properties for each
  dataset export job, including the Amazon Resource Name (ARN). For more
  information on dataset export jobs, see
  [CreateDatasetExportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html). For more information on datasets, see
  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).
  """
  @spec list_dataset_export_jobs(map(), list_dataset_export_jobs_request(), list()) ::
          {:ok, list_dataset_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_export_jobs_errors()}
  def list_dataset_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasetExportJobs", input, options)
  end

  @doc """
  Returns a list of dataset groups.

  The response provides the properties
  for each dataset group, including the Amazon Resource Name (ARN). For more
  information on dataset groups, see
  [CreateDatasetGroup](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html).
  """
  @spec list_dataset_groups(map(), list_dataset_groups_request(), list()) ::
          {:ok, list_dataset_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_groups_errors()}
  def list_dataset_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasetGroups", input, options)
  end

  @doc """
  Returns a list of dataset import jobs that use the given dataset.

  When
  a dataset is not specified, all the dataset import jobs associated with
  the account are listed. The response provides the properties for each
  dataset import job, including the Amazon Resource Name (ARN). For more
  information on dataset import jobs, see
  [CreateDatasetImportJob](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html). For more information on datasets, see
  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).
  """
  @spec list_dataset_import_jobs(map(), list_dataset_import_jobs_request(), list()) ::
          {:ok, list_dataset_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_import_jobs_errors()}
  def list_dataset_import_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasetImportJobs", input, options)
  end

  @doc """
  Returns the list of datasets contained in the given dataset group.

  The
  response provides the properties for each dataset, including the Amazon
  Resource Name (ARN). For more information on datasets, see
  [CreateDataset](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).
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
  Returns the list of event trackers associated with the account.

  The response provides the properties for each event tracker, including the
  Amazon Resource
  Name (ARN) and tracking ID. For more
  information on event trackers, see
  [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).
  """
  @spec list_event_trackers(map(), list_event_trackers_request(), list()) ::
          {:ok, list_event_trackers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_trackers_errors()}
  def list_event_trackers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventTrackers", input, options)
  end

  @doc """
  Lists all filters that belong to a given dataset group.
  """
  @spec list_filters(map(), list_filters_request(), list()) ::
          {:ok, list_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_filters_errors()}
  def list_filters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFilters", input, options)
  end

  @doc """
  Lists the metrics for the metric attribution.
  """
  @spec list_metric_attribution_metrics(map(), list_metric_attribution_metrics_request(), list()) ::
          {:ok, list_metric_attribution_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metric_attribution_metrics_errors()}
  def list_metric_attribution_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMetricAttributionMetrics", input, options)
  end

  @doc """
  Lists metric attributions.
  """
  @spec list_metric_attributions(map(), list_metric_attributions_request(), list()) ::
          {:ok, list_metric_attributions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metric_attributions_errors()}
  def list_metric_attributions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMetricAttributions", input, options)
  end

  @doc """
  Returns a list of available recipes.

  The response provides the properties
  for each recipe, including the recipe's Amazon Resource Name (ARN).
  """
  @spec list_recipes(map(), list_recipes_request(), list()) ::
          {:ok, list_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recipes_errors()}
  def list_recipes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecipes", input, options)
  end

  @doc """
  Returns a list of recommenders in a given Domain dataset group.

  When a Domain dataset group is not specified, all the recommenders associated
  with the account are listed.
  The response provides the properties for each recommender, including the Amazon
  Resource Name (ARN).
  For more information on recommenders, see
  [CreateRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html).
  """
  @spec list_recommenders(map(), list_recommenders_request(), list()) ::
          {:ok, list_recommenders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommenders_errors()}
  def list_recommenders(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommenders", input, options)
  end

  @doc """
  Returns the list of schemas associated with the account.

  The response provides the
  properties for each schema, including the Amazon Resource Name (ARN).
  For more information on schemas, see
  [CreateSchema](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).
  """
  @spec list_schemas(map(), list_schemas_request(), list()) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schemas_errors()}
  def list_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  Returns a list of solution versions for the given solution.

  When a solution is not
  specified, all the solution versions associated with the account are listed. The
  response
  provides the properties for each solution version, including the Amazon Resource
  Name (ARN).
  """
  @spec list_solution_versions(map(), list_solution_versions_request(), list()) ::
          {:ok, list_solution_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_solution_versions_errors()}
  def list_solution_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSolutionVersions", input, options)
  end

  @doc """
  Returns a list of solutions in a given dataset group.

  When a dataset group is not specified, all the solutions associated with the
  account are listed.
  The response provides the properties for each solution, including the Amazon
  Resource Name (ARN).
  For more information on solutions, see
  [CreateSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).
  """
  @spec list_solutions(map(), list_solutions_request(), list()) ::
          {:ok, list_solutions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_solutions_errors()}
  def list_solutions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSolutions", input, options)
  end

  @doc """
  Get a list of
  [tags](https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
  attached to a resource.
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
  Starts a recommender that is INACTIVE.

  Starting a recommender does not
  create any new models, but resumes billing and automatic retraining for the
  recommender.
  """
  @spec start_recommender(map(), start_recommender_request(), list()) ::
          {:ok, start_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_recommender_errors()}
  def start_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartRecommender", input, options)
  end

  @doc """
  Stops a recommender that is ACTIVE.

  Stopping a recommender halts billing and automatic retraining for the
  recommender.
  """
  @spec stop_recommender(map(), stop_recommender_request(), list()) ::
          {:ok, stop_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_recommender_errors()}
  def stop_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopRecommender", input, options)
  end

  @doc """
  Stops creating a solution version that is in a state of CREATE_PENDING or CREATE
  IN_PROGRESS.

  Depending on the current state of the solution version, the solution version
  state changes as follows:

    *
  CREATE_PENDING > CREATE_STOPPED

  or

    *
  CREATE_IN_PROGRESS > CREATE_STOPPING > CREATE_STOPPED

  You are billed for all of the training completed up
  until you stop the solution version creation. You cannot resume creating a
  solution version once it has been stopped.
  """
  @spec stop_solution_version_creation(map(), stop_solution_version_creation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_solution_version_creation_errors()}
  def stop_solution_version_creation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSolutionVersionCreation", input, options)
  end

  @doc """
  Add a list of tags to a resource.
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
  Removes the specified tags that are attached to a resource.

  For more information, see [Removing tags from Amazon Personalize resources](https://docs.aws.amazon.com/personalize/latest/dg/tags-remove.html).
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

  Updates a campaign to deploy a retrained solution version with an existing
  campaign, change your campaign's `minProvisionedTPS`,
  or modify your campaign's configuration.

  For example, you can set `enableMetadataWithRecommendations` to true for an
  existing campaign.

  To update a campaign to start automatically using the latest solution version,
  specify the following:

    *
  For the `SolutionVersionArn` parameter, specify the Amazon Resource Name (ARN)
  of your solution in
  `SolutionArn/$LATEST` format.

    *
  In the `campaignConfig`, set `syncWithLatestSolutionVersion` to `true`.

  To update a campaign, the campaign status must be ACTIVE or CREATE FAILED.
  Check the campaign status using the
  [DescribeCampaign](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html) operation.

  You can still get recommendations from a campaign while an update is in
  progress.
  The campaign will use the previous solution version and campaign configuration
  to generate recommendations until the latest campaign update status is `Active`.

  For more information about updating a campaign, including code samples, see
  [Updating a
  campaign](https://docs.aws.amazon.com/personalize/latest/dg/update-campaigns.html).
  For more information about campaigns, see [Creating a campaign](https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html).
  """
  @spec update_campaign(map(), update_campaign_request(), list()) ::
          {:ok, update_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_errors()}
  def update_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCampaign", input, options)
  end

  @doc """
  Update a dataset to replace its schema with a new or existing one.

  For more information, see [Replacing a dataset's schema](https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html).
  """
  @spec update_dataset(map(), update_dataset_request(), list()) ::
          {:ok, update_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataset", input, options)
  end

  @doc """
  Updates a metric attribution.
  """
  @spec update_metric_attribution(map(), update_metric_attribution_request(), list()) ::
          {:ok, update_metric_attribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_metric_attribution_errors()}
  def update_metric_attribution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMetricAttribution", input, options)
  end

  @doc """
  Updates the recommender to modify the recommender configuration.

  If you update the recommender to modify the columns used in training, Amazon
  Personalize automatically starts a full retraining of
  the models backing your recommender. While the update completes, you can still
  get recommendations from the recommender. The recommender
  uses the previous configuration until the update completes.
  To track the status of this update,
  use the `latestRecommenderUpdate` returned in the
  [DescribeRecommender](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html)
  operation.
  """
  @spec update_recommender(map(), update_recommender_request(), list()) ::
          {:ok, update_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recommender_errors()}
  def update_recommender(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRecommender", input, options)
  end

  @doc """
  Updates an Amazon Personalize solution to use a different automatic training
  configuration.

  When you update a solution,
  you can change whether the solution uses
  automatic training, and you can change the training frequency. For more
  information about updating a solution, see
  [Updating a solution](https://docs.aws.amazon.com/personalize/latest/dg/updating-solution.html).

  A solution update can be in one of the
  following states:

  CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED

  To get the status of a solution update, call the
  [DescribeSolution](https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html)
  API operation and find the status
  in the `latestSolutionUpdate`.
  """
  @spec update_solution(map(), update_solution_request(), list()) ::
          {:ok, update_solution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_solution_errors()}
  def update_solution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSolution", input, options)
  end
end
