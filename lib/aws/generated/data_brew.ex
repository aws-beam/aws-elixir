# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataBrew do
  @moduledoc """
  Glue DataBrew is a visual, cloud-scale data-preparation service.

  DataBrew
  simplifies data preparation tasks, targeting data issues that are hard to spot
  and
  time-consuming to fix. DataBrew empowers users of all technical levels to
  visualize the
  data and perform one-click data transformations, with no coding required.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      batch_delete_recipe_version_response() :: %{
        "Errors" => list(recipe_version_error_detail()),
        "Name" => String.t()
      }

  """
  @type batch_delete_recipe_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "DatasetName" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "OpenDate" => non_neg_integer(),
        "OpenedBy" => String.t(),
        "RecipeName" => String.t(),
        "ResourceArn" => String.t(),
        "RoleArn" => String.t(),
        "Sample" => sample(),
        "SessionStatus" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_output() :: %{
        "DatabaseOptions" => database_table_output_options(),
        "DatabaseOutputMode" => list(any()),
        "GlueConnectionName" => String.t()
      }

  """
  @type database_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ruleset_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("Rules") => list(rule()),
        required("TargetArn") => String.t()
      }

  """
  @type create_ruleset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recipe_reference() :: %{
        "Name" => String.t(),
        "RecipeVersion" => String.t()
      }

  """
  @type recipe_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ruleset_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_ruleset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_schedule_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recipe_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("Steps") => list(recipe_step())
      }

  """
  @type create_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_table_output_options() :: %{
        "Location" => s3_location()
      }

  """
  @type s3_table_output_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recipes_response() :: %{
        "NextToken" => String.t(),
        "Recipes" => list(recipe())
      }

  """
  @type list_recipes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_job_request() :: %{
        optional("Configuration") => profile_configuration(),
        optional("EncryptionKeyArn") => String.t(),
        optional("EncryptionMode") => list(any()),
        optional("JobSample") => job_sample(),
        optional("LogSubscription") => list(any()),
        optional("MaxCapacity") => integer(),
        optional("MaxRetries") => integer(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("ValidationConfigurations") => list(validation_configuration()),
        required("DatasetName") => String.t(),
        required("Name") => String.t(),
        required("OutputLocation") => s3_location(),
        required("RoleArn") => String.t()
      }

  """
  @type create_profile_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "DataCatalogOutputs" => list(data_catalog_output()),
        "DatabaseOutputs" => list(database_output()),
        "DatasetName" => String.t(),
        "EncryptionKeyArn" => String.t(),
        "EncryptionMode" => list(any()),
        "JobSample" => job_sample(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LogSubscription" => list(any()),
        "MaxCapacity" => integer(),
        "MaxRetries" => integer(),
        "Name" => String.t(),
        "Outputs" => list(output()),
        "ProfileConfiguration" => profile_configuration(),
        "ProjectName" => String.t(),
        "RecipeReference" => recipe_reference(),
        "ResourceArn" => String.t(),
        "RoleArn" => String.t(),
        "Tags" => map(),
        "Timeout" => integer(),
        "Type" => list(any()),
        "ValidationConfigurations" => list(validation_configuration())
      }

  """
  @type describe_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view_frame() :: %{
        "Analytics" => list(any()),
        "ColumnRange" => integer(),
        "HiddenColumns" => list(String.t()),
        "RowRange" => integer(),
        "StartColumnIndex" => integer(),
        "StartRowIndex" => integer()
      }

  """
  @type view_frame() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "Name" => String.t()
      }

  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistics_configuration() :: %{
        "IncludedStatistics" => list(String.t()),
        "Overrides" => list(statistic_override())
      }

  """
  @type statistics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run() :: %{
        "Attempt" => integer(),
        "CompletedOn" => non_neg_integer(),
        "DataCatalogOutputs" => list(data_catalog_output()),
        "DatabaseOutputs" => list(database_output()),
        "DatasetName" => String.t(),
        "ErrorMessage" => String.t(),
        "ExecutionTime" => integer(),
        "JobName" => String.t(),
        "JobSample" => job_sample(),
        "LogGroupName" => String.t(),
        "LogSubscription" => list(any()),
        "Outputs" => list(output()),
        "RecipeReference" => recipe_reference(),
        "RunId" => String.t(),
        "StartedBy" => String.t(),
        "StartedOn" => non_neg_integer(),
        "State" => list(any()),
        "ValidationConfigurations" => list(validation_configuration())
      }

  """
  @type job_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      publish_recipe_response() :: %{
        "Name" => String.t()
      }

  """
  @type publish_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datetime_options() :: %{
        "Format" => String.t(),
        "LocaleCode" => String.t(),
        "TimezoneOffset" => String.t()
      }

  """
  @type datetime_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_options() :: %{
        "FilesLimit" => files_limit(),
        "LastModifiedDateCondition" => filter_expression(),
        "Parameters" => map()
      }

  """
  @type path_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("DatasetName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProjectName") => String.t()
      }

  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_job_run_request() :: %{}

  """
  @type stop_job_run_request() :: %{}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      batch_delete_recipe_version_request() :: %{
        required("RecipeVersions") => list(String.t())
      }

  """
  @type batch_delete_recipe_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_run_response() :: %{
        "Attempt" => integer(),
        "CompletedOn" => non_neg_integer(),
        "DataCatalogOutputs" => list(data_catalog_output()),
        "DatabaseOutputs" => list(database_output()),
        "DatasetName" => String.t(),
        "ErrorMessage" => String.t(),
        "ExecutionTime" => integer(),
        "JobName" => String.t(),
        "JobSample" => job_sample(),
        "LogGroupName" => String.t(),
        "LogSubscription" => list(any()),
        "Outputs" => list(output()),
        "ProfileConfiguration" => profile_configuration(),
        "RecipeReference" => recipe_reference(),
        "RunId" => String.t(),
        "StartedBy" => String.t(),
        "StartedOn" => non_neg_integer(),
        "State" => list(any()),
        "ValidationConfigurations" => list(validation_configuration())
      }

  """
  @type describe_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_job_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recipe_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata() :: %{
        "SourceArn" => String.t()
      }

  """
  @type metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_project_session_response() :: %{
        "ClientSessionId" => String.t(),
        "Name" => String.t()
      }

  """
  @type start_project_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ruleset_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceArn" => String.t(),
        "Rules" => list(rule()),
        "Tags" => map(),
        "TargetArn" => String.t()
      }

  """
  @type describe_ruleset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_detector_configuration() :: %{
        "AllowedStatistics" => list(allowed_statistics()),
        "EntityTypes" => list(String.t())
      }

  """
  @type entity_detector_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recipe_job_request() :: %{
        optional("DataCatalogOutputs") => list(data_catalog_output()),
        optional("DatabaseOutputs") => list(database_output()),
        optional("DatasetName") => String.t(),
        optional("EncryptionKeyArn") => String.t(),
        optional("EncryptionMode") => list(any()),
        optional("LogSubscription") => list(any()),
        optional("MaxCapacity") => integer(),
        optional("MaxRetries") => integer(),
        optional("Outputs") => list(output()),
        optional("ProjectName") => String.t(),
        optional("RecipeReference") => recipe_reference(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        required("Name") => String.t(),
        required("RoleArn") => String.t()
      }

  """
  @type create_recipe_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ruleset_request() :: %{}

  """
  @type describe_ruleset_request() :: %{}

  @typedoc """

  ## Example:

      update_recipe_job_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_recipe_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "Jobs" => list(job()),
        "NextToken" => String.t()
      }

  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_catalog_output() :: %{
        "CatalogId" => String.t(),
        "DatabaseName" => String.t(),
        "DatabaseOptions" => database_table_output_options(),
        "Overwrite" => boolean(),
        "S3Options" => s3_table_output_options(),
        "TableName" => String.t()
      }

  """
  @type data_catalog_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schedule_response() :: %{
        "Name" => String.t()
      }

  """
  @type delete_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_response() :: %{
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type update_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schedules_response() :: %{
        "NextToken" => String.t(),
        "Schedules" => list(schedule())
      }

  """
  @type list_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_job_request() :: %{
        optional("Configuration") => profile_configuration(),
        optional("EncryptionKeyArn") => String.t(),
        optional("EncryptionMode") => list(any()),
        optional("JobSample") => job_sample(),
        optional("LogSubscription") => list(any()),
        optional("MaxCapacity") => integer(),
        optional("MaxRetries") => integer(),
        optional("Timeout") => integer(),
        optional("ValidationConfigurations") => list(validation_configuration()),
        required("OutputLocation") => s3_location(),
        required("RoleArn") => String.t()
      }

  """
  @type update_profile_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ruleset_response() :: %{
        "Name" => String.t()
      }

  """
  @type delete_ruleset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "AccountId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Format" => list(any()),
        "FormatOptions" => format_options(),
        "Input" => input(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "PathOptions" => path_options(),
        "ResourceArn" => String.t(),
        "Source" => list(any()),
        "Tags" => map()
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schedule_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "CronExpression" => String.t(),
        "JobNames" => list(String.t()),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceArn" => String.t(),
        "Tags" => map()
      }

  """
  @type describe_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_format_options() :: %{
        "Csv" => csv_output_options()
      }

  """
  @type output_format_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_sample() :: %{
        "Mode" => list(any()),
        "Size" => float()
      }

  """
  @type job_sample() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      files_limit() :: %{
        "MaxFiles" => integer(),
        "Order" => list(any()),
        "OrderedBy" => list(any())
      }

  """
  @type files_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv_options() :: %{
        "Delimiter" => String.t(),
        "HeaderRow" => boolean()
      }

  """
  @type csv_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_run_request() :: %{}

  """
  @type describe_job_run_request() :: %{}

  @typedoc """

  ## Example:

      input() :: %{
        "DataCatalogInputDefinition" => data_catalog_input_definition(),
        "DatabaseInputDefinition" => database_input_definition(),
        "Metadata" => metadata(),
        "S3InputDefinition" => s3_location()
      }

  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_project_response() :: %{String.t() => any()}

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

      start_job_run_response() :: %{
        "RunId" => String.t()
      }

  """
  @type start_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project() :: %{
        "AccountId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "DatasetName" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "OpenDate" => non_neg_integer(),
        "OpenedBy" => String.t(),
        "RecipeName" => String.t(),
        "ResourceArn" => String.t(),
        "RoleArn" => String.t(),
        "Sample" => sample(),
        "Tags" => map()
      }

  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_configuration() :: %{
        "RulesetArn" => String.t(),
        "ValidationMode" => list(any())
      }

  """
  @type validation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_recipe_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type publish_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rulesets_response() :: %{
        "NextToken" => String.t(),
        "Rulesets" => list(ruleset_item())
      }

  """
  @type list_rulesets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_project_session_request() :: %{
        optional("AssumeControl") => boolean()
      }

  """
  @type start_project_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv_output_options() :: %{
        "Delimiter" => String.t()
      }

  """
  @type csv_output_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recipe_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type list_recipe_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recipe_action() :: %{
        "Operation" => String.t(),
        "Parameters" => map()
      }

  """
  @type recipe_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_recipe_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ProjectName" => String.t(),
        "PublishedBy" => String.t(),
        "PublishedDate" => non_neg_integer(),
        "RecipeVersion" => String.t(),
        "ResourceArn" => String.t(),
        "Steps" => list(recipe_step()),
        "Tags" => map()
      }

  """
  @type describe_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_response() :: %{
        "JobRuns" => list(job_run()),
        "NextToken" => String.t()
      }

  """
  @type list_job_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      format_options() :: %{
        "Csv" => csv_options(),
        "Excel" => excel_options(),
        "Json" => json_options()
      }

  """
  @type format_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rulesets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TargetArn") => String.t()
      }

  """
  @type list_rulesets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recipe() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ProjectName" => String.t(),
        "PublishedBy" => String.t(),
        "PublishedDate" => non_neg_integer(),
        "RecipeVersion" => String.t(),
        "ResourceArn" => String.t(),
        "Steps" => list(recipe_step()),
        "Tags" => map()
      }

  """
  @type recipe() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sample() :: %{
        "Size" => integer(),
        "Type" => list(any())
      }

  """
  @type sample() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "NextToken" => String.t(),
        "Projects" => list(project())
      }

  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recipe_versions_response() :: %{
        "NextToken" => String.t(),
        "Recipes" => list(recipe())
      }

  """
  @type list_recipe_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_request() :: %{}

  """
  @type describe_job_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_catalog_input_definition() :: %{
        "CatalogId" => String.t(),
        "DatabaseName" => String.t(),
        "TableName" => String.t(),
        "TempDirectory" => s3_location()
      }

  """
  @type data_catalog_input_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ruleset_item() :: %{
        "AccountId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceArn" => String.t(),
        "RuleCount" => integer(),
        "Tags" => map(),
        "TargetArn" => String.t()
      }

  """
  @type ruleset_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_expression() :: %{
        "Expression" => String.t(),
        "ValuesMap" => map()
      }

  """
  @type filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "Bucket" => String.t(),
        "BucketOwner" => String.t(),
        "Key" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("Format") => list(any()),
        optional("FormatOptions") => format_options(),
        optional("PathOptions") => path_options(),
        required("Input") => input()
      }

  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_table_output_options() :: %{
        "TableName" => String.t(),
        "TempDirectory" => s3_location()
      }

  """
  @type database_table_output_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "CheckExpression" => String.t(),
        "ColumnSelectors" => list(column_selector()),
        "Disabled" => boolean(),
        "Name" => String.t(),
        "SubstitutionMap" => map(),
        "Threshold" => threshold()
      }

  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recipe_job_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_recipe_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_parameter() :: %{
        "CreateColumn" => boolean(),
        "DatetimeOptions" => datetime_options(),
        "Filter" => filter_expression(),
        "Name" => String.t(),
        "Type" => list(any())
      }

  """
  @type dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_recipe_request() :: %{
        optional("RecipeVersion") => String.t()
      }

  """
  @type describe_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "AccountId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "CronExpression" => String.t(),
        "JobNames" => list(String.t()),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceArn" => String.t(),
        "Tags" => map()
      }

  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{
        "Name" => String.t()
      }

  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_job_run_response() :: %{
        "RunId" => String.t()
      }

  """
  @type stop_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_run_request() :: %{}

  """
  @type start_job_run_request() :: %{}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("Sample") => sample(),
        required("RoleArn") => String.t()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_configuration() :: %{
        "ColumnStatisticsConfigurations" => list(column_statistics_configuration()),
        "DatasetStatisticsConfiguration" => statistics_configuration(),
        "EntityDetectorConfiguration" => entity_detector_configuration(),
        "ProfileColumns" => list(column_selector())
      }

  """
  @type profile_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ruleset_request() :: %{
        optional("Description") => String.t(),
        required("Rules") => list(rule())
      }

  """
  @type update_ruleset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recipe_step() :: %{
        "Action" => recipe_action(),
        "ConditionExpressions" => list(condition_expression())
      }

  """
  @type recipe_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_input_definition() :: %{
        "DatabaseTableName" => String.t(),
        "GlueConnectionName" => String.t(),
        "QueryString" => String.t(),
        "TempDirectory" => s3_location()
      }

  """
  @type database_input_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_recipe_version_request() :: %{}

  """
  @type delete_recipe_version_request() :: %{}

  @typedoc """

  ## Example:

      column_selector() :: %{
        "Name" => String.t(),
        "Regex" => String.t()
      }

  """
  @type column_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      json_options() :: %{
        "MultiLine" => boolean()
      }

  """
  @type json_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_schedule_request() :: %{
        optional("JobNames") => list(String.t()),
        required("CronExpression") => String.t()
      }

  """
  @type update_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_request() :: %{}

  """
  @type delete_job_request() :: %{}

  @typedoc """

  ## Example:

      recipe_version_error_detail() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "RecipeVersion" => String.t()
      }

  """
  @type recipe_version_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_statistics_configuration() :: %{
        "Selectors" => list(column_selector()),
        "Statistics" => statistics_configuration()
      }

  """
  @type column_statistics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ruleset_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_ruleset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recipe_request() :: %{
        optional("Description") => String.t(),
        optional("Steps") => list(recipe_step())
      }

  """
  @type update_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "Format" => list(any()),
        "FormatOptions" => format_options(),
        "Input" => input(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "PathOptions" => path_options(),
        "ResourceArn" => String.t(),
        "Source" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
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

      job() :: %{
        "AccountId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatedBy" => String.t(),
        "DataCatalogOutputs" => list(data_catalog_output()),
        "DatabaseOutputs" => list(database_output()),
        "DatasetName" => String.t(),
        "EncryptionKeyArn" => String.t(),
        "EncryptionMode" => list(any()),
        "JobSample" => job_sample(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LogSubscription" => list(any()),
        "MaxCapacity" => integer(),
        "MaxRetries" => integer(),
        "Name" => String.t(),
        "Outputs" => list(output()),
        "ProjectName" => String.t(),
        "RecipeReference" => recipe_reference(),
        "ResourceArn" => String.t(),
        "RoleArn" => String.t(),
        "Tags" => map(),
        "Timeout" => integer(),
        "Type" => list(any()),
        "ValidationConfigurations" => list(validation_configuration())
      }

  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("Format") => list(any()),
        optional("FormatOptions") => format_options(),
        optional("PathOptions") => path_options(),
        optional("Tags") => map(),
        required("Input") => input(),
        required("Name") => String.t()
      }

  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recipe_job_request() :: %{
        optional("DataCatalogOutputs") => list(data_catalog_output()),
        optional("DatabaseOutputs") => list(database_output()),
        optional("EncryptionKeyArn") => String.t(),
        optional("EncryptionMode") => list(any()),
        optional("LogSubscription") => list(any()),
        optional("MaxCapacity") => integer(),
        optional("MaxRetries") => integer(),
        optional("Outputs") => list(output()),
        optional("Timeout") => integer(),
        required("RoleArn") => String.t()
      }

  """
  @type update_recipe_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schedule_request() :: %{
        optional("JobNames") => list(String.t()),
        optional("Tags") => map(),
        required("CronExpression") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("Sample") => sample(),
        optional("Tags") => map(),
        required("DatasetName") => String.t(),
        required("Name") => String.t(),
        required("RecipeName") => String.t(),
        required("RoleArn") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      condition_expression() :: %{
        "Condition" => String.t(),
        "TargetColumn" => String.t(),
        "Value" => String.t()
      }

  """
  @type condition_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threshold() :: %{
        "Type" => list(any()),
        "Unit" => list(any()),
        "Value" => float()
      }

  """
  @type threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schedule_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schedule_request() :: %{}

  """
  @type delete_schedule_request() :: %{}

  @typedoc """

  ## Example:

      list_schedules_request() :: %{
        optional("JobName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_schedules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      excel_options() :: %{
        "HeaderRow" => boolean(),
        "SheetIndexes" => list(integer()),
        "SheetNames" => list(String.t())
      }

  """
  @type excel_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_statistics() :: %{
        "Statistics" => list(String.t())
      }

  """
  @type allowed_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{}

  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{}

  """
  @type delete_dataset_request() :: %{}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "Datasets" => list(dataset()),
        "NextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{}

  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:

      update_profile_job_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_profile_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_response() :: %{
        "Name" => String.t()
      }

  """
  @type delete_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_recipe_version_response() :: %{
        "Name" => String.t(),
        "RecipeVersion" => String.t()
      }

  """
  @type delete_recipe_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistic_override() :: %{
        "Parameters" => map(),
        "Statistic" => String.t()
      }

  """
  @type statistic_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_job_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_profile_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schedule_request() :: %{}

  """
  @type describe_schedule_request() :: %{}

  @typedoc """

  ## Example:

      list_recipes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RecipeVersion") => String.t()
      }

  """
  @type list_recipes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_project_session_action_request() :: %{
        optional("ClientSessionId") => String.t(),
        optional("Preview") => boolean(),
        optional("RecipeStep") => recipe_step(),
        optional("StepIndex") => integer(),
        optional("ViewFrame") => view_frame()
      }

  """
  @type send_project_session_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_project_session_action_response() :: %{
        "ActionId" => integer(),
        "Name" => String.t(),
        "Result" => String.t()
      }

  """
  @type send_project_session_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output() :: %{
        "CompressionFormat" => list(any()),
        "Format" => list(any()),
        "FormatOptions" => output_format_options(),
        "Location" => s3_location(),
        "MaxOutputFiles" => integer(),
        "Overwrite" => boolean(),
        "PartitionColumns" => list(String.t())
      }

  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ruleset_request() :: %{}

  """
  @type delete_ruleset_request() :: %{}

  @typedoc """

  ## Example:

      update_recipe_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_recipe_response() :: %{String.t() => any()}

  @type batch_delete_recipe_version_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type create_dataset_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_profile_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_recipe_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_recipe_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_ruleset_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_schedule_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type delete_dataset_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_job_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_project_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_recipe_version_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_ruleset_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_schedule_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_dataset_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_job_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_job_run_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_project_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_recipe_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_ruleset_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_schedule_errors() :: validation_exception() | resource_not_found_exception()

  @type list_datasets_errors() :: validation_exception()

  @type list_job_runs_errors() :: validation_exception() | resource_not_found_exception()

  @type list_jobs_errors() :: validation_exception()

  @type list_projects_errors() :: validation_exception()

  @type list_recipe_versions_errors() :: validation_exception()

  @type list_recipes_errors() :: validation_exception()

  @type list_rulesets_errors() :: validation_exception() | resource_not_found_exception()

  @type list_schedules_errors() :: validation_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type publish_recipe_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type send_project_session_action_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type start_job_run_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_project_session_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_job_run_errors() :: validation_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_dataset_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_profile_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_project_errors() :: validation_exception() | resource_not_found_exception()

  @type update_recipe_errors() :: validation_exception() | resource_not_found_exception()

  @type update_recipe_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_ruleset_errors() :: validation_exception() | resource_not_found_exception()

  @type update_schedule_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "databrew",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DataBrew",
      signature_version: "v4",
      signing_name: "databrew",
      target_prefix: nil
    }
  end

  @doc """
  Deletes one or more versions of a recipe at a time.

  The entire request will be rejected if:

    *
  The recipe does not exist.

    *
  There is an invalid version identifier in the list of versions.

    *
  The version list is empty.

    *
  The version list size exceeds 50.

    *
  The version list contains duplicate entries.

  The request will complete successfully, but with partial failures, if:

    *
  A version does not exist.

    *
  A version is being used by a job.

    *
  You specify `LATEST_WORKING`, but it's being used by a
  project.

    *
  The version fails to be deleted.

  The `LATEST_WORKING` version will only be deleted if the recipe has no
  other versions. If you try to delete `LATEST_WORKING` while other versions
  exist (or if they can't be deleted), then `LATEST_WORKING` will be listed as
  partial failure in the response.
  """
  @spec batch_delete_recipe_version(
          map(),
          String.t(),
          batch_delete_recipe_version_request(),
          list()
        ) ::
          {:ok, batch_delete_recipe_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_recipe_version_errors()}
  def batch_delete_recipe_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}/batchDeleteRecipeVersion"
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
  Creates a new DataBrew dataset.
  """
  @spec create_dataset(map(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasets"
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
  Creates a new job to analyze a dataset and create its data profile.
  """
  @spec create_profile_job(map(), create_profile_job_request(), list()) ::
          {:ok, create_profile_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profile_job_errors()}
  def create_profile_job(%Client{} = client, input, options \\ []) do
    url_path = "/profileJobs"
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
  Creates a new DataBrew project.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
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
  Creates a new DataBrew recipe.
  """
  @spec create_recipe(map(), create_recipe_request(), list()) ::
          {:ok, create_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_recipe_errors()}
  def create_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/recipes"
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
  Creates a new job to transform input data, using steps defined in an existing
  Glue DataBrew recipe
  """
  @spec create_recipe_job(map(), create_recipe_job_request(), list()) ::
          {:ok, create_recipe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_recipe_job_errors()}
  def create_recipe_job(%Client{} = client, input, options \\ []) do
    url_path = "/recipeJobs"
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
  Creates a new ruleset that can be used in a profile job to validate
  the data quality of a dataset.
  """
  @spec create_ruleset(map(), create_ruleset_request(), list()) ::
          {:ok, create_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ruleset_errors()}
  def create_ruleset(%Client{} = client, input, options \\ []) do
    url_path = "/rulesets"
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
  Creates a new schedule for one or more DataBrew jobs.

  Jobs can be run at a specific
  date and time, or at regular intervals.
  """
  @spec create_schedule(map(), create_schedule_request(), list()) ::
          {:ok, create_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schedule_errors()}
  def create_schedule(%Client{} = client, input, options \\ []) do
    url_path = "/schedules"
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
  Deletes a dataset from DataBrew.
  """
  @spec delete_dataset(map(), String.t(), delete_dataset_request(), list()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
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
  Deletes the specified DataBrew job.
  """
  @spec delete_job(map(), String.t(), delete_job_request(), list()) ::
          {:ok, delete_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_errors()}
  def delete_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}"
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
  Deletes an existing DataBrew project.
  """
  @spec delete_project(map(), String.t(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
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
  Deletes a single version of a DataBrew recipe.
  """
  @spec delete_recipe_version(
          map(),
          String.t(),
          String.t(),
          delete_recipe_version_request(),
          list()
        ) ::
          {:ok, delete_recipe_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recipe_version_errors()}
  def delete_recipe_version(%Client{} = client, name, recipe_version, input, options \\ []) do
    url_path =
      "/recipes/#{AWS.Util.encode_uri(name)}/recipeVersion/#{AWS.Util.encode_uri(recipe_version)}"

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
  Deletes a ruleset.
  """
  @spec delete_ruleset(map(), String.t(), delete_ruleset_request(), list()) ::
          {:ok, delete_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ruleset_errors()}
  def delete_ruleset(%Client{} = client, name, input, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
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
  Deletes the specified DataBrew schedule.
  """
  @spec delete_schedule(map(), String.t(), delete_schedule_request(), list()) ::
          {:ok, delete_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schedule_errors()}
  def delete_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
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
  Returns the definition of a specific DataBrew dataset.
  """
  @spec describe_dataset(map(), String.t(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, name, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the definition of a specific DataBrew job.
  """
  @spec describe_job(map(), String.t(), list()) ::
          {:ok, describe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_errors()}
  def describe_job(%Client{} = client, name, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Represents one run of a DataBrew job.
  """
  @spec describe_job_run(map(), String.t(), String.t(), list()) ::
          {:ok, describe_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_run_errors()}
  def describe_job_run(%Client{} = client, name, run_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/jobRun/#{AWS.Util.encode_uri(run_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the definition of a specific DataBrew project.
  """
  @spec describe_project(map(), String.t(), list()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, name, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the definition of a specific DataBrew recipe corresponding to a
  particular
  version.
  """
  @spec describe_recipe(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_recipe_errors()}
  def describe_recipe(%Client{} = client, name, recipe_version \\ nil, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_version) do
        [{"recipeVersion", recipe_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about the ruleset.
  """
  @spec describe_ruleset(map(), String.t(), list()) ::
          {:ok, describe_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ruleset_errors()}
  def describe_ruleset(%Client{} = client, name, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the definition of a specific DataBrew schedule.
  """
  @spec describe_schedule(map(), String.t(), list()) ::
          {:ok, describe_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_schedule_errors()}
  def describe_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the DataBrew datasets.
  """
  @spec list_datasets(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasets"
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
  Lists all of the previous runs of a particular DataBrew job.
  """
  @spec list_job_runs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_job_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_runs_errors()}
  def list_job_runs(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/jobRuns"
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
  Lists all of the DataBrew jobs that are defined.
  """
  @spec list_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        dataset_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        project_name \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_name) do
        [{"projectName", project_name} | query_params]
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
      if !is_nil(dataset_name) do
        [{"datasetName", dataset_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the DataBrew projects that are defined.
  """
  @spec list_projects(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/projects"
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
  Lists the versions of a particular DataBrew recipe, except for
  `LATEST_WORKING`.
  """
  @spec list_recipe_versions(map(), String.t() | nil, String.t(), String.t() | nil, list()) ::
          {:ok, list_recipe_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recipe_versions_errors()}
  def list_recipe_versions(
        %Client{} = client,
        max_results \\ nil,
        name,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recipeVersions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  Lists all of the DataBrew recipes that are defined.
  """
  @spec list_recipes(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recipes_errors()}
  def list_recipes(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        recipe_version \\ nil,
        options \\ []
      ) do
    url_path = "/recipes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_version) do
        [{"recipeVersion", recipe_version} | query_params]
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
  List all rulesets available in the current account or rulesets associated
  with a specific resource (dataset).
  """
  @spec list_rulesets(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_rulesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rulesets_errors()}
  def list_rulesets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_arn \\ nil,
        options \\ []
      ) do
    url_path = "/rulesets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_arn) do
        [{"targetArn", target_arn} | query_params]
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
  Lists the DataBrew schedules that are defined.
  """
  @spec list_schedules(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schedules_errors()}
  def list_schedules(
        %Client{} = client,
        job_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/schedules"
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
      if !is_nil(job_name) do
        [{"jobName", job_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the tags for a DataBrew resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
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
  Publishes a new version of a DataBrew recipe.
  """
  @spec publish_recipe(map(), String.t(), publish_recipe_request(), list()) ::
          {:ok, publish_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_recipe_errors()}
  def publish_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}/publishRecipe"
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
  Performs a recipe step within an interactive DataBrew session that's currently
  open.
  """
  @spec send_project_session_action(
          map(),
          String.t(),
          send_project_session_action_request(),
          list()
        ) ::
          {:ok, send_project_session_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_project_session_action_errors()}
  def send_project_session_action(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}/sendProjectSessionAction"
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
  Runs a DataBrew job.
  """
  @spec start_job_run(map(), String.t(), start_job_run_request(), list()) ::
          {:ok, start_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_job_run_errors()}
  def start_job_run(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/startJobRun"
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
  Creates an interactive session, enabling you to manipulate data in a DataBrew
  project.
  """
  @spec start_project_session(map(), String.t(), start_project_session_request(), list()) ::
          {:ok, start_project_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_project_session_errors()}
  def start_project_session(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}/startProjectSession"
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
  Stops a particular run of a job.
  """
  @spec stop_job_run(map(), String.t(), String.t(), stop_job_run_request(), list()) ::
          {:ok, stop_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_job_run_errors()}
  def stop_job_run(%Client{} = client, name, run_id, input, options \\ []) do
    url_path =
      "/jobs/#{AWS.Util.encode_uri(name)}/jobRun/#{AWS.Util.encode_uri(run_id)}/stopJobRun"

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
  Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe,
  job, or
  schedule.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
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
  Removes metadata tags from a DataBrew resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
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
  Modifies the definition of an existing DataBrew dataset.
  """
  @spec update_dataset(map(), String.t(), update_dataset_request(), list()) ::
          {:ok, update_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
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
  Modifies the definition of an existing profile job.
  """
  @spec update_profile_job(map(), String.t(), update_profile_job_request(), list()) ::
          {:ok, update_profile_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_job_errors()}
  def update_profile_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/profileJobs/#{AWS.Util.encode_uri(name)}"
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
  Modifies the definition of an existing DataBrew project.
  """
  @spec update_project(map(), String.t(), update_project_request(), list()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
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
  Modifies the definition of the `LATEST_WORKING` version of a DataBrew
  recipe.
  """
  @spec update_recipe(map(), String.t(), update_recipe_request(), list()) ::
          {:ok, update_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recipe_errors()}
  def update_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}"
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
  Modifies the definition of an existing DataBrew recipe job.
  """
  @spec update_recipe_job(map(), String.t(), update_recipe_job_request(), list()) ::
          {:ok, update_recipe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recipe_job_errors()}
  def update_recipe_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipeJobs/#{AWS.Util.encode_uri(name)}"
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
  Updates specified ruleset.
  """
  @spec update_ruleset(map(), String.t(), update_ruleset_request(), list()) ::
          {:ok, update_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ruleset_errors()}
  def update_ruleset(%Client{} = client, name, input, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
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
  Modifies the definition of an existing DataBrew schedule.
  """
  @spec update_schedule(map(), String.t(), update_schedule_request(), list()) ::
          {:ok, update_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_schedule_errors()}
  def update_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
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
end
