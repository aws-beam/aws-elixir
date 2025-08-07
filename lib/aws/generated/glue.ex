# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Glue do
  @moduledoc """
  Glue

  Defines the public endpoint for the Glue service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      decimal_number() :: %{
        "Scale" => integer(),
        "UnscaledValue" => binary()
      }
      
  """
  @type decimal_number() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalog_request() :: %{
        required("CatalogId") => String.t() | atom()
      }
      
  """
  @type get_catalog_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ml_transform_response() :: %{
        "TransformId" => String.t() | atom()
      }
      
  """
  @type update_ml_transform_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_crawler_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type start_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_catalog_response() :: %{}
      
  """
  @type delete_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      evaluate_data_quality_multi_frame() :: %{
        "AdditionalDataSources" => map(),
        "AdditionalOptions" => map(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PublishingOptions" => d_q_results_publishing_options(),
        "Ruleset" => String.t() | atom(),
        "StopJobOnFailureOptions" => d_q_stop_job_on_failure_options()
      }
      
  """
  @type evaluate_data_quality_multi_frame() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_crawler_response() :: %{
        "Crawler" => crawler()
      }
      
  """
  @type get_crawler_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_run_sort_criteria() :: %{
        "Column" => list(any()),
        "SortDirection" => list(any())
      }
      
  """
  @type task_run_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_registry_input() :: %{
        required("RegistryId") => registry_id()
      }
      
  """
  @type get_registry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_request() :: %{
        optional("ApplyOverrideForComputeEnvironment") => list(any()),
        optional("CatalogId") => String.t() | atom(),
        optional("HidePassword") => boolean(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_defined_function() :: %{
        "CatalogId" => String.t() | atom(),
        "ClassName" => String.t() | atom(),
        "CreateTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "FunctionName" => String.t() | atom(),
        "OwnerName" => String.t() | atom(),
        "OwnerType" => list(any()),
        "ResourceUris" => list(resource_uri())
      }
      
  """
  @type user_defined_function() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_schema_change_policy() :: %{
        "EnableUpdateCatalog" => boolean(),
        "UpdateBehavior" => list(any())
      }
      
  """
  @type catalog_schema_change_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_config() :: %{
        "RefreshInterval" => String.t() | atom(),
        "SourceProperties" => map()
      }
      
  """
  @type integration_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_custom_entity_type_response() :: %{
        "ContextWords" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "RegexString" => String.t() | atom()
      }
      
  """
  @type get_custom_entity_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_table_properties_request() :: %{
        optional("SourceTableConfig") => source_table_config(),
        optional("TargetTableConfig") => target_table_config(),
        required("ResourceArn") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type create_integration_table_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statistic_summary() :: %{
        "ColumnsReferenced" => list(String.t() | atom()),
        "DoubleValue" => float(),
        "EvaluationLevel" => list(any()),
        "InclusionAnnotation" => timestamped_inclusion_annotation(),
        "ProfileId" => String.t() | atom(),
        "RecordedOn" => non_neg_integer(),
        "ReferencedDatasets" => list(String.t() | atom()),
        "RunIdentifier" => run_identifier(),
        "StatisticId" => String.t() | atom(),
        "StatisticName" => String.t() | atom(),
        "StatisticProperties" => map()
      }
      
  """
  @type statistic_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_results_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(data_quality_result_description())
      }
      
  """
  @type list_data_quality_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_quality_rule_recommendation_run_response() :: %{
        "RunId" => String.t() | atom()
      }
      
  """
  @type start_data_quality_rule_recommendation_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_catalog_target() :: %{
        "AutoDataQuality" => auto_data_quality(),
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "SchemaChangePolicy" => catalog_schema_change_policy(),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_catalog_request() :: %{
        required("CatalogId") => String.t() | atom(),
        required("CatalogInput") => catalog_input()
      }
      
  """
  @type update_catalog_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_integration_table_properties_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_integration_table_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_run_response() :: %{
        "JobRun" => job_run()
      }
      
  """
  @type get_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schemas_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RegistryId") => registry_id()
      }
      
  """
  @type list_schemas_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_iceberg_input() :: %{
        "UpdateIcebergTableInput" => update_iceberg_table_input()
      }
      
  """
  @type update_iceberg_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workflow_request() :: %{
        optional("DefaultRunProperties") => map(),
        optional("Description") => String.t() | atom(),
        optional("MaxConcurrentRuns") => integer(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_crawlers_request() :: %{
        required("CrawlerNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_crawlers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_schema_version_metadata_input() :: %{
        optional("SchemaId") => schema_id(),
        optional("SchemaVersionId") => String.t() | atom(),
        optional("SchemaVersionNumber") => schema_version_number(),
        required("MetadataKeyValue") => metadata_key_value_pair()
      }
      
  """
  @type put_schema_version_metadata_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_versions_diff_response() :: %{
        "Diff" => String.t() | atom()
      }
      
  """
  @type get_schema_versions_diff_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ser_de_info() :: %{
        "Name" => String.t() | atom(),
        "Parameters" => map(),
        "SerializationLibrary" => String.t() | atom()
      }
      
  """
  @type ser_de_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ConnectionInput") => connection_input(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_policy() :: %{
        "CreateTime" => non_neg_integer(),
        "PolicyHash" => String.t() | atom(),
        "PolicyInJson" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }
      
  """
  @type glue_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retention_metrics() :: %{
        "IcebergMetrics" => iceberg_retention_metrics()
      }
      
  """
  @type retention_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_statement_response() :: %{}
      
  """
  @type cancel_statement_response() :: %{}

  @typedoc """

  ## Example:
      
      data_quality_target_table() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type data_quality_target_table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_for_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnStatisticsList") => list(column_statistics()),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_column_statistics_for_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_triggers_response() :: %{
        "Triggers" => list(trigger()),
        "TriggersNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_triggers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entities_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ConnectionName") => String.t() | atom(),
        optional("DataStoreApiVersion") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("ParentEntityName") => String.t() | atom()
      }
      
  """
  @type list_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recipe_reference() :: %{
        "RecipeArn" => String.t() | atom(),
        "RecipeVersion" => String.t() | atom()
      }
      
  """
  @type recipe_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_processing_properties() :: %{
        "ConnectionName" => String.t() | atom(),
        "EventBusArn" => String.t() | atom(),
        "KmsArn" => String.t() | atom(),
        "RoleArn" => String.t() | atom()
      }
      
  """
  @type target_processing_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      basic_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Table" => String.t() | atom()
      }
      
  """
  @type basic_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_column_statistics_task_settings_response() :: %{}
      
  """
  @type delete_column_statistics_task_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      job_bookmarks_encryption() :: %{
        "JobBookmarksEncryptionMode" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }
      
  """
  @type job_bookmarks_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_integration_response() :: %{
        "AdditionalEncryptionContext" => map(),
        "CreateTime" => non_neg_integer(),
        "DataFilter" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationName" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => list(tag()),
        "TargetArn" => String.t() | atom()
      }
      
  """
  @type delete_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      view_definition_input() :: %{
        "Definer" => String.t() | atom(),
        "IsProtected" => boolean(),
        "Representations" => list(view_representation_input()),
        "SubObjects" => list(String.t() | atom())
      }
      
  """
  @type view_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "CloudWatchEncryption" => cloud_watch_encryption(),
        "DataQualityEncryption" => data_quality_encryption(),
        "JobBookmarksEncryption" => job_bookmarks_encryption(),
        "S3Encryption" => list(s3_encryption())
      }
      
  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trigger_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spark_connector_target() :: %{
        "AdditionalOptions" => map(),
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "ConnectorName" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type spark_connector_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      apply_mapping() :: %{
        "Inputs" => list(String.t() | atom()),
        "Mapping" => list(mapping()),
        "Name" => String.t() | atom()
      }
      
  """
  @type apply_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics() :: %{
        "AnalyzedTime" => non_neg_integer(),
        "ColumnName" => String.t() | atom(),
        "ColumnType" => String.t() | atom(),
        "StatisticsData" => column_statistics_data()
      }
      
  """
  @type column_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_run_request() :: %{
        required("BlueprintName") => String.t() | atom(),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_blueprint_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_blueprints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_blueprints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_response() :: %{
        "AdditionalEncryptionContext" => map(),
        "CreateTime" => non_neg_integer(),
        "DataFilter" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationConfig" => integration_config(),
        "IntegrationName" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => list(tag()),
        "TargetArn" => String.t() | atom()
      }
      
  """
  @type create_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_struct_field() :: %{
        "Doc" => String.t() | atom(),
        "Id" => integer(),
        "Name" => String.t() | atom(),
        "Required" => boolean(),
        "Type" => any()
      }
      
  """
  @type iceberg_struct_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      supported_dialect() :: %{
        "Dialect" => list(any()),
        "DialectVersion" => String.t() | atom()
      }
      
  """
  @type supported_dialect() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagsToAdd") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_task_stopping_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type column_statistics_task_stopping_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_rule_recommendation_run_filter() :: %{
        "DataSource" => data_source(),
        "StartedAfter" => non_neg_integer(),
        "StartedBefore" => non_neg_integer()
      }
      
  """
  @type data_quality_rule_recommendation_run_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oracle_s_q_l_catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type oracle_s_q_l_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_crawler_schedule_request() :: %{
        required("CrawlerName") => String.t() | atom()
      }
      
  """
  @type start_crawler_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_version_list_item() :: %{
        "CreatedTime" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }
      
  """
  @type schema_version_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_quality_ruleset_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Ruleset") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_data_quality_ruleset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timestamped_inclusion_annotation() :: %{
        "LastModifiedOn" => non_neg_integer(),
        "Value" => list(any())
      }
      
  """
  @type timestamped_inclusion_annotation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_labels_task_run_properties() :: %{
        "InputS3Path" => String.t() | atom(),
        "Replace" => boolean()
      }
      
  """
  @type import_labels_task_run_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_schema_versions_input() :: %{
        required("SchemaId") => schema_id(),
        required("Versions") => String.t() | atom()
      }
      
  """
  @type delete_schema_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      principal_permissions() :: %{
        "Permissions" => list(list(any())()),
        "Principal" => data_lake_principal()
      }
      
  """
  @type principal_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      update_usage_profile_request() :: %{
        optional("Description") => String.t() | atom(),
        required("Configuration") => profile_configuration(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_usage_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_schema_version_validity_input() :: %{
        required("DataFormat") => list(any()),
        required("SchemaDefinition") => String.t() | atom()
      }
      
  """
  @type check_schema_version_validity_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_blueprints_response() :: %{
        "Blueprints" => list(blueprint()),
        "MissingBlueprints" => list(String.t() | atom())
      }
      
  """
  @type batch_get_blueprints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ml_transform_request() :: %{
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type get_ml_transform_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      j_db_c_connector_source() :: %{
        "AdditionalOptions" => j_db_c_connector_options(),
        "ConnectionName" => String.t() | atom(),
        "ConnectionTable" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "ConnectorName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Query" => String.t() | atom()
      }
      
  """
  @type j_db_c_connector_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduler_not_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type scheduler_not_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database() :: %{
        "CatalogId" => String.t() | atom(),
        "CreateTableDefaultPermissions" => list(principal_permissions()),
        "CreateTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FederatedDatabase" => federated_database(),
        "LocationUri" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Parameters" => map(),
        "TargetDatabase" => database_identifier()
      }
      
  """
  @type database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_triggers_response() :: %{
        "NextToken" => String.t() | atom(),
        "Triggers" => list(trigger())
      }
      
  """
  @type get_triggers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_schema_version_metadata_response() :: %{
        "LatestVersion" => boolean(),
        "MetadataKey" => String.t() | atom(),
        "MetadataValue" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom(),
        "VersionNumber" => float()
      }
      
  """
  @type remove_schema_version_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_partition_spec() :: %{
        "Fields" => list(iceberg_partition_field()),
        "SpecId" => integer()
      }
      
  """
  @type iceberg_partition_spec() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_not_found_exception() :: %{
        "FromFederationSource" => boolean(),
        "Message" => String.t() | atom()
      }
      
  """
  @type entity_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_metrics() :: %{
        "CrawlerName" => String.t() | atom(),
        "LastRuntimeSeconds" => float(),
        "MedianRuntimeSeconds" => float(),
        "StillEstimating" => boolean(),
        "TablesCreated" => integer(),
        "TablesDeleted" => integer(),
        "TablesUpdated" => integer(),
        "TimeLeftSeconds" => float()
      }
      
  """
  @type crawler_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      boolean_column_statistics_data() :: %{
        "NumberOfFalses" => float(),
        "NumberOfNulls" => float(),
        "NumberOfTrues" => float()
      }
      
  """
  @type boolean_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_timeout_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type operation_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_statement_response() :: %{
        "Statement" => statement()
      }
      
  """
  @type get_statement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_rulesets_request() :: %{
        optional("Filter") => data_quality_ruleset_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_data_quality_rulesets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_identifier() :: %{
        "JobRunId" => String.t() | atom(),
        "RunId" => String.t() | atom()
      }
      
  """
  @type run_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition_index() :: %{
        "IndexName" => String.t() | atom(),
        "Keys" => list(String.t() | atom())
      }
      
  """
  @type partition_index() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_status() :: %{
        "Action" => list(any()),
        "Details" => status_details(),
        "Error" => error_detail(),
        "RequestTime" => non_neg_integer(),
        "RequestedBy" => String.t() | atom(),
        "State" => list(any()),
        "UpdateTime" => non_neg_integer(),
        "UpdatedBy" => String.t() | atom()
      }
      
  """
  @type table_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_registry_input() :: %{
        required("RegistryId") => registry_id()
      }
      
  """
  @type delete_registry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_session_response() :: %{
        "Session" => session()
      }
      
  """
  @type get_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_lake_access_properties_output() :: %{
        "CatalogType" => String.t() | atom(),
        "DataLakeAccess" => boolean(),
        "DataTransferRole" => String.t() | atom(),
        "KmsKey" => String.t() | atom(),
        "ManagedWorkgroupName" => String.t() | atom(),
        "ManagedWorkgroupStatus" => String.t() | atom(),
        "RedshiftDatabaseName" => String.t() | atom(),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type data_lake_access_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      inbound_integration() :: %{
        "CreateTime" => non_neg_integer(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationConfig" => integration_config(),
        "SourceArn" => String.t() | atom(),
        "Status" => list(any()),
        "TargetArn" => String.t() | atom()
      }
      
  """
  @type inbound_integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_result_description() :: %{
        "DataSource" => data_source(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom(),
        "ResultId" => String.t() | atom(),
        "StartedOn" => non_neg_integer()
      }
      
  """
  @type data_quality_result_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint_details() :: %{
        "BlueprintName" => String.t() | atom(),
        "RunId" => String.t() | atom()
      }
      
  """
  @type blueprint_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_partition_response() :: %{
        "Errors" => list(partition_error())
      }
      
  """
  @type batch_delete_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_run_request() :: %{
        optional("PredecessorsIncluded") => boolean(),
        required("JobName") => String.t() | atom(),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_defined_functions_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserDefinedFunctions" => list(user_defined_function())
      }
      
  """
  @type get_user_defined_functions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_script_request() :: %{
        optional("DagEdges") => list(code_gen_edge()),
        optional("DagNodes") => list(code_gen_node()),
        optional("Language") => list(any())
      }
      
  """
  @type create_script_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition_error() :: %{
        "ErrorDetail" => error_detail(),
        "PartitionValues" => list(String.t() | atom())
      }
      
  """
  @type partition_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_job_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_triggers_response() :: %{
        "NextToken" => String.t() | atom(),
        "TriggerNames" => list(String.t() | atom())
      }
      
  """
  @type list_triggers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Force") => boolean(),
        optional("Name") => String.t() | atom(),
        optional("SkipArchive") => boolean(),
        optional("TableInput") => table_input(),
        optional("TransactionId") => String.t() | atom(),
        optional("UpdateOpenTableFormatInput") => update_open_table_format_input(),
        optional("VersionId") => String.t() | atom(),
        optional("ViewUpdateAction") => list(any()),
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type update_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TablesToDelete") => list(String.t() | atom())
      }
      
  """
  @type batch_delete_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_crawler_response() :: %{}
      
  """
  @type delete_crawler_response() :: %{}

  @typedoc """

  ## Example:
      
      get_ml_transforms_response() :: %{
        "NextToken" => String.t() | atom(),
        "Transforms" => list(ml_transform())
      }
      
  """
  @type get_ml_transforms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("JobName") => String.t() | atom()
      }
      
  """
  @type get_job_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_session_context() :: %{
        "AdditionalContext" => map(),
        "ClusterId" => String.t() | atom(),
        "QueryAuthorizationId" => String.t() | atom(),
        "QueryId" => String.t() | atom(),
        "QueryStartTime" => non_neg_integer()
      }
      
  """
  @type query_session_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_table_optimizer_error() :: %{
        "catalogId" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "error" => error_detail(),
        "tableName" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type batch_get_table_optimizer_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tables_response() :: %{
        "NextToken" => String.t() | atom(),
        "TableList" => list(table())
      }
      
  """
  @type get_tables_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger() :: %{
        "Actions" => list(action()),
        "Description" => String.t() | atom(),
        "EventBatchingCondition" => event_batching_condition(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Predicate" => predicate(),
        "Schedule" => String.t() | atom(),
        "State" => list(any()),
        "Type" => list(any()),
        "WorkflowName" => String.t() | atom()
      }
      
  """
  @type trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tags_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_crawler_response() :: %{}
      
  """
  @type update_crawler_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_quality_result_response() :: %{
        "AggregatedMetrics" => data_quality_aggregated_metrics(),
        "AnalyzerResults" => list(data_quality_analyzer_result()),
        "CompletedOn" => non_neg_integer(),
        "DataSource" => data_source(),
        "EvaluationContext" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom(),
        "Observations" => list(data_quality_observation()),
        "ProfileId" => String.t() | atom(),
        "ResultId" => String.t() | atom(),
        "RuleResults" => list(data_quality_rule_result()),
        "RulesetEvaluationRunId" => String.t() | atom(),
        "RulesetName" => String.t() | atom(),
        "Score" => float(),
        "StartedOn" => non_neg_integer()
      }
      
  """
  @type get_data_quality_result_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_partition_response() :: %{
        "Errors" => list(partition_error())
      }
      
  """
  @type batch_create_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      null_value_field() :: %{
        "Datatype" => datatype(),
        "Value" => String.t() | atom()
      }
      
  """
  @type null_value_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_classifiers_response() :: %{
        "Classifiers" => list(classifier()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_classifiers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dev_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_dev_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_targets() :: %{
        "CatalogTargets" => list(catalog_target()),
        "DeltaTargets" => list(delta_target()),
        "DynamoDBTargets" => list(dynamo_db_target()),
        "HudiTargets" => list(hudi_target()),
        "IcebergTargets" => list(iceberg_target()),
        "JdbcTargets" => list(jdbc_target()),
        "MongoDBTargets" => list(mongo_db_target()),
        "S3Targets" => list(s3_target())
      }
      
  """
  @type crawler_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_catalog_hudi_source() :: %{
        "AdditionalHudiOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_catalog_hudi_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_table_format_input() :: %{
        "IcebergInput" => iceberg_input()
      }
      
  """
  @type open_table_format_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_optimizer_configuration() :: %{
        "compactionConfiguration" => compaction_configuration(),
        "enabled" => boolean(),
        "orphanFileDeletionConfiguration" => orphan_file_deletion_configuration(),
        "retentionConfiguration" => retention_configuration(),
        "roleArn" => String.t() | atom(),
        "vpcConfiguration" => list()
      }
      
  """
  @type table_optimizer_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hudi_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "Exclusions" => list(String.t() | atom()),
        "MaximumTraversalDepth" => integer(),
        "Paths" => list(String.t() | atom())
      }
      
  """
  @type hudi_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_runs_request() :: %{
        optional("IncludeGraph") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_workflow_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_optimizer_response() :: %{}
      
  """
  @type create_table_optimizer_response() :: %{}

  @typedoc """

  ## Example:
      
      usage_profile_definition() :: %{
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastModifiedOn" => non_neg_integer(),
        "Name" => String.t() | atom()
      }
      
  """
  @type usage_profile_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amazon_redshift_advanced_option() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type amazon_redshift_advanced_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration() :: %{
        "AdditionalEncryptionContext" => map(),
        "CreateTime" => non_neg_integer(),
        "DataFilter" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationConfig" => integration_config(),
        "IntegrationName" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => list(tag()),
        "TargetArn" => String.t() | atom()
      }
      
  """
  @type integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_catalog_to_glue_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }
      
  """
  @type import_catalog_to_glue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      federated_database() :: %{
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "Identifier" => String.t() | atom()
      }
      
  """
  @type federated_database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      direct_j_db_c_source() :: %{
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "RedshiftTmpDir" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type direct_j_db_c_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_security_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_security_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ml_transform() :: %{
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EvaluationMetrics" => evaluation_metrics(),
        "GlueVersion" => String.t() | atom(),
        "InputRecordTables" => list(glue_table()),
        "LabelCount" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "MaxCapacity" => float(),
        "MaxRetries" => integer(),
        "Name" => String.t() | atom(),
        "NumberOfWorkers" => integer(),
        "Parameters" => transform_parameters(),
        "Role" => String.t() | atom(),
        "Schema" => list(schema_column()),
        "Status" => list(any()),
        "Timeout" => integer(),
        "TransformEncryption" => transform_encryption(),
        "TransformId" => String.t() | atom(),
        "WorkerType" => list(any())
      }
      
  """
  @type ml_transform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partition_response() :: %{}
      
  """
  @type create_partition_response() :: %{}

  @typedoc """

  ## Example:
      
      modify_integration_response() :: %{
        "AdditionalEncryptionContext" => map(),
        "CreateTime" => non_neg_integer(),
        "DataFilter" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationName" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => list(tag()),
        "TargetArn" => String.t() | atom()
      }
      
  """
  @type modify_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_run() :: %{
        "AllocatedCapacity" => integer(),
        "Arguments" => map(),
        "Attempt" => integer(),
        "CompletedOn" => non_neg_integer(),
        "DPUSeconds" => float(),
        "ErrorMessage" => String.t() | atom(),
        "ExecutionClass" => list(any()),
        "ExecutionRoleSessionPolicy" => String.t() | atom(),
        "ExecutionTime" => integer(),
        "GlueVersion" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "JobMode" => list(any()),
        "JobName" => String.t() | atom(),
        "JobRunQueuingEnabled" => boolean(),
        "JobRunState" => list(any()),
        "LastModifiedOn" => non_neg_integer(),
        "LogGroupName" => String.t() | atom(),
        "MaintenanceWindow" => String.t() | atom(),
        "MaxCapacity" => float(),
        "NotificationProperty" => notification_property(),
        "NumberOfWorkers" => integer(),
        "PredecessorRuns" => list(predecessor()),
        "PreviousRunId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "StateDetail" => String.t() | atom(),
        "Timeout" => integer(),
        "TriggerName" => String.t() | atom(),
        "WorkerType" => list(any())
      }
      
  """
  @type job_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "Category" => String.t() | atom(),
        "CustomProperties" => map(),
        "Description" => String.t() | atom(),
        "EntityName" => String.t() | atom(),
        "IsParentEntity" => boolean(),
        "Label" => String.t() | atom()
      }
      
  """
  @type entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_orphan_file_deletion_configuration() :: %{
        "location" => String.t() | atom(),
        "orphanFileRetentionPeriodInDays" => integer()
      }
      
  """
  @type iceberg_orphan_file_deletion_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_data_quality_result_response() :: %{
        "Results" => list(data_quality_result()),
        "ResultsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_data_quality_result_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type get_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_gen_configuration_node() :: %{
        "CatalogKinesisSource" => catalog_kinesis_source(),
        "AmazonRedshiftTarget" => amazon_redshift_target(),
        "MySQLCatalogSource" => my_s_q_l_catalog_source(),
        "DropDuplicates" => drop_duplicates(),
        "GovernedCatalogSource" => governed_catalog_source(),
        "ConnectorDataSource" => connector_data_source(),
        "CatalogTarget" => basic_catalog_target(),
        "CatalogKafkaSource" => catalog_kafka_source(),
        "CatalogHudiSource" => catalog_hudi_source(),
        "S3HudiDirectTarget" => s3_hudi_direct_target(),
        "Route" => route(),
        "ConnectorDataTarget" => connector_data_target(),
        "DynamoDBCatalogSource" => dynamo_db_catalog_source(),
        "RelationalCatalogSource" => relational_catalog_source(),
        "SparkConnectorSource" => spark_connector_source(),
        "FillMissingValues" => fill_missing_values(),
        "DropNullFields" => drop_null_fields(),
        "S3CatalogIcebergSource" => s3_catalog_iceberg_source(),
        "Union" => union(),
        "Recipe" => recipe(),
        "AthenaConnectorSource" => athena_connector_source(),
        "S3ParquetSource" => s3_parquet_source(),
        "OracleSQLCatalogTarget" => oracle_s_q_l_catalog_target(),
        "SnowflakeSource" => snowflake_source(),
        "EvaluateDataQuality" => evaluate_data_quality(),
        "DirectJDBCSource" => direct_j_db_c_source(),
        "S3CatalogSource" => s3_catalog_source(),
        "S3CatalogDeltaSource" => s3_catalog_delta_source(),
        "ApplyMapping" => apply_mapping(),
        "S3GlueParquetTarget" => s3_glue_parquet_target(),
        "Merge" => merge(),
        "SplitFields" => split_fields(),
        "S3HudiCatalogTarget" => s3_hudi_catalog_target(),
        "Spigot" => spigot(),
        "PostgreSQLCatalogTarget" => postgre_s_q_l_catalog_target(),
        "S3ExcelSource" => s3_excel_source(),
        "DynamicTransform" => dynamic_transform(),
        "S3DirectTarget" => s3_direct_target(),
        "S3DeltaDirectTarget" => s3_delta_direct_target(),
        "CatalogIcebergSource" => catalog_iceberg_source(),
        "Filter" => filter(),
        "Aggregate" => aggregate(),
        "DirectKafkaSource" => direct_kafka_source(),
        "CatalogDeltaSource" => catalog_delta_source(),
        "RenameField" => rename_field(),
        "GovernedCatalogTarget" => governed_catalog_target(),
        "PostgreSQLCatalogSource" => postgre_s_q_l_catalog_source(),
        "SnowflakeTarget" => snowflake_target(),
        "DirectKinesisSource" => direct_kinesis_source(),
        "PIIDetection" => p_i_idetection(),
        "S3CatalogHudiSource" => s3_catalog_hudi_source(),
        "CustomCode" => custom_code(),
        "SparkConnectorTarget" => spark_connector_target(),
        "RedshiftTarget" => redshift_target(),
        "RedshiftSource" => redshift_source(),
        "CatalogSource" => catalog_source(),
        "JDBCConnectorTarget" => j_db_c_connector_target(),
        "DynamoDBELTConnectorSource" => dynamo_db_e_l_t_connector_source(),
        "AmazonRedshiftSource" => amazon_redshift_source(),
        "Join" => join(),
        "S3DeltaSource" => s3_delta_source(),
        "SelectFromCollection" => select_from_collection(),
        "S3JsonSource" => s3_json_source(),
        "SparkSQL" => spark_s_q_l(),
        "S3IcebergCatalogTarget" => s3_iceberg_catalog_target(),
        "MySQLCatalogTarget" => my_s_q_l_catalog_target(),
        "JDBCConnectorSource" => j_db_c_connector_source(),
        "S3HudiSource" => s3_hudi_source(),
        "MicrosoftSQLServerCatalogTarget" => microsoft_s_q_l_server_catalog_target(),
        "S3CatalogTarget" => s3_catalog_target(),
        "SelectFields" => select_fields(),
        "EvaluateDataQualityMultiFrame" => evaluate_data_quality_multi_frame(),
        "MicrosoftSQLServerCatalogSource" => microsoft_s_q_l_server_catalog_source(),
        "S3IcebergDirectTarget" => s3_iceberg_direct_target(),
        "S3DeltaCatalogTarget" => s3_delta_catalog_target(),
        "DropFields" => drop_fields(),
        "S3CsvSource" => s3_csv_source(),
        "OracleSQLCatalogSource" => oracle_s_q_l_catalog_source(),
        "S3HyperDirectTarget" => s3_hyper_direct_target()
      }
      
  """
  @type code_gen_configuration_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_data_catalog_encryption_settings_response() :: %{}
      
  """
  @type put_data_catalog_encryption_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      get_dev_endpoints_response() :: %{
        "DevEndpoints" => list(dev_endpoint()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_dev_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_table_metadata_response() :: %{
        "AuthorizedColumns" => list(String.t() | atom()),
        "CellFilters" => list(column_row_filter()),
        "IsMultiDialectView" => boolean(),
        "IsProtected" => boolean(),
        "IsRegisteredWithLakeFormation" => boolean(),
        "Permissions" => list(list(any())()),
        "QueryAuthorizationId" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "RowFilter" => String.t() | atom(),
        "Table" => table()
      }
      
  """
  @type get_unfiltered_table_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration_input() :: %{
        "AuthenticationType" => list(any()),
        "BasicAuthenticationCredentials" => basic_authentication_credentials(),
        "CustomAuthenticationCredentials" => map(),
        "KmsKeyArn" => String.t() | atom(),
        "OAuth2Properties" => o_auth2_properties_input(),
        "SecretArn" => String.t() | atom()
      }
      
  """
  @type authentication_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_run_filter_criteria() :: %{
        "StartedAfter" => non_neg_integer(),
        "StartedBefore" => non_neg_integer(),
        "Status" => list(any()),
        "TaskRunType" => list(any())
      }
      
  """
  @type task_run_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_classifier_response() :: %{}
      
  """
  @type delete_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      update_blueprint_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type update_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_update_partition_failure_entry() :: %{
        "ErrorDetail" => error_detail(),
        "PartitionValueList" => list(String.t() | atom())
      }
      
  """
  @type batch_update_partition_failure_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_model_result_request() :: %{
        required("ProfileId") => String.t() | atom(),
        required("StatisticId") => String.t() | atom()
      }
      
  """
  @type get_data_quality_model_result_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_rule_recommendation_run_description() :: %{
        "DataSource" => data_source(),
        "RunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type data_quality_rule_recommendation_run_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_usage_profiles_response() :: %{
        "NextToken" => String.t() | atom(),
        "Profiles" => list(usage_profile_definition())
      }
      
  """
  @type list_usage_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      athena_connector_source() :: %{
        "ConnectionName" => String.t() | atom(),
        "ConnectionTable" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "ConnectorName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "SchemaName" => String.t() | atom()
      }
      
  """
  @type athena_connector_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_properties_request() :: %{
        required("Name") => String.t() | atom(),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_workflow_run_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_optimizer_run() :: %{
        "compactionMetrics" => compaction_metrics(),
        "compactionStrategy" => list(any()),
        "endTimestamp" => non_neg_integer(),
        "error" => String.t() | atom(),
        "eventType" => list(any()),
        "metrics" => run_metrics(),
        "orphanFileDeletionMetrics" => orphan_file_deletion_metrics(),
        "retentionMetrics" => retention_metrics(),
        "startTimestamp" => non_neg_integer()
      }
      
  """
  @type table_optimizer_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorization_code_properties() :: %{
        "AuthorizationCode" => String.t() | atom(),
        "RedirectUri" => String.t() | atom()
      }
      
  """
  @type authorization_code_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_batching_condition() :: %{
        "BatchSize" => integer(),
        "BatchWindow" => integer()
      }
      
  """
  @type event_batching_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_rulesets_response() :: %{
        "NextToken" => String.t() | atom(),
        "Rulesets" => list(data_quality_ruleset_list_details())
      }
      
  """
  @type list_data_quality_rulesets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_catalog_encryption_settings() :: %{
        "ConnectionPasswordEncryption" => connection_password_encryption(),
        "EncryptionAtRest" => encryption_at_rest()
      }
      
  """
  @type data_catalog_encryption_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_filter() :: %{
        "Name" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type integration_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column() :: %{
        "Comment" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Parameters" => map(),
        "Type" => String.t() | atom()
      }
      
  """
  @type column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionInput") => partition_input(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type create_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawl() :: %{
        "CompletedOn" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "LogGroup" => String.t() | atom(),
        "LogStream" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type crawl() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_quality_ruleset_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_data_quality_ruleset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_job_bookmark_request() :: %{
        optional("RunId") => String.t() | atom(),
        required("JobName") => String.t() | atom()
      }
      
  """
  @type reset_job_bookmark_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_workflow_run_request() :: %{
        required("Name") => String.t() | atom(),
        required("NodeIds") => list(String.t() | atom()),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type resume_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_optimizer_response() :: %{}
      
  """
  @type delete_table_optimizer_response() :: %{}

  @typedoc """

  ## Example:
      
      registry_id() :: %{
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom()
      }
      
  """
  @type registry_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_for_partition_response() :: %{
        "ColumnStatisticsList" => list(column_statistics()),
        "Errors" => list(column_error())
      }
      
  """
  @type get_column_statistics_for_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redshift_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RedshiftTmpDir" => String.t() | atom(),
        "Table" => String.t() | atom(),
        "TmpDirIAMRole" => String.t() | atom()
      }
      
  """
  @type redshift_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      csv_classifier() :: %{
        "AllowSingleColumn" => boolean(),
        "ContainsHeader" => list(any()),
        "CreationTime" => non_neg_integer(),
        "CustomDatatypeConfigured" => boolean(),
        "CustomDatatypes" => list(String.t() | atom()),
        "Delimiter" => String.t() | atom(),
        "DisableValueTrimming" => boolean(),
        "Header" => list(String.t() | atom()),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "QuoteSymbol" => String.t() | atom(),
        "Serde" => list(any()),
        "Version" => float()
      }
      
  """
  @type csv_classifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schema_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Schemas" => list(schema_version_list_item())
      }
      
  """
  @type list_schema_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      version_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type version_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_crawler_response() :: %{}
      
  """
  @type create_crawler_response() :: %{}

  @typedoc """

  ## Example:
      
      create_registry_response() :: %{
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Tags" => map()
      }
      
  """
  @type create_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oracle_s_q_l_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type oracle_s_q_l_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_list_item() :: %{
        "CreatedTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaStatus" => list(any()),
        "UpdatedTime" => String.t() | atom()
      }
      
  """
  @type schema_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_metrics() :: %{
        "JobDurationInHour" => String.t() | atom(),
        "NumberOfBytesCompacted" => String.t() | atom(),
        "NumberOfDpus" => String.t() | atom(),
        "NumberOfFilesCompacted" => String.t() | atom()
      }
      
  """
  @type run_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_data() :: %{
        "BinaryColumnStatisticsData" => binary_column_statistics_data(),
        "BooleanColumnStatisticsData" => boolean_column_statistics_data(),
        "DateColumnStatisticsData" => date_column_statistics_data(),
        "DecimalColumnStatisticsData" => decimal_column_statistics_data(),
        "DoubleColumnStatisticsData" => double_column_statistics_data(),
        "LongColumnStatisticsData" => long_column_statistics_data(),
        "StringColumnStatisticsData" => string_column_statistics_data(),
        "Type" => list(any())
      }
      
  """
  @type column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_runs_response() :: %{
        "NextToken" => String.t() | atom(),
        "Runs" => list(workflow_run())
      }
      
  """
  @type get_workflow_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("IncludeStatusDetails") => boolean(),
        optional("QueryAsOfTime") => non_neg_integer(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_inbound_integrations_response() :: %{
        "InboundIntegrations" => list(inbound_integration()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type describe_inbound_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_blueprint_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type delete_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_custom_entity_type_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_custom_entity_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_sort_order() :: %{
        "Fields" => list(iceberg_sort_field()),
        "OrderId" => integer()
      }
      
  """
  @type iceberg_sort_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_x_ml_classifier_request() :: %{
        "Classification" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RowTag" => String.t() | atom()
      }
      
  """
  @type update_x_ml_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_kinesis_source() :: %{
        "DataPreviewOptions" => streaming_data_preview_options(),
        "Database" => String.t() | atom(),
        "DetectSchema" => boolean(),
        "Name" => String.t() | atom(),
        "StreamingOptions" => kinesis_streaming_source_options(),
        "Table" => String.t() | atom(),
        "WindowSize" => integer()
      }
      
  """
  @type catalog_kinesis_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      federated_catalog() :: %{
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "Identifier" => String.t() | atom()
      }
      
  """
  @type federated_catalog() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dynamic_transform() :: %{
        "FunctionName" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Parameters" => list(transform_config_parameter()),
        "Path" => String.t() | atom(),
        "TransformName" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type dynamic_transform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type integration_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_runs_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type concurrent_runs_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_parquet_source() :: %{
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "CompressionType" => list(any()),
        "Exclusions" => list(String.t() | atom()),
        "GroupFiles" => String.t() | atom(),
        "GroupSize" => String.t() | atom(),
        "MaxBand" => integer(),
        "MaxFilesInBand" => integer(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom()),
        "Recurse" => boolean()
      }
      
  """
  @type s3_parquet_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_statement_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Id") => integer(),
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type cancel_statement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      illegal_session_state_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type illegal_session_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_workflow_run_response() :: %{}
      
  """
  @type stop_workflow_run_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_get_dev_endpoints_response() :: %{
        "DevEndpoints" => list(dev_endpoint()),
        "DevEndpointsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_dev_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_statement_response() :: %{
        "Id" => integer()
      }
      
  """
  @type run_statement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_property() :: %{
        "NotifyDelayAfter" => integer()
      }
      
  """
  @type notification_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_statement_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Code") => String.t() | atom(),
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type run_statement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connections_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Filter") => get_connections_filter(),
        optional("HidePassword") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_connections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_defined_function_response() :: %{
        "UserDefinedFunction" => user_defined_function()
      }
      
  """
  @type get_user_defined_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_catalog_response() :: %{}
      
  """
  @type update_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_ml_transform_response() :: %{
        "TransformId" => String.t() | atom()
      }
      
  """
  @type delete_ml_transform_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_export_labels_task_run_response() :: %{
        "TaskRunId" => String.t() | atom()
      }
      
  """
  @type start_export_labels_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_node_details() :: %{
        "Crawls" => list(crawl())
      }
      
  """
  @type crawler_node_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_direct_target() :: %{
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => String.t() | atom(),
        "Format" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NumberTargetPartitions" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_direct_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_data_quality_profile_annotation_request() :: %{
        required("InclusionAnnotation") => list(any()),
        required("ProfileId") => String.t() | atom()
      }
      
  """
  @type put_data_quality_profile_annotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_entity_records_response() :: %{
        "NextToken" => String.t() | atom(),
        "Records" => list(any())
      }
      
  """
  @type get_entity_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ml_task_run_request() :: %{
        required("TaskRunId") => String.t() | atom(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type get_ml_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("OpenTableFormatInput") => open_table_format_input(),
        optional("PartitionIndexes") => list(partition_index()),
        optional("TableInput") => table_input(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type create_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statistic_annotation() :: %{
        "InclusionAnnotation" => timestamped_inclusion_annotation(),
        "ProfileId" => String.t() | atom(),
        "StatisticId" => String.t() | atom(),
        "StatisticRecordedOn" => non_neg_integer()
      }
      
  """
  @type statistic_annotation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dev_endpoint_request() :: %{
        required("EndpointName") => String.t() | atom()
      }
      
  """
  @type get_dev_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_database_response() :: %{
        "Database" => database()
      }
      
  """
  @type get_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_entity_records_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ConnectionName") => String.t() | atom(),
        optional("ConnectionOptions") => map(),
        optional("DataStoreApiVersion") => String.t() | atom(),
        optional("FilterPredicate") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("OrderBy") => [String.t() | atom()],
        optional("SelectedFields") => list(String.t() | atom()),
        required("EntityName") => String.t() | atom(),
        required("Limit") => float()
      }
      
  """
  @type get_entity_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_response() :: %{
        "Table" => table()
      }
      
  """
  @type get_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_security_configuration_request() :: %{
        required("EncryptionConfiguration") => encryption_configuration(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_security_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_statistic_annotations_response() :: %{
        "Annotations" => list(statistic_annotation()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_data_quality_statistic_annotations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      find_matches_parameters() :: %{
        "AccuracyCostTradeoff" => float(),
        "EnforceProvidedLabels" => boolean(),
        "PrecisionRecallTradeoff" => float(),
        "PrimaryKeyColumnName" => String.t() | atom()
      }
      
  """
  @type find_matches_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ml_transform_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("GlueVersion") => String.t() | atom(),
        optional("MaxCapacity") => float(),
        optional("MaxRetries") => integer(),
        optional("NumberOfWorkers") => integer(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("TransformEncryption") => transform_encryption(),
        optional("WorkerType") => list(any()),
        required("InputRecordTables") => list(glue_table()),
        required("Name") => String.t() | atom(),
        required("Parameters") => transform_parameters(),
        required("Role") => String.t() | atom()
      }
      
  """
  @type create_ml_transform_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connection_types_response() :: %{
        "ConnectionTypes" => list(connection_type_brief()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_connection_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition_index_descriptor() :: %{
        "BackfillErrors" => list(backfill_error()),
        "IndexName" => String.t() | atom(),
        "IndexStatus" => list(any()),
        "Keys" => list(key_schema_element())
      }
      
  """
  @type partition_index_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dev_endpoint() :: %{
        "Arguments" => map(),
        "AvailabilityZone" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "EndpointName" => String.t() | atom(),
        "ExtraJarsS3Path" => String.t() | atom(),
        "ExtraPythonLibsS3Path" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "GlueVersion" => String.t() | atom(),
        "LastModifiedTimestamp" => non_neg_integer(),
        "LastUpdateStatus" => String.t() | atom(),
        "NumberOfNodes" => integer(),
        "NumberOfWorkers" => integer(),
        "PrivateAddress" => String.t() | atom(),
        "PublicAddress" => String.t() | atom(),
        "PublicKey" => String.t() | atom(),
        "PublicKeys" => list(String.t() | atom()),
        "RoleArn" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "Status" => String.t() | atom(),
        "SubnetId" => String.t() | atom(),
        "VpcId" => String.t() | atom(),
        "WorkerType" => list(any()),
        "YarnEndpointAddress" => String.t() | atom(),
        "ZeppelinRemoteSparkInterpreterPort" => integer()
      }
      
  """
  @type dev_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "CreateTime" => non_neg_integer(),
        "PolicyHash" => String.t() | atom(),
        "PolicyInJson" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }
      
  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduler_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type scheduler_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_filter_criteria() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "GlueVersion" => String.t() | atom(),
        "LastModifiedAfter" => non_neg_integer(),
        "LastModifiedBefore" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Schema" => list(schema_column()),
        "Status" => list(any()),
        "TransformType" => list(any())
      }
      
  """
  @type transform_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aggregate() :: %{
        "Aggs" => list(aggregate_operation()),
        "Groups" => list(list(String.t() | atom())()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type aggregate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_sort_criteria() :: %{
        "Column" => list(any()),
        "SortDirection" => list(any())
      }
      
  """
  @type transform_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition() :: %{
        "CatalogId" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "LastAccessTime" => non_neg_integer(),
        "LastAnalyzedTime" => non_neg_integer(),
        "Parameters" => map(),
        "StorageDescriptor" => storage_descriptor(),
        "TableName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type partition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ml_transforms_request() :: %{
        optional("Filter") => transform_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Sort") => transform_sort_criteria(),
        optional("Tags") => map()
      }
      
  """
  @type list_ml_transforms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_bookmark_request() :: %{
        optional("RunId") => String.t() | atom(),
        required("JobName") => String.t() | atom()
      }
      
  """
  @type get_job_bookmark_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_column_statistics_task_settings_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_column_statistics_task_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_jobs_request() :: %{
        required("JobNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_hudi_catalog_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "SchemaChangePolicy" => catalog_schema_change_policy(),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_hudi_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_ruleset_evaluation_run_response() :: %{
        "AdditionalDataSources" => map(),
        "AdditionalRunOptions" => data_quality_evaluation_run_additional_run_options(),
        "CompletedOn" => non_neg_integer(),
        "DataSource" => data_source(),
        "ErrorString" => String.t() | atom(),
        "ExecutionTime" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "NumberOfWorkers" => integer(),
        "ResultIds" => list(String.t() | atom()),
        "Role" => String.t() | atom(),
        "RulesetNames" => list(String.t() | atom()),
        "RunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any()),
        "Timeout" => integer()
      }
      
  """
  @type get_data_quality_ruleset_evaluation_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_schema_element() :: %{
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom()
      }
      
  """
  @type key_schema_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      last_crawl_info() :: %{
        "ErrorMessage" => String.t() | atom(),
        "LogGroup" => String.t() | atom(),
        "LogStream" => String.t() | atom(),
        "MessagePrefix" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type last_crawl_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_aggregated_metrics() :: %{
        "TotalRowsFailed" => float(),
        "TotalRowsPassed" => float(),
        "TotalRowsProcessed" => float(),
        "TotalRulesFailed" => float(),
        "TotalRulesPassed" => float(),
        "TotalRulesProcessed" => float()
      }
      
  """
  @type data_quality_aggregated_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_gen_node() :: %{
        "Args" => list(code_gen_node_arg()),
        "Id" => String.t() | atom(),
        "LineNumber" => integer(),
        "NodeType" => String.t() | atom()
      }
      
  """
  @type code_gen_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_optimizer_request() :: %{
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("TableOptimizerConfiguration") => table_optimizer_configuration(),
        required("Type") => list(any())
      }
      
  """
  @type create_table_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_triggers_request() :: %{
        required("TriggerNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_triggers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_custom_entity_type_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_custom_entity_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_schema_version_metadata_input() :: %{
        optional("MaxResults") => integer(),
        optional("MetadataList") => list(metadata_key_value_pair()),
        optional("NextToken") => String.t() | atom(),
        optional("SchemaId") => schema_id(),
        optional("SchemaVersionId") => String.t() | atom(),
        optional("SchemaVersionNumber") => schema_version_number()
      }
      
  """
  @type query_schema_version_metadata_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_integration_table_properties_request() :: %{
        optional("SourceTableConfig") => source_table_config(),
        optional("TargetTableConfig") => target_table_config(),
        required("ResourceArn") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_integration_table_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_model_result_response() :: %{
        "CompletedOn" => non_neg_integer(),
        "Model" => list(statistic_model_result())
      }
      
  """
  @type get_data_quality_model_result_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_crawlers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_crawlers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_jobs_response() :: %{
        "JobNames" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auth_configuration() :: %{
        "AuthenticationType" => property(),
        "BasicAuthenticationProperties" => map(),
        "CustomAuthenticationProperties" => map(),
        "OAuth2Properties" => map(),
        "SecretArn" => property()
      }
      
  """
  @type auth_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_quality_ruleset_response() :: %{
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Ruleset" => String.t() | atom()
      }
      
  """
  @type update_data_quality_ruleset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_job_request() :: %{
        optional("AllocatedCapacity") => integer(),
        optional("CodeGenConfigurationNodes") => map(),
        optional("Connections") => connections_list(),
        optional("DefaultArguments") => map(),
        optional("Description") => String.t() | atom(),
        optional("ExecutionClass") => list(any()),
        optional("ExecutionProperty") => execution_property(),
        optional("GlueVersion") => String.t() | atom(),
        optional("JobMode") => list(any()),
        optional("JobRunQueuingEnabled") => boolean(),
        optional("LogUri") => String.t() | atom(),
        optional("MaintenanceWindow") => String.t() | atom(),
        optional("MaxCapacity") => float(),
        optional("MaxRetries") => integer(),
        optional("NonOverridableArguments") => map(),
        optional("NotificationProperty") => notification_property(),
        optional("NumberOfWorkers") => integer(),
        optional("SecurityConfiguration") => String.t() | atom(),
        optional("SourceControlDetails") => source_control_details(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("WorkerType") => list(any()),
        required("Command") => job_command(),
        required("Name") => String.t() | atom(),
        required("Role") => String.t() | atom()
      }
      
  """
  @type create_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statement() :: %{
        "Code" => String.t() | atom(),
        "CompletedOn" => float(),
        "Id" => integer(),
        "Output" => statement_output(),
        "Progress" => float(),
        "StartedOn" => float(),
        "State" => list(any())
      }
      
  """
  @type statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_trigger_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type start_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_metric_values() :: %{
        "ActualValue" => float(),
        "ExpectedValue" => float(),
        "LowerLimit" => float(),
        "UpperLimit" => float()
      }
      
  """
  @type data_quality_metric_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_version_response() :: %{
        "TableVersion" => table_version()
      }
      
  """
  @type get_table_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      join_column() :: %{
        "From" => String.t() | atom(),
        "Keys" => list(list(String.t() | atom())())
      }
      
  """
  @type join_column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_request() :: %{
        optional("AdditionalPlanOptionsMap") => map(),
        optional("Language") => list(any()),
        optional("Location") => location(),
        optional("Sinks") => list(catalog_entry()),
        required("Mapping") => list(mapping_entry()),
        required("Source") => catalog_entry()
      }
      
  """
  @type get_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_grok_classifier_request() :: %{
        "Classification" => String.t() | atom(),
        "CustomPatterns" => String.t() | atom(),
        "GrokPattern" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type create_grok_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workflow_request() :: %{
        optional("DefaultRunProperties") => map(),
        optional("Description") => String.t() | atom(),
        optional("MaxConcurrentRuns") => integer(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ml_transform_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type ml_transform_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connections_response() :: %{
        "ConnectionList" => list(connection()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_connections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_schema_response() :: %{
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom()
      }
      
  """
  @type update_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      direct_kinesis_source() :: %{
        "DataPreviewOptions" => streaming_data_preview_options(),
        "DetectSchema" => boolean(),
        "Name" => String.t() | atom(),
        "StreamingOptions" => kinesis_streaming_source_options(),
        "WindowSize" => integer()
      }
      
  """
  @type direct_kinesis_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_run_properties() :: %{
        "ExportLabelsTaskRunProperties" => export_labels_task_run_properties(),
        "FindMatchesTaskRunProperties" => find_matches_task_run_properties(),
        "ImportLabelsTaskRunProperties" => import_labels_task_run_properties(),
        "LabelingSetGenerationTaskRunProperties" => labeling_set_generation_task_run_properties(),
        "TaskType" => list(any())
      }
      
  """
  @type task_run_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_run_response() :: %{
        "BlueprintRun" => blueprint_run()
      }
      
  """
  @type get_blueprint_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      microsoft_s_q_l_server_catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type microsoft_s_q_l_server_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_encryption() :: %{
        "MlUserDataEncryption" => ml_user_data_encryption(),
        "TaskRunSecurityConfigurationName" => String.t() | atom()
      }
      
  """
  @type transform_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_error() :: %{
        "ColumnName" => String.t() | atom(),
        "Error" => error_detail()
      }
      
  """
  @type column_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entity_response() :: %{
        "Fields" => list(field()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_entity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_gen_edge() :: %{
        "Source" => String.t() | atom(),
        "Target" => String.t() | atom(),
        "TargetParameter" => String.t() | atom()
      }
      
  """
  @type code_gen_edge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_schema_response() :: %{
        "Compatibility" => list(any()),
        "DataFormat" => list(any()),
        "Description" => String.t() | atom(),
        "LatestSchemaVersion" => float(),
        "NextSchemaVersion" => float(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaCheckpoint" => float(),
        "SchemaName" => String.t() | atom(),
        "SchemaStatus" => list(any()),
        "SchemaVersionId" => String.t() | atom(),
        "SchemaVersionStatus" => list(any()),
        "Tags" => map()
      }
      
  """
  @type create_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_integration_request() :: %{
        optional("DataFilter") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("IntegrationName") => String.t() | atom(),
        required("IntegrationIdentifier") => String.t() | atom()
      }
      
  """
  @type modify_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagsToRemove") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_resource_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type target_resource_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tables_request() :: %{
        optional("AttributesToGet") => list(list(any())()),
        optional("CatalogId") => String.t() | atom(),
        optional("Expression") => String.t() | atom(),
        optional("IncludeStatusDetails") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QueryAsOfTime") => non_neg_integer(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type get_tables_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_run_request() :: %{
        required("ColumnStatisticsTaskRunId") => String.t() | atom()
      }
      
  """
  @type get_column_statistics_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      postgre_s_q_l_catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type postgre_s_q_l_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_table_config() :: %{
        "PartitionSpec" => list(integration_partition()),
        "TargetTableName" => String.t() | atom(),
        "UnnestSpec" => list(any())
      }
      
  """
  @type target_table_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      status_details() :: %{
        "RequestedChange" => table(),
        "ViewValidations" => list(view_validation())
      }
      
  """
  @type status_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_ruleset_evaluation_runs_response() :: %{
        "NextToken" => String.t() | atom(),
        "Runs" => list(data_quality_ruleset_evaluation_run_description())
      }
      
  """
  @type list_data_quality_ruleset_evaluation_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      labeling_set_generation_task_run_properties() :: %{
        "OutputS3Path" => String.t() | atom()
      }
      
  """
  @type labeling_set_generation_task_run_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amazon_redshift_node_data() :: %{
        "AccessType" => String.t() | atom(),
        "Action" => String.t() | atom(),
        "AdvancedOptions" => list(amazon_redshift_advanced_option()),
        "CatalogDatabase" => option(),
        "CatalogRedshiftSchema" => String.t() | atom(),
        "CatalogRedshiftTable" => String.t() | atom(),
        "CatalogTable" => option(),
        "Connection" => option(),
        "CrawlerConnection" => String.t() | atom(),
        "IamRole" => option(),
        "MergeAction" => String.t() | atom(),
        "MergeClause" => String.t() | atom(),
        "MergeWhenMatched" => String.t() | atom(),
        "MergeWhenNotMatched" => String.t() | atom(),
        "PostAction" => String.t() | atom(),
        "PreAction" => String.t() | atom(),
        "SampleQuery" => String.t() | atom(),
        "Schema" => option(),
        "SelectedColumns" => list(option()),
        "SourceType" => String.t() | atom(),
        "StagingTable" => String.t() | atom(),
        "Table" => option(),
        "TablePrefix" => String.t() | atom(),
        "TableSchema" => list(option()),
        "TempDir" => String.t() | atom(),
        "Upsert" => boolean()
      }
      
  """
  @type amazon_redshift_node_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_reference() :: %{
        "SchemaId" => schema_id(),
        "SchemaVersionId" => String.t() | atom(),
        "SchemaVersionNumber" => float()
      }
      
  """
  @type schema_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_classifier_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_custom_entity_type_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_custom_entity_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_row_filter() :: %{
        "ColumnName" => String.t() | atom(),
        "RowFilterExpression" => String.t() | atom()
      }
      
  """
  @type column_row_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_custom_entity_types_response() :: %{
        "CustomEntityTypes" => list(custom_entity_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_custom_entity_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_column_statistics_task_run_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type stop_column_statistics_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_type_brief() :: %{
        "Capabilities" => capabilities(),
        "Categories" => list([String.t() | atom()]()),
        "ConnectionType" => list(any()),
        "ConnectionTypeVariants" => list(connection_type_variant()),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "LogoUrl" => String.t() | atom(),
        "Vendor" => String.t() | atom()
      }
      
  """
  @type connection_type_brief() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalog_import_status_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }
      
  """
  @type get_catalog_import_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_json_classifier_request() :: %{
        "JsonPath" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type update_json_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_session_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Id") => String.t() | atom()
      }
      
  """
  @type get_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_jobs_response() :: %{
        "Jobs" => list(job()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_versions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_table_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_put_data_quality_statistic_annotation_response() :: %{
        "FailedInclusionAnnotations" => list(annotation_error())
      }
      
  """
  @type batch_put_data_quality_statistic_annotation_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      scheduler_transitioning_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type scheduler_transitioning_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_runs_response() :: %{
        "BlueprintRuns" => list(blueprint_run()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_blueprint_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_request() :: %{
        optional("IncludeGraph") => boolean(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_task_settings_response() :: %{}
      
  """
  @type update_column_statistics_task_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_number_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_number_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      j_db_c_connector_options() :: %{
        "DataTypeMapping" => map(),
        "FilterPredicate" => String.t() | atom(),
        "JobBookmarkKeys" => list(String.t() | atom()),
        "JobBookmarkKeysSortOrder" => String.t() | atom(),
        "LowerBound" => float(),
        "NumPartitions" => float(),
        "PartitionColumn" => String.t() | atom(),
        "UpperBound" => float()
      }
      
  """
  @type j_db_c_connector_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_integration_resource_property_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_integration_resource_property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      segment() :: %{
        "SegmentNumber" => integer(),
        "TotalSegments" => integer()
      }
      
  """
  @type segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      select_fields() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Paths" => list(list(String.t() | atom())())
      }
      
  """
  @type select_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_column_statistics_for_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnName") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_column_statistics_for_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_column_statistics_task_run_response() :: %{}
      
  """
  @type stop_column_statistics_task_run_response() :: %{}

  @typedoc """

  ## Example:
      
      amazon_redshift_source() :: %{
        "Data" => amazon_redshift_node_data(),
        "Name" => String.t() | atom()
      }
      
  """
  @type amazon_redshift_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_connection_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ConnectionNameList") => list(String.t() | atom())
      }
      
  """
  @type batch_delete_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_ruleset_evaluation_run_filter() :: %{
        "DataSource" => data_source(),
        "StartedAfter" => non_neg_integer(),
        "StartedBefore" => non_neg_integer()
      }
      
  """
  @type data_quality_ruleset_evaluation_run_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_workflows_response() :: %{
        "MissingWorkflows" => list(String.t() | atom()),
        "Workflows" => list(workflow())
      }
      
  """
  @type batch_get_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_by_definition_input() :: %{
        required("SchemaDefinition") => String.t() | atom(),
        required("SchemaId") => schema_id()
      }
      
  """
  @type get_schema_by_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_request() :: %{
        optional("IncludeBlueprint") => boolean(),
        optional("IncludeParameterSpec") => boolean(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_databases_response() :: %{
        "DatabaseList" => list(database()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_databases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_statistic_annotations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProfileId") => String.t() | atom(),
        optional("StatisticId") => String.t() | atom(),
        optional("TimestampFilter") => timestamp_filter()
      }
      
  """
  @type list_data_quality_statistic_annotations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalogs_request() :: %{
        optional("IncludeRoot") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ParentCatalogId") => String.t() | atom(),
        optional("Recursive") => boolean()
      }
      
  """
  @type get_catalogs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter_value() :: %{
        "Type" => list(any()),
        "Value" => list(String.t() | atom())
      }
      
  """
  @type filter_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_catalog_to_glue_response() :: %{}
      
  """
  @type import_catalog_to_glue_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_get_workflows_request() :: %{
        optional("IncludeGraph") => boolean(),
        required("Names") => list(String.t() | atom())
      }
      
  """
  @type batch_get_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_trigger_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type stop_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_version_number() :: %{
        "LatestVersion" => boolean(),
        "VersionNumber" => float()
      }
      
  """
  @type schema_version_number() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_table_metadata_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("ParentResourceArn") => String.t() | atom(),
        optional("Permissions") => list(list(any())()),
        optional("QuerySessionContext") => query_session_context(),
        optional("Region") => String.t() | atom(),
        optional("RootResourceArn") => String.t() | atom(),
        optional("SupportedDialect") => supported_dialect(),
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("SupportedPermissionTypes") => list(list(any())())
      }
      
  """
  @type get_unfiltered_table_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_rule_recommendation_runs_response() :: %{
        "NextToken" => String.t() | atom(),
        "Runs" => list(data_quality_rule_recommendation_run_description())
      }
      
  """
  @type list_data_quality_rule_recommendation_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_column_statistics_task_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_usage_profile_response() :: %{
        "Configuration" => profile_configuration(),
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastModifiedOn" => non_neg_integer(),
        "Name" => String.t() | atom()
      }
      
  """
  @type get_usage_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_defined_function_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("FunctionName") => String.t() | atom()
      }
      
  """
  @type delete_user_defined_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      o_auth2_client_application() :: %{
        "AWSManagedClientApplicationReference" => String.t() | atom(),
        "UserManagedClientApplicationClientId" => String.t() | atom()
      }
      
  """
  @type o_auth2_client_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_schema_version_response() :: %{
        "SchemaVersionId" => String.t() | atom(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }
      
  """
  @type register_schema_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_table_properties_response() :: %{}
      
  """
  @type create_integration_table_properties_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_crawler_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type stop_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_custom_entity_type_request() :: %{
        optional("ContextWords") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("RegexString") => String.t() | atom()
      }
      
  """
  @type create_custom_entity_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_usage_profile_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_usage_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_partition_metadata_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("QuerySessionContext") => query_session_context(),
        optional("Region") => String.t() | atom(),
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("SupportedPermissionTypes") => list(list(any())()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_unfiltered_partition_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_update() :: %{
        "AllocatedCapacity" => integer(),
        "CodeGenConfigurationNodes" => map(),
        "Command" => job_command(),
        "Connections" => connections_list(),
        "DefaultArguments" => map(),
        "Description" => String.t() | atom(),
        "ExecutionClass" => list(any()),
        "ExecutionProperty" => execution_property(),
        "GlueVersion" => String.t() | atom(),
        "JobMode" => list(any()),
        "JobRunQueuingEnabled" => boolean(),
        "LogUri" => String.t() | atom(),
        "MaintenanceWindow" => String.t() | atom(),
        "MaxCapacity" => float(),
        "MaxRetries" => integer(),
        "NonOverridableArguments" => map(),
        "NotificationProperty" => notification_property(),
        "NumberOfWorkers" => integer(),
        "Role" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "SourceControlDetails" => source_control_details(),
        "Timeout" => integer(),
        "WorkerType" => list(any())
      }
      
  """
  @type job_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      find_matches_metrics() :: %{
        "AreaUnderPRCurve" => float(),
        "ColumnImportances" => list(column_importance()),
        "ConfusionMatrix" => confusion_matrix(),
        "F1" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type find_matches_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_json_source() :: %{
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "CompressionType" => list(any()),
        "Exclusions" => list(String.t() | atom()),
        "GroupFiles" => String.t() | atom(),
        "GroupSize" => String.t() | atom(),
        "JsonPath" => String.t() | atom(),
        "MaxBand" => integer(),
        "MaxFilesInBand" => integer(),
        "Multiline" => boolean(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom()),
        "Recurse" => boolean()
      }
      
  """
  @type s3_json_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_classifier_response() :: %{
        "Classifier" => classifier()
      }
      
  """
  @type get_classifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_usage_profile_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type update_usage_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_conflict_operation_fault() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type integration_conflict_operation_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_session_request() :: %{
        optional("Connections") => connections_list(),
        optional("DefaultArguments") => map(),
        optional("Description") => String.t() | atom(),
        optional("GlueVersion") => String.t() | atom(),
        optional("IdleTimeout") => integer(),
        optional("MaxCapacity") => float(),
        optional("NumberOfWorkers") => integer(),
        optional("RequestOrigin") => String.t() | atom(),
        optional("SecurityConfiguration") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("WorkerType") => list(any()),
        required("Command") => session_command(),
        required("Id") => String.t() | atom(),
        required("Role") => String.t() | atom()
      }
      
  """
  @type create_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_integration_table_properties_response() :: %{}
      
  """
  @type update_integration_table_properties_response() :: %{}

  @typedoc """

  ## Example:
      
      long_column_statistics_data() :: %{
        "MaximumValue" => float(),
        "MinimumValue" => float(),
        "NumberOfDistinctValues" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type long_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dev_endpoint_response() :: %{
        "Arguments" => map(),
        "AvailabilityZone" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "EndpointName" => String.t() | atom(),
        "ExtraJarsS3Path" => String.t() | atom(),
        "ExtraPythonLibsS3Path" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "GlueVersion" => String.t() | atom(),
        "NumberOfNodes" => integer(),
        "NumberOfWorkers" => integer(),
        "RoleArn" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "Status" => String.t() | atom(),
        "SubnetId" => String.t() | atom(),
        "VpcId" => String.t() | atom(),
        "WorkerType" => list(any()),
        "YarnEndpointAddress" => String.t() | atom(),
        "ZeppelinRemoteSparkInterpreterPort" => integer()
      }
      
  """
  @type create_dev_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_custom_entity_types_response() :: %{
        "CustomEntityTypes" => list(custom_entity_type()),
        "CustomEntityTypesNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_custom_entity_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_lake_principal() :: %{
        "DataLakePrincipalIdentifier" => String.t() | atom()
      }
      
  """
  @type data_lake_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_statements_response() :: %{
        "NextToken" => String.t() | atom(),
        "Statements" => list(statement())
      }
      
  """
  @type list_statements_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_error() :: %{
        "ErrorDetail" => error_detail(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type table_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ml_user_data_encryption() :: %{
        "KmsKeyId" => String.t() | atom(),
        "MlUserDataEncryptionMode" => list(any())
      }
      
  """
  @type ml_user_data_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_defined_function_response() :: %{}
      
  """
  @type delete_user_defined_function_response() :: %{}

  @typedoc """

  ## Example:
      
      schema_column() :: %{
        "DataType" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type schema_column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      binary_column_statistics_data() :: %{
        "AverageLength" => float(),
        "MaximumLength" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type binary_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partition_indexes_response() :: %{
        "NextToken" => String.t() | atom(),
        "PartitionIndexDescriptorList" => list(partition_index_descriptor())
      }
      
  """
  @type get_partition_indexes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_attempt() :: %{
        "ColumnStatisticsTaskRunId" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ExecutionTimestamp" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type execution_attempt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_defined_function_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("FunctionInput") => user_defined_function_input()
      }
      
  """
  @type create_user_defined_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upsert_redshift_target_options() :: %{
        "ConnectionName" => String.t() | atom(),
        "TableLocation" => String.t() | atom(),
        "UpsertKeys" => list(String.t() | atom())
      }
      
  """
  @type upsert_redshift_target_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      allowed_value() :: %{
        "Description" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type allowed_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type delete_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_hudi_source() :: %{
        "AdditionalHudiOptions" => map(),
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom())
      }
      
  """
  @type s3_hudi_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_column_statistics_task_run_schedule_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type stop_column_statistics_task_run_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_workflow_run_properties_response() :: %{}
      
  """
  @type put_workflow_run_properties_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_iceberg_direct_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NumberTargetPartitions" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_iceberg_direct_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      jdbc_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "EnableAdditionalMetadata" => list(list(any())()),
        "Exclusions" => list(String.t() | atom()),
        "Path" => String.t() | atom()
      }
      
  """
  @type jdbc_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_blueprints_request() :: %{
        optional("IncludeBlueprint") => boolean(),
        optional("IncludeParameterSpec") => boolean(),
        required("Names") => list(String.t() | atom())
      }
      
  """
  @type batch_get_blueprints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lineage_configuration() :: %{
        "CrawlerLineageSettings" => list(any())
      }
      
  """
  @type lineage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fill_missing_values() :: %{
        "FilledPath" => String.t() | atom(),
        "ImputedPath" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type fill_missing_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_for_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnNames") => list(String.t() | atom()),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_column_statistics_for_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_catalog_request() :: %{
        required("CatalogId") => String.t() | atom()
      }
      
  """
  @type delete_catalog_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trigger_request() :: %{
        required("Name") => String.t() | atom(),
        required("TriggerUpdate") => trigger_update()
      }
      
  """
  @type update_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_registries_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_registries_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sessions_response() :: %{
        "Ids" => list(String.t() | atom()),
        "NextToken" => String.t() | atom(),
        "Sessions" => list(session())
      }
      
  """
  @type list_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_usage_profile_response() :: %{}
      
  """
  @type delete_usage_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      get_partition_response() :: %{
        "Partition" => partition()
      }
      
  """
  @type get_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_custom_entity_types_request() :: %{
        required("Names") => list(String.t() | atom())
      }
      
  """
  @type batch_get_custom_entity_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_defined_function_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("FunctionName") => String.t() | atom()
      }
      
  """
  @type get_user_defined_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streaming_source_options() :: %{
        "AddIdleTimeBetweenReads" => boolean(),
        "AddRecordTimestamp" => String.t() | atom(),
        "AvoidEmptyBatches" => boolean(),
        "Classification" => String.t() | atom(),
        "Delimiter" => String.t() | atom(),
        "DescribeShardInterval" => float(),
        "EmitConsumerLagMetrics" => String.t() | atom(),
        "EndpointUrl" => String.t() | atom(),
        "FanoutConsumerARN" => String.t() | atom(),
        "IdleTimeBetweenReadsInMs" => float(),
        "MaxFetchRecordsPerShard" => float(),
        "MaxFetchTimeInMs" => float(),
        "MaxRecordPerRead" => float(),
        "MaxRetryIntervalMs" => float(),
        "NumRetries" => integer(),
        "RetryIntervalMs" => float(),
        "RoleArn" => String.t() | atom(),
        "RoleSessionName" => String.t() | atom(),
        "StartingPosition" => list(any()),
        "StartingTimestamp" => non_neg_integer(),
        "StreamArn" => String.t() | atom(),
        "StreamName" => String.t() | atom()
      }
      
  """
  @type kinesis_streaming_source_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redshift_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "RedshiftTmpDir" => String.t() | atom(),
        "Table" => String.t() | atom(),
        "TmpDirIAMRole" => String.t() | atom(),
        "UpsertRedshiftOptions" => upsert_redshift_target_options()
      }
      
  """
  @type redshift_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_hudi_source() :: %{
        "AdditionalHudiOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type catalog_hudi_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_task_not_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type column_statistics_task_not_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_quota_exceeded_fault() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type integration_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_object() :: %{
        "AllowedValues" => list(String.t() | atom()),
        "DefaultValue" => String.t() | atom(),
        "MaxValue" => String.t() | atom(),
        "MinValue" => String.t() | atom()
      }
      
  """
  @type configuration_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition_value_list() :: %{
        "Values" => list(String.t() | atom())
      }
      
  """
  @type partition_value_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_crawler_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backfill_error() :: %{
        "Code" => list(any()),
        "Partitions" => list(partition_value_list())
      }
      
  """
  @type backfill_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      governed_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "SchemaChangePolicy" => catalog_schema_change_policy(),
        "Table" => String.t() | atom()
      }
      
  """
  @type governed_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_column_statistics_task_runs_response() :: %{
        "ColumnStatisticsTaskRunIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_column_statistics_task_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_triggers_request() :: %{
        optional("DependentJobName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_triggers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_integration_request() :: %{
        required("IntegrationIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retention_configuration() :: %{
        "icebergConfiguration" => iceberg_retention_configuration()
      }
      
  """
  @type retention_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow_run() :: %{
        "CompletedOn" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "Graph" => workflow_graph(),
        "Name" => String.t() | atom(),
        "PreviousRunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "StartingEventBatchCondition" => starting_event_batch_condition(),
        "Statistics" => workflow_run_statistics(),
        "Status" => list(any()),
        "WorkflowRunId" => String.t() | atom(),
        "WorkflowRunProperties" => map()
      }
      
  """
  @type workflow_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_stop_job_run_request() :: %{
        required("JobName") => String.t() | atom(),
        required("JobRunIds") => list(String.t() | atom())
      }
      
  """
  @type batch_stop_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_connection_response() :: %{
        "Errors" => map(),
        "Succeeded" => list(String.t() | atom())
      }
      
  """
  @type batch_delete_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_rule_result() :: %{
        "Description" => String.t() | atom(),
        "EvaluatedMetrics" => map(),
        "EvaluatedRule" => String.t() | atom(),
        "EvaluationMessage" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Result" => list(any()),
        "RuleMetrics" => map()
      }
      
  """
  @type data_quality_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_registry_input() :: %{
        required("Description") => String.t() | atom(),
        required("RegistryId") => registry_id()
      }
      
  """
  @type update_registry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_put_data_quality_statistic_annotation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("InclusionAnnotations") => list(datapoint_inclusion_annotation())
      }
      
  """
  @type batch_put_data_quality_statistic_annotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_job_run_response() :: %{
        "JobRunId" => String.t() | atom()
      }
      
  """
  @type start_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_ml_transform_request() :: %{
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type delete_ml_transform_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_blueprint_run_response() :: %{
        "RunId" => String.t() | atom()
      }
      
  """
  @type start_blueprint_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_schema_version_validity_response() :: %{
        "Error" => String.t() | atom(),
        "Valid" => boolean()
      }
      
  """
  @type check_schema_version_validity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_data_catalog_encryption_settings_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DataCatalogEncryptionSettings") => data_catalog_encryption_settings()
      }
      
  """
  @type put_data_catalog_encryption_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_schema_input() :: %{
        optional("Compatibility") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("RegistryId") => registry_id(),
        optional("SchemaDefinition") => String.t() | atom(),
        optional("Tags") => map(),
        required("DataFormat") => list(any()),
        required("SchemaName") => String.t() | atom()
      }
      
  """
  @type create_schema_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_iceberg_table_input() :: %{
        "Updates" => list(iceberg_table_update())
      }
      
  """
  @type update_iceberg_table_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dev_endpoint_response() :: %{
        "DevEndpoint" => dev_endpoint()
      }
      
  """
  @type get_dev_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_data_quality_profile_annotation_response() :: %{}
      
  """
  @type put_data_quality_profile_annotation_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_column_statistics_for_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnName") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_column_statistics_for_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trigger_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_session_response() :: %{
        "Id" => String.t() | atom()
      }
      
  """
  @type delete_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dataflow_graph_request() :: %{
        optional("PythonScript") => String.t() | atom()
      }
      
  """
  @type get_dataflow_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sql_alias() :: %{
        "Alias" => String.t() | atom(),
        "From" => String.t() | atom()
      }
      
  """
  @type sql_alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_rule_recommendation_run_response() :: %{
        "CompletedOn" => non_neg_integer(),
        "CreatedRulesetName" => String.t() | atom(),
        "DataQualitySecurityConfiguration" => String.t() | atom(),
        "DataSource" => data_source(),
        "ErrorString" => String.t() | atom(),
        "ExecutionTime" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "NumberOfWorkers" => integer(),
        "RecommendedRuleset" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "RunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any()),
        "Timeout" => integer()
      }
      
  """
  @type get_data_quality_rule_recommendation_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_catalog_iceberg_source() :: %{
        "AdditionalIcebergOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_catalog_iceberg_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_type_response() :: %{
        "AthenaConnectionProperties" => map(),
        "AuthenticationConfiguration" => auth_configuration(),
        "Capabilities" => capabilities(),
        "ComputeEnvironmentConfigurations" => map(),
        "ConnectionOptions" => map(),
        "ConnectionProperties" => map(),
        "ConnectionType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "PhysicalConnectionRequirements" => map(),
        "PythonConnectionProperties" => map(),
        "SparkConnectionProperties" => map()
      }
      
  """
  @type describe_connection_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_target() :: %{
        "Path" => String.t() | atom(),
        "scanAll" => boolean(),
        "scanRate" => float()
      }
      
  """
  @type dynamo_db_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_delta_direct_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NumberTargetPartitions" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_delta_direct_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_encryption() :: %{
        "KmsKeyArn" => String.t() | atom(),
        "S3EncryptionMode" => list(any())
      }
      
  """
  @type s3_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_x_ml_classifier_request() :: %{
        "Classification" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RowTag" => String.t() | atom()
      }
      
  """
  @type create_x_ml_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_orphan_file_deletion_metrics() :: %{
        "DpuHours" => float(),
        "JobDurationInHour" => float(),
        "NumberOfDpus" => integer(),
        "NumberOfOrphanFilesDeleted" => float()
      }
      
  """
  @type iceberg_orphan_file_deletion_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_properties_response() :: %{
        "RunProperties" => map()
      }
      
  """
  @type get_workflow_run_properties_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      orphan_file_deletion_metrics() :: %{
        "IcebergMetrics" => iceberg_orphan_file_deletion_metrics()
      }
      
  """
  @type orphan_file_deletion_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statistic_model_result() :: %{
        "ActualValue" => float(),
        "Date" => non_neg_integer(),
        "InclusionAnnotation" => list(any()),
        "LowerBound" => float(),
        "PredictedValue" => float(),
        "UpperBound" => float()
      }
      
  """
  @type statistic_model_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_job_request() :: %{
        required("JobName") => String.t() | atom(),
        required("JobUpdate") => job_update()
      }
      
  """
  @type update_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionsToGet") => list(partition_value_list()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type batch_get_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_partition_response() :: %{
        "Partitions" => list(partition()),
        "UnprocessedKeys" => list(partition_value_list())
      }
      
  """
  @type batch_get_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_version_error_item() :: %{
        "ErrorDetails" => error_details(),
        "VersionNumber" => float()
      }
      
  """
  @type schema_version_error_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_crawler_schedule_response() :: %{}
      
  """
  @type start_crawler_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      iceberg_retention_metrics() :: %{
        "DpuHours" => float(),
        "JobDurationInHour" => float(),
        "NumberOfDataFilesDeleted" => float(),
        "NumberOfDpus" => integer(),
        "NumberOfManifestFilesDeleted" => float(),
        "NumberOfManifestListsDeleted" => float()
      }
      
  """
  @type iceberg_retention_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_mapping_response() :: %{
        "Mapping" => list(mapping_entry())
      }
      
  """
  @type get_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dataflow_graph_response() :: %{
        "DagEdges" => list(code_gen_edge()),
        "DagNodes" => list(code_gen_node())
      }
      
  """
  @type get_dataflow_graph_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_response() :: %{}
      
  """
  @type create_table_response() :: %{}

  @typedoc """

  ## Example:
      
      metric_based_observation() :: %{
        "MetricName" => String.t() | atom(),
        "MetricValues" => data_quality_metric_values(),
        "NewRules" => list(String.t() | atom()),
        "StatisticId" => String.t() | atom()
      }
      
  """
  @type metric_based_observation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_source_control_from_job_response() :: %{
        "JobName" => String.t() | atom()
      }
      
  """
  @type update_source_control_from_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ml_transforms_request() :: %{
        optional("Filter") => transform_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Sort") => transform_sort_criteria()
      }
      
  """
  @type get_ml_transforms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "AthenaProperties" => map(),
        "AuthenticationConfiguration" => authentication_configuration(),
        "CompatibleComputeEnvironments" => list(list(any())()),
        "ConnectionProperties" => map(),
        "ConnectionSchemaVersion" => integer(),
        "ConnectionType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastConnectionValidationTime" => non_neg_integer(),
        "LastUpdatedBy" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "MatchCriteria" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PhysicalConnectionRequirements" => physical_connection_requirements(),
        "PythonProperties" => map(),
        "SparkProperties" => map(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }
      
  """
  @type connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_optimizer_response() :: %{}
      
  """
  @type update_table_optimizer_response() :: %{}

  @typedoc """

  ## Example:
      
      get_schema_versions_diff_input() :: %{
        required("FirstSchemaVersionNumber") => schema_version_number(),
        required("SchemaDiffType") => list(any()),
        required("SchemaId") => schema_id(),
        required("SecondSchemaVersionNumber") => schema_version_number()
      }
      
  """
  @type get_schema_versions_diff_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connections_filter() :: %{
        "ConnectionSchemaVersion" => integer(),
        "ConnectionType" => list(any()),
        "MatchCriteria" => list(String.t() | atom())
      }
      
  """
  @type get_connections_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "DlqEventQueueArn" => String.t() | atom(),
        "EventQueueArn" => String.t() | atom(),
        "Exclusions" => list(String.t() | atom()),
        "Path" => String.t() | atom(),
        "SampleSize" => integer()
      }
      
  """
  @type s3_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_import_labels_task_run_request() :: %{
        optional("ReplaceAllLabels") => boolean(),
        required("InputS3Path") => String.t() | atom(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type start_import_labels_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_import_status() :: %{
        "ImportCompleted" => boolean(),
        "ImportTime" => non_neg_integer(),
        "ImportedBy" => String.t() | atom()
      }
      
  """
  @type catalog_import_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_schema_input() :: %{
        optional("Compatibility") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("SchemaVersionNumber") => schema_version_number(),
        required("SchemaId") => schema_id()
      }
      
  """
  @type update_schema_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawls_filter() :: %{
        "FieldName" => list(any()),
        "FieldValue" => String.t() | atom(),
        "FilterOperator" => list(any())
      }
      
  """
  @type crawls_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_quality_ruleset_response() :: %{}
      
  """
  @type delete_data_quality_ruleset_response() :: %{}

  @typedoc """

  ## Example:
      
      workflow_graph() :: %{
        "Edges" => list(edge()),
        "Nodes" => list(node())
      }
      
  """
  @type workflow_graph() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_integration_resource_property_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "SourceProcessingProperties" => source_processing_properties(),
        "TargetProcessingProperties" => target_processing_properties()
      }
      
  """
  @type get_integration_resource_property_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_quality_rule_recommendation_run_response() :: %{}
      
  """
  @type cancel_data_quality_rule_recommendation_run_response() :: %{}

  @typedoc """

  ## Example:
      
      list_triggers_request() :: %{
        optional("DependentJobName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_triggers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_request() :: %{
        optional("RunProperties") => map(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type start_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_e_l_t_connector_source() :: %{
        "ConnectionOptions" => d_db_e_l_t_connection_options(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type dynamo_db_e_l_t_connector_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_crawler_schedule_response() :: %{}
      
  """
  @type stop_crawler_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_defined_function_response() :: %{}
      
  """
  @type update_user_defined_function_response() :: %{}

  @typedoc """

  ## Example:
      
      federated_table() :: %{
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "DatabaseIdentifier" => String.t() | atom(),
        "Identifier" => String.t() | atom()
      }
      
  """
  @type federated_table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_for_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnNames") => list(String.t() | atom()),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_column_statistics_for_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_dev_endpoints_request() :: %{
        required("DevEndpointNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_dev_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type crawler_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      grok_classifier() :: %{
        "Classification" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "CustomPatterns" => String.t() | atom(),
        "GrokPattern" => String.t() | atom(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Version" => float()
      }
      
  """
  @type grok_classifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_trigger_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type stop_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      join() :: %{
        "Columns" => list(join_column()),
        "Inputs" => list(String.t() | atom()),
        "JoinType" => list(any()),
        "Name" => String.t() | atom()
      }
      
  """
  @type join() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metadata_info() :: %{
        "CreatedTime" => String.t() | atom(),
        "MetadataValue" => String.t() | atom(),
        "OtherMetadataValueList" => list(other_metadata_value_list_item())
      }
      
  """
  @type metadata_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recipe_action() :: %{
        "Operation" => String.t() | atom(),
        "Parameters" => map()
      }
      
  """
  @type recipe_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      find_matches_task_run_properties() :: %{
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom()
      }
      
  """
  @type find_matches_task_run_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_runs_response() :: %{
        "JobRuns" => list(job_run()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_job_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      governed_catalog_source() :: %{
        "AdditionalOptions" => s3_source_additional_options(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PartitionPredicate" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type governed_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_ruleset_list_details() :: %{
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastModifiedOn" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "RecommendationRunId" => String.t() | atom(),
        "RuleCount" => integer(),
        "TargetTable" => data_quality_target_table()
      }
      
  """
  @type data_quality_ruleset_list_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_update_partition_request_entry() :: %{
        "PartitionInput" => partition_input(),
        "PartitionValueList" => list(String.t() | atom())
      }
      
  """
  @type batch_update_partition_request_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_control_details() :: %{
        "AuthStrategy" => list(any()),
        "AuthToken" => String.t() | atom(),
        "Branch" => String.t() | atom(),
        "Folder" => String.t() | atom(),
        "LastCommitId" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "Provider" => list(any()),
        "Repository" => String.t() | atom()
      }
      
  """
  @type source_control_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_grok_classifier_request() :: %{
        "Classification" => String.t() | atom(),
        "CustomPatterns" => String.t() | atom(),
        "GrokPattern" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type update_grok_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      no_schedule_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type no_schedule_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_hyper_direct_target() :: %{
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_hyper_direct_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_optimizer() :: %{
        "configuration" => table_optimizer_configuration(),
        "lastRun" => table_optimizer_run(),
        "type" => list(any())
      }
      
  """
  @type table_optimizer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spark_connector_source() :: %{
        "AdditionalOptions" => map(),
        "ConnectionName" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "ConnectorName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type spark_connector_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_quality_ruleset_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_data_quality_ruleset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_schema_response() :: %{
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type delete_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_version_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("VersionId") => String.t() | atom()
      }
      
  """
  @type delete_table_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      d_db_e_l_t_connection_options() :: %{
        "DynamodbExport" => list(any()),
        "DynamodbS3Bucket" => String.t() | atom(),
        "DynamodbS3BucketOwner" => String.t() | atom(),
        "DynamodbS3Prefix" => String.t() | atom(),
        "DynamodbStsRoleArn" => String.t() | atom(),
        "DynamodbTableArn" => String.t() | atom(),
        "DynamodbUnnestDDBJson" => boolean()
      }
      
  """
  @type d_db_e_l_t_connection_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recipe() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "RecipeReference" => recipe_reference(),
        "RecipeSteps" => list(recipe_step())
      }
      
  """
  @type recipe() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_response() :: %{
        "Blueprint" => blueprint()
      }
      
  """
  @type get_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("BlueprintName") => String.t() | atom()
      }
      
  """
  @type get_blueprint_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      route() :: %{
        "GroupFiltersList" => list(group_filters()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_entry() :: %{
        "DatabaseName" => String.t() | atom(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type catalog_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      my_s_q_l_catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type my_s_q_l_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow() :: %{
        "BlueprintDetails" => blueprint_details(),
        "CreatedOn" => non_neg_integer(),
        "DefaultRunProperties" => map(),
        "Description" => String.t() | atom(),
        "Graph" => workflow_graph(),
        "LastModifiedOn" => non_neg_integer(),
        "LastRun" => workflow_run(),
        "MaxConcurrentRuns" => integer(),
        "Name" => String.t() | atom()
      }
      
  """
  @type workflow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ml_task_runs_request() :: %{
        optional("Filter") => task_run_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Sort") => task_run_sort_criteria(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type get_ml_task_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      view_validation() :: %{
        "Dialect" => list(any()),
        "DialectVersion" => String.t() | atom(),
        "Error" => error_detail(),
        "State" => list(any()),
        "UpdateTime" => non_neg_integer(),
        "ViewValidationText" => String.t() | atom()
      }
      
  """
  @type view_validation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      field() :: %{
        "CustomProperties" => map(),
        "Description" => String.t() | atom(),
        "FieldName" => String.t() | atom(),
        "FieldType" => list(any()),
        "IsCreateable" => boolean(),
        "IsDefaultOnCreate" => boolean(),
        "IsFilterable" => boolean(),
        "IsNullable" => boolean(),
        "IsPartitionable" => boolean(),
        "IsPrimaryKey" => boolean(),
        "IsRetrievable" => boolean(),
        "IsUpdateable" => boolean(),
        "IsUpsertable" => boolean(),
        "Label" => String.t() | atom(),
        "NativeDataType" => [String.t() | atom()],
        "ParentField" => [String.t() | atom()],
        "SupportedFilterOperators" => list(list(any())()),
        "SupportedValues" => list([String.t() | atom()]())
      }
      
  """
  @type field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      illegal_workflow_state_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type illegal_workflow_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datapoint_inclusion_annotation() :: %{
        "InclusionAnnotation" => list(any()),
        "ProfileId" => String.t() | atom(),
        "StatisticId" => String.t() | atom()
      }
      
  """
  @type datapoint_inclusion_annotation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sort_criterion() :: %{
        "FieldName" => String.t() | atom(),
        "Sort" => list(any())
      }
      
  """
  @type sort_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_studio_schema_column() :: %{
        "GlueStudioType" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom()
      }
      
  """
  @type glue_studio_schema_column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_crawler_request() :: %{
        optional("Classifiers") => list(String.t() | atom()),
        optional("Configuration") => String.t() | atom(),
        optional("CrawlerSecurityConfiguration") => String.t() | atom(),
        optional("DatabaseName") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LakeFormationConfiguration") => lake_formation_configuration(),
        optional("LineageConfiguration") => lineage_configuration(),
        optional("RecrawlPolicy") => recrawl_policy(),
        optional("Role") => String.t() | atom(),
        optional("Schedule") => String.t() | atom(),
        optional("SchemaChangePolicy") => schema_change_policy(),
        optional("TablePrefix") => String.t() | atom(),
        optional("Targets") => crawler_targets(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_classifier_request() :: %{
        optional("CsvClassifier") => create_csv_classifier_request(),
        optional("GrokClassifier") => create_grok_classifier_request(),
        optional("JsonClassifier") => create_json_classifier_request(),
        optional("XMLClassifier") => create_x_ml_classifier_request()
      }
      
  """
  @type create_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_security_configuration_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_security_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tags_response() :: %{
        "Tags" => map()
      }
      
  """
  @type get_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_iceberg_source() :: %{
        "AdditionalIcebergOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type catalog_iceberg_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_rule_recommendation_run_request() :: %{
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_data_quality_rule_recommendation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      direct_schema_change_policy() :: %{
        "Database" => String.t() | atom(),
        "EnableUpdateCatalog" => boolean(),
        "Table" => String.t() | atom(),
        "UpdateBehavior" => list(any())
      }
      
  """
  @type direct_schema_change_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_crawler_request() :: %{
        optional("Classifiers") => list(String.t() | atom()),
        optional("Configuration") => String.t() | atom(),
        optional("CrawlerSecurityConfiguration") => String.t() | atom(),
        optional("DatabaseName") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LakeFormationConfiguration") => lake_formation_configuration(),
        optional("LineageConfiguration") => lineage_configuration(),
        optional("RecrawlPolicy") => recrawl_policy(),
        optional("Schedule") => String.t() | atom(),
        optional("SchemaChangePolicy") => schema_change_policy(),
        optional("TablePrefix") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("Role") => String.t() | atom(),
        required("Targets") => crawler_targets()
      }
      
  """
  @type create_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_workflow_run_properties_request() :: %{
        required("Name") => String.t() | atom(),
        required("RunId") => String.t() | atom(),
        required("RunProperties") => map()
      }
      
  """
  @type put_workflow_run_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_schema_versions_response() :: %{
        "SchemaVersionErrors" => list(schema_version_error_item())
      }
      
  """
  @type delete_schema_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      direct_kafka_source() :: %{
        "DataPreviewOptions" => streaming_data_preview_options(),
        "DetectSchema" => boolean(),
        "Name" => String.t() | atom(),
        "StreamingOptions" => kafka_streaming_source_options(),
        "WindowSize" => integer()
      }
      
  """
  @type direct_kafka_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      select_from_collection() :: %{
        "Index" => integer(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type select_from_collection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_partition_response() :: %{}
      
  """
  @type delete_partition_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_glue_parquet_target() :: %{
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NumberTargetPartitions" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_glue_parquet_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "FromFederationSource" => boolean(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_run_response() :: %{
        "ColumnStatisticsTaskRun" => column_statistics_task_run()
      }
      
  """
  @type get_column_statistics_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_integration_table_properties_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_integration_table_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_descriptor() :: %{
        "AdditionalLocations" => list(String.t() | atom()),
        "BucketColumns" => list(String.t() | atom()),
        "Columns" => list(column()),
        "Compressed" => boolean(),
        "InputFormat" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "NumberOfBuckets" => integer(),
        "OutputFormat" => String.t() | atom(),
        "Parameters" => map(),
        "SchemaReference" => schema_reference(),
        "SerdeInfo" => ser_de_info(),
        "SkewedInfo" => skewed_info(),
        "SortColumns" => list(order()),
        "StoredAsSubDirectories" => boolean()
      }
      
  """
  @type storage_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compaction_metrics() :: %{
        "IcebergMetrics" => iceberg_compaction_metrics()
      }
      
  """
  @type compaction_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_integration_table_properties_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "SourceTableConfig" => source_table_config(),
        "TableName" => String.t() | atom(),
        "TargetTableConfig" => target_table_config()
      }
      
  """
  @type get_integration_table_properties_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_partition() :: %{
        "ConversionSpec" => String.t() | atom(),
        "FieldName" => String.t() | atom(),
        "FunctionSpec" => String.t() | atom()
      }
      
  """
  @type integration_partition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_redshift_catalog() :: %{
        "CatalogArn" => String.t() | atom()
      }
      
  """
  @type target_redshift_catalog() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_security_configuration_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_security_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unfiltered_partition() :: %{
        "AuthorizedColumns" => list(String.t() | atom()),
        "IsRegisteredWithLakeFormation" => boolean(),
        "Partition" => partition()
      }
      
  """
  @type unfiltered_partition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_partition_index_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("IndexName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_partition_index_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_ruleset_evaluation_run_request() :: %{
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_data_quality_ruleset_evaluation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "DlqEventQueueArn" => String.t() | atom(),
        "EventQueueArn" => String.t() | atom(),
        "Tables" => list(String.t() | atom())
      }
      
  """
  @type catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_script_response() :: %{
        "PythonScript" => String.t() | atom(),
        "ScalaCode" => String.t() | atom()
      }
      
  """
  @type create_script_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      last_active_definition() :: %{
        "BlueprintLocation" => String.t() | atom(),
        "BlueprintServiceLocation" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModifiedOn" => non_neg_integer(),
        "ParameterSpec" => String.t() | atom()
      }
      
  """
  @type last_active_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partition_index_response() :: %{}
      
  """
  @type create_partition_index_response() :: %{}

  @typedoc """

  ## Example:
      
      get_mapping_request() :: %{
        optional("Location") => location(),
        optional("Sinks") => list(catalog_entry()),
        required("Source") => catalog_entry()
      }
      
  """
  @type get_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trigger_response() :: %{
        "Trigger" => trigger()
      }
      
  """
  @type update_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_result_request() :: %{
        required("ResultId") => String.t() | atom()
      }
      
  """
  @type get_data_quality_result_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalog_import_status_response() :: %{
        "ImportStatus" => catalog_import_status()
      }
      
  """
  @type get_catalog_import_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_input() :: %{
        "AllowFullTableExternalDataAccess" => list(any()),
        "CatalogProperties" => catalog_properties(),
        "CreateDatabaseDefaultPermissions" => list(principal_permissions()),
        "CreateTableDefaultPermissions" => list(principal_permissions()),
        "Description" => String.t() | atom(),
        "FederatedCatalog" => federated_catalog(),
        "Parameters" => map(),
        "TargetRedshiftCatalog" => target_redshift_catalog()
      }
      
  """
  @type catalog_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_table_config() :: %{
        "Fields" => list(String.t() | atom()),
        "FilterPredicate" => String.t() | atom(),
        "PrimaryKey" => list(String.t() | atom()),
        "RecordUpdateField" => String.t() | atom()
      }
      
  """
  @type source_table_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dev_endpoint_request() :: %{
        required("EndpointName") => String.t() | atom()
      }
      
  """
  @type delete_dev_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_response() :: %{}
      
  """
  @type update_connection_response() :: %{}

  @typedoc """

  ## Example:
      
      get_crawler_metrics_request() :: %{
        optional("CrawlerNameList") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_crawler_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_lake_access_properties() :: %{
        "CatalogType" => String.t() | atom(),
        "DataLakeAccess" => boolean(),
        "DataTransferRole" => String.t() | atom(),
        "KmsKey" => String.t() | atom()
      }
      
  """
  @type data_lake_access_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RequestOrigin") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workflow_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type update_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_compaction_configuration() :: %{
        "strategy" => list(any())
      }
      
  """
  @type iceberg_compaction_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_csv_classifier_request() :: %{
        "AllowSingleColumn" => boolean(),
        "ContainsHeader" => list(any()),
        "CustomDatatypeConfigured" => boolean(),
        "CustomDatatypes" => list(String.t() | atom()),
        "Delimiter" => String.t() | atom(),
        "DisableValueTrimming" => boolean(),
        "Header" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "QuoteSymbol" => String.t() | atom(),
        "Serde" => list(any())
      }
      
  """
  @type create_csv_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint() :: %{
        "BlueprintLocation" => String.t() | atom(),
        "BlueprintServiceLocation" => String.t() | atom(),
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "LastActiveDefinition" => last_active_definition(),
        "LastModifiedOn" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ParameterSpec" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type blueprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      annotation_error() :: %{
        "FailureReason" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "StatisticId" => String.t() | atom()
      }
      
  """
  @type annotation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_history() :: %{
        "CrawlId" => String.t() | atom(),
        "DPUHour" => float(),
        "EndTime" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "LogGroup" => String.t() | atom(),
        "LogStream" => String.t() | atom(),
        "MessagePrefix" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "Summary" => String.t() | atom()
      }
      
  """
  @type crawler_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connections_list() :: %{
        "Connections" => list(String.t() | atom())
      }
      
  """
  @type connections_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_security_configuration_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom()
      }
      
  """
  @type create_security_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_response() :: %{
        "RunId" => String.t() | atom()
      }
      
  """
  @type start_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_sort_field() :: %{
        "Direction" => list(any()),
        "NullOrder" => list(any()),
        "SourceId" => integer(),
        "Transform" => String.t() | atom()
      }
      
  """
  @type iceberg_sort_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_environment_configuration() :: %{
        "ComputeEnvironment" => list(any()),
        "ConnectionOptionNameOverrides" => map(),
        "ConnectionOptions" => map(),
        "ConnectionPropertiesRequiredOverrides" => list([String.t() | atom()]()),
        "ConnectionPropertyNameOverrides" => map(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PhysicalConnectionPropertiesRequired" => boolean(),
        "SupportedAuthenticationTypes" => list(list(any())())
      }
      
  """
  @type compute_environment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_csv_classifier_request() :: %{
        "AllowSingleColumn" => boolean(),
        "ContainsHeader" => list(any()),
        "CustomDatatypeConfigured" => boolean(),
        "CustomDatatypes" => list(String.t() | atom()),
        "Delimiter" => String.t() | atom(),
        "DisableValueTrimming" => boolean(),
        "Header" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "QuoteSymbol" => String.t() | atom(),
        "Serde" => list(any())
      }
      
  """
  @type update_csv_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_catalog_delta_source() :: %{
        "AdditionalDeltaOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_catalog_delta_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "CrawlState" => list(any()),
        "CrawlerName" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "LogicalOperator" => list(any()),
        "State" => list(any())
      }
      
  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_model_request() :: %{
        optional("StatisticId") => String.t() | atom(),
        required("ProfileId") => String.t() | atom()
      }
      
  """
  @type get_data_quality_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "DynamoDB" => list(code_gen_node_arg()),
        "Jdbc" => list(code_gen_node_arg()),
        "S3" => list(code_gen_node_arg())
      }
      
  """
  @type location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      classifier() :: %{
        "CsvClassifier" => csv_classifier(),
        "GrokClassifier" => grok_classifier(),
        "JsonClassifier" => json_classifier(),
        "XMLClassifier" => x_ml_classifier()
      }
      
  """
  @type classifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter_expression() :: %{
        "Negated" => boolean(),
        "Operation" => list(any()),
        "Values" => list(filter_value())
      }
      
  """
  @type filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_tables_response() :: %{
        "NextToken" => String.t() | atom(),
        "TableList" => list(table())
      }
      
  """
  @type search_tables_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_ml_evaluation_task_run_request() :: %{
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type start_ml_evaluation_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trigger_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EventBatchingCondition") => event_batching_condition(),
        optional("Predicate") => predicate(),
        optional("Schedule") => String.t() | atom(),
        optional("StartOnCreation") => boolean(),
        optional("Tags") => map(),
        optional("WorkflowName") => String.t() | atom(),
        required("Actions") => list(action()),
        required("Name") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type create_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mongo_db_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "ScanAll" => boolean()
      }
      
  """
  @type mongo_db_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_encryption() :: %{
        "DataQualityEncryptionMode" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }
      
  """
  @type data_quality_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datatype() :: %{
        "Id" => String.t() | atom(),
        "Label" => String.t() | atom()
      }
      
  """
  @type datatype() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_node() :: %{
        "CrawlerDetails" => crawler_node_details(),
        "JobDetails" => job_node_details(),
        "Name" => String.t() | atom(),
        "TriggerDetails" => trigger_node_details(),
        "Type" => list(any()),
        "UniqueId" => String.t() | atom()
      }
      
  """
  @type glue_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_password_encryption() :: %{
        "AwsKmsKeyId" => String.t() | atom(),
        "ReturnConnectionPasswordEncrypted" => boolean()
      }
      
  """
  @type connection_password_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database_identifier() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "Region" => String.t() | atom()
      }
      
  """
  @type database_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_iceberg_catalog_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "SchemaChangePolicy" => catalog_schema_change_policy(),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_iceberg_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_update_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Entries") => list(batch_update_partition_request_entry()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type batch_update_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        optional("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decimal_column_statistics_data() :: %{
        "MaximumValue" => decimal_number(),
        "MinimumValue" => decimal_number(),
        "NumberOfDistinctValues" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type decimal_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      null_check_box_list() :: %{
        "IsEmpty" => boolean(),
        "IsNegOne" => boolean(),
        "IsNullString" => boolean()
      }
      
  """
  @type null_check_box_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session() :: %{
        "Command" => session_command(),
        "CompletedOn" => non_neg_integer(),
        "Connections" => connections_list(),
        "CreatedOn" => non_neg_integer(),
        "DPUSeconds" => float(),
        "DefaultArguments" => map(),
        "Description" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ExecutionTime" => float(),
        "GlueVersion" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IdleTimeout" => integer(),
        "MaxCapacity" => float(),
        "NumberOfWorkers" => integer(),
        "ProfileName" => String.t() | atom(),
        "Progress" => float(),
        "Role" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "Status" => list(any()),
        "WorkerType" => list(any())
      }
      
  """
  @type session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalog_response() :: %{
        "Catalog" => catalog()
      }
      
  """
  @type get_catalog_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_property() :: %{
        "MaxConcurrentRuns" => integer()
      }
      
  """
  @type execution_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_blueprint_run_request() :: %{
        optional("Parameters") => String.t() | atom(),
        required("BlueprintName") => String.t() | atom(),
        required("RoleArn") => String.t() | atom()
      }
      
  """
  @type start_blueprint_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_resource_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snowflake_node_data() :: %{
        "Action" => String.t() | atom(),
        "AdditionalOptions" => map(),
        "AutoPushdown" => boolean(),
        "Connection" => option(),
        "Database" => String.t() | atom(),
        "IamRole" => option(),
        "MergeAction" => String.t() | atom(),
        "MergeClause" => String.t() | atom(),
        "MergeWhenMatched" => String.t() | atom(),
        "MergeWhenNotMatched" => String.t() | atom(),
        "PostAction" => String.t() | atom(),
        "PreAction" => String.t() | atom(),
        "SampleQuery" => String.t() | atom(),
        "Schema" => String.t() | atom(),
        "SelectedColumns" => list(option()),
        "SourceType" => String.t() | atom(),
        "StagingTable" => String.t() | atom(),
        "Table" => String.t() | atom(),
        "TableSchema" => list(option()),
        "TempDir" => String.t() | atom(),
        "Upsert" => boolean()
      }
      
  """
  @type snowflake_node_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_response() :: %{
        "GetResourcePoliciesResponseList" => list(glue_policy()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_resource_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      view_definition() :: %{
        "Definer" => String.t() | atom(),
        "IsProtected" => boolean(),
        "Representations" => list(view_representation()),
        "SubObjects" => list(String.t() | atom())
      }
      
  """
  @type view_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_crawlers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_crawlers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Filters" => list(filter_expression()),
        "Inputs" => list(String.t() | atom()),
        "LogicalOperator" => list(any()),
        "Name" => String.t() | atom()
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predecessor() :: %{
        "JobName" => String.t() | atom(),
        "RunId" => String.t() | atom()
      }
      
  """
  @type predecessor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_column_statistics_for_partition_response() :: %{}
      
  """
  @type delete_column_statistics_for_partition_response() :: %{}

  @typedoc """

  ## Example:
      
      group_filters() :: %{
        "Filters" => list(filter_expression()),
        "GroupName" => String.t() | atom(),
        "LogicalOperator" => list(any())
      }
      
  """
  @type group_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_classifier_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_session_response() :: %{
        "Id" => String.t() | atom()
      }
      
  """
  @type stop_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_error() :: %{
        "ColumnStatistics" => column_statistics(),
        "Error" => error_detail()
      }
      
  """
  @type column_statistics_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_code() :: %{
        "ClassName" => String.t() | atom(),
        "Code" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type custom_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_quality_rule_recommendation_run_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("CreatedRulesetName") => String.t() | atom(),
        optional("DataQualitySecurityConfiguration") => String.t() | atom(),
        optional("NumberOfWorkers") => integer(),
        optional("Timeout") => integer(),
        required("DataSource") => data_source(),
        required("Role") => String.t() | atom()
      }
      
  """
  @type start_data_quality_rule_recommendation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_crawler_schedule_request() :: %{
        required("CrawlerName") => String.t() | atom()
      }
      
  """
  @type stop_crawler_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partition_index_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionIndex") => partition_index(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type create_partition_index_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_usage_profile_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_usage_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_partition_field() :: %{
        "FieldId" => integer(),
        "Name" => String.t() | atom(),
        "SourceId" => integer(),
        "Transform" => String.t() | atom()
      }
      
  """
  @type iceberg_partition_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_classifier_response() :: %{}
      
  """
  @type create_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      catalog_delta_source() :: %{
        "AdditionalDeltaOptions" => map(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Table" => String.t() | atom()
      }
      
  """
  @type catalog_delta_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      order() :: %{
        "Column" => String.t() | atom(),
        "SortOrder" => integer()
      }
      
  """
  @type order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_task_run() :: %{
        "CatalogID" => String.t() | atom(),
        "ColumnNameList" => list(String.t() | atom()),
        "ColumnStatisticsTaskRunId" => String.t() | atom(),
        "ComputationType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "CustomerId" => String.t() | atom(),
        "DPUSeconds" => float(),
        "DatabaseName" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "LastUpdated" => non_neg_integer(),
        "NumberOfWorkers" => integer(),
        "Role" => String.t() | atom(),
        "SampleSize" => float(),
        "SecurityConfiguration" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "TableName" => String.t() | atom(),
        "WorkerType" => String.t() | atom()
      }
      
  """
  @type column_statistics_task_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_quality_ruleset_evaluation_run_request() :: %{
        optional("AdditionalDataSources") => map(),
        optional("AdditionalRunOptions") => data_quality_evaluation_run_additional_run_options(),
        optional("ClientToken") => String.t() | atom(),
        optional("NumberOfWorkers") => integer(),
        optional("Timeout") => integer(),
        required("DataSource") => data_source(),
        required("Role") => String.t() | atom(),
        required("RulesetNames") => list(String.t() | atom())
      }
      
  """
  @type start_data_quality_ruleset_evaluation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integration_not_found_fault() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type integration_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ml_transforms_response() :: %{
        "NextToken" => String.t() | atom(),
        "TransformIds" => list(String.t() | atom())
      }
      
  """
  @type list_ml_transforms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_partitions_metadata_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("Expression") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QuerySessionContext") => query_session_context(),
        optional("Region") => String.t() | atom(),
        optional("Segment") => segment(),
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("SupportedPermissionTypes") => list(list(any())()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_unfiltered_partitions_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_id() :: %{
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom()
      }
      
  """
  @type schema_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_blueprint_request() :: %{
        optional("Description") => String.t() | atom(),
        required("BlueprintLocation") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trigger_response() :: %{
        "Trigger" => trigger()
      }
      
  """
  @type get_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      microsoft_s_q_l_server_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type microsoft_s_q_l_server_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_model_response() :: %{
        "CompletedOn" => non_neg_integer(),
        "FailureReason" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type get_data_quality_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_registry_response() :: %{
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom()
      }
      
  """
  @type update_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      federation_source_exception() :: %{
        "FederationSourceErrorCode" => list(any()),
        "Message" => String.t() | atom()
      }
      
  """
  @type federation_source_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_identifier() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Region" => String.t() | atom()
      }
      
  """
  @type table_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_processing_properties() :: %{
        "RoleArn" => String.t() | atom()
      }
      
  """
  @type source_processing_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_job_response() :: %{
        "JobName" => String.t() | atom()
      }
      
  """
  @type update_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_input() :: %{
        "AthenaProperties" => map(),
        "AuthenticationConfiguration" => authentication_configuration_input(),
        "ConnectionProperties" => map(),
        "ConnectionType" => list(any()),
        "Description" => String.t() | atom(),
        "MatchCriteria" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PhysicalConnectionRequirements" => physical_connection_requirements(),
        "PythonProperties" => map(),
        "SparkProperties" => map(),
        "ValidateCredentials" => boolean(),
        "ValidateForComputeEnvironments" => list(list(any())())
      }
      
  """
  @type connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_optimizer_response() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "TableOptimizer" => table_optimizer()
      }
      
  """
  @type get_table_optimizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session_command() :: %{
        "Name" => String.t() | atom(),
        "PythonVersion" => String.t() | atom()
      }
      
  """
  @type session_command() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_bookmark_response() :: %{
        "JobBookmarkEntry" => job_bookmark_entry()
      }
      
  """
  @type get_job_bookmark_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_custom_entity_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Tags") => map()
      }
      
  """
  @type list_custom_entity_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_request() :: %{
        optional("AdditionalEncryptionContext") => map(),
        optional("DataFilter") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("IntegrationConfig") => integration_config(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("IntegrationName") => String.t() | atom(),
        required("SourceArn") => String.t() | atom(),
        required("TargetArn") => String.t() | atom()
      }
      
  """
  @type create_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_schema_version_input() :: %{
        required("SchemaDefinition") => String.t() | atom(),
        required("SchemaId") => schema_id()
      }
      
  """
  @type register_schema_version_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ml_transform_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("GlueVersion") => String.t() | atom(),
        optional("MaxCapacity") => float(),
        optional("MaxRetries") => integer(),
        optional("Name") => String.t() | atom(),
        optional("NumberOfWorkers") => integer(),
        optional("Parameters") => transform_parameters(),
        optional("Role") => String.t() | atom(),
        optional("Timeout") => integer(),
        optional("WorkerType") => list(any()),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type update_ml_transform_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_connection_response() :: %{}
      
  """
  @type test_connection_response() :: %{}

  @typedoc """

  ## Example:
      
      get_ml_transform_response() :: %{
        "CreatedOn" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EvaluationMetrics" => evaluation_metrics(),
        "GlueVersion" => String.t() | atom(),
        "InputRecordTables" => list(glue_table()),
        "LabelCount" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "MaxCapacity" => float(),
        "MaxRetries" => integer(),
        "Name" => String.t() | atom(),
        "NumberOfWorkers" => integer(),
        "Parameters" => transform_parameters(),
        "Role" => String.t() | atom(),
        "Schema" => list(schema_column()),
        "Status" => list(any()),
        "Timeout" => integer(),
        "TransformEncryption" => transform_encryption(),
        "TransformId" => String.t() | atom(),
        "WorkerType" => list(any())
      }
      
  """
  @type get_ml_transform_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule() :: %{
        "ScheduleExpression" => String.t() | atom(),
        "State" => list(any())
      }
      
  """
  @type schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_security_configurations_response() :: %{
        "NextToken" => String.t() | atom(),
        "SecurityConfigurations" => list(security_configuration())
      }
      
  """
  @type get_security_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_quality_ruleset_evaluation_run_response() :: %{}
      
  """
  @type cancel_data_quality_ruleset_evaluation_run_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_catalog_encryption_settings_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }
      
  """
  @type get_data_catalog_encryption_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger_update() :: %{
        "Actions" => list(action()),
        "Description" => String.t() | atom(),
        "EventBatchingCondition" => event_batching_condition(),
        "Name" => String.t() | atom(),
        "Predicate" => predicate(),
        "Schedule" => String.t() | atom()
      }
      
  """
  @type trigger_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dev_endpoint_response() :: %{}
      
  """
  @type update_dev_endpoint_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_column_statistics_for_table_response() :: %{}
      
  """
  @type delete_column_statistics_for_table_response() :: %{}

  @typedoc """

  ## Example:
      
      list_data_quality_statistics_response() :: %{
        "NextToken" => String.t() | atom(),
        "Statistics" => list(statistic_summary())
      }
      
  """
  @type list_data_quality_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timestamp_filter() :: %{
        "RecordedAfter" => non_neg_integer(),
        "RecordedBefore" => non_neg_integer()
      }
      
  """
  @type timestamp_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_key_not_accessible_fault() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type kms_key_not_accessible_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      federated_resource_already_exists_exception() :: %{
        "AssociatedGlueResource" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type federated_resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_ml_task_run_response() :: %{
        "Status" => list(any()),
        "TaskRunId" => String.t() | atom(),
        "TransformId" => String.t() | atom()
      }
      
  """
  @type cancel_ml_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_quality_rule_recommendation_run_request() :: %{
        required("RunId") => String.t() | atom()
      }
      
  """
  @type cancel_data_quality_rule_recommendation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_job_run_request() :: %{
        optional("AllocatedCapacity") => integer(),
        optional("Arguments") => map(),
        optional("ExecutionClass") => list(any()),
        optional("ExecutionRoleSessionPolicy") => String.t() | atom(),
        optional("JobRunId") => String.t() | atom(),
        optional("JobRunQueuingEnabled") => boolean(),
        optional("MaxCapacity") => float(),
        optional("NotificationProperty") => notification_property(),
        optional("NumberOfWorkers") => integer(),
        optional("SecurityConfiguration") => String.t() | atom(),
        optional("Timeout") => integer(),
        optional("WorkerType") => list(any()),
        required("JobName") => String.t() | atom()
      }
      
  """
  @type start_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connector_data_source() :: %{
        "ConnectionType" => String.t() | atom(),
        "Data" => map(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type connector_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger_node_details() :: %{
        "Trigger" => trigger()
      }
      
  """
  @type trigger_node_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_labels_task_run_properties() :: %{
        "OutputS3Path" => String.t() | atom()
      }
      
  """
  @type export_labels_task_run_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_uri() :: %{
        "ResourceType" => list(any()),
        "Uri" => String.t() | atom()
      }
      
  """
  @type resource_uri() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_delta_catalog_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "SchemaChangePolicy" => catalog_schema_change_policy(),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_delta_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_column_statistics_task_settings_response() :: %{}
      
  """
  @type create_column_statistics_task_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      test_connection_input() :: %{
        "AuthenticationConfiguration" => authentication_configuration_input(),
        "ConnectionProperties" => map(),
        "ConnectionType" => list(any())
      }
      
  """
  @type test_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      o_auth2_credentials() :: %{
        "AccessToken" => String.t() | atom(),
        "JwtToken" => String.t() | atom(),
        "RefreshToken" => String.t() | atom(),
        "UserManagedClientApplicationClientSecret" => String.t() | atom()
      }
      
  """
  @type o_auth2_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_source_additional_options() :: %{
        "BoundedFiles" => float(),
        "BoundedSize" => float()
      }
      
  """
  @type s3_source_additional_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      physical_connection_requirements() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "SecurityGroupIdList" => list(String.t() | atom()),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type physical_connection_requirements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_version() :: %{
        "Table" => table(),
        "VersionId" => String.t() | atom()
      }
      
  """
  @type table_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_properties() :: %{
        "CustomProperties" => map(),
        "DataLakeAccessProperties" => data_lake_access_properties()
      }
      
  """
  @type catalog_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_entity_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("DataStoreApiVersion") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("ConnectionName") => String.t() | atom(),
        required("EntityName") => String.t() | atom()
      }
      
  """
  @type describe_entity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_settings_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_column_statistics_task_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "Arguments" => map(),
        "CrawlerName" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "NotificationProperty" => notification_property(),
        "SecurityConfiguration" => String.t() | atom(),
        "Timeout" => integer()
      }
      
  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_gen_node_arg() :: %{
        "Name" => String.t() | atom(),
        "Param" => boolean(),
        "Value" => String.t() | atom()
      }
      
  """
  @type code_gen_node_arg() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_defined_function_input() :: %{
        "ClassName" => String.t() | atom(),
        "FunctionName" => String.t() | atom(),
        "OwnerName" => String.t() | atom(),
        "OwnerType" => list(any()),
        "ResourceUris" => list(resource_uri())
      }
      
  """
  @type user_defined_function_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_for_partition_response() :: %{
        "Errors" => list(column_statistics_error())
      }
      
  """
  @type update_column_statistics_for_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      profile_configuration() :: %{
        "JobConfiguration" => map(),
        "SessionConfiguration" => map()
      }
      
  """
  @type profile_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_classifiers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_classifiers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      my_s_q_l_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type my_s_q_l_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_column_statistics_task_run_response() :: %{
        "ColumnStatisticsTaskRunId" => String.t() | atom()
      }
      
  """
  @type start_column_statistics_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mapping_entry() :: %{
        "SourcePath" => String.t() | atom(),
        "SourceTable" => String.t() | atom(),
        "SourceType" => String.t() | atom(),
        "TargetPath" => String.t() | atom(),
        "TargetTable" => String.t() | atom(),
        "TargetType" => String.t() | atom()
      }
      
  """
  @type mapping_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_at_rest() :: %{
        "CatalogEncryptionMode" => list(any()),
        "CatalogEncryptionServiceRole" => String.t() | atom(),
        "SseAwsKmsKeyId" => String.t() | atom()
      }
      
  """
  @type encryption_at_rest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_response() :: %{
        "PythonScript" => String.t() | atom(),
        "ScalaCode" => String.t() | atom()
      }
      
  """
  @type get_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_integration_resource_property_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "SourceProcessingProperties" => source_processing_properties(),
        "TargetProcessingProperties" => target_processing_properties()
      }
      
  """
  @type update_integration_resource_property_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_registries_response() :: %{
        "NextToken" => String.t() | atom(),
        "Registries" => list(registry_list_item())
      }
      
  """
  @type list_registries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_statements_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("RequestOrigin") => String.t() | atom(),
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type list_statements_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_jobs_response() :: %{
        "Jobs" => list(job()),
        "JobsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("EnableHybrid") => list(any()),
        optional("PolicyExistsCondition") => list(any()),
        optional("PolicyHashCondition") => String.t() | atom(),
        optional("ResourceArn") => String.t() | atom(),
        required("PolicyInJson") => String.t() | atom()
      }
      
  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_change_policy() :: %{
        "DeleteBehavior" => list(any()),
        "UpdateBehavior" => list(any())
      }
      
  """
  @type schema_change_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_resource_property_request() :: %{
        optional("SourceProcessingProperties") => source_processing_properties(),
        optional("TargetProcessingProperties") => target_processing_properties(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type create_integration_resource_property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_source_control_from_job_request() :: %{
        optional("AuthStrategy") => list(any()),
        optional("AuthToken") => String.t() | atom(),
        optional("BranchName") => String.t() | atom(),
        optional("CommitId") => String.t() | atom(),
        optional("Folder") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Provider") => list(any()),
        optional("RepositoryName") => String.t() | atom(),
        optional("RepositoryOwner") => String.t() | atom()
      }
      
  """
  @type update_source_control_from_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recipe_step() :: %{
        "Action" => recipe_action(),
        "ConditionExpressions" => list(condition_expression())
      }
      
  """
  @type recipe_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog() :: %{
        "AllowFullTableExternalDataAccess" => list(any()),
        "CatalogId" => String.t() | atom(),
        "CatalogProperties" => catalog_properties_output(),
        "CreateDatabaseDefaultPermissions" => list(principal_permissions()),
        "CreateTableDefaultPermissions" => list(principal_permissions()),
        "CreateTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FederatedCatalog" => federated_catalog(),
        "Name" => String.t() | atom(),
        "Parameters" => map(),
        "ResourceArn" => String.t() | atom(),
        "TargetRedshiftCatalog" => target_redshift_catalog(),
        "UpdateTime" => non_neg_integer()
      }
      
  """
  @type catalog() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_database_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_integration_state_fault() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_integration_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_detail() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type error_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_node_details() :: %{
        "JobRuns" => list(job_run())
      }
      
  """
  @type job_node_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rename_field() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "SourcePath" => list(String.t() | atom()),
        "TargetPath" => list(String.t() | atom())
      }
      
  """
  @type rename_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_trigger_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type start_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_statistics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProfileId") => String.t() | atom(),
        optional("StatisticId") => String.t() | atom(),
        optional("TimestampFilter") => timestamp_filter()
      }
      
  """
  @type list_data_quality_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_response() :: %{}
      
  """
  @type delete_table_response() :: %{}

  @typedoc """

  ## Example:
      
      create_workflow_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type create_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionsToDelete") => list(partition_value_list()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type batch_delete_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_stopping_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type crawler_stopping_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_crawler_schedule_response() :: %{}
      
  """
  @type update_crawler_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_delta_source() :: %{
        "AdditionalDeltaOptions" => map(),
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom())
      }
      
  """
  @type s3_delta_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_runs_response() :: %{
        "ColumnStatisticsTaskRuns" => list(column_statistics_task_run()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_column_statistics_task_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_table_optimizer() :: %{
        "catalogId" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "tableName" => String.t() | atom(),
        "tableOptimizer" => table_optimizer()
      }
      
  """
  @type batch_table_optimizer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_table_response() :: %{
        "Errors" => list(table_error())
      }
      
  """
  @type batch_delete_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      d_q_results_publishing_options() :: %{
        "CloudWatchMetricsEnabled" => boolean(),
        "EvaluationContext" => String.t() | atom(),
        "ResultsPublishingEnabled" => boolean(),
        "ResultsS3Prefix" => String.t() | atom()
      }
      
  """
  @type d_q_results_publishing_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_input() :: %{
        "Description" => String.t() | atom(),
        "LastAccessTime" => non_neg_integer(),
        "LastAnalyzedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "Parameters" => map(),
        "PartitionKeys" => list(column()),
        "Retention" => integer(),
        "StorageDescriptor" => storage_descriptor(),
        "TableType" => String.t() | atom(),
        "TargetTable" => table_identifier(),
        "ViewDefinition" => view_definition_input(),
        "ViewExpandedText" => String.t() | atom(),
        "ViewOriginalText" => String.t() | atom()
      }
      
  """
  @type table_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_importance() :: %{
        "ColumnName" => String.t() | atom(),
        "Importance" => float()
      }
      
  """
  @type column_importance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_column_statistics_task_settings_request() :: %{
        optional("CatalogID") => String.t() | atom(),
        optional("ColumnNameList") => list(String.t() | atom()),
        optional("SampleSize") => float(),
        optional("Schedule") => String.t() | atom(),
        optional("SecurityConfiguration") => String.t() | atom(),
        optional("Tags") => map(),
        required("DatabaseName") => String.t() | atom(),
        required("Role") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type create_column_statistics_task_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ml_task_runs_response() :: %{
        "NextToken" => String.t() | atom(),
        "TaskRuns" => list(task_run())
      }
      
  """
  @type get_ml_task_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow_run_statistics() :: %{
        "ErroredActions" => integer(),
        "FailedActions" => integer(),
        "RunningActions" => integer(),
        "StoppedActions" => integer(),
        "SucceededActions" => integer(),
        "TimeoutActions" => integer(),
        "TotalActions" => integer(),
        "WaitingActions" => integer()
      }
      
  """
  @type workflow_run_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delta_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "CreateNativeDeltaTable" => boolean(),
        "DeltaTables" => list(String.t() | atom()),
        "WriteManifest" => boolean()
      }
      
  """
  @type delta_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      transform_config_parameter() :: %{
        "IsOptional" => boolean(),
        "ListType" => list(any()),
        "Name" => String.t() | atom(),
        "Type" => list(any()),
        "ValidationMessage" => String.t() | atom(),
        "ValidationRule" => String.t() | atom(),
        "Value" => list(String.t() | atom())
      }
      
  """
  @type transform_config_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_optimizer_request() :: %{
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type delete_table_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_optimizer_request() :: %{
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("TableOptimizerConfiguration") => table_optimizer_configuration(),
        required("Type") => list(any())
      }
      
  """
  @type update_table_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_version_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("VersionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_table_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_ruleset_evaluation_run_description() :: %{
        "DataSource" => data_source(),
        "RunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type data_quality_ruleset_evaluation_run_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ml_transform_response() :: %{
        "TransformId" => String.t() | atom()
      }
      
  """
  @type create_ml_transform_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_security_configuration_response() :: %{
        "SecurityConfiguration" => security_configuration()
      }
      
  """
  @type get_security_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_crawls_response() :: %{
        "Crawls" => list(crawler_history()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_crawls_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dev_endpoint_response() :: %{}
      
  """
  @type delete_dev_endpoint_response() :: %{}

  @typedoc """

  ## Example:
      
      get_dev_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type get_dev_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      security_configuration() :: %{
        "CreatedTimeStamp" => non_neg_integer(),
        "EncryptionConfiguration" => encryption_configuration(),
        "Name" => String.t() | atom()
      }
      
  """
  @type security_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partition_input() :: %{
        "LastAccessTime" => non_neg_integer(),
        "LastAnalyzedTime" => non_neg_integer(),
        "Parameters" => map(),
        "StorageDescriptor" => storage_descriptor(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type partition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_request() :: %{
        optional("Filters") => list(integration_filter()),
        optional("IntegrationIdentifier") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_update_partition_response() :: %{
        "Errors" => list(batch_update_partition_failure_entry())
      }
      
  """
  @type batch_update_partition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_response() :: %{
        "Integrations" => list(integration()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type describe_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_table_update() :: %{
        "Location" => String.t() | atom(),
        "PartitionSpec" => iceberg_partition_spec(),
        "Properties" => map(),
        "Schema" => iceberg_schema(),
        "SortOrder" => iceberg_sort_order()
      }
      
  """
  @type iceberg_table_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_job_request() :: %{
        required("JobName") => String.t() | atom()
      }
      
  """
  @type delete_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      p_i_idetection() :: %{
        "DetectionParameters" => String.t() | atom(),
        "DetectionSensitivity" => String.t() | atom(),
        "EntityTypesToDetect" => list(String.t() | atom()),
        "Inputs" => list(String.t() | atom()),
        "MaskValue" => String.t() | atom(),
        "MatchPattern" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NumLeftCharsToExclude" => integer(),
        "NumRightCharsToExclude" => integer(),
        "OutputColumnName" => String.t() | atom(),
        "PiiType" => list(any()),
        "RedactChar" => String.t() | atom(),
        "RedactText" => String.t() | atom(),
        "SampleFraction" => float(),
        "ThresholdFraction" => float()
      }
      
  """
  @type p_i_idetection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aggregate_operation() :: %{
        "AggFunc" => list(any()),
        "Column" => list(String.t() | atom())
      }
      
  """
  @type aggregate_operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_ml_evaluation_task_run_response() :: %{
        "TaskRunId" => String.t() | atom()
      }
      
  """
  @type start_ml_evaluation_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_quality_ruleset_evaluation_run_response() :: %{
        "RunId" => String.t() | atom()
      }
      
  """
  @type start_data_quality_ruleset_evaluation_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_observation() :: %{
        "Description" => String.t() | atom(),
        "MetricBasedObservation" => metric_based_observation()
      }
      
  """
  @type data_quality_observation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_crawlers_response() :: %{
        "Crawlers" => list(crawler()),
        "CrawlersNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_crawlers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_input() :: %{
        required("SchemaId") => schema_id()
      }
      
  """
  @type get_schema_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snowflake_source() :: %{
        "Data" => snowflake_node_data(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type snowflake_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_result() :: %{
        "AggregatedMetrics" => data_quality_aggregated_metrics(),
        "AnalyzerResults" => list(data_quality_analyzer_result()),
        "CompletedOn" => non_neg_integer(),
        "DataSource" => data_source(),
        "EvaluationContext" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom(),
        "Observations" => list(data_quality_observation()),
        "ProfileId" => String.t() | atom(),
        "ResultId" => String.t() | atom(),
        "RuleResults" => list(data_quality_rule_result()),
        "RulesetEvaluationRunId" => String.t() | atom(),
        "RulesetName" => String.t() | atom(),
        "Score" => float(),
        "StartedOn" => non_neg_integer()
      }
      
  """
  @type data_quality_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      drop_null_fields() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NullCheckBoxList" => null_check_box_list(),
        "NullTextList" => list(null_value_field())
      }
      
  """
  @type drop_null_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_job_response() :: %{
        "Job" => job()
      }
      
  """
  @type get_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_evaluation_run_additional_run_options() :: %{
        "CloudWatchMetricsEnabled" => boolean(),
        "CompositeRuleEvaluationMethod" => list(any()),
        "ResultsS3Prefix" => String.t() | atom()
      }
      
  """
  @type data_quality_evaluation_run_additional_run_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      d_q_stop_job_on_failure_options() :: %{
        "StopJobOnFailureTiming" => list(any())
      }
      
  """
  @type d_q_stop_job_on_failure_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_catalogs_response() :: %{
        "CatalogList" => list(catalog()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_catalogs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_registry_response() :: %{
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type delete_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_crawls_request() :: %{
        optional("Filters") => list(crawls_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("CrawlerName") => String.t() | atom()
      }
      
  """
  @type list_crawls_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_session_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Id") => String.t() | atom()
      }
      
  """
  @type stop_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_schema_version_metadata_input() :: %{
        optional("SchemaId") => schema_id(),
        optional("SchemaVersionId") => String.t() | atom(),
        optional("SchemaVersionNumber") => schema_version_number(),
        required("MetadataKeyValue") => metadata_key_value_pair()
      }
      
  """
  @type remove_schema_version_metadata_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_response() :: %{}
      
  """
  @type delete_connection_response() :: %{}

  @typedoc """

  ## Example:
      
      condition_check_failure_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type condition_check_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_table() :: %{
        "AdditionalOptions" => map(),
        "CatalogId" => String.t() | atom(),
        "ConnectionName" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type glue_table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      audit_context() :: %{
        "AdditionalAuditContext" => String.t() | atom(),
        "AllColumnsRequested" => boolean(),
        "RequestedColumns" => list(String.t() | atom())
      }
      
  """
  @type audit_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x_ml_classifier() :: %{
        "Classification" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "RowTag" => String.t() | atom(),
        "Version" => float()
      }
      
  """
  @type x_ml_classifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_export_labels_task_run_request() :: %{
        required("OutputS3Path") => String.t() | atom(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type start_export_labels_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "PartitionPredicate" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_catalog_encryption_settings_response() :: %{
        "DataCatalogEncryptionSettings" => data_catalog_encryption_settings()
      }
      
  """
  @type get_data_catalog_encryption_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job() :: %{
        "AllocatedCapacity" => integer(),
        "CodeGenConfigurationNodes" => map(),
        "Command" => job_command(),
        "Connections" => connections_list(),
        "CreatedOn" => non_neg_integer(),
        "DefaultArguments" => map(),
        "Description" => String.t() | atom(),
        "ExecutionClass" => list(any()),
        "ExecutionProperty" => execution_property(),
        "GlueVersion" => String.t() | atom(),
        "JobMode" => list(any()),
        "JobRunQueuingEnabled" => boolean(),
        "LastModifiedOn" => non_neg_integer(),
        "LogUri" => String.t() | atom(),
        "MaintenanceWindow" => String.t() | atom(),
        "MaxCapacity" => float(),
        "MaxRetries" => integer(),
        "Name" => String.t() | atom(),
        "NonOverridableArguments" => map(),
        "NotificationProperty" => notification_property(),
        "NumberOfWorkers" => integer(),
        "ProfileName" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "SecurityConfiguration" => String.t() | atom(),
        "SourceControlDetails" => source_control_details(),
        "Timeout" => integer(),
        "WorkerType" => list(any())
      }
      
  """
  @type job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trigger_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type delete_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connector_data_target() :: %{
        "ConnectionType" => String.t() | atom(),
        "Data" => map(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type connector_data_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      property() :: %{
        "AllowedValues" => list(allowed_value()),
        "DataOperationScopes" => list(list(any())()),
        "DefaultValue" => [String.t() | atom()],
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PropertyTypes" => list(list(any())()),
        "Required" => boolean()
      }
      
  """
  @type property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_type_request() :: %{
        required("ConnectionType") => String.t() | atom()
      }
      
  """
  @type describe_connection_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_usage_profile_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_usage_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_column_statistics_task_run_schedule_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type start_column_statistics_task_run_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_catalog_source() :: %{
        "AdditionalOptions" => s3_source_additional_options(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PartitionPredicate" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type s3_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metadata_key_value_pair() :: %{
        "MetadataKey" => String.t() | atom(),
        "MetadataValue" => String.t() | atom()
      }
      
  """
  @type metadata_key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_input() :: %{
        "CreateIcebergTableInput" => create_iceberg_table_input(),
        "MetadataOperation" => list(any()),
        "Version" => String.t() | atom()
      }
      
  """
  @type iceberg_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_integration_table_properties_response() :: %{}
      
  """
  @type delete_integration_table_properties_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_blueprint_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_result_filter_criteria() :: %{
        "DataSource" => data_source(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom(),
        "StartedAfter" => non_neg_integer(),
        "StartedBefore" => non_neg_integer()
      }
      
  """
  @type data_quality_result_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_analyzer_result() :: %{
        "Description" => String.t() | atom(),
        "EvaluatedMetrics" => map(),
        "EvaluationMessage" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type data_quality_analyzer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      permission_type_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type permission_type_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluate_data_quality() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Output" => list(any()),
        "PublishingOptions" => d_q_results_publishing_options(),
        "Ruleset" => String.t() | atom(),
        "StopJobOnFailureOptions" => d_q_stop_job_on_failure_options()
      }
      
  """
  @type evaluate_data_quality() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_column_statistics_task_run_schedule_response() :: %{}
      
  """
  @type start_column_statistics_task_run_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      get_job_request() :: %{
        required("JobName") => String.t() | atom()
      }
      
  """
  @type get_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dev_endpoint_request() :: %{
        optional("Arguments") => map(),
        optional("ExtraJarsS3Path") => String.t() | atom(),
        optional("ExtraPythonLibsS3Path") => String.t() | atom(),
        optional("GlueVersion") => String.t() | atom(),
        optional("NumberOfNodes") => integer(),
        optional("NumberOfWorkers") => integer(),
        optional("PublicKey") => String.t() | atom(),
        optional("PublicKeys") => list(String.t() | atom()),
        optional("SecurityConfiguration") => String.t() | atom(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SubnetId") => String.t() | atom(),
        optional("Tags") => map(),
        optional("WorkerType") => list(any()),
        required("EndpointName") => String.t() | atom(),
        required("RoleArn") => String.t() | atom()
      }
      
  """
  @type create_dev_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      federation_source_retryable_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type federation_source_retryable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_job_from_source_control_response() :: %{
        "JobName" => String.t() | atom()
      }
      
  """
  @type update_job_from_source_control_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "TableVersions" => list(table_version())
      }
      
  """
  @type get_table_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_compaction_metrics() :: %{
        "DpuHours" => float(),
        "JobDurationInHour" => float(),
        "NumberOfBytesCompacted" => float(),
        "NumberOfDpus" => integer(),
        "NumberOfFilesCompacted" => float()
      }
      
  """
  @type iceberg_compaction_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_partition_index_response() :: %{}
      
  """
  @type delete_partition_index_response() :: %{}

  @typedoc """

  ## Example:
      
      predicate() :: %{
        "Conditions" => list(condition()),
        "Logical" => list(any())
      }
      
  """
  @type predicate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      double_column_statistics_data() :: %{
        "MaximumValue" => float(),
        "MinimumValue" => float(),
        "NumberOfDistinctValues" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type double_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_encryption() :: %{
        "CloudWatchEncryptionMode" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }
      
  """
  @type cloud_watch_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler_not_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type crawler_not_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      condition_expression() :: %{
        "Condition" => String.t() | atom(),
        "TargetColumn" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type condition_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_workflow_run_response() :: %{
        "NodeIds" => list(String.t() | atom()),
        "RunId" => String.t() | atom()
      }
      
  """
  @type resume_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connection_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_connection_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      option() :: %{
        "Description" => String.t() | atom(),
        "Label" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schema_versions_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("SchemaId") => schema_id()
      }
      
  """
  @type list_schema_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compaction_configuration() :: %{
        "icebergConfiguration" => iceberg_compaction_configuration()
      }
      
  """
  @type compaction_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_partitions_metadata_response() :: %{
        "NextToken" => String.t() | atom(),
        "UnfilteredPartitions" => list(unfiltered_partition())
      }
      
  """
  @type get_unfiltered_partitions_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_column_statistics_task_run_schedule_response() :: %{}
      
  """
  @type stop_column_statistics_task_run_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      other_metadata_value_list_item() :: %{
        "CreatedTime" => String.t() | atom(),
        "MetadataValue" => String.t() | atom()
      }
      
  """
  @type other_metadata_value_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("BlueprintLocation") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_data_quality_result_request() :: %{
        required("ResultIds") => list(String.t() | atom())
      }
      
  """
  @type batch_get_data_quality_result_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      json_classifier() :: %{
        "CreationTime" => non_neg_integer(),
        "JsonPath" => String.t() | atom(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Version" => float()
      }
      
  """
  @type json_classifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_tables_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Filters") => list(property_predicate()),
        optional("IncludeStatusDetails") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceShareType") => list(any()),
        optional("SearchText") => String.t() | atom(),
        optional("SortCriteria") => list(sort_criterion())
      }
      
  """
  @type search_tables_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_inbound_integrations_request() :: %{
        optional("IntegrationArn") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("TargetArn") => String.t() | atom()
      }
      
  """
  @type describe_inbound_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_crawler_schedule_request() :: %{
        optional("Schedule") => String.t() | atom(),
        required("CrawlerName") => String.t() | atom()
      }
      
  """
  @type update_crawler_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_request() :: %{
        optional("IncludeGraph") => boolean(),
        required("Name") => String.t() | atom(),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type get_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_crawler_response() :: %{}
      
  """
  @type start_crawler_response() :: %{}

  @typedoc """

  ## Example:
      
      get_crawler_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_crawler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partitions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Partitions" => list(partition())
      }
      
  """
  @type get_partitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_catalog_source() :: %{
        "AdditionalOptions" => d_db_e_l_t_catalog_additional_options(),
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PitrEnabled" => boolean(),
        "Table" => String.t() | atom()
      }
      
  """
  @type dynamo_db_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_usage_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_usage_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_blueprints_response() :: %{
        "Blueprints" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_blueprints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_database_response() :: %{}
      
  """
  @type delete_database_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_workflow_run_request() :: %{
        required("Name") => String.t() | atom(),
        required("RunId") => String.t() | atom()
      }
      
  """
  @type stop_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_registry_response() :: %{
        "CreatedTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Status" => list(any()),
        "UpdatedTime" => String.t() | atom()
      }
      
  """
  @type get_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "PolicyHash" => String.t() | atom()
      }
      
  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_properties_output() :: %{
        "CustomProperties" => map(),
        "DataLakeAccessProperties" => data_lake_access_properties_output()
      }
      
  """
  @type catalog_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_quality_ruleset_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DataQualitySecurityConfiguration") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        optional("TargetTable") => data_quality_target_table(),
        required("Name") => String.t() | atom(),
        required("Ruleset") => String.t() | atom()
      }
      
  """
  @type create_data_quality_ruleset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_task_running_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type column_statistics_task_running_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_stop_job_run_successful_submission() :: %{
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom()
      }
      
  """
  @type batch_stop_job_run_successful_submission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_hudi_direct_target() :: %{
        "AdditionalOptions" => map(),
        "AutoDataQuality" => auto_data_quality(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NumberTargetPartitions" => String.t() | atom(),
        "PartitionKeys" => list(list(String.t() | atom())()),
        "Path" => String.t() | atom(),
        "SchemaChangePolicy" => direct_schema_change_policy()
      }
      
  """
  @type s3_hudi_direct_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_ruleset_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_data_quality_ruleset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_statement_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Id") => integer(),
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type get_statement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_quality_ruleset_evaluation_run_request() :: %{
        required("RunId") => String.t() | atom()
      }
      
  """
  @type cancel_data_quality_ruleset_evaluation_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_schema() :: %{
        "Fields" => list(iceberg_struct_field()),
        "IdentifierFieldIds" => list(integer()),
        "SchemaId" => integer(),
        "Type" => list(any())
      }
      
  """
  @type iceberg_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_response() :: %{
        "CreateConnectionStatus" => list(any())
      }
      
  """
  @type create_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_unfiltered_partition_metadata_response() :: %{
        "AuthorizedColumns" => list(String.t() | atom()),
        "IsRegisteredWithLakeFormation" => boolean(),
        "Partition" => partition()
      }
      
  """
  @type get_unfiltered_partition_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_database_response() :: %{}
      
  """
  @type update_database_response() :: %{}

  @typedoc """

  ## Example:
      
      o_auth2_properties() :: %{
        "OAuth2ClientApplication" => o_auth2_client_application(),
        "OAuth2GrantType" => list(any()),
        "TokenUrl" => String.t() | atom(),
        "TokenUrlParametersMap" => map()
      }
      
  """
  @type o_auth2_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dev_endpoints_response() :: %{
        "DevEndpointNames" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_dev_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database_input() :: %{
        "CreateTableDefaultPermissions" => list(principal_permissions()),
        "Description" => String.t() | atom(),
        "FederatedDatabase" => federated_database(),
        "LocationUri" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Parameters" => map(),
        "TargetDatabase" => database_identifier()
      }
      
  """
  @type database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_ruleset_evaluation_runs_request() :: %{
        optional("Filter") => data_quality_ruleset_evaluation_run_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_data_quality_ruleset_evaluation_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_catalog_source() :: %{
        "Database" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type relational_catalog_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_custom_entity_type_response() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type delete_custom_entity_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spark_s_q_l() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema()),
        "SqlAliases" => list(sql_alias()),
        "SqlQuery" => String.t() | atom()
      }
      
  """
  @type spark_s_q_l() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kafka_streaming_source_options() :: %{
        "AddRecordTimestamp" => String.t() | atom(),
        "Assign" => String.t() | atom(),
        "BootstrapServers" => String.t() | atom(),
        "Classification" => String.t() | atom(),
        "ConnectionName" => String.t() | atom(),
        "Delimiter" => String.t() | atom(),
        "EmitConsumerLagMetrics" => String.t() | atom(),
        "EndingOffsets" => String.t() | atom(),
        "IncludeHeaders" => boolean(),
        "MaxOffsetsPerTrigger" => float(),
        "MinPartitions" => integer(),
        "NumRetries" => integer(),
        "PollTimeoutMs" => float(),
        "RetryIntervalMs" => float(),
        "SecurityProtocol" => String.t() | atom(),
        "StartingOffsets" => String.t() | atom(),
        "StartingTimestamp" => non_neg_integer(),
        "SubscribePattern" => String.t() | atom(),
        "TopicName" => String.t() | atom()
      }
      
  """
  @type kafka_streaming_source_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_version_error() :: %{
        "ErrorDetail" => error_detail(),
        "TableName" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }
      
  """
  @type table_version_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_table_version_response() :: %{
        "Errors" => list(table_version_error())
      }
      
  """
  @type batch_delete_table_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_databases_request() :: %{
        optional("AttributesToGet") => list(list(any())()),
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceShareType") => list(any())
      }
      
  """
  @type get_databases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_kafka_source() :: %{
        "DataPreviewOptions" => streaming_data_preview_options(),
        "Database" => String.t() | atom(),
        "DetectSchema" => boolean(),
        "Name" => String.t() | atom(),
        "StreamingOptions" => kafka_streaming_source_options(),
        "Table" => String.t() | atom(),
        "WindowSize" => integer()
      }
      
  """
  @type catalog_kafka_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_column_statistics_data() :: %{
        "MaximumValue" => non_neg_integer(),
        "MinimumValue" => non_neg_integer(),
        "NumberOfDistinctValues" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type date_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      drop_fields() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Paths" => list(list(String.t() | atom())())
      }
      
  """
  @type drop_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_job_bookmark_response() :: %{
        "JobBookmarkEntry" => job_bookmark_entry()
      }
      
  """
  @type reset_job_bookmark_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        optional("PolicyHashCondition") => String.t() | atom(),
        optional("ResourceArn") => String.t() | atom()
      }
      
  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_crawler_metrics_response() :: %{
        "CrawlerMetricsList" => list(crawler_metrics()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_crawler_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partitions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ExcludeColumnSchema") => boolean(),
        optional("Expression") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QueryAsOfTime") => non_neg_integer(),
        optional("Segment") => segment(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_partitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      streaming_data_preview_options() :: %{
        "PollingTime" => float(),
        "RecordPollingLimit" => float()
      }
      
  """
  @type streaming_data_preview_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_json_classifier_request() :: %{
        "JsonPath" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type create_json_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_stop_job_run_response() :: %{
        "Errors" => list(batch_stop_job_run_error()),
        "SuccessfulSubmissions" => list(batch_stop_job_run_successful_submission())
      }
      
  """
  @type batch_stop_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_stop_job_run_error() :: %{
        "ErrorDetail" => error_detail(),
        "JobName" => String.t() | atom(),
        "JobRunId" => String.t() | atom()
      }
      
  """
  @type batch_stop_job_run_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_results_request() :: %{
        optional("Filter") => data_quality_result_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_data_quality_results_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_schema_input() :: %{
        required("SchemaId") => schema_id()
      }
      
  """
  @type delete_schema_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      view_representation() :: %{
        "Dialect" => list(any()),
        "DialectVersion" => String.t() | atom(),
        "IsStale" => boolean(),
        "ValidationConnection" => String.t() | atom(),
        "ViewExpandedText" => String.t() | atom(),
        "ViewOriginalText" => String.t() | atom()
      }
      
  """
  @type view_representation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_job_from_source_control_request() :: %{
        optional("AuthStrategy") => list(any()),
        optional("AuthToken") => String.t() | atom(),
        optional("BranchName") => String.t() | atom(),
        optional("CommitId") => String.t() | atom(),
        optional("Folder") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("Provider") => list(any()),
        optional("RepositoryName") => String.t() | atom(),
        optional("RepositoryOwner") => String.t() | atom()
      }
      
  """
  @type update_job_from_source_control_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_defined_function_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("FunctionInput") => user_defined_function_input(),
        required("FunctionName") => String.t() | atom()
      }
      
  """
  @type update_user_defined_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      o_auth2_properties_input() :: %{
        "AuthorizationCodeProperties" => authorization_code_properties(),
        "OAuth2ClientApplication" => o_auth2_client_application(),
        "OAuth2Credentials" => o_auth2_credentials(),
        "OAuth2GrantType" => list(any()),
        "TokenUrl" => String.t() | atom(),
        "TokenUrlParametersMap" => map()
      }
      
  """
  @type o_auth2_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration() :: %{
        "AuthenticationType" => list(any()),
        "OAuth2Properties" => o_auth2_properties(),
        "SecretArn" => String.t() | atom()
      }
      
  """
  @type authentication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_classifier_request() :: %{
        optional("CsvClassifier") => update_csv_classifier_request(),
        optional("GrokClassifier") => update_grok_classifier_request(),
        optional("JsonClassifier") => update_json_classifier_request(),
        optional("XMLClassifier") => update_x_ml_classifier_request()
      }
      
  """
  @type update_classifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_for_table_response() :: %{
        "Errors" => list(column_statistics_error())
      }
      
  """
  @type update_column_statistics_for_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trigger_request() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type get_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_encryption_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type glue_encryption_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mapping() :: %{
        "Children" => list(mapping()),
        "Dropped" => boolean(),
        "FromPath" => list(String.t() | atom()),
        "FromType" => String.t() | atom(),
        "ToKey" => String.t() | atom(),
        "ToType" => String.t() | atom()
      }
      
  """
  @type mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      drop_duplicates() :: %{
        "Columns" => list(list(String.t() | atom())()),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type drop_duplicates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_classifier_response() :: %{}
      
  """
  @type update_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      get_ml_task_run_response() :: %{
        "CompletedOn" => non_neg_integer(),
        "ErrorString" => String.t() | atom(),
        "ExecutionTime" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "LogGroupName" => String.t() | atom(),
        "Properties" => task_run_properties(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any()),
        "TaskRunId" => String.t() | atom(),
        "TransformId" => String.t() | atom()
      }
      
  """
  @type get_ml_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_defined_function_response() :: %{}
      
  """
  @type create_user_defined_function_response() :: %{}

  @typedoc """

  ## Example:
      
      property_predicate() :: %{
        "Comparator" => list(any()),
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type property_predicate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_table_optimizer_request() :: %{
        required("Entries") => list(batch_get_table_optimizer_entry())
      }
      
  """
  @type batch_get_table_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "GlueTable" => glue_table()
      }
      
  """
  @type data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      d_db_e_l_t_catalog_additional_options() :: %{
        "DynamodbExport" => String.t() | atom(),
        "DynamodbUnnestDDBJson" => boolean()
      }
      
  """
  @type d_db_e_l_t_catalog_additional_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      postgre_s_q_l_catalog_target() :: %{
        "Database" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Table" => String.t() | atom()
      }
      
  """
  @type postgre_s_q_l_catalog_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snowflake_target() :: %{
        "Data" => snowflake_node_data(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type snowflake_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_catalog_request() :: %{
        optional("Tags") => map(),
        required("CatalogInput") => catalog_input(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_catalog_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_supported_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type operation_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_entities_response() :: %{
        "Entities" => list(entity()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      edge() :: %{
        "DestinationId" => String.t() | atom(),
        "SourceId" => String.t() | atom()
      }
      
  """
  @type edge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_crawlers_response() :: %{
        "CrawlerNames" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_crawlers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_rule_recommendation_runs_request() :: %{
        optional("Filter") => data_quality_rule_recommendation_run_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_data_quality_rule_recommendation_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_table_optimizer_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type list_table_optimizer_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_usage_profile_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Configuration") => profile_configuration(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_usage_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ConnectionName") => String.t() | atom()
      }
      
  """
  @type delete_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      registry_list_item() :: %{
        "CreatedTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Status" => list(any()),
        "UpdatedTime" => String.t() | atom()
      }
      
  """
  @type registry_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_optimizer_request() :: %{
        required("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type get_table_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      split_fields() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Paths" => list(list(String.t() | atom())())
      }
      
  """
  @type split_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_import_labels_task_run_response() :: %{
        "TaskRunId" => String.t() | atom()
      }
      
  """
  @type start_import_labels_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionInputList") => list(partition_input()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type batch_create_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statement_output() :: %{
        "Data" => statement_output_data(),
        "ErrorName" => String.t() | atom(),
        "ErrorValue" => String.t() | atom(),
        "ExecutionCount" => integer(),
        "Status" => list(any()),
        "Traceback" => list(String.t() | atom())
      }
      
  """
  @type statement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionValues") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_version_response() :: %{
        "CreatedTime" => String.t() | atom(),
        "DataFormat" => list(any()),
        "SchemaArn" => String.t() | atom(),
        "SchemaDefinition" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }
      
  """
  @type get_schema_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_schema_version_metadata_response() :: %{
        "LatestVersion" => boolean(),
        "MetadataKey" => String.t() | atom(),
        "MetadataValue" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom(),
        "VersionNumber" => float()
      }
      
  """
  @type put_schema_version_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_excel_source() :: %{
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "CompressionType" => list(any()),
        "Exclusions" => list(String.t() | atom()),
        "GroupFiles" => String.t() | atom(),
        "GroupSize" => String.t() | atom(),
        "MaxBand" => integer(),
        "MaxFilesInBand" => integer(),
        "Name" => String.t() | atom(),
        "NumberRows" => float(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom()),
        "Recurse" => boolean(),
        "SkipFooter" => integer()
      }
      
  """
  @type s3_excel_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_by_definition_response() :: %{
        "CreatedTime" => String.t() | atom(),
        "DataFormat" => list(any()),
        "SchemaArn" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type get_schema_by_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_response() :: %{}
      
  """
  @type update_table_response() :: %{}

  @typedoc """

  ## Example:
      
      orphan_file_deletion_configuration() :: %{
        "icebergConfiguration" => iceberg_orphan_file_deletion_configuration()
      }
      
  """
  @type orphan_file_deletion_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_schema() :: %{
        "Columns" => list(glue_studio_schema_column())
      }
      
  """
  @type glue_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_integration_resource_property_request() :: %{
        optional("SourceProcessingProperties") => source_processing_properties(),
        optional("TargetProcessingProperties") => target_processing_properties(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type update_integration_resource_property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_job_response() :: %{
        "JobName" => String.t() | atom()
      }
      
  """
  @type delete_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_direct_source_additional_options() :: %{
        "BoundedFiles" => float(),
        "BoundedSize" => float(),
        "EnableSamplePath" => boolean(),
        "SamplePath" => String.t() | atom()
      }
      
  """
  @type s3_direct_source_additional_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table() :: %{
        "CatalogId" => String.t() | atom(),
        "CreateTime" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FederatedTable" => federated_table(),
        "IsMultiDialectView" => boolean(),
        "IsRegisteredWithLakeFormation" => boolean(),
        "LastAccessTime" => non_neg_integer(),
        "LastAnalyzedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "Parameters" => map(),
        "PartitionKeys" => list(column()),
        "Retention" => integer(),
        "Status" => table_status(),
        "StorageDescriptor" => storage_descriptor(),
        "TableType" => String.t() | atom(),
        "TargetTable" => table_identifier(),
        "UpdateTime" => non_neg_integer(),
        "VersionId" => String.t() | atom(),
        "ViewDefinition" => view_definition(),
        "ViewExpandedText" => String.t() | atom(),
        "ViewOriginalText" => String.t() | atom()
      }
      
  """
  @type table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recrawl_policy() :: %{
        "RecrawlBehavior" => list(any())
      }
      
  """
  @type recrawl_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dev_endpoint_custom_libraries() :: %{
        "ExtraJarsS3Path" => String.t() | atom(),
        "ExtraPythonLibsS3Path" => String.t() | atom()
      }
      
  """
  @type dev_endpoint_custom_libraries() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_for_table_response() :: %{
        "ColumnStatisticsList" => list(column_statistics()),
        "Errors" => list(column_error())
      }
      
  """
  @type get_column_statistics_for_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "NextToken" => String.t() | atom(),
        "Workflows" => list(String.t() | atom())
      }
      
  """
  @type list_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_schema_version_metadata_response() :: %{
        "MetadataInfoMap" => map(),
        "NextToken" => String.t() | atom(),
        "SchemaVersionId" => String.t() | atom()
      }
      
  """
  @type query_schema_version_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_command() :: %{
        "Name" => String.t() | atom(),
        "PythonVersion" => String.t() | atom(),
        "Runtime" => String.t() | atom(),
        "ScriptLocation" => String.t() | atom()
      }
      
  """
  @type job_command() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_integration_resource_property_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "SourceProcessingProperties" => source_processing_properties(),
        "TargetProcessingProperties" => target_processing_properties()
      }
      
  """
  @type create_integration_resource_property_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_partition_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("PartitionInput") => partition_input(),
        required("PartitionValueList") => list(String.t() | atom()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_partition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schemas_response() :: %{
        "NextToken" => String.t() | atom(),
        "Schemas" => list(schema_list_item())
      }
      
  """
  @type list_schemas_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      illegal_blueprint_state_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type illegal_blueprint_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_csv_source() :: %{
        "AdditionalOptions" => s3_direct_source_additional_options(),
        "CompressionType" => list(any()),
        "Escaper" => String.t() | atom(),
        "Exclusions" => list(String.t() | atom()),
        "GroupFiles" => String.t() | atom(),
        "GroupSize" => String.t() | atom(),
        "MaxBand" => integer(),
        "MaxFilesInBand" => integer(),
        "Multiline" => boolean(),
        "Name" => String.t() | atom(),
        "OptimizePerformance" => boolean(),
        "OutputSchemas" => list(glue_schema()),
        "Paths" => list(String.t() | atom()),
        "QuoteChar" => list(any()),
        "Recurse" => boolean(),
        "Separator" => list(any()),
        "SkipFirst" => boolean(),
        "WithHeader" => boolean(),
        "WriteHeader" => boolean()
      }
      
  """
  @type s3_csv_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statement_output_data() :: %{
        "TextPlain" => String.t() | atom()
      }
      
  """
  @type statement_output_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_open_table_format_input() :: %{
        "UpdateIcebergInput" => update_iceberg_input()
      }
      
  """
  @type update_open_table_format_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_ml_labeling_set_generation_task_run_response() :: %{
        "TaskRunId" => String.t() | atom()
      }
      
  """
  @type start_ml_labeling_set_generation_task_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_session_response() :: %{
        "Session" => session()
      }
      
  """
  @type create_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_session_request() :: %{
        optional("RequestOrigin") => String.t() | atom(),
        required("Id") => String.t() | atom()
      }
      
  """
  @type delete_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      crawler() :: %{
        "Classifiers" => list(String.t() | atom()),
        "Configuration" => String.t() | atom(),
        "CrawlElapsedTime" => float(),
        "CrawlerSecurityConfiguration" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LakeFormationConfiguration" => lake_formation_configuration(),
        "LastCrawl" => last_crawl_info(),
        "LastUpdated" => non_neg_integer(),
        "LineageConfiguration" => lineage_configuration(),
        "Name" => String.t() | atom(),
        "RecrawlPolicy" => recrawl_policy(),
        "Role" => String.t() | atom(),
        "Schedule" => schedule(),
        "SchemaChangePolicy" => schema_change_policy(),
        "State" => list(any()),
        "TablePrefix" => String.t() | atom(),
        "Targets" => crawler_targets(),
        "Version" => float()
      }
      
  """
  @type crawler() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amazon_redshift_target() :: %{
        "Data" => amazon_redshift_node_data(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }
      
  """
  @type amazon_redshift_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_security_configuration_response() :: %{}
      
  """
  @type delete_security_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      view_representation_input() :: %{
        "Dialect" => list(any()),
        "DialectVersion" => String.t() | atom(),
        "ValidationConnection" => String.t() | atom(),
        "ViewExpandedText" => String.t() | atom(),
        "ViewOriginalText" => String.t() | atom()
      }
      
  """
  @type view_representation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_table_optimizer_response() :: %{
        "Failures" => list(batch_get_table_optimizer_error()),
        "TableOptimizers" => list(batch_table_optimizer())
      }
      
  """
  @type batch_get_table_optimizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_response() :: %{
        "Run" => workflow_run()
      }
      
  """
  @type get_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint_run() :: %{
        "BlueprintName" => String.t() | atom(),
        "CompletedOn" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "Parameters" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "RollbackErrorMessage" => String.t() | atom(),
        "RunId" => String.t() | atom(),
        "StartedOn" => non_neg_integer(),
        "State" => list(any()),
        "WorkflowName" => String.t() | atom()
      }
      
  """
  @type blueprint_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_quality_ruleset_response() :: %{
        "CreatedOn" => non_neg_integer(),
        "DataQualitySecurityConfiguration" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModifiedOn" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "RecommendationRunId" => String.t() | atom(),
        "Ruleset" => String.t() | atom(),
        "TargetTable" => data_quality_target_table()
      }
      
  """
  @type get_data_quality_ruleset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_database_response() :: %{}
      
  """
  @type create_database_response() :: %{}

  @typedoc """

  ## Example:
      
      confusion_matrix() :: %{
        "NumFalseNegatives" => float(),
        "NumFalsePositives" => float(),
        "NumTrueNegatives" => float(),
        "NumTruePositives" => float()
      }
      
  """
  @type confusion_matrix() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_data_quality() :: %{
        "EvaluationContext" => String.t() | atom(),
        "IsEnabled" => boolean()
      }
      
  """
  @type auto_data_quality() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluation_metrics() :: %{
        "FindMatchesMetrics" => find_matches_metrics(),
        "TransformType" => list(any())
      }
      
  """
  @type evaluation_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_statistics_task_settings() :: %{
        "CatalogID" => String.t() | atom(),
        "ColumnNameList" => list(String.t() | atom()),
        "DatabaseName" => String.t() | atom(),
        "LastExecutionAttempt" => execution_attempt(),
        "Role" => String.t() | atom(),
        "SampleSize" => float(),
        "Schedule" => schedule(),
        "ScheduleType" => list(any()),
        "SecurityConfiguration" => String.t() | atom(),
        "SettingSource" => list(any()),
        "TableName" => String.t() | atom()
      }
      
  """
  @type column_statistics_task_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_database_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Tags") => map(),
        required("DatabaseInput") => database_input()
      }
      
  """
  @type create_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Tags") => map(),
        required("ConnectionInput") => connection_input()
      }
      
  """
  @type create_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_catalog_response() :: %{}
      
  """
  @type create_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      get_user_defined_functions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("DatabaseName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Pattern") => String.t() | atom()
      }
      
  """
  @type get_user_defined_functions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_target() :: %{
        "ConnectionName" => String.t() | atom(),
        "Exclusions" => list(String.t() | atom()),
        "MaximumTraversalDepth" => integer(),
        "Paths" => list(String.t() | atom())
      }
      
  """
  @type iceberg_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dev_endpoint_request() :: %{
        optional("AddArguments") => map(),
        optional("AddPublicKeys") => list(String.t() | atom()),
        optional("CustomLibraries") => dev_endpoint_custom_libraries(),
        optional("DeleteArguments") => list(String.t() | atom()),
        optional("DeletePublicKeys") => list(String.t() | atom()),
        optional("PublicKey") => String.t() | atom(),
        optional("UpdateEtlLibraries") => boolean(),
        required("EndpointName") => String.t() | atom()
      }
      
  """
  @type update_dev_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_database_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseInput") => database_input(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_column_statistics_task_run_request() :: %{
        optional("CatalogID") => String.t() | atom(),
        optional("ColumnNameList") => list(String.t() | atom()),
        optional("SampleSize") => float(),
        optional("SecurityConfiguration") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Role") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type start_column_statistics_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_entity_type() :: %{
        "ContextWords" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "RegexString" => String.t() | atom()
      }
      
  """
  @type custom_entity_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_response() :: %{
        "Compatibility" => list(any()),
        "CreatedTime" => String.t() | atom(),
        "DataFormat" => list(any()),
        "Description" => String.t() | atom(),
        "LatestSchemaVersion" => float(),
        "NextSchemaVersion" => float(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaCheckpoint" => float(),
        "SchemaName" => String.t() | atom(),
        "SchemaStatus" => list(any()),
        "UpdatedTime" => String.t() | atom()
      }
      
  """
  @type get_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_table_optimizer_entry() :: %{
        "catalogId" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "tableName" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type batch_get_table_optimizer_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "PrimaryKeys" => list(list(String.t() | atom())()),
        "Source" => String.t() | atom()
      }
      
  """
  @type merge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_quality_ruleset_filter_criteria() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastModifiedAfter" => non_neg_integer(),
        "LastModifiedBefore" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "TargetTable" => data_quality_target_table()
      }
      
  """
  @type data_quality_ruleset_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_table_version_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("VersionIds") => list(String.t() | atom())
      }
      
  """
  @type batch_delete_table_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      skewed_info() :: %{
        "SkewedColumnNames" => list(String.t() | atom()),
        "SkewedColumnValueLocationMaps" => map(),
        "SkewedColumnValues" => list(String.t() | atom())
      }
      
  """
  @type skewed_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_schema_version_input() :: %{
        optional("SchemaId") => schema_id(),
        optional("SchemaVersionId") => String.t() | atom(),
        optional("SchemaVersionNumber") => schema_version_number()
      }
      
  """
  @type get_schema_version_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_version_response() :: %{}
      
  """
  @type delete_table_version_response() :: %{}

  @typedoc """

  ## Example:
      
      union() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "UnionType" => list(any())
      }
      
  """
  @type union() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_crawlers_response() :: %{
        "Crawlers" => list(crawler()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type get_crawlers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_column_statistics_task_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_column_statistics_task_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capabilities() :: %{
        "SupportedAuthenticationTypes" => list(list(any())()),
        "SupportedComputeEnvironments" => list(list(any())()),
        "SupportedDataOperations" => list(list(any())())
      }
      
  """
  @type capabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_registry_input() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("RegistryName") => String.t() | atom()
      }
      
  """
  @type create_registry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_connection_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ConnectionName") => String.t() | atom(),
        optional("TestConnectionInput") => test_connection_input()
      }
      
  """
  @type test_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_partition_response() :: %{}
      
  """
  @type update_partition_response() :: %{}

  @typedoc """

  ## Example:
      
      job_bookmark_entry() :: %{
        "Attempt" => integer(),
        "JobBookmark" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "PreviousRunId" => String.t() | atom(),
        "Run" => integer(),
        "RunId" => String.t() | atom(),
        "Version" => integer()
      }
      
  """
  @type job_bookmark_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lake_formation_configuration() :: %{
        "AccountId" => String.t() | atom(),
        "UseLakeFormationCredentials" => boolean()
      }
      
  """
  @type lake_formation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_table_optimizer_runs_response() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "NextToken" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "TableOptimizerRuns" => list(table_optimizer_run())
      }
      
  """
  @type list_table_optimizer_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_task_settings_request() :: %{
        optional("CatalogID") => String.t() | atom(),
        optional("ColumnNameList") => list(String.t() | atom()),
        optional("Role") => String.t() | atom(),
        optional("SampleSize") => float(),
        optional("Schedule") => String.t() | atom(),
        optional("SecurityConfiguration") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_column_statistics_task_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_ml_labeling_set_generation_task_run_request() :: %{
        required("OutputS3Path") => String.t() | atom(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type start_ml_labeling_set_generation_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_type_variant() :: %{
        "ConnectionTypeVariantName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "LogoUrl" => String.t() | atom()
      }
      
  """
  @type connection_type_variant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_ml_task_run_request() :: %{
        required("TaskRunId") => String.t() | atom(),
        required("TransformId") => String.t() | atom()
      }
      
  """
  @type cancel_ml_task_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spigot() :: %{
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "Prob" => float(),
        "Topk" => integer()
      }
      
  """
  @type spigot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      j_db_c_connector_target() :: %{
        "AdditionalOptions" => map(),
        "ConnectionName" => String.t() | atom(),
        "ConnectionTable" => String.t() | atom(),
        "ConnectionType" => String.t() | atom(),
        "ConnectorName" => String.t() | atom(),
        "Inputs" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "OutputSchemas" => list(glue_schema())
      }
      
  """
  @type j_db_c_connector_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_crawler_response() :: %{}
      
  """
  @type stop_crawler_response() :: %{}

  @typedoc """

  ## Example:
      
      task_run() :: %{
        "CompletedOn" => non_neg_integer(),
        "ErrorString" => String.t() | atom(),
        "ExecutionTime" => integer(),
        "LastModifiedOn" => non_neg_integer(),
        "LogGroupName" => String.t() | atom(),
        "Properties" => task_run_properties(),
        "StartedOn" => non_neg_integer(),
        "Status" => list(any()),
        "TaskRunId" => String.t() | atom(),
        "TransformId" => String.t() | atom()
      }
      
  """
  @type task_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_column_statistics_task_settings_response() :: %{
        "ColumnStatisticsTaskSettings" => column_statistics_task_settings()
      }
      
  """
  @type get_column_statistics_task_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      string_column_statistics_data() :: %{
        "AverageLength" => float(),
        "MaximumLength" => float(),
        "NumberOfDistinctValues" => float(),
        "NumberOfNulls" => float()
      }
      
  """
  @type string_column_statistics_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      basic_authentication_credentials() :: %{
        "Password" => String.t() | atom(),
        "Username" => String.t() | atom()
      }
      
  """
  @type basic_authentication_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_iceberg_table_input() :: %{
        "Location" => String.t() | atom(),
        "PartitionSpec" => iceberg_partition_spec(),
        "Properties" => map(),
        "Schema" => iceberg_schema(),
        "WriteOrder" => iceberg_sort_order()
      }
      
  """
  @type create_iceberg_table_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iceberg_retention_configuration() :: %{
        "cleanExpiredFiles" => boolean(),
        "numberOfSnapshotsToRetain" => integer(),
        "snapshotRetentionPeriodInDays" => integer()
      }
      
  """
  @type iceberg_retention_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_column_statistics_for_table_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("ColumnStatisticsList") => list(column_statistics()),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_column_statistics_for_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_response() :: %{
        "Workflow" => workflow()
      }
      
  """
  @type get_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      starting_event_batch_condition() :: %{
        "BatchSize" => integer(),
        "BatchWindow" => integer()
      }
      
  """
  @type starting_event_batch_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_parameters() :: %{
        "FindMatchesParameters" => find_matches_parameters(),
        "TransformType" => list(any())
      }
      
  """
  @type transform_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_database_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partition_indexes_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_partition_indexes_request() :: %{(String.t() | atom()) => any()}

  @type batch_create_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_delete_connection_errors() ::
          internal_service_exception() | operation_timeout_exception()

  @type batch_delete_partition_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_delete_table_errors() ::
          resource_not_ready_exception()
          | glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_delete_table_version_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_get_blueprints_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_get_crawlers_errors() :: invalid_input_exception() | operation_timeout_exception()

  @type batch_get_custom_entity_types_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_get_data_quality_result_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_get_dev_endpoints_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type batch_get_jobs_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_get_partition_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | invalid_state_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_get_table_optimizer_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type batch_get_triggers_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_get_workflows_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_put_data_quality_statistic_annotation_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type batch_stop_job_run_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type batch_update_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type cancel_data_quality_rule_recommendation_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type cancel_data_quality_ruleset_evaluation_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type cancel_ml_task_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type cancel_statement_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type check_schema_version_validity_errors() ::
          access_denied_exception() | invalid_input_exception() | internal_service_exception()

  @type create_blueprint_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_catalog_errors() ::
          glue_encryption_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | federated_resource_already_exists_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_classifier_errors() ::
          invalid_input_exception() | already_exists_exception() | operation_timeout_exception()

  @type create_column_statistics_task_settings_errors() ::
          column_statistics_task_running_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_connection_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_crawler_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_custom_entity_type_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_data_quality_ruleset_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_database_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federated_resource_already_exists_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_dev_endpoint_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | kms_key_not_accessible_fault()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | integration_quota_exceeded_fault()
          | integration_conflict_operation_fault()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type create_integration_resource_property_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type create_integration_table_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type create_job_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_ml_transform_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_partition_index_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_registry_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()

  @type create_schema_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | entity_not_found_exception()

  @type create_script_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type create_security_configuration_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_session_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_table_errors() ::
          resource_not_ready_exception()
          | glue_encryption_exception()
          | federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_table_optimizer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | entity_not_found_exception()

  @type create_trigger_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_usage_profile_errors() ::
          operation_not_supported_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_user_defined_function_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_workflow_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type delete_blueprint_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type delete_catalog_errors() ::
          glue_encryption_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_classifier_errors() :: operation_timeout_exception() | entity_not_found_exception()

  @type delete_column_statistics_for_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_column_statistics_for_table_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_column_statistics_task_settings_errors() ::
          invalid_input_exception() | operation_timeout_exception() | entity_not_found_exception()

  @type delete_connection_errors() :: operation_timeout_exception() | entity_not_found_exception()

  @type delete_crawler_errors() ::
          crawler_running_exception()
          | scheduler_transitioning_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_custom_entity_type_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_data_quality_ruleset_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_database_errors() ::
          federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_dev_endpoint_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_integration_state_fault()
          | internal_server_exception()
          | integration_not_found_fault()
          | invalid_input_exception()
          | conflict_exception()
          | integration_conflict_operation_fault()
          | invalid_state_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type delete_integration_table_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type delete_job_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type delete_ml_transform_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_partition_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_partition_index_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | conflict_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_registry_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type delete_resource_policy_errors() ::
          condition_check_failure_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_schema_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type delete_schema_versions_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type delete_security_configuration_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_session_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()

  @type delete_table_errors() ::
          resource_not_ready_exception()
          | federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_table_optimizer_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type delete_table_version_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_trigger_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type delete_usage_profile_errors() ::
          operation_not_supported_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type delete_user_defined_function_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_workflow_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type describe_connection_type_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()

  @type describe_entity_errors() ::
          glue_encryption_exception()
          | validation_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_inbound_integrations_errors() ::
          operation_not_supported_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | integration_not_found_fault()
          | invalid_input_exception()
          | target_resource_not_found()
          | internal_service_exception()
          | entity_not_found_exception()

  @type describe_integrations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | integration_not_found_fault()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_blueprint_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_blueprint_run_errors() ::
          internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_blueprint_runs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_catalog_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_catalog_import_status_errors() ::
          internal_service_exception() | operation_timeout_exception()

  @type get_catalogs_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_classifier_errors() :: operation_timeout_exception() | entity_not_found_exception()

  @type get_classifiers_errors() :: operation_timeout_exception()

  @type get_column_statistics_for_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_column_statistics_for_table_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_column_statistics_task_run_errors() ::
          invalid_input_exception() | operation_timeout_exception() | entity_not_found_exception()

  @type get_column_statistics_task_runs_errors() :: operation_timeout_exception()

  @type get_column_statistics_task_settings_errors() ::
          invalid_input_exception() | operation_timeout_exception() | entity_not_found_exception()

  @type get_connection_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_connections_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_crawler_errors() :: operation_timeout_exception() | entity_not_found_exception()

  @type get_crawler_metrics_errors() :: operation_timeout_exception()

  @type get_crawlers_errors() :: operation_timeout_exception()

  @type get_custom_entity_type_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_catalog_encryption_settings_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type get_data_quality_model_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_quality_model_result_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_quality_result_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_quality_rule_recommendation_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_quality_ruleset_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_quality_ruleset_evaluation_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_database_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_databases_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_dataflow_graph_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type get_dev_endpoint_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_dev_endpoints_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_entity_records_errors() ::
          glue_encryption_exception()
          | validation_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_integration_resource_property_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_integration_table_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_job_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_job_bookmark_errors() ::
          validation_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_job_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_job_runs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_jobs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_mapping_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_ml_task_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_ml_task_runs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_ml_transform_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_ml_transforms_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_partition_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_partition_indexes_errors() ::
          invalid_input_exception()
          | conflict_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_partitions_errors() ::
          resource_not_ready_exception()
          | glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | invalid_state_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_plan_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type get_registry_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_resource_policies_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type get_resource_policy_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_schema_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_schema_by_definition_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_schema_version_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_schema_versions_diff_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_security_configuration_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_security_configurations_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_session_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_statement_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_table_errors() ::
          resource_not_ready_exception()
          | glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_table_optimizer_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type get_table_version_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_table_versions_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_tables_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_tags_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_trigger_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_triggers_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_unfiltered_partition_metadata_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | permission_type_mismatch_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_unfiltered_partitions_metadata_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | permission_type_mismatch_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_unfiltered_table_metadata_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | permission_type_mismatch_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_usage_profile_errors() ::
          operation_not_supported_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_user_defined_function_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_user_defined_functions_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_workflow_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_workflow_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_workflow_run_properties_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_workflow_runs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type import_catalog_to_glue_errors() ::
          internal_service_exception() | operation_timeout_exception()

  @type list_blueprints_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_column_statistics_task_runs_errors() :: operation_timeout_exception()

  @type list_connection_types_errors() :: access_denied_exception() | internal_service_exception()

  @type list_crawlers_errors() :: operation_timeout_exception()

  @type list_crawls_errors() ::
          invalid_input_exception() | operation_timeout_exception() | entity_not_found_exception()

  @type list_custom_entity_types_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_data_quality_results_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_data_quality_rule_recommendation_runs_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_data_quality_ruleset_evaluation_runs_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_data_quality_rulesets_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_data_quality_statistic_annotations_errors() ::
          invalid_input_exception() | internal_service_exception()

  @type list_data_quality_statistics_errors() ::
          invalid_input_exception() | internal_service_exception() | entity_not_found_exception()

  @type list_dev_endpoints_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_entities_errors() ::
          glue_encryption_exception()
          | validation_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_jobs_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_ml_transforms_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_registries_errors() ::
          access_denied_exception() | invalid_input_exception() | internal_service_exception()

  @type list_schema_versions_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type list_schemas_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type list_sessions_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_statements_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_table_optimizer_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type list_triggers_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_usage_profiles_errors() ::
          operation_not_supported_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_workflows_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type modify_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_integration_state_fault()
          | internal_server_exception()
          | integration_not_found_fault()
          | invalid_input_exception()
          | conflict_exception()
          | integration_conflict_operation_fault()
          | invalid_state_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type put_data_catalog_encryption_settings_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type put_data_quality_profile_annotation_errors() ::
          invalid_input_exception() | internal_service_exception() | entity_not_found_exception()

  @type put_resource_policy_errors() ::
          condition_check_failure_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type put_schema_version_metadata_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | already_exists_exception()
          | entity_not_found_exception()

  @type put_workflow_run_properties_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type query_schema_version_metadata_errors() ::
          access_denied_exception() | invalid_input_exception() | entity_not_found_exception()

  @type register_schema_version_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type remove_schema_version_metadata_errors() ::
          access_denied_exception() | invalid_input_exception() | entity_not_found_exception()

  @type reset_job_bookmark_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type resume_workflow_run_errors() ::
          invalid_input_exception()
          | illegal_workflow_state_exception()
          | internal_service_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type run_statement_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type search_tables_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type start_blueprint_run_errors() ::
          illegal_blueprint_state_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_column_statistics_task_run_errors() ::
          column_statistics_task_running_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_column_statistics_task_run_schedule_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_crawler_errors() ::
          crawler_running_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_crawler_schedule_errors() ::
          no_schedule_exception()
          | scheduler_transitioning_exception()
          | scheduler_running_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_data_quality_rule_recommendation_run_errors() ::
          invalid_input_exception()
          | conflict_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type start_data_quality_ruleset_evaluation_run_errors() ::
          invalid_input_exception()
          | conflict_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_export_labels_task_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_import_labels_task_run_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_job_run_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_ml_evaluation_task_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | ml_transform_not_ready_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_ml_labeling_set_generation_task_run_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_trigger_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_workflow_run_errors() ::
          invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | concurrent_runs_exceeded_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type stop_column_statistics_task_run_errors() ::
          column_statistics_task_not_running_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()
          | column_statistics_task_stopping_exception()

  @type stop_column_statistics_task_run_schedule_errors() ::
          invalid_input_exception() | operation_timeout_exception() | entity_not_found_exception()

  @type stop_crawler_errors() ::
          crawler_not_running_exception()
          | crawler_stopping_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type stop_crawler_schedule_errors() ::
          scheduler_transitioning_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()
          | scheduler_not_running_exception()

  @type stop_session_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | illegal_session_state_exception()
          | operation_timeout_exception()

  @type stop_trigger_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type stop_workflow_run_errors() ::
          invalid_input_exception()
          | illegal_workflow_state_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type tag_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type test_connection_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | conflict_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type untag_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_blueprint_errors() ::
          illegal_blueprint_state_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_catalog_errors() ::
          glue_encryption_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_classifier_errors() ::
          invalid_input_exception()
          | version_mismatch_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_column_statistics_for_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_column_statistics_for_table_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_column_statistics_task_settings_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | version_mismatch_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_connection_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_crawler_errors() ::
          invalid_input_exception()
          | crawler_running_exception()
          | version_mismatch_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_crawler_schedule_errors() ::
          invalid_input_exception()
          | scheduler_transitioning_exception()
          | version_mismatch_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_data_quality_ruleset_errors() ::
          invalid_input_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_database_errors() ::
          glue_encryption_exception()
          | federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_dev_endpoint_errors() ::
          validation_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_integration_resource_property_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type update_integration_table_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type update_job_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_job_from_source_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_ml_transform_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_partition_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_registry_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type update_schema_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type update_source_control_from_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_errors() ::
          resource_not_ready_exception()
          | glue_encryption_exception()
          | federation_source_retryable_exception()
          | concurrent_modification_exception()
          | federation_source_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_optimizer_errors() ::
          throttling_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type update_trigger_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_usage_profile_errors() ::
          operation_not_supported_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_user_defined_function_errors() ::
          glue_encryption_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_workflow_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  def metadata do
    %{
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "glue",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Glue",
      signature_version: "v4",
      signing_name: "glue",
      target_prefix: "AWSGlue"
    }
  end

  @doc """
  Creates one or more partitions in a batch operation.
  """
  @spec batch_create_partition(map(), batch_create_partition_request(), list()) ::
          {:ok, batch_create_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_partition_errors()}
  def batch_create_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreatePartition", input, options)
  end

  @doc """
  Deletes a list of connection definitions from the Data Catalog.
  """
  @spec batch_delete_connection(map(), batch_delete_connection_request(), list()) ::
          {:ok, batch_delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_connection_errors()}
  def batch_delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteConnection", input, options)
  end

  @doc """
  Deletes one or more partitions in a batch operation.
  """
  @spec batch_delete_partition(map(), batch_delete_partition_request(), list()) ::
          {:ok, batch_delete_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_partition_errors()}
  def batch_delete_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeletePartition", input, options)
  end

  @doc """
  Deletes multiple tables at once.

  After completing this operation, you no longer have access to the table versions
  and
  partitions that belong to the deleted table. Glue deletes these "orphaned"
  resources
  asynchronously in a timely manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `BatchDeleteTable`, use `DeleteTableVersion` or
  `BatchDeleteTableVersion`, and `DeletePartition` or
  `BatchDeletePartition`, to delete any resources that belong to the
  table.
  """
  @spec batch_delete_table(map(), batch_delete_table_request(), list()) ::
          {:ok, batch_delete_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_table_errors()}
  def batch_delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteTable", input, options)
  end

  @doc """
  Deletes a specified batch of versions of a table.
  """
  @spec batch_delete_table_version(map(), batch_delete_table_version_request(), list()) ::
          {:ok, batch_delete_table_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_table_version_errors()}
  def batch_delete_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteTableVersion", input, options)
  end

  @doc """
  Retrieves information about a list of blueprints.
  """
  @spec batch_get_blueprints(map(), batch_get_blueprints_request(), list()) ::
          {:ok, batch_get_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_blueprints_errors()}
  def batch_get_blueprints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBlueprints", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of crawler names.

  After calling the `ListCrawlers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  @spec batch_get_crawlers(map(), batch_get_crawlers_request(), list()) ::
          {:ok, batch_get_crawlers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_crawlers_errors()}
  def batch_get_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCrawlers", input, options)
  end

  @doc """
  Retrieves the details for the custom patterns specified by a list of names.
  """
  @spec batch_get_custom_entity_types(map(), batch_get_custom_entity_types_request(), list()) ::
          {:ok, batch_get_custom_entity_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_custom_entity_types_errors()}
  def batch_get_custom_entity_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCustomEntityTypes", input, options)
  end

  @doc """
  Retrieves a list of data quality results for the specified result IDs.
  """
  @spec batch_get_data_quality_result(map(), batch_get_data_quality_result_request(), list()) ::
          {:ok, batch_get_data_quality_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_data_quality_result_errors()}
  def batch_get_data_quality_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDataQualityResult", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of development endpoint
  names.

  After
  calling the `ListDevEndpoints` operation, you can call this operation to access
  the
  data to which you have been granted permissions. This operation supports all IAM
  permissions,
  including permission conditions that uses tags.
  """
  @spec batch_get_dev_endpoints(map(), batch_get_dev_endpoints_request(), list()) ::
          {:ok, batch_get_dev_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_dev_endpoints_errors()}
  def batch_get_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDevEndpoints", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of job names.

  After calling the `ListJobs` operation, you can call this operation to access
  the data to which you have been granted permissions. This operation supports all
  IAM permissions, including permission conditions that uses tags.
  """
  @spec batch_get_jobs(map(), batch_get_jobs_request(), list()) ::
          {:ok, batch_get_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_jobs_errors()}
  def batch_get_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetJobs", input, options)
  end

  @doc """
  Retrieves partitions in a batch request.
  """
  @spec batch_get_partition(map(), batch_get_partition_request(), list()) ::
          {:ok, batch_get_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_partition_errors()}
  def batch_get_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetPartition", input, options)
  end

  @doc """
  Returns the configuration for the specified table optimizers.
  """
  @spec batch_get_table_optimizer(map(), batch_get_table_optimizer_request(), list()) ::
          {:ok, batch_get_table_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_table_optimizer_errors()}
  def batch_get_table_optimizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetTableOptimizer", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of trigger names.

  After calling the `ListTriggers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  @spec batch_get_triggers(map(), batch_get_triggers_request(), list()) ::
          {:ok, batch_get_triggers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_triggers_errors()}
  def batch_get_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetTriggers", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of workflow names.

  After calling the `ListWorkflows` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  @spec batch_get_workflows(map(), batch_get_workflows_request(), list()) ::
          {:ok, batch_get_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_workflows_errors()}
  def batch_get_workflows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetWorkflows", input, options)
  end

  @doc """
  Annotate datapoints over time for a specific data quality statistic.
  """
  @spec batch_put_data_quality_statistic_annotation(
          map(),
          batch_put_data_quality_statistic_annotation_request(),
          list()
        ) ::
          {:ok, batch_put_data_quality_statistic_annotation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_data_quality_statistic_annotation_errors()}
  def batch_put_data_quality_statistic_annotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchPutDataQualityStatisticAnnotation", input, options)
  end

  @doc """
  Stops one or more job runs for a specified job definition.
  """
  @spec batch_stop_job_run(map(), batch_stop_job_run_request(), list()) ::
          {:ok, batch_stop_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_stop_job_run_errors()}
  def batch_stop_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchStopJobRun", input, options)
  end

  @doc """
  Updates one or more partitions in a batch operation.
  """
  @spec batch_update_partition(map(), batch_update_partition_request(), list()) ::
          {:ok, batch_update_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_partition_errors()}
  def batch_update_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdatePartition", input, options)
  end

  @doc """
  Cancels the specified recommendation run that was being used to generate rules.
  """
  @spec cancel_data_quality_rule_recommendation_run(
          map(),
          cancel_data_quality_rule_recommendation_run_request(),
          list()
        ) ::
          {:ok, cancel_data_quality_rule_recommendation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_data_quality_rule_recommendation_run_errors()}
  def cancel_data_quality_rule_recommendation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelDataQualityRuleRecommendationRun", input, options)
  end

  @doc """
  Cancels a run where a ruleset is being evaluated against a data source.
  """
  @spec cancel_data_quality_ruleset_evaluation_run(
          map(),
          cancel_data_quality_ruleset_evaluation_run_request(),
          list()
        ) ::
          {:ok, cancel_data_quality_ruleset_evaluation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_data_quality_ruleset_evaluation_run_errors()}
  def cancel_data_quality_ruleset_evaluation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelDataQualityRulesetEvaluationRun", input, options)
  end

  @doc """
  Cancels (stops) a task run.

  Machine learning task runs are asynchronous tasks that Glue runs on your behalf
  as part of various machine learning workflows. You can cancel a
  machine learning task run at any time by calling `CancelMLTaskRun` with a task
  run's parent transform's `TransformID` and the task run's `TaskRunId`.
  """
  @spec cancel_ml_task_run(map(), cancel_ml_task_run_request(), list()) ::
          {:ok, cancel_ml_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_ml_task_run_errors()}
  def cancel_ml_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelMLTaskRun", input, options)
  end

  @doc """
  Cancels the statement.
  """
  @spec cancel_statement(map(), cancel_statement_request(), list()) ::
          {:ok, cancel_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_statement_errors()}
  def cancel_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelStatement", input, options)
  end

  @doc """
  Validates the supplied schema.

  This call has no side effects, it simply validates using the supplied schema
  using `DataFormat` as the format. Since it does not take a schema set name, no
  compatibility checks are performed.
  """
  @spec check_schema_version_validity(map(), check_schema_version_validity_input(), list()) ::
          {:ok, check_schema_version_validity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, check_schema_version_validity_errors()}
  def check_schema_version_validity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckSchemaVersionValidity", input, options)
  end

  @doc """
  Registers a blueprint with Glue.
  """
  @spec create_blueprint(map(), create_blueprint_request(), list()) ::
          {:ok, create_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_blueprint_errors()}
  def create_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBlueprint", input, options)
  end

  @doc """
  Creates a new catalog in the Glue Data Catalog.
  """
  @spec create_catalog(map(), create_catalog_request(), list()) ::
          {:ok, create_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_catalog_errors()}
  def create_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCatalog", input, options)
  end

  @doc """
  Creates a classifier in the user's account.

  This can be a `GrokClassifier`, an
  `XMLClassifier`, a `JsonClassifier`, or a `CsvClassifier`,
  depending on which field of the request is present.
  """
  @spec create_classifier(map(), create_classifier_request(), list()) ::
          {:ok, create_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_classifier_errors()}
  def create_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateClassifier", input, options)
  end

  @doc """
  Creates settings for a column statistics task.
  """
  @spec create_column_statistics_task_settings(
          map(),
          create_column_statistics_task_settings_request(),
          list()
        ) ::
          {:ok, create_column_statistics_task_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_column_statistics_task_settings_errors()}
  def create_column_statistics_task_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateColumnStatisticsTaskSettings", input, options)
  end

  @doc """
  Creates a connection definition in the Data Catalog.

  Connections used for creating federated resources require the IAM
  `glue:PassConnection` permission.
  """
  @spec create_connection(map(), create_connection_request(), list()) ::
          {:ok, create_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a new crawler with specified targets, role, configuration, and optional
  schedule.

  At least one crawl target must be specified, in the `s3Targets` field, the
  `jdbcTargets` field, or the `DynamoDBTargets` field.
  """
  @spec create_crawler(map(), create_crawler_request(), list()) ::
          {:ok, create_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_crawler_errors()}
  def create_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCrawler", input, options)
  end

  @doc """
  Creates a custom pattern that is used to detect sensitive data across the
  columns and rows of your structured data.

  Each custom pattern you create specifies a regular expression and an optional
  list of context words. If no context words are passed only a regular expression
  is checked.
  """
  @spec create_custom_entity_type(map(), create_custom_entity_type_request(), list()) ::
          {:ok, create_custom_entity_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_entity_type_errors()}
  def create_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomEntityType", input, options)
  end

  @doc """
  Creates a data quality ruleset with DQDL rules applied to a specified Glue
  table.

  You create the ruleset using the Data Quality Definition Language (DQDL). For
  more information, see the Glue developer guide.
  """
  @spec create_data_quality_ruleset(map(), create_data_quality_ruleset_request(), list()) ::
          {:ok, create_data_quality_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_quality_ruleset_errors()}
  def create_data_quality_ruleset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataQualityRuleset", input, options)
  end

  @doc """
  Creates a new database in a Data Catalog.
  """
  @spec create_database(map(), create_database_request(), list()) ::
          {:ok, create_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_database_errors()}
  def create_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatabase", input, options)
  end

  @doc """
  Creates a new development endpoint.
  """
  @spec create_dev_endpoint(map(), create_dev_endpoint_request(), list()) ::
          {:ok, create_dev_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dev_endpoint_errors()}
  def create_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDevEndpoint", input, options)
  end

  @doc """
  Creates a Zero-ETL integration in the caller's account between two resources
  with Amazon Resource Names (ARNs): the `SourceArn` and `TargetArn`.
  """
  @spec create_integration(map(), create_integration_request(), list()) ::
          {:ok, create_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIntegration", input, options)
  end

  @doc """
  This API can be used for setting up the `ResourceProperty` of the Glue
  connection (for the source) or Glue database ARN (for the target).

  These properties can include the role to access the connection or database. To
  set both source and target properties the same API needs to be invoked with the
  Glue connection ARN as `ResourceArn` with `SourceProcessingProperties` and the
  Glue database ARN as `ResourceArn` with `TargetProcessingProperties`
  respectively.
  """
  @spec create_integration_resource_property(
          map(),
          create_integration_resource_property_request(),
          list()
        ) ::
          {:ok, create_integration_resource_property_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_resource_property_errors()}
  def create_integration_resource_property(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIntegrationResourceProperty", input, options)
  end

  @doc """
  This API is used to provide optional override properties for the the tables that
  need to be replicated.

  These properties can include properties for filtering and partitioning for the
  source and target tables. To set both source and target properties the same API
  need to be invoked with the Glue connection ARN as `ResourceArn` with
  `SourceTableConfig`, and the Glue database ARN as `ResourceArn` with
  `TargetTableConfig` respectively.
  """
  @spec create_integration_table_properties(
          map(),
          create_integration_table_properties_request(),
          list()
        ) ::
          {:ok, create_integration_table_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_table_properties_errors()}
  def create_integration_table_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIntegrationTableProperties", input, options)
  end

  @doc """
  Creates a new job definition.
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateJob", input, options)
  end

  @doc """
  Creates an Glue machine learning transform.

  This operation creates the transform and
  all the necessary parameters to train it.

  Call this operation as the first step in the process of using a machine learning
  transform
  (such as the `FindMatches` transform) for deduplicating data. You can provide an
  optional `Description`, in addition to the parameters that you want to use for
  your
  algorithm.

  You must also specify certain parameters for the tasks that Glue runs on your
  behalf as part of learning from your data and creating a high-quality machine
  learning
  transform. These parameters include `Role`, and optionally,
  `AllocatedCapacity`, `Timeout`, and `MaxRetries`. For more
  information, see
  [Jobs](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).
  """
  @spec create_ml_transform(map(), create_ml_transform_request(), list()) ::
          {:ok, create_ml_transform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ml_transform_errors()}
  def create_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMLTransform", input, options)
  end

  @doc """
  Creates a new partition.
  """
  @spec create_partition(map(), create_partition_request(), list()) ::
          {:ok, create_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_partition_errors()}
  def create_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartition", input, options)
  end

  @doc """
  Creates a specified partition index in an existing table.
  """
  @spec create_partition_index(map(), create_partition_index_request(), list()) ::
          {:ok, create_partition_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_partition_index_errors()}
  def create_partition_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartitionIndex", input, options)
  end

  @doc """
  Creates a new registry which may be used to hold a collection of schemas.
  """
  @spec create_registry(map(), create_registry_input(), list()) ::
          {:ok, create_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_registry_errors()}
  def create_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRegistry", input, options)
  end

  @doc """
  Creates a new schema set and registers the schema definition.

  Returns an error if the schema set already exists without actually registering
  the version.

  When the schema set is created, a version checkpoint will be set to the first
  version. Compatibility mode "DISABLED" restricts any additional schema versions
  from being added after the first schema version. For all other compatibility
  modes, validation of compatibility settings will be applied only from the second
  version onwards when the `RegisterSchemaVersion` API is used.

  When this API is called without a `RegistryId`, this will create an entry for a
  "default-registry" in the registry database tables, if it is not already
  present.
  """
  @spec create_schema(map(), create_schema_input(), list()) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schema_errors()}
  def create_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSchema", input, options)
  end

  @doc """
  Transforms a directed acyclic graph (DAG) into code.
  """
  @spec create_script(map(), create_script_request(), list()) ::
          {:ok, create_script_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_script_errors()}
  def create_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScript", input, options)
  end

  @doc """
  Creates a new security configuration.

  A security configuration is a set of security properties that can be used by
  Glue. You can use a security configuration to encrypt data at rest. For
  information about using security configurations in Glue, see [Encrypting Data Written by Crawlers, Jobs, and Development
  Endpoints](https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).
  """
  @spec create_security_configuration(map(), create_security_configuration_request(), list()) ::
          {:ok, create_security_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_security_configuration_errors()}
  def create_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Creates a new session.
  """
  @spec create_session(map(), create_session_request(), list()) ::
          {:ok, create_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_session_errors()}
  def create_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSession", input, options)
  end

  @doc """
  Creates a new table definition in the Data Catalog.
  """
  @spec create_table(map(), create_table_request(), list()) ::
          {:ok, create_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_table_errors()}
  def create_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  Creates a new table optimizer for a specific function.
  """
  @spec create_table_optimizer(map(), create_table_optimizer_request(), list()) ::
          {:ok, create_table_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_table_optimizer_errors()}
  def create_table_optimizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTableOptimizer", input, options)
  end

  @doc """
  Creates a new trigger.

  Job arguments may be logged. Do not pass plaintext secrets as arguments.
  Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or
  other secret management mechanism if you intend to keep them within the Job.
  """
  @spec create_trigger(map(), create_trigger_request(), list()) ::
          {:ok, create_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trigger_errors()}
  def create_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrigger", input, options)
  end

  @doc """
  Creates an Glue usage profile.
  """
  @spec create_usage_profile(map(), create_usage_profile_request(), list()) ::
          {:ok, create_usage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_usage_profile_errors()}
  def create_usage_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUsageProfile", input, options)
  end

  @doc """
  Creates a new function definition in the Data Catalog.
  """
  @spec create_user_defined_function(map(), create_user_defined_function_request(), list()) ::
          {:ok, create_user_defined_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_defined_function_errors()}
  def create_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserDefinedFunction", input, options)
  end

  @doc """
  Creates a new workflow.
  """
  @spec create_workflow(map(), create_workflow_request(), list()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkflow", input, options)
  end

  @doc """
  Deletes an existing blueprint.
  """
  @spec delete_blueprint(map(), delete_blueprint_request(), list()) ::
          {:ok, delete_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_blueprint_errors()}
  def delete_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBlueprint", input, options)
  end

  @doc """
  Removes the specified catalog from the Glue Data Catalog.

  After completing this operation, you no longer have access to the databases,
  tables (and all table versions and partitions that might belong to the tables)
  and the user-defined functions in the deleted catalog. Glue deletes these
  "orphaned" resources asynchronously in a timely manner, at the discretion of the
  service.

  To ensure the immediate deletion of all related resources before calling the
  `DeleteCatalog` operation, use `DeleteTableVersion` (or
  `BatchDeleteTableVersion`), `DeletePartition` (or `BatchDeletePartition`),
  `DeleteTable` (or `BatchDeleteTable`), `DeleteUserDefinedFunction` and
  `DeleteDatabase` to delete any resources that belong to the catalog.
  """
  @spec delete_catalog(map(), delete_catalog_request(), list()) ::
          {:ok, delete_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_catalog_errors()}
  def delete_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCatalog", input, options)
  end

  @doc """
  Removes a classifier from the Data Catalog.
  """
  @spec delete_classifier(map(), delete_classifier_request(), list()) ::
          {:ok, delete_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_classifier_errors()}
  def delete_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClassifier", input, options)
  end

  @doc """
  Delete the partition column statistics of a column.

  The Identity and Access Management (IAM) permission required for this operation
  is `DeletePartition`.
  """
  @spec delete_column_statistics_for_partition(
          map(),
          delete_column_statistics_for_partition_request(),
          list()
        ) ::
          {:ok, delete_column_statistics_for_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_column_statistics_for_partition_errors()}
  def delete_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `DeleteTable`.
  """
  @spec delete_column_statistics_for_table(
          map(),
          delete_column_statistics_for_table_request(),
          list()
        ) ::
          {:ok, delete_column_statistics_for_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_column_statistics_for_table_errors()}
  def delete_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteColumnStatisticsForTable", input, options)
  end

  @doc """
  Deletes settings for a column statistics task.
  """
  @spec delete_column_statistics_task_settings(
          map(),
          delete_column_statistics_task_settings_request(),
          list()
        ) ::
          {:ok, delete_column_statistics_task_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_column_statistics_task_settings_errors()}
  def delete_column_statistics_task_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteColumnStatisticsTaskSettings", input, options)
  end

  @doc """
  Deletes a connection from the Data Catalog.
  """
  @spec delete_connection(map(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Removes a specified crawler from the Glue Data Catalog, unless the crawler state
  is
  `RUNNING`.
  """
  @spec delete_crawler(map(), delete_crawler_request(), list()) ::
          {:ok, delete_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_crawler_errors()}
  def delete_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCrawler", input, options)
  end

  @doc """
  Deletes a custom pattern by specifying its name.
  """
  @spec delete_custom_entity_type(map(), delete_custom_entity_type_request(), list()) ::
          {:ok, delete_custom_entity_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_entity_type_errors()}
  def delete_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomEntityType", input, options)
  end

  @doc """
  Deletes a data quality ruleset.
  """
  @spec delete_data_quality_ruleset(map(), delete_data_quality_ruleset_request(), list()) ::
          {:ok, delete_data_quality_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_quality_ruleset_errors()}
  def delete_data_quality_ruleset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataQualityRuleset", input, options)
  end

  @doc """
  Removes a specified database from a Data Catalog.

  After completing this operation, you no longer have access to the tables (and
  all table
  versions and partitions that might belong to the tables) and the user-defined
  functions in
  the deleted database. Glue deletes these "orphaned" resources asynchronously in
  a timely
  manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteDatabase`, use `DeleteTableVersion` or
  `BatchDeleteTableVersion`, `DeletePartition` or
  `BatchDeletePartition`, `DeleteUserDefinedFunction`, and
  `DeleteTable` or `BatchDeleteTable`, to delete any resources that
  belong to the database.
  """
  @spec delete_database(map(), delete_database_request(), list()) ::
          {:ok, delete_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_database_errors()}
  def delete_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a specified development endpoint.
  """
  @spec delete_dev_endpoint(map(), delete_dev_endpoint_request(), list()) ::
          {:ok, delete_dev_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dev_endpoint_errors()}
  def delete_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDevEndpoint", input, options)
  end

  @doc """
  Deletes the specified Zero-ETL integration.
  """
  @spec delete_integration(map(), delete_integration_request(), list()) ::
          {:ok, delete_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIntegration", input, options)
  end

  @doc """
  Deletes the table properties that have been created for the tables that need to
  be replicated.
  """
  @spec delete_integration_table_properties(
          map(),
          delete_integration_table_properties_request(),
          list()
        ) ::
          {:ok, delete_integration_table_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_table_properties_errors()}
  def delete_integration_table_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIntegrationTableProperties", input, options)
  end

  @doc """
  Deletes a specified job definition.

  If the job definition
  is not found, no exception is thrown.
  """
  @spec delete_job(map(), delete_job_request(), list()) ::
          {:ok, delete_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_errors()}
  def delete_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteJob", input, options)
  end

  @doc """
  Deletes an Glue machine learning transform.

  Machine learning transforms are a special
  type of transform that use machine learning to learn the details of the
  transformation to be
  performed by learning from examples provided by humans. These transformations
  are then saved
  by Glue. If you no longer need a transform, you can delete it by calling
  `DeleteMLTransforms`. However, any Glue jobs that still reference the deleted
  transform will no longer succeed.
  """
  @spec delete_ml_transform(map(), delete_ml_transform_request(), list()) ::
          {:ok, delete_ml_transform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ml_transform_errors()}
  def delete_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMLTransform", input, options)
  end

  @doc """
  Deletes a specified partition.
  """
  @spec delete_partition(map(), delete_partition_request(), list()) ::
          {:ok, delete_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_partition_errors()}
  def delete_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePartition", input, options)
  end

  @doc """
  Deletes a specified partition index from an existing table.
  """
  @spec delete_partition_index(map(), delete_partition_index_request(), list()) ::
          {:ok, delete_partition_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_partition_index_errors()}
  def delete_partition_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePartitionIndex", input, options)
  end

  @doc """
  Delete the entire registry including schema and all of its versions.

  To get the status of the delete operation, you can call the `GetRegistry` API
  after the asynchronous call. Deleting a registry will deactivate all online
  operations for the registry such as the `UpdateRegistry`, `CreateSchema`,
  `UpdateSchema`, and `RegisterSchemaVersion` APIs.
  """
  @spec delete_registry(map(), delete_registry_input(), list()) ::
          {:ok, delete_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_registry_errors()}
  def delete_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRegistry", input, options)
  end

  @doc """
  Deletes a specified policy.
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
  Deletes the entire schema set, including the schema set and all of its versions.

  To get the status of the delete operation, you can call `GetSchema` API after
  the asynchronous call. Deleting a registry will deactivate all online operations
  for the schema, such as the `GetSchemaByDefinition`, and `RegisterSchemaVersion`
  APIs.
  """
  @spec delete_schema(map(), delete_schema_input(), list()) ::
          {:ok, delete_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schema_errors()}
  def delete_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSchema", input, options)
  end

  @doc """
  Remove versions from the specified schema.

  A version number or range may be supplied. If the compatibility mode forbids
  deleting of a version that is necessary, such as BACKWARDS_FULL, an error is
  returned. Calling the `GetSchemaVersions` API after this call will list the
  status of the deleted versions.

  When the range of version numbers contain check pointed version, the API will
  return a 409 conflict and will not proceed with the deletion. You have to remove
  the checkpoint first using the `DeleteSchemaCheckpoint` API before using this
  API.

  You cannot use the `DeleteSchemaVersions` API to delete the first schema version
  in the schema set. The first schema version can only be deleted by the
  `DeleteSchema` API. This operation will also delete the attached
  `SchemaVersionMetadata` under the schema versions. Hard deletes will be enforced
  on the database.

  If the compatibility mode forbids deleting of a version that is necessary, such
  as BACKWARDS_FULL, an error is returned.
  """
  @spec delete_schema_versions(map(), delete_schema_versions_input(), list()) ::
          {:ok, delete_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schema_versions_errors()}
  def delete_schema_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSchemaVersions", input, options)
  end

  @doc """
  Deletes a specified security configuration.
  """
  @spec delete_security_configuration(map(), delete_security_configuration_request(), list()) ::
          {:ok, delete_security_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_security_configuration_errors()}
  def delete_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Deletes the session.
  """
  @spec delete_session(map(), delete_session_request(), list()) ::
          {:ok, delete_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_session_errors()}
  def delete_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSession", input, options)
  end

  @doc """
  Removes a table definition from the Data Catalog.

  After completing this operation, you no longer have access to the table versions
  and
  partitions that belong to the deleted table. Glue deletes these "orphaned"
  resources
  asynchronously in a timely manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteTable`, use `DeleteTableVersion` or
  `BatchDeleteTableVersion`, and `DeletePartition` or
  `BatchDeletePartition`, to delete any resources that belong to the
  table.
  """
  @spec delete_table(map(), delete_table_request(), list()) ::
          {:ok, delete_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_errors()}
  def delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Deletes an optimizer and all associated metadata for a table.

  The optimization will no longer be performed on the table.
  """
  @spec delete_table_optimizer(map(), delete_table_optimizer_request(), list()) ::
          {:ok, delete_table_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_optimizer_errors()}
  def delete_table_optimizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTableOptimizer", input, options)
  end

  @doc """
  Deletes a specified version of a table.
  """
  @spec delete_table_version(map(), delete_table_version_request(), list()) ::
          {:ok, delete_table_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_version_errors()}
  def delete_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTableVersion", input, options)
  end

  @doc """
  Deletes a specified trigger.

  If the trigger is not found, no
  exception is thrown.
  """
  @spec delete_trigger(map(), delete_trigger_request(), list()) ::
          {:ok, delete_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trigger_errors()}
  def delete_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrigger", input, options)
  end

  @doc """
  Deletes the Glue specified usage profile.
  """
  @spec delete_usage_profile(map(), delete_usage_profile_request(), list()) ::
          {:ok, delete_usage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_usage_profile_errors()}
  def delete_usage_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUsageProfile", input, options)
  end

  @doc """
  Deletes an existing function definition from the Data Catalog.
  """
  @spec delete_user_defined_function(map(), delete_user_defined_function_request(), list()) ::
          {:ok, delete_user_defined_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_defined_function_errors()}
  def delete_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserDefinedFunction", input, options)
  end

  @doc """
  Deletes a workflow.
  """
  @spec delete_workflow(map(), delete_workflow_request(), list()) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkflow", input, options)
  end

  @doc """
  The `DescribeConnectionType` API provides full details of the supported options
  for a given connection type in Glue.
  """
  @spec describe_connection_type(map(), describe_connection_type_request(), list()) ::
          {:ok, describe_connection_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connection_type_errors()}
  def describe_connection_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionType", input, options)
  end

  @doc """
  Provides details regarding the entity used with the connection type, with a
  description of the data model for each field in the selected entity.

  The response includes all the fields which make up the entity.
  """
  @spec describe_entity(map(), describe_entity_request(), list()) ::
          {:ok, describe_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_entity_errors()}
  def describe_entity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntity", input, options)
  end

  @doc """
  Returns a list of inbound integrations for the specified integration.
  """
  @spec describe_inbound_integrations(map(), describe_inbound_integrations_request(), list()) ::
          {:ok, describe_inbound_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_inbound_integrations_errors()}
  def describe_inbound_integrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInboundIntegrations", input, options)
  end

  @doc """
  The API is used to retrieve a list of integrations.
  """
  @spec describe_integrations(map(), describe_integrations_request(), list()) ::
          {:ok, describe_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_integrations_errors()}
  def describe_integrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIntegrations", input, options)
  end

  @doc """
  Retrieves the details of a blueprint.
  """
  @spec get_blueprint(map(), get_blueprint_request(), list()) ::
          {:ok, get_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprint_errors()}
  def get_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprint", input, options)
  end

  @doc """
  Retrieves the details of a blueprint run.
  """
  @spec get_blueprint_run(map(), get_blueprint_run_request(), list()) ::
          {:ok, get_blueprint_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprint_run_errors()}
  def get_blueprint_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprintRun", input, options)
  end

  @doc """
  Retrieves the details of blueprint runs for a specified blueprint.
  """
  @spec get_blueprint_runs(map(), get_blueprint_runs_request(), list()) ::
          {:ok, get_blueprint_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprint_runs_errors()}
  def get_blueprint_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprintRuns", input, options)
  end

  @doc """
  The name of the Catalog to retrieve.

  This should be all lowercase.
  """
  @spec get_catalog(map(), get_catalog_request(), list()) ::
          {:ok, get_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_catalog_errors()}
  def get_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCatalog", input, options)
  end

  @doc """
  Retrieves the status of a migration operation.
  """
  @spec get_catalog_import_status(map(), get_catalog_import_status_request(), list()) ::
          {:ok, get_catalog_import_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_catalog_import_status_errors()}
  def get_catalog_import_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCatalogImportStatus", input, options)
  end

  @doc """
  Retrieves all catalogs defined in a catalog in the Glue Data Catalog.

  For a Redshift-federated catalog use case, this operation returns the list of
  catalogs mapped to Redshift databases in the Redshift namespace catalog.
  """
  @spec get_catalogs(map(), get_catalogs_request(), list()) ::
          {:ok, get_catalogs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_catalogs_errors()}
  def get_catalogs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCatalogs", input, options)
  end

  @doc """
  Retrieve a classifier by name.
  """
  @spec get_classifier(map(), get_classifier_request(), list()) ::
          {:ok, get_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_classifier_errors()}
  def get_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetClassifier", input, options)
  end

  @doc """
  Lists all classifier objects in the Data Catalog.
  """
  @spec get_classifiers(map(), get_classifiers_request(), list()) ::
          {:ok, get_classifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_classifiers_errors()}
  def get_classifiers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetClassifiers", input, options)
  end

  @doc """
  Retrieves partition statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `GetPartition`.
  """
  @spec get_column_statistics_for_partition(
          map(),
          get_column_statistics_for_partition_request(),
          list()
        ) ::
          {:ok, get_column_statistics_for_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_column_statistics_for_partition_errors()}
  def get_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `GetTable`.
  """
  @spec get_column_statistics_for_table(map(), get_column_statistics_for_table_request(), list()) ::
          {:ok, get_column_statistics_for_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_column_statistics_for_table_errors()}
  def get_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsForTable", input, options)
  end

  @doc """
  Get the associated metadata/information for a task run, given a task run ID.
  """
  @spec get_column_statistics_task_run(map(), get_column_statistics_task_run_request(), list()) ::
          {:ok, get_column_statistics_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_column_statistics_task_run_errors()}
  def get_column_statistics_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsTaskRun", input, options)
  end

  @doc """
  Retrieves information about all runs associated with the specified table.
  """
  @spec get_column_statistics_task_runs(map(), get_column_statistics_task_runs_request(), list()) ::
          {:ok, get_column_statistics_task_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_column_statistics_task_runs_errors()}
  def get_column_statistics_task_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsTaskRuns", input, options)
  end

  @doc """
  Gets settings for a column statistics task.
  """
  @spec get_column_statistics_task_settings(
          map(),
          get_column_statistics_task_settings_request(),
          list()
        ) ::
          {:ok, get_column_statistics_task_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_column_statistics_task_settings_errors()}
  def get_column_statistics_task_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsTaskSettings", input, options)
  end

  @doc """
  Retrieves a connection definition from the Data Catalog.
  """
  @spec get_connection(map(), get_connection_request(), list()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Retrieves a list of connection definitions from the Data Catalog.
  """
  @spec get_connections(map(), get_connections_request(), list()) ::
          {:ok, get_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connections_errors()}
  def get_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnections", input, options)
  end

  @doc """
  Retrieves metadata for a specified crawler.
  """
  @spec get_crawler(map(), get_crawler_request(), list()) ::
          {:ok, get_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_crawler_errors()}
  def get_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawler", input, options)
  end

  @doc """
  Retrieves metrics about specified crawlers.
  """
  @spec get_crawler_metrics(map(), get_crawler_metrics_request(), list()) ::
          {:ok, get_crawler_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_crawler_metrics_errors()}
  def get_crawler_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawlerMetrics", input, options)
  end

  @doc """
  Retrieves metadata for all crawlers defined in the customer
  account.
  """
  @spec get_crawlers(map(), get_crawlers_request(), list()) ::
          {:ok, get_crawlers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_crawlers_errors()}
  def get_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawlers", input, options)
  end

  @doc """
  Retrieves the details of a custom pattern by specifying its name.
  """
  @spec get_custom_entity_type(map(), get_custom_entity_type_request(), list()) ::
          {:ok, get_custom_entity_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_custom_entity_type_errors()}
  def get_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomEntityType", input, options)
  end

  @doc """
  Retrieves the security configuration for a specified catalog.
  """
  @spec get_data_catalog_encryption_settings(
          map(),
          get_data_catalog_encryption_settings_request(),
          list()
        ) ::
          {:ok, get_data_catalog_encryption_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_catalog_encryption_settings_errors()}
  def get_data_catalog_encryption_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Retrieve the training status of the model along with more information
  (CompletedOn, StartedOn, FailureReason).
  """
  @spec get_data_quality_model(map(), get_data_quality_model_request(), list()) ::
          {:ok, get_data_quality_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_model_errors()}
  def get_data_quality_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityModel", input, options)
  end

  @doc """
  Retrieve a statistic's predictions for a given Profile ID.
  """
  @spec get_data_quality_model_result(map(), get_data_quality_model_result_request(), list()) ::
          {:ok, get_data_quality_model_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_model_result_errors()}
  def get_data_quality_model_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityModelResult", input, options)
  end

  @doc """
  Retrieves the result of a data quality rule evaluation.
  """
  @spec get_data_quality_result(map(), get_data_quality_result_request(), list()) ::
          {:ok, get_data_quality_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_result_errors()}
  def get_data_quality_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityResult", input, options)
  end

  @doc """
  Gets the specified recommendation run that was used to generate rules.
  """
  @spec get_data_quality_rule_recommendation_run(
          map(),
          get_data_quality_rule_recommendation_run_request(),
          list()
        ) ::
          {:ok, get_data_quality_rule_recommendation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_rule_recommendation_run_errors()}
  def get_data_quality_rule_recommendation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityRuleRecommendationRun", input, options)
  end

  @doc """
  Returns an existing ruleset by identifier or name.
  """
  @spec get_data_quality_ruleset(map(), get_data_quality_ruleset_request(), list()) ::
          {:ok, get_data_quality_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_ruleset_errors()}
  def get_data_quality_ruleset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityRuleset", input, options)
  end

  @doc """
  Retrieves a specific run where a ruleset is evaluated against a data source.
  """
  @spec get_data_quality_ruleset_evaluation_run(
          map(),
          get_data_quality_ruleset_evaluation_run_request(),
          list()
        ) ::
          {:ok, get_data_quality_ruleset_evaluation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_quality_ruleset_evaluation_run_errors()}
  def get_data_quality_ruleset_evaluation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataQualityRulesetEvaluationRun", input, options)
  end

  @doc """
  Retrieves the definition of a specified database.
  """
  @spec get_database(map(), get_database_request(), list()) ::
          {:ok, get_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_database_errors()}
  def get_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDatabase", input, options)
  end

  @doc """
  Retrieves all databases defined in a given Data Catalog.
  """
  @spec get_databases(map(), get_databases_request(), list()) ::
          {:ok, get_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_databases_errors()}
  def get_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDatabases", input, options)
  end

  @doc """
  Transforms a Python script into a directed acyclic graph (DAG).
  """
  @spec get_dataflow_graph(map(), get_dataflow_graph_request(), list()) ::
          {:ok, get_dataflow_graph_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dataflow_graph_errors()}
  def get_dataflow_graph(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataflowGraph", input, options)
  end

  @doc """
  Retrieves information about a specified development endpoint.

  When you create a development endpoint in a virtual private cloud (VPC), Glue
  returns only
  a private IP address, and the public IP address field is not populated. When you
  create a
  non-VPC development endpoint, Glue returns only a public IP address.
  """
  @spec get_dev_endpoint(map(), get_dev_endpoint_request(), list()) ::
          {:ok, get_dev_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dev_endpoint_errors()}
  def get_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevEndpoint", input, options)
  end

  @doc """
  Retrieves all the development endpoints in this Amazon Web Services account.

  When you create a development endpoint in a virtual private cloud (VPC), Glue
  returns only a private IP address
  and the public IP address field is not populated. When you create a non-VPC
  development
  endpoint, Glue returns only a public IP address.
  """
  @spec get_dev_endpoints(map(), get_dev_endpoints_request(), list()) ::
          {:ok, get_dev_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dev_endpoints_errors()}
  def get_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevEndpoints", input, options)
  end

  @doc """
  This API is used to query preview data from a given connection type or from a
  native Amazon S3 based Glue Data Catalog.

  Returns records as an array of JSON blobs. Each record is formatted using
  Jackson JsonNode based on the field type defined by the `DescribeEntity` API.

  Spark connectors generate schemas according to the same data type mapping as in
  the `DescribeEntity` API. Spark connectors convert data to the appropriate data
  types matching the schema when returning rows.
  """
  @spec get_entity_records(map(), get_entity_records_request(), list()) ::
          {:ok, get_entity_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_entity_records_errors()}
  def get_entity_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEntityRecords", input, options)
  end

  @doc """
  This API is used for fetching the `ResourceProperty` of the Glue connection (for
  the source) or Glue database ARN (for the target)
  """
  @spec get_integration_resource_property(
          map(),
          get_integration_resource_property_request(),
          list()
        ) ::
          {:ok, get_integration_resource_property_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_resource_property_errors()}
  def get_integration_resource_property(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIntegrationResourceProperty", input, options)
  end

  @doc """
  This API is used to retrieve optional override properties for the tables that
  need to be replicated.

  These properties can include properties for filtering and partition for source
  and target tables.
  """
  @spec get_integration_table_properties(
          map(),
          get_integration_table_properties_request(),
          list()
        ) ::
          {:ok, get_integration_table_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_table_properties_errors()}
  def get_integration_table_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIntegrationTableProperties", input, options)
  end

  @doc """
  Retrieves an existing job definition.
  """
  @spec get_job(map(), get_job_request(), list()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJob", input, options)
  end

  @doc """
  Returns information on a job bookmark entry.

  For more information about enabling and using job bookmarks, see:

    *

  [Tracking processed data using job bookmarks](https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html)

    *

  [Job parameters used by Glue](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)

    *

  [Job structure](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job)
  """
  @spec get_job_bookmark(map(), get_job_bookmark_request(), list()) ::
          {:ok, get_job_bookmark_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_bookmark_errors()}
  def get_job_bookmark(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobBookmark", input, options)
  end

  @doc """
  Retrieves the metadata for a given job run.

  Job run history is accessible for 365 days for your workflow and job run.
  """
  @spec get_job_run(map(), get_job_run_request(), list()) ::
          {:ok, get_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_run_errors()}
  def get_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobRun", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given job definition.

  `GetJobRuns` returns the job runs in chronological order, with the newest jobs
  returned first.
  """
  @spec get_job_runs(map(), get_job_runs_request(), list()) ::
          {:ok, get_job_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_runs_errors()}
  def get_job_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobRuns", input, options)
  end

  @doc """
  Retrieves all current job definitions.
  """
  @spec get_jobs(map(), get_jobs_request(), list()) ::
          {:ok, get_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_jobs_errors()}
  def get_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobs", input, options)
  end

  @doc """
  Creates mappings.
  """
  @spec get_mapping(map(), get_mapping_request(), list()) ::
          {:ok, get_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_mapping_errors()}
  def get_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMapping", input, options)
  end

  @doc """
  Gets details for a specific task run on a machine learning transform.

  Machine learning
  task runs are asynchronous tasks that Glue runs on your behalf as part of
  various machine
  learning workflows. You can check the stats of any task run by calling
  `GetMLTaskRun` with the `TaskRunID` and its parent transform's
  `TransformID`.
  """
  @spec get_ml_task_run(map(), get_ml_task_run_request(), list()) ::
          {:ok, get_ml_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_task_run_errors()}
  def get_ml_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTaskRun", input, options)
  end

  @doc """
  Gets a list of runs for a machine learning transform.

  Machine learning task runs are
  asynchronous tasks that Glue runs on your behalf as part of various machine
  learning
  workflows. You can get a sortable, filterable list of machine learning task runs
  by calling
  `GetMLTaskRuns` with their parent transform's `TransformID` and other
  optional parameters as documented in this section.

  This operation returns a list of historic runs and must be paginated.
  """
  @spec get_ml_task_runs(map(), get_ml_task_runs_request(), list()) ::
          {:ok, get_ml_task_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_task_runs_errors()}
  def get_ml_task_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTaskRuns", input, options)
  end

  @doc """
  Gets an Glue machine learning transform artifact and all its corresponding
  metadata.

  Machine learning transforms are a special type of transform that use machine
  learning to learn
  the details of the transformation to be performed by learning from examples
  provided by
  humans. These transformations are then saved by Glue. You can retrieve their
  metadata by
  calling `GetMLTransform`.
  """
  @spec get_ml_transform(map(), get_ml_transform_request(), list()) ::
          {:ok, get_ml_transform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_transform_errors()}
  def get_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTransform", input, options)
  end

  @doc """
  Gets a sortable, filterable list of existing Glue machine learning transforms.

  Machine
  learning transforms are a special type of transform that use machine learning to
  learn the
  details of the transformation to be performed by learning from examples provided
  by humans.
  These transformations are then saved by Glue, and you can retrieve their
  metadata by
  calling `GetMLTransforms`.
  """
  @spec get_ml_transforms(map(), get_ml_transforms_request(), list()) ::
          {:ok, get_ml_transforms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_transforms_errors()}
  def get_ml_transforms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTransforms", input, options)
  end

  @doc """
  Retrieves information about a specified partition.
  """
  @spec get_partition(map(), get_partition_request(), list()) ::
          {:ok, get_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_partition_errors()}
  def get_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartition", input, options)
  end

  @doc """
  Retrieves the partition indexes associated with a table.
  """
  @spec get_partition_indexes(map(), get_partition_indexes_request(), list()) ::
          {:ok, get_partition_indexes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_partition_indexes_errors()}
  def get_partition_indexes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartitionIndexes", input, options)
  end

  @doc """
  Retrieves information about the partitions in a table.
  """
  @spec get_partitions(map(), get_partitions_request(), list()) ::
          {:ok, get_partitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_partitions_errors()}
  def get_partitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartitions", input, options)
  end

  @doc """
  Gets code to perform a specified mapping.
  """
  @spec get_plan(map(), get_plan_request(), list()) ::
          {:ok, get_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_plan_errors()}
  def get_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPlan", input, options)
  end

  @doc """
  Describes the specified registry in detail.
  """
  @spec get_registry(map(), get_registry_input(), list()) ::
          {:ok, get_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registry_errors()}
  def get_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegistry", input, options)
  end

  @doc """
  Retrieves the resource policies set on individual resources by Resource Access
  Manager
  during cross-account permission grants.

  Also retrieves the Data Catalog resource
  policy.

  If you enabled metadata encryption in Data Catalog settings, and you do not have
  permission on the KMS key, the operation can't return the Data Catalog resource
  policy.
  """
  @spec get_resource_policies(map(), get_resource_policies_request(), list()) ::
          {:ok, get_resource_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policies_errors()}
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicies", input, options)
  end

  @doc """
  Retrieves a specified resource policy.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Describes the specified schema in detail.
  """
  @spec get_schema(map(), get_schema_input(), list()) ::
          {:ok, get_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_errors()}
  def get_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchema", input, options)
  end

  @doc """
  Retrieves a schema by the `SchemaDefinition`.

  The schema definition is sent to the Schema Registry, canonicalized, and hashed.
  If the hash is matched within the scope of the `SchemaName` or ARN (or the
  default registry, if none is supplied), that schema’s metadata is returned.
  Otherwise, a 404 or NotFound error is returned. Schema versions in `Deleted`
  statuses will not be included in the results.
  """
  @spec get_schema_by_definition(map(), get_schema_by_definition_input(), list()) ::
          {:ok, get_schema_by_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_by_definition_errors()}
  def get_schema_by_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaByDefinition", input, options)
  end

  @doc """
  Get the specified schema by its unique ID assigned when a version of the schema
  is created or registered.

  Schema versions in Deleted status will not be included in the results.
  """
  @spec get_schema_version(map(), get_schema_version_input(), list()) ::
          {:ok, get_schema_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_version_errors()}
  def get_schema_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaVersion", input, options)
  end

  @doc """
  Fetches the schema version difference in the specified difference type between
  two stored schema versions in the Schema Registry.

  This API allows you to compare two schema versions between two schema
  definitions under the same schema.
  """
  @spec get_schema_versions_diff(map(), get_schema_versions_diff_input(), list()) ::
          {:ok, get_schema_versions_diff_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_versions_diff_errors()}
  def get_schema_versions_diff(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaVersionsDiff", input, options)
  end

  @doc """
  Retrieves a specified security configuration.
  """
  @spec get_security_configuration(map(), get_security_configuration_request(), list()) ::
          {:ok, get_security_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_security_configuration_errors()}
  def get_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityConfiguration", input, options)
  end

  @doc """
  Retrieves a list of all security configurations.
  """
  @spec get_security_configurations(map(), get_security_configurations_request(), list()) ::
          {:ok, get_security_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_security_configurations_errors()}
  def get_security_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityConfigurations", input, options)
  end

  @doc """
  Retrieves the session.
  """
  @spec get_session(map(), get_session_request(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSession", input, options)
  end

  @doc """
  Retrieves the statement.
  """
  @spec get_statement(map(), get_statement_request(), list()) ::
          {:ok, get_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_statement_errors()}
  def get_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatement", input, options)
  end

  @doc """
  Retrieves the `Table` definition in a Data Catalog for
  a specified table.
  """
  @spec get_table(map(), get_table_request(), list()) ::
          {:ok, get_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_errors()}
  def get_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Returns the configuration of all optimizers associated with a specified table.
  """
  @spec get_table_optimizer(map(), get_table_optimizer_request(), list()) ::
          {:ok, get_table_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_optimizer_errors()}
  def get_table_optimizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableOptimizer", input, options)
  end

  @doc """
  Retrieves a specified version of a table.
  """
  @spec get_table_version(map(), get_table_version_request(), list()) ::
          {:ok, get_table_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_version_errors()}
  def get_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableVersion", input, options)
  end

  @doc """
  Retrieves a list of strings that identify available versions of
  a specified table.
  """
  @spec get_table_versions(map(), get_table_versions_request(), list()) ::
          {:ok, get_table_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_versions_errors()}
  def get_table_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableVersions", input, options)
  end

  @doc """
  Retrieves the definitions of some or all of the tables in a given
  `Database`.
  """
  @spec get_tables(map(), get_tables_request(), list()) ::
          {:ok, get_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tables_errors()}
  def get_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTables", input, options)
  end

  @doc """
  Retrieves a list of tags associated with a resource.
  """
  @spec get_tags(map(), get_tags_request(), list()) ::
          {:ok, get_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTags", input, options)
  end

  @doc """
  Retrieves the definition of a trigger.
  """
  @spec get_trigger(map(), get_trigger_request(), list()) ::
          {:ok, get_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trigger_errors()}
  def get_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrigger", input, options)
  end

  @doc """
  Gets all the triggers associated with a job.
  """
  @spec get_triggers(map(), get_triggers_request(), list()) ::
          {:ok, get_triggers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_triggers_errors()}
  def get_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTriggers", input, options)
  end

  @doc """
  Retrieves partition metadata from the Data Catalog that contains unfiltered
  metadata.

  For IAM authorization, the public IAM action associated with this API is
  `glue:GetPartition`.
  """
  @spec get_unfiltered_partition_metadata(
          map(),
          get_unfiltered_partition_metadata_request(),
          list()
        ) ::
          {:ok, get_unfiltered_partition_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_unfiltered_partition_metadata_errors()}
  def get_unfiltered_partition_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredPartitionMetadata", input, options)
  end

  @doc """
  Retrieves partition metadata from the Data Catalog that contains unfiltered
  metadata.

  For IAM authorization, the public IAM action associated with this API is
  `glue:GetPartitions`.
  """
  @spec get_unfiltered_partitions_metadata(
          map(),
          get_unfiltered_partitions_metadata_request(),
          list()
        ) ::
          {:ok, get_unfiltered_partitions_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_unfiltered_partitions_metadata_errors()}
  def get_unfiltered_partitions_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredPartitionsMetadata", input, options)
  end

  @doc """
  Allows a third-party analytical engine to retrieve unfiltered table metadata
  from the Data Catalog.

  For IAM authorization, the public IAM action associated with this API is
  `glue:GetTable`.
  """
  @spec get_unfiltered_table_metadata(map(), get_unfiltered_table_metadata_request(), list()) ::
          {:ok, get_unfiltered_table_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_unfiltered_table_metadata_errors()}
  def get_unfiltered_table_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredTableMetadata", input, options)
  end

  @doc """
  Retrieves information about the specified Glue usage profile.
  """
  @spec get_usage_profile(map(), get_usage_profile_request(), list()) ::
          {:ok, get_usage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_profile_errors()}
  def get_usage_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUsageProfile", input, options)
  end

  @doc """
  Retrieves a specified function definition from the Data Catalog.
  """
  @spec get_user_defined_function(map(), get_user_defined_function_request(), list()) ::
          {:ok, get_user_defined_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_defined_function_errors()}
  def get_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserDefinedFunction", input, options)
  end

  @doc """
  Retrieves multiple function definitions from the Data Catalog.
  """
  @spec get_user_defined_functions(map(), get_user_defined_functions_request(), list()) ::
          {:ok, get_user_defined_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_defined_functions_errors()}
  def get_user_defined_functions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserDefinedFunctions", input, options)
  end

  @doc """
  Retrieves resource metadata for a workflow.
  """
  @spec get_workflow(map(), get_workflow_request(), list()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflow", input, options)
  end

  @doc """
  Retrieves the metadata for a given workflow run.

  Job run history is accessible for 90 days for your workflow and job run.
  """
  @spec get_workflow_run(map(), get_workflow_run_request(), list()) ::
          {:ok, get_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_run_errors()}
  def get_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRun", input, options)
  end

  @doc """
  Retrieves the workflow run properties which were set during the run.
  """
  @spec get_workflow_run_properties(map(), get_workflow_run_properties_request(), list()) ::
          {:ok, get_workflow_run_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_run_properties_errors()}
  def get_workflow_run_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRunProperties", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given workflow.
  """
  @spec get_workflow_runs(map(), get_workflow_runs_request(), list()) ::
          {:ok, get_workflow_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_runs_errors()}
  def get_workflow_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRuns", input, options)
  end

  @doc """
  Imports an existing Amazon Athena Data Catalog to Glue.
  """
  @spec import_catalog_to_glue(map(), import_catalog_to_glue_request(), list()) ::
          {:ok, import_catalog_to_glue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_catalog_to_glue_errors()}
  def import_catalog_to_glue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCatalogToGlue", input, options)
  end

  @doc """
  Lists all the blueprint names in an account.
  """
  @spec list_blueprints(map(), list_blueprints_request(), list()) ::
          {:ok, list_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_blueprints_errors()}
  def list_blueprints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBlueprints", input, options)
  end

  @doc """
  List all task runs for a particular account.
  """
  @spec list_column_statistics_task_runs(
          map(),
          list_column_statistics_task_runs_request(),
          list()
        ) ::
          {:ok, list_column_statistics_task_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_column_statistics_task_runs_errors()}
  def list_column_statistics_task_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListColumnStatisticsTaskRuns", input, options)
  end

  @doc """
  The `ListConnectionTypes` API provides a discovery mechanism to learn available
  connection types in Glue.

  The response contains a list of connection types with high-level details of what
  is supported for each connection type. The connection types listed are the set
  of supported options for the `ConnectionType` value in the `CreateConnection`
  API.
  """
  @spec list_connection_types(map(), list_connection_types_request(), list()) ::
          {:ok, list_connection_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connection_types_errors()}
  def list_connection_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnectionTypes", input, options)
  end

  @doc """
  Retrieves the names of all crawler resources in this Amazon Web Services
  account, or the
  resources with the specified tag.

  This operation allows you to see which
  resources are available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags
  filtering, only resources with the tag are retrieved.
  """
  @spec list_crawlers(map(), list_crawlers_request(), list()) ::
          {:ok, list_crawlers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_crawlers_errors()}
  def list_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrawlers", input, options)
  end

  @doc """
  Returns all the crawls of a specified crawler.

  Returns only the crawls that have occurred since the launch date of the crawler
  history feature, and only retains up to 12 months of crawls. Older crawls will
  not be returned.

  You may use this API to:

    *
  Retrive all the crawls of a specified crawler.

    *
  Retrieve all the crawls of a specified crawler within a limited count.

    *
  Retrieve all the crawls of a specified crawler in a specific time range.

    *
  Retrieve all the crawls of a specified crawler with a particular state, crawl
  ID, or DPU hour value.
  """
  @spec list_crawls(map(), list_crawls_request(), list()) ::
          {:ok, list_crawls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_crawls_errors()}
  def list_crawls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrawls", input, options)
  end

  @doc """
  Lists all the custom patterns that have been created.
  """
  @spec list_custom_entity_types(map(), list_custom_entity_types_request(), list()) ::
          {:ok, list_custom_entity_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_entity_types_errors()}
  def list_custom_entity_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomEntityTypes", input, options)
  end

  @doc """
  Returns all data quality execution results for your account.
  """
  @spec list_data_quality_results(map(), list_data_quality_results_request(), list()) ::
          {:ok, list_data_quality_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_results_errors()}
  def list_data_quality_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityResults", input, options)
  end

  @doc """
  Lists the recommendation runs meeting the filter criteria.
  """
  @spec list_data_quality_rule_recommendation_runs(
          map(),
          list_data_quality_rule_recommendation_runs_request(),
          list()
        ) ::
          {:ok, list_data_quality_rule_recommendation_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_rule_recommendation_runs_errors()}
  def list_data_quality_rule_recommendation_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityRuleRecommendationRuns", input, options)
  end

  @doc """
  Lists all the runs meeting the filter criteria, where a ruleset is evaluated
  against a data source.
  """
  @spec list_data_quality_ruleset_evaluation_runs(
          map(),
          list_data_quality_ruleset_evaluation_runs_request(),
          list()
        ) ::
          {:ok, list_data_quality_ruleset_evaluation_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_ruleset_evaluation_runs_errors()}
  def list_data_quality_ruleset_evaluation_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityRulesetEvaluationRuns", input, options)
  end

  @doc """
  Returns a paginated list of rulesets for the specified list of Glue tables.
  """
  @spec list_data_quality_rulesets(map(), list_data_quality_rulesets_request(), list()) ::
          {:ok, list_data_quality_rulesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_rulesets_errors()}
  def list_data_quality_rulesets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityRulesets", input, options)
  end

  @doc """
  Retrieve annotations for a data quality statistic.
  """
  @spec list_data_quality_statistic_annotations(
          map(),
          list_data_quality_statistic_annotations_request(),
          list()
        ) ::
          {:ok, list_data_quality_statistic_annotations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_statistic_annotations_errors()}
  def list_data_quality_statistic_annotations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityStatisticAnnotations", input, options)
  end

  @doc """
  Retrieves a list of data quality statistics.
  """
  @spec list_data_quality_statistics(map(), list_data_quality_statistics_request(), list()) ::
          {:ok, list_data_quality_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_quality_statistics_errors()}
  def list_data_quality_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityStatistics", input, options)
  end

  @doc """
  Retrieves the names of all `DevEndpoint` resources in this Amazon Web Services
  account, or the
  resources with the specified tag.

  This operation allows you to see which resources are
  available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags
  filtering, only resources with the tag are retrieved.
  """
  @spec list_dev_endpoints(map(), list_dev_endpoints_request(), list()) ::
          {:ok, list_dev_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dev_endpoints_errors()}
  def list_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevEndpoints", input, options)
  end

  @doc """
  Returns the available entities supported by the connection type.
  """
  @spec list_entities(map(), list_entities_request(), list()) ::
          {:ok, list_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entities_errors()}
  def list_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntities", input, options)
  end

  @doc """
  Retrieves the names of all job resources in this Amazon Web Services account, or
  the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags
  filtering, only resources with the tag are retrieved.
  """
  @spec list_jobs(map(), list_jobs_request(), list()) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  Retrieves a sortable, filterable list of existing Glue machine learning
  transforms in this Amazon Web Services account,
  or the resources with the specified tag.

  This operation takes the optional `Tags` field, which you can use as
  a filter of the responses so that tagged resources can be retrieved as a group.
  If you choose to use tag
  filtering, only resources with the tags are retrieved.
  """
  @spec list_ml_transforms(map(), list_ml_transforms_request(), list()) ::
          {:ok, list_ml_transforms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ml_transforms_errors()}
  def list_ml_transforms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMLTransforms", input, options)
  end

  @doc """
  Returns a list of registries that you have created, with minimal registry
  information.

  Registries in the `Deleting` status will not be included in the results. Empty
  results will be returned if there are no registries available.
  """
  @spec list_registries(map(), list_registries_input(), list()) ::
          {:ok, list_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registries_errors()}
  def list_registries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegistries", input, options)
  end

  @doc """
  Returns a list of schema versions that you have created, with minimal
  information.

  Schema versions in Deleted status will not be included in the results. Empty
  results will be returned if there are no schema versions available.
  """
  @spec list_schema_versions(map(), list_schema_versions_input(), list()) ::
          {:ok, list_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schema_versions_errors()}
  def list_schema_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemaVersions", input, options)
  end

  @doc """
  Returns a list of schemas with minimal details.

  Schemas in Deleting status will not be included in the results. Empty results
  will be returned if there are no schemas available.

  When the `RegistryId` is not provided, all the schemas across registries will be
  part of the API response.
  """
  @spec list_schemas(map(), list_schemas_input(), list()) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schemas_errors()}
  def list_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  Retrieve a list of sessions.
  """
  @spec list_sessions(map(), list_sessions_request(), list()) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSessions", input, options)
  end

  @doc """
  Lists statements for the session.
  """
  @spec list_statements(map(), list_statements_request(), list()) ::
          {:ok, list_statements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_statements_errors()}
  def list_statements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStatements", input, options)
  end

  @doc """
  Lists the history of previous optimizer runs for a specific table.
  """
  @spec list_table_optimizer_runs(map(), list_table_optimizer_runs_request(), list()) ::
          {:ok, list_table_optimizer_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_table_optimizer_runs_errors()}
  def list_table_optimizer_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTableOptimizerRuns", input, options)
  end

  @doc """
  Retrieves the names of all trigger resources in this Amazon Web Services
  account, or the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags
  filtering, only resources with the tag are retrieved.
  """
  @spec list_triggers(map(), list_triggers_request(), list()) ::
          {:ok, list_triggers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_triggers_errors()}
  def list_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTriggers", input, options)
  end

  @doc """
  List all the Glue usage profiles.
  """
  @spec list_usage_profiles(map(), list_usage_profiles_request(), list()) ::
          {:ok, list_usage_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_usage_profiles_errors()}
  def list_usage_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsageProfiles", input, options)
  end

  @doc """
  Lists names of workflows created in the account.
  """
  @spec list_workflows(map(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkflows", input, options)
  end

  @doc """
  Modifies a Zero-ETL integration in the caller's account.
  """
  @spec modify_integration(map(), modify_integration_request(), list()) ::
          {:ok, modify_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_integration_errors()}
  def modify_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIntegration", input, options)
  end

  @doc """
  Sets the security configuration for a specified catalog.

  After the configuration has been
  set, the specified encryption is applied to every catalog write thereafter.
  """
  @spec put_data_catalog_encryption_settings(
          map(),
          put_data_catalog_encryption_settings_request(),
          list()
        ) ::
          {:ok, put_data_catalog_encryption_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_data_catalog_encryption_settings_errors()}
  def put_data_catalog_encryption_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Annotate all datapoints for a Profile.
  """
  @spec put_data_quality_profile_annotation(
          map(),
          put_data_quality_profile_annotation_request(),
          list()
        ) ::
          {:ok, put_data_quality_profile_annotation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_data_quality_profile_annotation_errors()}
  def put_data_quality_profile_annotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutDataQualityProfileAnnotation", input, options)
  end

  @doc """
  Sets the Data Catalog resource policy for access control.
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
  Puts the metadata key value pair for a specified schema version ID.

  A maximum of 10 key value pairs will be allowed per schema version. They can be
  added over one or more calls.
  """
  @spec put_schema_version_metadata(map(), put_schema_version_metadata_input(), list()) ::
          {:ok, put_schema_version_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_schema_version_metadata_errors()}
  def put_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutSchemaVersionMetadata", input, options)
  end

  @doc """
  Puts the specified workflow run properties for the given workflow run.

  If a property already exists for the specified run, then it overrides the value
  otherwise adds the property to existing properties.
  """
  @spec put_workflow_run_properties(map(), put_workflow_run_properties_request(), list()) ::
          {:ok, put_workflow_run_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_workflow_run_properties_errors()}
  def put_workflow_run_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutWorkflowRunProperties", input, options)
  end

  @doc """
  Queries for the schema version metadata information.
  """
  @spec query_schema_version_metadata(map(), query_schema_version_metadata_input(), list()) ::
          {:ok, query_schema_version_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, query_schema_version_metadata_errors()}
  def query_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QuerySchemaVersionMetadata", input, options)
  end

  @doc """
  Adds a new version to the existing schema.

  Returns an error if new version of schema does not meet the compatibility
  requirements of the schema set. This API will not create a new schema set and
  will return a 404 error if the schema set is not already present in the Schema
  Registry.

  If this is the first schema definition to be registered in the Schema Registry,
  this API will store the schema version and return immediately. Otherwise, this
  call has the potential to run longer than other operations due to compatibility
  modes. You can call the `GetSchemaVersion` API with the `SchemaVersionId` to
  check compatibility modes.

  If the same schema definition is already stored in Schema Registry as a version,
  the schema ID of the existing schema is returned to the caller.
  """
  @spec register_schema_version(map(), register_schema_version_input(), list()) ::
          {:ok, register_schema_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_schema_version_errors()}
  def register_schema_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterSchemaVersion", input, options)
  end

  @doc """
  Removes a key value pair from the schema version metadata for the specified
  schema version ID.
  """
  @spec remove_schema_version_metadata(map(), remove_schema_version_metadata_input(), list()) ::
          {:ok, remove_schema_version_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_schema_version_metadata_errors()}
  def remove_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveSchemaVersionMetadata", input, options)
  end

  @doc """
  Resets a bookmark entry.

  For more information about enabling and using job bookmarks, see:

    *

  [Tracking processed data using job bookmarks](https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html)

    *

  [Job parameters used by Glue](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)

    *

  [Job structure](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job)
  """
  @spec reset_job_bookmark(map(), reset_job_bookmark_request(), list()) ::
          {:ok, reset_job_bookmark_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_job_bookmark_errors()}
  def reset_job_bookmark(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetJobBookmark", input, options)
  end

  @doc """
  Restarts selected nodes of a previous partially completed workflow run and
  resumes the workflow run.

  The selected nodes and all nodes that are downstream from the selected nodes are
  run.
  """
  @spec resume_workflow_run(map(), resume_workflow_run_request(), list()) ::
          {:ok, resume_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_workflow_run_errors()}
  def resume_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeWorkflowRun", input, options)
  end

  @doc """
  Executes the statement.
  """
  @spec run_statement(map(), run_statement_request(), list()) ::
          {:ok, run_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, run_statement_errors()}
  def run_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunStatement", input, options)
  end

  @doc """
  Searches a set of tables based on properties in the table metadata as well as on
  the parent database.

  You can search against text or filter conditions.

  You can only get tables that you have access to based on the security policies
  defined in Lake Formation. You need at least a read-only access to the table for
  it to be returned. If you do not have access to all the columns in the table,
  these columns will not be searched against when returning the list of tables
  back to you. If you have access to the columns but not the data in the columns,
  those columns and the associated metadata for those columns will be included in
  the search.
  """
  @spec search_tables(map(), search_tables_request(), list()) ::
          {:ok, search_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_tables_errors()}
  def search_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchTables", input, options)
  end

  @doc """
  Starts a new run of the specified blueprint.
  """
  @spec start_blueprint_run(map(), start_blueprint_run_request(), list()) ::
          {:ok, start_blueprint_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_blueprint_run_errors()}
  def start_blueprint_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBlueprintRun", input, options)
  end

  @doc """
  Starts a column statistics task run, for a specified table and columns.
  """
  @spec start_column_statistics_task_run(
          map(),
          start_column_statistics_task_run_request(),
          list()
        ) ::
          {:ok, start_column_statistics_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_column_statistics_task_run_errors()}
  def start_column_statistics_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartColumnStatisticsTaskRun", input, options)
  end

  @doc """
  Starts a column statistics task run schedule.
  """
  @spec start_column_statistics_task_run_schedule(
          map(),
          start_column_statistics_task_run_schedule_request(),
          list()
        ) ::
          {:ok, start_column_statistics_task_run_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_column_statistics_task_run_schedule_errors()}
  def start_column_statistics_task_run_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartColumnStatisticsTaskRunSchedule", input, options)
  end

  @doc """
  Starts a crawl using the specified crawler, regardless
  of what is scheduled.

  If the crawler is already running, returns a
  [CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).
  """
  @spec start_crawler(map(), start_crawler_request(), list()) ::
          {:ok, start_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_crawler_errors()}
  def start_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCrawler", input, options)
  end

  @doc """
  Changes the schedule state of the specified crawler to
  `SCHEDULED`, unless the crawler is already running or the
  schedule state is already `SCHEDULED`.
  """
  @spec start_crawler_schedule(map(), start_crawler_schedule_request(), list()) ::
          {:ok, start_crawler_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_crawler_schedule_errors()}
  def start_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCrawlerSchedule", input, options)
  end

  @doc """
  Starts a recommendation run that is used to generate rules when you don't know
  what rules to write.

  Glue Data Quality analyzes the data and comes up with recommendations for a
  potential ruleset. You can then triage the ruleset and modify the generated
  ruleset to your liking.

  Recommendation runs are automatically deleted after 90 days.
  """
  @spec start_data_quality_rule_recommendation_run(
          map(),
          start_data_quality_rule_recommendation_run_request(),
          list()
        ) ::
          {:ok, start_data_quality_rule_recommendation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_data_quality_rule_recommendation_run_errors()}
  def start_data_quality_rule_recommendation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataQualityRuleRecommendationRun", input, options)
  end

  @doc """
  Once you have a ruleset definition (either recommended or your own), you call
  this operation to evaluate the ruleset against a data source (Glue table).

  The evaluation computes results which you can retrieve with the
  `GetDataQualityResult` API.
  """
  @spec start_data_quality_ruleset_evaluation_run(
          map(),
          start_data_quality_ruleset_evaluation_run_request(),
          list()
        ) ::
          {:ok, start_data_quality_ruleset_evaluation_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_data_quality_ruleset_evaluation_run_errors()}
  def start_data_quality_ruleset_evaluation_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataQualityRulesetEvaluationRun", input, options)
  end

  @doc """
  Begins an asynchronous task to export all labeled data for a particular
  transform.

  This
  task is the only label-related API call that is not part of the typical active
  learning
  workflow. You typically use `StartExportLabelsTaskRun` when you want to work
  with
  all of your existing labels at the same time, such as when you want to remove or
  change labels
  that were previously submitted as truth. This API operation accepts the
  `TransformId` whose labels you want to export and an Amazon Simple Storage
  Service (Amazon S3) path to export the labels to. The operation returns a
  `TaskRunId`. You can check on the status of your task run by calling the
  `GetMLTaskRun` API.
  """
  @spec start_export_labels_task_run(map(), start_export_labels_task_run_request(), list()) ::
          {:ok, start_export_labels_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_export_labels_task_run_errors()}
  def start_export_labels_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExportLabelsTaskRun", input, options)
  end

  @doc """
  Enables you to provide additional labels (examples of truth) to be used to teach
  the
  machine learning transform and improve its quality.

  This API operation is generally used as
  part of the active learning workflow that starts with the
  `StartMLLabelingSetGenerationTaskRun` call and that ultimately results in
  improving the quality of your machine learning transform.

  After the `StartMLLabelingSetGenerationTaskRun` finishes, Glue machine learning
  will have generated a series of questions for humans to answer. (Answering these
  questions is
  often called 'labeling' in the machine learning workflows). In the case of the
  `FindMatches` transform, these questions are of the form, “What is the correct
  way to group these rows together into groups composed entirely of matching
  records?” After the
  labeling process is finished, users upload their answers/labels with a call to
  `StartImportLabelsTaskRun`. After `StartImportLabelsTaskRun` finishes,
  all future runs of the machine learning transform use the new and improved
  labels and perform
  a higher-quality transformation.

  By default, `StartMLLabelingSetGenerationTaskRun` continually learns from and
  combines all labels that you upload unless you set `Replace` to true. If you set
  `Replace` to true, `StartImportLabelsTaskRun` deletes and forgets all
  previously uploaded labels and learns only from the exact set that you upload.
  Replacing
  labels can be helpful if you realize that you previously uploaded incorrect
  labels, and you
  believe that they are having a negative effect on your transform quality.

  You can check on the status of your task run by calling the `GetMLTaskRun`
  operation.
  """
  @spec start_import_labels_task_run(map(), start_import_labels_task_run_request(), list()) ::
          {:ok, start_import_labels_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_import_labels_task_run_errors()}
  def start_import_labels_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImportLabelsTaskRun", input, options)
  end

  @doc """
  Starts a job run using a job definition.
  """
  @spec start_job_run(map(), start_job_run_request(), list()) ::
          {:ok, start_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_job_run_errors()}
  def start_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartJobRun", input, options)
  end

  @doc """
  Starts a task to estimate the quality of the transform.

  When you provide label sets as examples of truth, Glue machine learning uses
  some of
  those examples to learn from them. The rest of the labels are used as a test to
  estimate
  quality.

  Returns a unique identifier for the run. You can call `GetMLTaskRun` to get more
  information about the stats of the `EvaluationTaskRun`.
  """
  @spec start_ml_evaluation_task_run(map(), start_ml_evaluation_task_run_request(), list()) ::
          {:ok, start_ml_evaluation_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_ml_evaluation_task_run_errors()}
  def start_ml_evaluation_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMLEvaluationTaskRun", input, options)
  end

  @doc """
  Starts the active learning workflow for your machine learning transform to
  improve the
  transform's quality by generating label sets and adding labels.

  When the `StartMLLabelingSetGenerationTaskRun` finishes, Glue will have
  generated a "labeling set" or a set of questions for humans to answer.

  In the case of the `FindMatches` transform, these questions are of the form,
  “What is the correct way to group these rows together into groups composed
  entirely of
  matching records?”

  After the labeling process is finished, you can upload your labels with a call
  to
  `StartImportLabelsTaskRun`. After `StartImportLabelsTaskRun` finishes,
  all future runs of the machine learning transform will use the new and improved
  labels and
  perform a higher-quality transformation.

  Note: The role used to write the generated labeling set to the `OutputS3Path` is
  the role
  associated with the Machine Learning Transform, specified in the
  `CreateMLTransform` API.
  """
  @spec start_ml_labeling_set_generation_task_run(
          map(),
          start_ml_labeling_set_generation_task_run_request(),
          list()
        ) ::
          {:ok, start_ml_labeling_set_generation_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_ml_labeling_set_generation_task_run_errors()}
  def start_ml_labeling_set_generation_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMLLabelingSetGenerationTaskRun", input, options)
  end

  @doc """
  Starts an existing trigger.

  See [Triggering Jobs](https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
  information about how different types of trigger are
  started.
  """
  @spec start_trigger(map(), start_trigger_request(), list()) ::
          {:ok, start_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_trigger_errors()}
  def start_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTrigger", input, options)
  end

  @doc """
  Starts a new run of the specified workflow.
  """
  @spec start_workflow_run(map(), start_workflow_run_request(), list()) ::
          {:ok, start_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_workflow_run_errors()}
  def start_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkflowRun", input, options)
  end

  @doc """
  Stops a task run for the specified table.
  """
  @spec stop_column_statistics_task_run(map(), stop_column_statistics_task_run_request(), list()) ::
          {:ok, stop_column_statistics_task_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_column_statistics_task_run_errors()}
  def stop_column_statistics_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopColumnStatisticsTaskRun", input, options)
  end

  @doc """
  Stops a column statistics task run schedule.
  """
  @spec stop_column_statistics_task_run_schedule(
          map(),
          stop_column_statistics_task_run_schedule_request(),
          list()
        ) ::
          {:ok, stop_column_statistics_task_run_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_column_statistics_task_run_schedule_errors()}
  def stop_column_statistics_task_run_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopColumnStatisticsTaskRunSchedule", input, options)
  end

  @doc """
  If the specified crawler is running, stops the crawl.
  """
  @spec stop_crawler(map(), stop_crawler_request(), list()) ::
          {:ok, stop_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_crawler_errors()}
  def stop_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCrawler", input, options)
  end

  @doc """
  Sets the schedule state of the specified crawler to
  `NOT_SCHEDULED`, but does not stop the crawler if it is
  already running.
  """
  @spec stop_crawler_schedule(map(), stop_crawler_schedule_request(), list()) ::
          {:ok, stop_crawler_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_crawler_schedule_errors()}
  def stop_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCrawlerSchedule", input, options)
  end

  @doc """
  Stops the session.
  """
  @spec stop_session(map(), stop_session_request(), list()) ::
          {:ok, stop_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_session_errors()}
  def stop_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSession", input, options)
  end

  @doc """
  Stops a specified trigger.
  """
  @spec stop_trigger(map(), stop_trigger_request(), list()) ::
          {:ok, stop_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_trigger_errors()}
  def stop_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrigger", input, options)
  end

  @doc """
  Stops the execution of the specified workflow run.
  """
  @spec stop_workflow_run(map(), stop_workflow_run_request(), list()) ::
          {:ok, stop_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_workflow_run_errors()}
  def stop_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkflowRun", input, options)
  end

  @doc """
  Adds tags to a resource.

  A tag is a label you can assign to an Amazon Web Services resource.
  In Glue, you can tag only certain resources. For information about what
  resources you can tag, see [Amazon Web Services Tags in Glue](https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).
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
  Tests a connection to a service to validate the service credentials that you
  provide.

  You can either provide an existing connection name or a `TestConnectionInput`
  for testing a non-existing connection input. Providing both at the same time
  will cause an error.

  If the action is successful, the service sends back an HTTP 200 response.
  """
  @spec test_connection(map(), test_connection_request(), list()) ::
          {:ok, test_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_connection_errors()}
  def test_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestConnection", input, options)
  end

  @doc """
  Removes tags from a resource.
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
  Updates a registered blueprint.
  """
  @spec update_blueprint(map(), update_blueprint_request(), list()) ::
          {:ok, update_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_blueprint_errors()}
  def update_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBlueprint", input, options)
  end

  @doc """
  Updates an existing catalog's properties in the Glue Data Catalog.
  """
  @spec update_catalog(map(), update_catalog_request(), list()) ::
          {:ok, update_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_catalog_errors()}
  def update_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCatalog", input, options)
  end

  @doc """
  Modifies an existing classifier (a `GrokClassifier`,
  an `XMLClassifier`, a `JsonClassifier`, or a `CsvClassifier`, depending on
  which field is present).
  """
  @spec update_classifier(map(), update_classifier_request(), list()) ::
          {:ok, update_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_classifier_errors()}
  def update_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateClassifier", input, options)
  end

  @doc """
  Creates or updates partition statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `UpdatePartition`.
  """
  @spec update_column_statistics_for_partition(
          map(),
          update_column_statistics_for_partition_request(),
          list()
        ) ::
          {:ok, update_column_statistics_for_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_column_statistics_for_partition_errors()}
  def update_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateColumnStatisticsForPartition", input, options)
  end

  @doc """
  Creates or updates table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `UpdateTable`.
  """
  @spec update_column_statistics_for_table(
          map(),
          update_column_statistics_for_table_request(),
          list()
        ) ::
          {:ok, update_column_statistics_for_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_column_statistics_for_table_errors()}
  def update_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateColumnStatisticsForTable", input, options)
  end

  @doc """
  Updates settings for a column statistics task.
  """
  @spec update_column_statistics_task_settings(
          map(),
          update_column_statistics_task_settings_request(),
          list()
        ) ::
          {:ok, update_column_statistics_task_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_column_statistics_task_settings_errors()}
  def update_column_statistics_task_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateColumnStatisticsTaskSettings", input, options)
  end

  @doc """
  Updates a connection definition in the Data Catalog.
  """
  @spec update_connection(map(), update_connection_request(), list()) ::
          {:ok, update_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_errors()}
  def update_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end

  @doc """
  Updates a crawler.

  If a crawler is
  running, you must stop it using `StopCrawler` before updating
  it.
  """
  @spec update_crawler(map(), update_crawler_request(), list()) ::
          {:ok, update_crawler_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_crawler_errors()}
  def update_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrawler", input, options)
  end

  @doc """
  Updates the schedule of a crawler using a `cron` expression.
  """
  @spec update_crawler_schedule(map(), update_crawler_schedule_request(), list()) ::
          {:ok, update_crawler_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_crawler_schedule_errors()}
  def update_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrawlerSchedule", input, options)
  end

  @doc """
  Updates the specified data quality ruleset.
  """
  @spec update_data_quality_ruleset(map(), update_data_quality_ruleset_request(), list()) ::
          {:ok, update_data_quality_ruleset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_quality_ruleset_errors()}
  def update_data_quality_ruleset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataQualityRuleset", input, options)
  end

  @doc """
  Updates an existing database definition in a Data Catalog.
  """
  @spec update_database(map(), update_database_request(), list()) ::
          {:ok, update_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_database_errors()}
  def update_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDatabase", input, options)
  end

  @doc """
  Updates a specified development endpoint.
  """
  @spec update_dev_endpoint(map(), update_dev_endpoint_request(), list()) ::
          {:ok, update_dev_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dev_endpoint_errors()}
  def update_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDevEndpoint", input, options)
  end

  @doc """
  This API can be used for updating the `ResourceProperty` of the Glue connection
  (for the source) or Glue database ARN (for the target).

  These properties can include the role to access the connection or database.
  Since the same resource can be used across multiple integrations, updating
  resource properties will impact all the integrations using it.
  """
  @spec update_integration_resource_property(
          map(),
          update_integration_resource_property_request(),
          list()
        ) ::
          {:ok, update_integration_resource_property_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_resource_property_errors()}
  def update_integration_resource_property(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIntegrationResourceProperty", input, options)
  end

  @doc """
  This API is used to provide optional override properties for the tables that
  need to be replicated.

  These properties can include properties for filtering and partitioning for the
  source and target tables. To set both source and target properties the same API
  need to be invoked with the Glue connection ARN as `ResourceArn` with
  `SourceTableConfig`, and the Glue database ARN as `ResourceArn` with
  `TargetTableConfig` respectively.

  The override will be reflected across all the integrations using same
  `ResourceArn` and source table.
  """
  @spec update_integration_table_properties(
          map(),
          update_integration_table_properties_request(),
          list()
        ) ::
          {:ok, update_integration_table_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_table_properties_errors()}
  def update_integration_table_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIntegrationTableProperties", input, options)
  end

  @doc """
  Updates an existing job definition.

  The previous job definition is completely overwritten by this information.
  """
  @spec update_job(map(), update_job_request(), list()) ::
          {:ok, update_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_errors()}
  def update_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJob", input, options)
  end

  @doc """
  Synchronizes a job from the source control repository.

  This operation takes the job artifacts that are located in the remote repository
  and updates the Glue internal stores with these artifacts.

  This API supports optional parameters which take in the repository information.
  """
  @spec update_job_from_source_control(map(), update_job_from_source_control_request(), list()) ::
          {:ok, update_job_from_source_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_from_source_control_errors()}
  def update_job_from_source_control(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJobFromSourceControl", input, options)
  end

  @doc """
  Updates an existing machine learning transform.

  Call this operation to tune the algorithm parameters to achieve better results.

  After calling this operation, you can call the `StartMLEvaluationTaskRun`
  operation to assess how well your new parameters achieved your goals (such as
  improving the
  quality of your machine learning transform, or making it more cost-effective).
  """
  @spec update_ml_transform(map(), update_ml_transform_request(), list()) ::
          {:ok, update_ml_transform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ml_transform_errors()}
  def update_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMLTransform", input, options)
  end

  @doc """
  Updates a partition.
  """
  @spec update_partition(map(), update_partition_request(), list()) ::
          {:ok, update_partition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_partition_errors()}
  def update_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePartition", input, options)
  end

  @doc """
  Updates an existing registry which is used to hold a collection of schemas.

  The updated properties relate to the registry, and do not modify any of the
  schemas within the registry.
  """
  @spec update_registry(map(), update_registry_input(), list()) ::
          {:ok, update_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registry_errors()}
  def update_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRegistry", input, options)
  end

  @doc """
  Updates the description, compatibility setting, or version checkpoint for a
  schema set.

  For updating the compatibility setting, the call will not validate compatibility
  for the entire set of schema versions with the new compatibility setting. If the
  value for `Compatibility` is provided, the `VersionNumber` (a checkpoint) is
  also required. The API will validate the checkpoint version number for
  consistency.

  If the value for the `VersionNumber` (checkpoint) is provided, `Compatibility`
  is optional and this can be used to set/reset a checkpoint for the schema.

  This update will happen only if the schema is in the AVAILABLE state.
  """
  @spec update_schema(map(), update_schema_input(), list()) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_schema_errors()}
  def update_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSchema", input, options)
  end

  @doc """
  Synchronizes a job to the source control repository.

  This operation takes the job artifacts from the Glue internal stores and makes a
  commit to the remote repository that is configured on the job.

  This API supports optional parameters which take in the repository information.
  """
  @spec update_source_control_from_job(map(), update_source_control_from_job_request(), list()) ::
          {:ok, update_source_control_from_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_source_control_from_job_errors()}
  def update_source_control_from_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSourceControlFromJob", input, options)
  end

  @doc """
  Updates a metadata table in the Data Catalog.
  """
  @spec update_table(map(), update_table_request(), list()) ::
          {:ok, update_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_errors()}
  def update_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end

  @doc """
  Updates the configuration for an existing table optimizer.
  """
  @spec update_table_optimizer(map(), update_table_optimizer_request(), list()) ::
          {:ok, update_table_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_optimizer_errors()}
  def update_table_optimizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTableOptimizer", input, options)
  end

  @doc """
  Updates a trigger definition.

  Job arguments may be logged. Do not pass plaintext secrets as arguments.
  Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or
  other secret management mechanism if you intend to keep them within the Job.
  """
  @spec update_trigger(map(), update_trigger_request(), list()) ::
          {:ok, update_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trigger_errors()}
  def update_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrigger", input, options)
  end

  @doc """
  Update an Glue usage profile.
  """
  @spec update_usage_profile(map(), update_usage_profile_request(), list()) ::
          {:ok, update_usage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_usage_profile_errors()}
  def update_usage_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUsageProfile", input, options)
  end

  @doc """
  Updates an existing function definition in the Data Catalog.
  """
  @spec update_user_defined_function(map(), update_user_defined_function_request(), list()) ::
          {:ok, update_user_defined_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_defined_function_errors()}
  def update_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserDefinedFunction", input, options)
  end

  @doc """
  Updates an existing workflow.
  """
  @spec update_workflow(map(), update_workflow_request(), list()) ::
          {:ok, update_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_errors()}
  def update_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkflow", input, options)
  end
end
