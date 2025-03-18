# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSiteWise do
  @moduledoc """
  Welcome to the IoT SiteWise API Reference.

  IoT SiteWise is an Amazon Web Services service that connects [Industrial Internet of Things
  (IIoT)](https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
  devices to the power of the Amazon Web Services Cloud. For more information, see
  the
  [IoT SiteWise User Guide](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
  information about IoT SiteWise quotas, see
  [Quotas](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
  in the *IoT SiteWise User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_asset_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      siemens_i_e() :: %{
        "iotCoreThingName" => String.t()
      }

  """
  @type siemens_i_e() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        required("gatewayName") => String.t()
      }

  """
  @type update_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_request() :: %{
        optional("clientToken") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("queryStatement") => String.t()
      }

  """
  @type execute_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "actionDefinitionId" => String.t(),
        "actionId" => String.t(),
        "targetResource" => target_resource()
      }

  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("projectId") => String.t()
      }

  """
  @type list_dashboards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_response() :: %{
        "errorEntries" => list(batch_get_asset_property_aggregates_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_aggregates_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_aggregates_success_entry()())
      }

  """
  @type batch_get_asset_property_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "portalId" => String.t(),
        "projectArn" => String.t(),
        "projectCreationDate" => non_neg_integer(),
        "projectDescription" => String.t(),
        "projectId" => String.t(),
        "projectLastUpdateDate" => non_neg_integer(),
        "projectName" => String.t()
      }

  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type put_default_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_response() :: %{
        "compositionRelationshipSummaries" => list(composition_relationship_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_composition_relationships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_response() :: %{
        "accessPolicySummaries" => list(access_policy_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_response() :: %{}

  """
  @type update_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      portal_resource() :: %{
        "id" => String.t()
      }

  """
  @type portal_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()()),
        "assetModelCompositeModelDescription" => String.t(),
        "assetModelCompositeModelExternalId" => String.t(),
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelName" => String.t(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelCompositeModelProperties" => list(asset_model_property()()),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "assetModelCompositeModelType" => String.t(),
        "assetModelId" => String.t(),
        "compositionDetails" => composition_details()
      }

  """
  @type describe_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_request() :: %{
        optional("clientToken") => String.t(),
        optional("dashboardDescription") => String.t(),
        required("dashboardDefinition") => String.t(),
        required("dashboardName") => String.t()
      }

  """
  @type update_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_response() :: %{
        "errors" => list(asset_error_details()())
      }

  """
  @type batch_associate_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property() :: %{
        "alias" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "unit" => String.t()
      }

  """
  @type asset_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_operation_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type conflicting_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_request() :: %{
        optional("assetModelVersion") => String.t()
      }

  """
  @type describe_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_response() :: %{
        "aggregatedValues" => list(aggregated_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_asset_property_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "datasetStatus" => dataset_status()
      }

  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_assets_response() :: %{
        "assetIds" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_source() :: %{
        "sourceDetail" => source_detail(),
        "sourceFormat" => list(any()),
        "sourceType" => list(any())
      }

  """
  @type dataset_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_response() :: %{
        "datasetArn" => String.t(),
        "datasetId" => String.t(),
        "datasetStatus" => dataset_status()
      }

  """
  @type update_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      interpolated_asset_property_value() :: %{
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type interpolated_asset_property_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greengrass() :: %{
        "groupArn" => String.t()
      }

  """
  @type greengrass() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      detailed_error() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type detailed_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy() :: %{
        "childAssetModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "gatewayArn" => String.t(),
        "gatewayId" => String.t()
      }

  """
  @type create_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric() :: %{
        "expression" => String.t(),
        "processingConfig" => metric_processing_config(),
        "variables" => list(expression_variable()()),
        "window" => metric_window()
      }

  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_policy_response() :: %{}

  """
  @type delete_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expression_variable() :: %{
        "name" => String.t(),
        "value" => variable_value()
      }

  """
  @type expression_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_response() :: %{
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_model_composite_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_request() :: %{
        optional("adaptiveIngestion") => boolean(),
        optional("deleteFilesAfterImport") => boolean(),
        required("errorReportLocation") => error_report_location(),
        required("files") => list(file()()),
        required("jobConfiguration") => job_configuration(),
        required("jobName") => String.t(),
        required("jobRoleArn") => String.t()
      }

  """
  @type create_bulk_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_response() :: %{
        "propertyValue" => asset_property_value()
      }

  """
  @type get_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_value() :: %{
        "quality" => list(any()),
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type asset_property_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_logging_options_response() :: %{}

  """
  @type put_logging_options_response() :: %{}

  @typedoc """

  ## Example:

      identity() :: %{
        "group" => group_identity(),
        "iamRole" => iam_role_identity(),
        "iamUser" => iam_user_identity(),
        "user" => user_identity()
      }

  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_format() :: %{
        "csv" => csv(),
        "parquet" => parquet()
      }

  """
  @type file_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bulk_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type describe_default_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      describe_action_response() :: %{
        "actionDefinitionId" => String.t(),
        "actionId" => String.t(),
        "actionPayload" => action_payload(),
        "executionTime" => non_neg_integer(),
        "targetResource" => target_resource()
      }

  """
  @type describe_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bulk_import_job_request() :: %{}

  """
  @type describe_bulk_import_job_request() :: %{}

  @typedoc """

  ## Example:

      property_value_null_value() :: %{
        "valueType" => list(any())
      }

  """
  @type property_value_null_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_response() :: %{
        "assetArn" => String.t(),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()()),
        "assetCompositeModels" => list(asset_composite_model()()),
        "assetCreationDate" => non_neg_integer(),
        "assetDescription" => String.t(),
        "assetExternalId" => String.t(),
        "assetHierarchies" => list(asset_hierarchy()()),
        "assetId" => String.t(),
        "assetLastUpdateDate" => non_neg_integer(),
        "assetModelId" => String.t(),
        "assetName" => String.t(),
        "assetProperties" => list(asset_property()()),
        "assetStatus" => asset_status()
      }

  """
  @type describe_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_asset_property_value_entry() :: %{
        "assetId" => String.t(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "propertyValues" => list(asset_property_value()())
      }

  """
  @type put_asset_property_value_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_value_error_info()
      }

  """
  @type batch_get_asset_property_value_skipped_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_policy_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datum() :: %{
        "arrayValue" => list(datum()()),
        "nullValue" => boolean(),
        "rowValue" => row(),
        "scalarValue" => String.t()
      }

  """
  @type datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      citation() :: %{
        "content" => content(),
        "reference" => iotsitewise_reference()
      }

  """
  @type citation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_resource() :: %{
        "id" => String.t()
      }

  """
  @type project_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_portal_response() :: %{
        "portalArn" => String.t(),
        "portalId" => String.t(),
        "portalStartUrl" => String.t(),
        "portalStatus" => portal_status(),
        "ssoApplicationId" => String.t()
      }

  """
  @type create_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_property_response() :: %{
        "assetExternalId" => String.t(),
        "assetId" => String.t(),
        "assetModelId" => String.t(),
        "assetName" => String.t(),
        "assetProperty" => property(),
        "compositeModel" => composite_model_property()
      }

  """
  @type describe_asset_property_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_request() :: %{
        optional("assetId") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type get_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("sourceType") => list(any())
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_model_property()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_request() :: %{
        optional("iamArn") => String.t(),
        optional("identityId") => String.t(),
        optional("identityType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceId") => String.t(),
        optional("resourceType") => list(any())
      }

  """
  @type list_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_policy_response() :: %{
        "accessPolicyArn" => String.t(),
        "accessPolicyId" => String.t()
      }

  """
  @type create_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_report_location() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }

  """
  @type error_report_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_value_history_error_info()
      }

  """
  @type batch_get_asset_property_value_history_skipped_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_policy_summary() :: %{
        "creationDate" => non_neg_integer(),
        "id" => String.t(),
        "identity" => identity(),
        "lastUpdateDate" => non_neg_integer(),
        "permission" => list(any()),
        "resource" => resource()
      }

  """
  @type access_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_request() :: %{
        optional("clientToken") => String.t(),
        optional("ifMatch") => String.t(),
        optional("ifNoneMatch") => String.t(),
        optional("matchForVersionType") => list(any())
      }

  """
  @type delete_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_aggregates_entry()())
      }

  """
  @type batch_get_asset_property_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_response() :: %{
        "loggingOptions" => logging_options()
      }

  """
  @type describe_logging_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composite_model_property() :: %{
        "assetProperty" => property(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type composite_model_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_identity() :: %{
        "id" => String.t()
      }

  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kendra_source_detail() :: %{
        "knowledgeBaseArn" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type kendra_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invocation_output() :: %{
        "citations" => list(citation()()),
        "message" => String.t()
      }

  """
  @type invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_processing_config() :: %{
        "computeLocation" => list(any())
      }

  """
  @type metric_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_identity() :: %{
        "id" => String.t()
      }

  """
  @type group_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_request() :: %{
        optional("assetDescription") => String.t(),
        optional("assetExternalId") => String.t(),
        optional("assetId") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("assetModelId") => String.t(),
        required("assetName") => String.t()
      }

  """
  @type create_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_window() :: %{
        "tumbling" => tumbling_window()
      }

  """
  @type metric_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "versionId" => String.t()
      }

  """
  @type file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_summary() :: %{
        "arn" => String.t(),
        "assetModelId" => String.t(),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "hierarchies" => list(asset_hierarchy()()),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_status()
      }

  """
  @type asset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t(),
        "errorInfo" => batch_get_asset_property_aggregates_error_info()
      }

  """
  @type batch_get_asset_property_aggregates_skipped_entry() :: %{String.t() => any()}

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

      update_project_response() :: %{}

  """
  @type update_project_response() :: %{}

  @typedoc """

  ## Example:

      portal_status() :: %{
        "error" => monitor_error_details(),
        "state" => list(any())
      }

  """
  @type portal_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_summary() :: %{
        "arn" => String.t(),
        "assetModelType" => list(any()),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_model_status(),
        "version" => String.t()
      }

  """
  @type asset_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_time_series_request() :: %{
        optional("alias") => String.t(),
        optional("assetId") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type describe_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iotsitewise_reference() :: %{
        "dataset" => data_set_reference()
      }

  """
  @type iotsitewise_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alarms() :: %{
        "alarmRoleArn" => String.t(),
        "notificationLambdaArn" => String.t()
      }

  """
  @type alarms() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_assets_request() :: %{
        optional("hierarchyId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("traversalDirection") => list(any())
      }

  """
  @type list_associated_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_status() :: %{
        "error" => configuration_error_details(),
        "state" => list(any())
      }

  """
  @type configuration_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_history_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_value_history_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_value_history_success_entry()())
      }

  """
  @type batch_get_asset_property_value_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multi_layer_storage() :: %{
        "customerManagedS3Storage" => customer_managed_s3_storage()
      }

  """
  @type multi_layer_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_resource() :: %{
        "assetId" => String.t()
      }

  """
  @type target_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_assets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_action_request() :: %{}

  """
  @type describe_action_request() :: %{}

  @typedoc """

  ## Example:

      describe_bulk_import_job_response() :: %{
        "adaptiveIngestion" => boolean(),
        "deleteFilesAfterImport" => boolean(),
        "errorReportLocation" => error_report_location(),
        "files" => list(file()()),
        "jobConfiguration" => job_configuration(),
        "jobCreationDate" => non_neg_integer(),
        "jobId" => String.t(),
        "jobLastUpdateDate" => non_neg_integer(),
        "jobName" => String.t(),
        "jobRoleArn" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type describe_bulk_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("assetIds") => list(String.t()())
      }

  """
  @type batch_associate_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_response() :: %{
        "assetModelArn" => String.t(),
        "assetModelId" => String.t(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_response() :: %{
        "assetStatus" => asset_status()
      }

  """
  @type update_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_policy_response() :: %{}

  """
  @type update_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_value_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_action_response() :: %{
        "actionId" => String.t()
      }

  """
  @type execute_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_summary() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()()),
        "gatewayId" => String.t(),
        "gatewayName" => String.t(),
        "gatewayPlatform" => gateway_platform(),
        "gatewayVersion" => String.t(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type gateway_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_response() :: %{
        "TimeSeriesSummaries" => list(time_series_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_time_series_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_portals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "datasetArn" => String.t(),
        "datasetId" => String.t(),
        "datasetStatus" => dataset_status()
      }

  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_property()()),
        "type" => String.t()
      }

  """
  @type asset_composite_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_request() :: %{}

  """
  @type describe_gateway_capability_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_request() :: %{
        required("capabilityConfiguration") => String.t(),
        required("capabilityNamespace") => String.t()
      }

  """
  @type update_gateway_capability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_portal_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_time_series_response() :: %{
        "alias" => String.t(),
        "assetId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "propertyId" => String.t(),
        "timeSeriesArn" => String.t(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t(),
        "timeSeriesLastUpdateDate" => non_neg_integer()
      }

  """
  @type describe_time_series_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_success_entry() :: %{
        "aggregatedValues" => list(aggregated_value()()),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_aggregates_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_request() :: %{
        optional("assetId") => String.t(),
        optional("endTimeOffsetInNanos") => integer(),
        optional("intervalWindowInSeconds") => float(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("startTimeOffsetInNanos") => integer(),
        required("endTimeInSeconds") => float(),
        required("intervalInSeconds") => float(),
        required("quality") => list(any()),
        required("startTimeInSeconds") => float(),
        required("type") => String.t()
      }

  """
  @type get_interpolated_asset_property_values_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "projectArn" => String.t(),
        "projectId" => String.t()
      }

  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_error_details() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type monitor_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_aggregates_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_assistant_request() :: %{
        optional("conversationId") => String.t(),
        optional("enableTrace") => [boolean()],
        required("message") => String.t()
      }

  """
  @type invoke_assistant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      warm_tier_retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type warm_tier_retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_summary() :: %{
        "arn" => String.t(),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => dataset_status()
      }

  """
  @type dataset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_composite_model_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregated_value() :: %{
        "quality" => list(any()),
        "timestamp" => non_neg_integer(),
        "value" => aggregates()
      }

  """
  @type aggregated_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_detail() :: %{
        "kendra" => kendra_source_detail()
      }

  """
  @type source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row() :: %{
        "data" => list(datum()())
      }

  """
  @type row() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_time_series_from_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        required("alias") => String.t(),
        required("assetId") => String.t(),
        required("propertyId") => String.t()
      }

  """
  @type disassociate_time_series_from_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type delete_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model()()),
        optional("assetModelDescription") => String.t(),
        optional("assetModelExternalId") => String.t(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy()()),
        optional("assetModelProperties") => list(asset_model_property()()),
        optional("clientToken") => String.t(),
        optional("ifMatch") => String.t(),
        optional("ifNoneMatch") => String.t(),
        optional("matchForVersionType") => list(any()),
        required("assetModelName") => String.t()
      }

  """
  @type update_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t(),
        optional("notificationSenderEmail") => String.t(),
        optional("portalAuthMode") => list(any()),
        optional("portalDescription") => String.t(),
        optional("portalLogoImageFile") => image_file(),
        optional("portalType") => list(any()),
        optional("portalTypeConfiguration") => map(),
        optional("tags") => map(),
        required("portalContactEmail") => String.t(),
        required("portalName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_assets_summary() :: %{
        "arn" => String.t(),
        "assetModelId" => String.t(),
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "externalId" => String.t(),
        "hierarchies" => list(asset_hierarchy()()),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => asset_status()
      }

  """
  @type associated_assets_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_capability_summary() :: %{
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type gateway_capability_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_error_details() :: %{
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type configuration_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type update_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_response() :: %{
        "capabilityConfiguration" => String.t(),
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any()),
        "gatewayId" => String.t()
      }

  """
  @type describe_gateway_capability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_summary() :: %{
        "alias" => String.t(),
        "assetCompositeModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "unit" => String.t()
      }

  """
  @type asset_property_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_definition() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "properties" => list(asset_model_property_definition()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv() :: %{
        "columnNames" => list(list(any())())
      }

  """
  @type csv() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_request() :: %{}

  """
  @type describe_default_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("traversalType") => list(any())
      }

  """
  @type list_asset_relationships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_response() :: %{
        "dashboardArn" => String.t(),
        "dashboardCreationDate" => non_neg_integer(),
        "dashboardDefinition" => String.t(),
        "dashboardDescription" => String.t(),
        "dashboardId" => String.t(),
        "dashboardLastUpdateDate" => non_neg_integer(),
        "dashboardName" => String.t(),
        "projectId" => String.t()
      }

  """
  @type describe_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_portal_response() :: %{
        "alarms" => alarms(),
        "notificationSenderEmail" => String.t(),
        "portalArn" => String.t(),
        "portalAuthMode" => list(any()),
        "portalClientId" => String.t(),
        "portalContactEmail" => String.t(),
        "portalCreationDate" => non_neg_integer(),
        "portalDescription" => String.t(),
        "portalId" => String.t(),
        "portalLastUpdateDate" => non_neg_integer(),
        "portalLogoImageLocation" => image_location(),
        "portalName" => String.t(),
        "portalStartUrl" => String.t(),
        "portalStatus" => portal_status(),
        "portalType" => list(any()),
        "portalTypeConfiguration" => map(),
        "roleArn" => String.t()
      }

  """
  @type describe_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_property_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "nextToken" => String.t(),
        "projectSummaries" => list(project_summary()())
      }

  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_response() :: %{
        "assetStatus" => asset_status()
      }

  """
  @type delete_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_configuration() :: %{
        "fileFormat" => file_format()
      }

  """
  @type job_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => list(any()),
        "details" => list(detailed_error()()),
        "message" => String.t()
      }

  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_notification() :: %{
        "state" => list(any()),
        "topic" => String.t()
      }

  """
  @type property_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyNotificationState") => list(any()),
        optional("propertyUnit") => String.t()
      }

  """
  @type update_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_response() :: %{
        "capabilityNamespace" => String.t(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type update_gateway_capability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_payload() :: %{
        "stringValue" => String.t()
      }

  """
  @type action_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_actions_response() :: %{
        "actionSummaries" => list(action_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_s3_storage() :: %{
        "roleArn" => String.t(),
        "s3ResourceArn" => String.t()
      }

  """
  @type customer_managed_s3_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_location() :: %{
        "id" => String.t(),
        "url" => String.t()
      }

  """
  @type image_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_relationship_summary() :: %{
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelType" => String.t(),
        "assetModelId" => String.t()
      }

  """
  @type composition_relationship_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("targetResourceId") => String.t(),
        required("targetResourceType") => list(any())
      }

  """
  @type list_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      location() :: %{
        "uri" => String.t()
      }

  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_role_identity() :: %{
        "arn" => String.t()
      }

  """
  @type iam_role_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transform_processing_config() :: %{
        "computeLocation" => list(any()),
        "forwardingConfig" => forwarding_config()
      }

  """
  @type transform_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        required("datasetName") => String.t(),
        required("datasetSource") => dataset_source()
      }

  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t(),
        optional("assetModelCompositeModelExternalId") => String.t(),
        optional("assetModelCompositeModelId") => String.t(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property_definition()()),
        optional("clientToken") => String.t(),
        optional("composedAssetModelId") => String.t(),
        optional("ifMatch") => String.t(),
        optional("ifNoneMatch") => String.t(),
        optional("matchForVersionType") => list(any()),
        optional("parentAssetModelCompositeModelId") => String.t(),
        required("assetModelCompositeModelName") => String.t(),
        required("assetModelCompositeModelType") => String.t()
      }

  """
  @type create_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_file() :: %{
        "data" => binary(),
        "type" => list(any())
      }

  """
  @type image_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_request() :: %{
        optional("assetModelVersion") => String.t(),
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_storage_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "disallowIngestNullNaN" => boolean(),
        "disassociatedDataStorage" => list(any()),
        "multiLayerStorage" => multi_layer_storage(),
        "retentionPeriod" => retention_period(),
        "storageType" => list(any()),
        "warmTier" => list(any()),
        "warmTierRetentionPeriod" => warm_tier_retention_period()
      }

  """
  @type put_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_value_history_entry()())
      }

  """
  @type batch_get_asset_property_value_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_request() :: %{}

  """
  @type describe_logging_options_request() :: %{}

  @typedoc """

  ## Example:

      iam_user_identity() :: %{
        "arn" => String.t()
      }

  """
  @type iam_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_error_entry() :: %{
        "entryId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type batch_get_asset_property_value_history_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelId" => String.t(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dashboard_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_request() :: %{
        optional("clientToken") => String.t(),
        optional("ifMatch") => String.t(),
        optional("ifNoneMatch") => String.t(),
        optional("matchForVersionType") => list(any())
      }

  """
  @type delete_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_models_response() :: %{
        "assetModelSummaries" => list(asset_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_property_request() :: %{}

  """
  @type describe_asset_property_request() :: %{}

  @typedoc """

  ## Example:

      asset_model_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_model_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_policy_request() :: %{}

  """
  @type describe_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_request() :: %{
        optional("assetModelVersion") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_model_composite_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_composite_model_request() :: %{}

  """
  @type describe_asset_composite_model_request() :: %{}

  @typedoc """

  ## Example:

      delete_dashboard_response() :: %{}

  """
  @type delete_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_request() :: %{
        optional("enablePartialEntryProcessing") => boolean(),
        required("entries") => list(put_asset_property_value_entry()())
      }

  """
  @type batch_put_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy_definition() :: %{
        "childAssetModelId" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_hierarchy_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace() :: %{
        "text" => String.t()
      }

  """
  @type trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_model_response() :: %{
        "assetModelArn" => String.t(),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()()),
        "assetModelCompositeModels" => list(asset_model_composite_model()()),
        "assetModelCreationDate" => non_neg_integer(),
        "assetModelDescription" => String.t(),
        "assetModelExternalId" => String.t(),
        "assetModelHierarchies" => list(asset_model_hierarchy()()),
        "assetModelId" => String.t(),
        "assetModelLastUpdateDate" => non_neg_integer(),
        "assetModelName" => String.t(),
        "assetModelProperties" => list(asset_model_property()()),
        "assetModelStatus" => asset_model_status(),
        "assetModelType" => list(any()),
        "assetModelVersion" => String.t(),
        "eTag" => String.t()
      }

  """
  @type describe_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "arn" => String.t(),
        "location" => location()
      }

  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_success_entry() :: %{
        "assetPropertyValue" => asset_property_value(),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_value_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_response() :: %{
        "nextToken" => String.t(),
        "portalSummaries" => list(portal_summary()())
      }

  """
  @type list_portals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parquet() :: %{}

  """
  @type parquet() :: %{}

  @typedoc """

  ## Example:

      put_storage_configuration_request() :: %{
        optional("disallowIngestNullNaN") => boolean(),
        optional("disassociatedDataStorage") => list(any()),
        optional("multiLayerStorage") => multi_layer_storage(),
        optional("retentionPeriod") => retention_period(),
        optional("warmTier") => list(any()),
        optional("warmTierRetentionPeriod") => warm_tier_retention_period(),
        required("storageType") => list(any())
      }

  """
  @type put_storage_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{}

  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:

      forwarding_config() :: %{
        "state" => list(any())
      }

  """
  @type forwarding_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_platform() :: %{
        "greengrass" => greengrass(),
        "greengrassV2" => greengrass_v2(),
        "siemensIE" => siemens_i_e()
      }

  """
  @type gateway_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_response() :: %{
        "dashboardArn" => String.t(),
        "dashboardId" => String.t()
      }

  """
  @type create_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("clientToken") => String.t(),
        optional("projectDescription") => String.t(),
        required("projectName") => String.t()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        optional("gatewayVersion") => String.t(),
        optional("tags") => map(),
        required("gatewayName") => String.t(),
        required("gatewayPlatform") => gateway_platform()
      }

  """
  @type create_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_response() :: %{
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type create_bulk_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_request() :: %{
        optional("assetModelVersion") => String.t(),
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_model_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_policy_response() :: %{
        "accessPolicyArn" => String.t(),
        "accessPolicyCreationDate" => non_neg_integer(),
        "accessPolicyId" => String.t(),
        "accessPolicyIdentity" => identity(),
        "accessPolicyLastUpdateDate" => non_neg_integer(),
        "accessPolicyPermission" => list(any()),
        "accessPolicyResource" => resource()
      }

  """
  @type describe_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_model_composite_model_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_response() :: %{
        "interpolatedAssetPropertyValues" => list(interpolated_asset_property_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_interpolated_asset_property_values_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "file" => image_file(),
        "id" => String.t()
      }

  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("childAssetId") => String.t(),
        required("hierarchyId") => String.t()
      }

  """
  @type associate_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_entry() :: %{
        "aggregateTypes" => list(list(any())()),
        "assetId" => String.t(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "qualities" => list(list(any())()),
        "resolution" => String.t(),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_aggregates_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_error_entry()()),
        "nextToken" => String.t(),
        "skippedEntries" => list(batch_get_asset_property_value_skipped_entry()()),
        "successEntries" => list(batch_get_asset_property_value_success_entry()())
      }

  """
  @type batch_get_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transform() :: %{
        "expression" => String.t(),
        "processingConfig" => transform_processing_config(),
        "variables" => list(expression_variable()())
      }

  """
  @type transform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_request() :: %{
        optional("assetId") => String.t(),
        optional("endDate") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("qualities") => list(list(any())()),
        optional("startDate") => non_neg_integer(),
        optional("timeOrdering") => list(any())
      }

  """
  @type get_asset_property_value_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_relationship_summary() :: %{
        "hierarchyInfo" => asset_hierarchy_info(),
        "relationshipType" => list(any())
      }

  """
  @type asset_relationship_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_composite_model_summary() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_composite_model_path_segment()()),
        "type" => String.t()
      }

  """
  @type asset_composite_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_response() :: %{
        "assetArn" => String.t(),
        "assetId" => String.t(),
        "assetStatus" => asset_status()
      }

  """
  @type create_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type update_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_request() :: %{
        optional("assetDescription") => String.t(),
        optional("assetExternalId") => String.t(),
        optional("clientToken") => String.t(),
        required("assetName") => String.t()
      }

  """
  @type update_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      dashboard_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type dashboard_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_logging_options_request() :: %{
        required("loggingOptions") => logging_options()
      }

  """
  @type put_logging_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      measurement_processing_config() :: %{
        "forwardingConfig" => forwarding_config()
      }

  """
  @type measurement_processing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_type() :: %{
        "attribute" => attribute(),
        "measurement" => measurement(),
        "metric" => metric(),
        "transform" => transform()
      }

  """
  @type property_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_time_series_request() :: %{
        optional("alias") => String.t(),
        optional("assetId") => String.t(),
        optional("clientToken") => String.t(),
        optional("propertyId") => String.t()
      }

  """
  @type delete_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_request() :: %{}

  """
  @type describe_gateway_request() :: %{}

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_response() :: %{
        "errors" => list(asset_error_details()())
      }

  """
  @type batch_disassociate_project_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t(),
        optional("notificationSenderEmail") => String.t(),
        optional("portalDescription") => String.t(),
        optional("portalLogoImage") => image(),
        optional("portalType") => list(any()),
        optional("portalTypeConfiguration") => map(),
        required("portalContactEmail") => String.t(),
        required("portalName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type update_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "datasetArn" => String.t(),
        "datasetCreationDate" => non_neg_integer(),
        "datasetDescription" => String.t(),
        "datasetId" => String.t(),
        "datasetLastUpdateDate" => non_neg_integer(),
        "datasetName" => String.t(),
        "datasetSource" => dataset_source(),
        "datasetStatus" => dataset_status(),
        "datasetVersion" => String.t()
      }

  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_storage_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "disallowIngestNullNaN" => boolean(),
        "disassociatedDataStorage" => list(any()),
        "lastUpdateDate" => non_neg_integer(),
        "multiLayerStorage" => multi_layer_storage(),
        "retentionPeriod" => retention_period(),
        "storageType" => list(any()),
        "warmTier" => list(any()),
        "warmTierRetentionPeriod" => warm_tier_retention_period()
      }

  """
  @type describe_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_error_details() :: %{
        "assetId" => String.t(),
        "code" => list(any()),
        "message" => String.t()
      }

  """
  @type asset_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_in_nanos() :: %{
        "offsetInNanos" => integer(),
        "timeInSeconds" => float()
      }

  """
  @type time_in_nanos() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tumbling_window() :: %{
        "interval" => String.t(),
        "offset" => String.t()
      }

  """
  @type tumbling_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      measurement() :: %{
        "processingConfig" => measurement_processing_config()
      }

  """
  @type measurement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_history_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        optional("datasetId") => String.t(),
        optional("tags") => map(),
        required("datasetName") => String.t(),
        required("datasetSource") => dataset_source()
      }

  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property() :: %{
        "alias" => String.t(),
        "dataType" => list(any()),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_response() :: %{
        "columns" => list(column_info()()),
        "nextToken" => String.t(),
        "rows" => list(row()())
      }

  """
  @type execute_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type query_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_response() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()()),
        "nextToken" => String.t()
      }

  """
  @type get_asset_property_value_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_summary() :: %{
        "description" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_composite_model_path_segment()()),
        "type" => String.t()
      }

  """
  @type asset_model_composite_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_composition_relationships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_details() :: %{
        "compositionRelationship" => list(composition_relationship_item()())
      }

  """
  @type composition_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("clientToken") => String.t(),
        optional("projectDescription") => String.t(),
        optional("tags") => map(),
        required("portalId") => String.t(),
        required("projectName") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_response() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayArn" => String.t(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()()),
        "gatewayId" => String.t(),
        "gatewayName" => String.t(),
        "gatewayPlatform" => gateway_platform(),
        "gatewayVersion" => String.t(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type describe_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_request() :: %{
        optional("nextToken") => String.t(),
        required("entries") => list(batch_get_asset_property_value_entry()())
      }

  """
  @type batch_get_asset_property_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("childAssetId") => String.t(),
        required("hierarchyId") => String.t()
      }

  """
  @type disassociate_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_success_entry() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()()),
        "entryId" => String.t()
      }

  """
  @type batch_get_asset_property_value_history_success_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_property_path_segment() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_property_path_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_request() :: %{
        optional("aliasPrefix") => String.t(),
        optional("assetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("timeSeriesType") => list(any())
      }

  """
  @type list_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("portalId") => String.t()
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_request() :: %{
        optional("clientToken") => String.t(),
        optional("dashboardDescription") => String.t(),
        optional("tags") => map(),
        required("dashboardDefinition") => String.t(),
        required("dashboardName") => String.t(),
        required("projectId") => String.t()
      }

  """
  @type create_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t(),
        optional("assetModelCompositeModelExternalId") => String.t(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property()()),
        optional("clientToken") => String.t(),
        optional("ifMatch") => String.t(),
        optional("ifNoneMatch") => String.t(),
        optional("matchForVersionType") => list(any()),
        required("assetModelCompositeModelName") => String.t()
      }

  """
  @type update_asset_model_composite_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_relationships_response() :: %{
        "assetRelationshipSummaries" => list(asset_relationship_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_relationships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregates() :: %{
        "average" => float(),
        "count" => float(),
        "maximum" => float(),
        "minimum" => float(),
        "standardDeviation" => float(),
        "sum" => float()
      }

  """
  @type aggregates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_response() :: %{
        "assetModelPropertySummaries" => list(asset_model_property_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_model_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "defaultValue" => String.t()
      }

  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      portal_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t(),
        "portalType" => list(any()),
        "roleArn" => String.t(),
        "startUrl" => String.t(),
        "status" => portal_status()
      }

  """
  @type portal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_request() :: %{
        optional("assetModelId") => String.t(),
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_request() :: %{
        optional("clientToken") => String.t(),
        required("assetIds") => list(String.t()())
      }

  """
  @type batch_disassociate_project_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_response() :: %{
        "errorEntries" => list(batch_put_asset_property_error_entry()())
      }

  """
  @type batch_put_asset_property_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()()),
        "assetCompositeModelDescription" => String.t(),
        "assetCompositeModelExternalId" => String.t(),
        "assetCompositeModelId" => String.t(),
        "assetCompositeModelName" => String.t(),
        "assetCompositeModelPath" => list(asset_composite_model_path_segment()()),
        "assetCompositeModelProperties" => list(asset_property()()),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()()),
        "assetCompositeModelType" => String.t(),
        "assetId" => String.t()
      }

  """
  @type describe_asset_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composition_relationship_item() :: %{
        "id" => String.t()
      }

  """
  @type composition_relationship_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_options() :: %{
        "level" => list(any())
      }

  """
  @type logging_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_request() :: %{}

  """
  @type describe_dashboard_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_properties_response() :: %{
        "assetPropertySummaries" => list(asset_property_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content() :: %{
        "text" => String.t()
      }

  """
  @type content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_hierarchy() :: %{
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type asset_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_definition() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_hierarchy_info() :: %{
        "childAssetId" => String.t(),
        "parentAssetId" => String.t()
      }

  """
  @type asset_hierarchy_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error_entry() :: %{
        "entryId" => String.t(),
        "errors" => list(batch_put_asset_property_error()())
      }

  """
  @type batch_put_asset_property_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{}

  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "datasetSummaries" => list(dataset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_properties_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      variable_value() :: %{
        "hierarchyId" => String.t(),
        "propertyId" => String.t(),
        "propertyPath" => list(asset_model_property_path_segment()())
      }

  """
  @type variable_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_portal_request() :: %{}

  """
  @type describe_portal_request() :: %{}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_info() :: %{
        "name" => String.t(),
        "type" => column_type()
      }

  """
  @type column_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_reference() :: %{
        "datasetArn" => String.t(),
        "source" => source()
      }

  """
  @type data_set_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_summary() :: %{
        "alias" => String.t(),
        "assetId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "propertyId" => String.t(),
        "timeSeriesArn" => String.t(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t(),
        "timeSeriesLastUpdateDate" => non_neg_integer()
      }

  """
  @type time_series_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      portal_type_entry() :: %{
        "portalTools" => list(String.t()())
      }

  """
  @type portal_type_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model_definition()()),
        optional("assetModelDescription") => String.t(),
        optional("assetModelExternalId") => String.t(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy_definition()()),
        optional("assetModelId") => String.t(),
        optional("assetModelProperties") => list(asset_model_property_definition()()),
        optional("assetModelType") => list(any()),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("assetModelName") => String.t()
      }

  """
  @type create_asset_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_action_request() :: %{
        optional("clientToken") => String.t(),
        required("actionDefinitionId") => String.t(),
        required("actionPayload") => action_payload(),
        required("targetResource") => target_resource()
      }

  """
  @type execute_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "timestamps" => list(time_in_nanos()())
      }

  """
  @type batch_put_asset_property_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_response() :: %{
        "assetSummaries" => list(asset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_model_response() :: %{
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_request() :: %{
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_response() :: %{
        "dashboardSummaries" => list(dashboard_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_dashboards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_entry() :: %{
        "assetId" => String.t(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t()
      }

  """
  @type batch_get_asset_property_value_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type dataset_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "gatewaySummaries" => list(gateway_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_gateways_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_aggregates_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type create_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_request() :: %{
        optional("kmsKeyId") => String.t(),
        required("encryptionType") => list(any())
      }

  """
  @type put_default_encryption_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greengrass_v2() :: %{
        "coreDeviceOperatingSystem" => list(any()),
        "coreDeviceThingName" => String.t()
      }

  """
  @type greengrass_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_entry() :: %{
        "assetId" => String.t(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "qualities" => list(list(any())()),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_value_history_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_request() :: %{
        optional("assetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("propertyAlias") => String.t(),
        optional("propertyId") => String.t(),
        optional("qualities") => list(list(any())()),
        optional("timeOrdering") => list(any()),
        required("aggregateTypes") => list(list(any())()),
        required("endDate") => non_neg_integer(),
        required("resolution") => String.t(),
        required("startDate") => non_neg_integer()
      }

  """
  @type get_asset_property_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      variant() :: %{
        "booleanValue" => boolean(),
        "doubleValue" => float(),
        "integerValue" => integer(),
        "nullValue" => property_value_null_value(),
        "stringValue" => String.t()
      }

  """
  @type variant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_models_request() :: %{
        optional("assetModelTypes") => list(list(any())()),
        optional("assetModelVersion") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_assets_response() :: %{
        "assetSummaries" => list(associated_assets_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_associated_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_storage_configuration_request() :: %{}

  """
  @type describe_storage_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()()),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_composite_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_assistant_response() :: %{
        "body" => list(),
        "conversationId" => String.t()
      }

  """
  @type invoke_assistant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_definition() :: %{
        "actionDefinitionId" => String.t(),
        "actionName" => String.t(),
        "actionType" => String.t()
      }

  """
  @type action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_model_property_summary() :: %{
        "assetModelCompositeModelId" => String.t(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t(),
        "externalId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "path" => list(asset_model_property_path_segment()()),
        "type" => property_type(),
        "unit" => String.t()
      }

  """
  @type asset_model_property_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_type() :: %{
        "scalarType" => list(any())
      }

  """
  @type column_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_time_series_to_asset_property_request() :: %{
        optional("clientToken") => String.t(),
        required("alias") => String.t(),
        required("assetId") => String.t(),
        required("propertyId") => String.t()
      }

  """
  @type associate_time_series_to_asset_property_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "portal" => portal_resource(),
        "project" => project_resource()
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_response() :: %{
        "jobSummaries" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_bulk_import_jobs_response() :: %{String.t() => any()}

  @type associate_assets_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type associate_time_series_to_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type batch_associate_project_assets_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type batch_disassociate_project_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_aggregates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_value_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_get_asset_property_value_history_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_put_asset_property_value_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_access_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_asset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_asset_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_asset_model_composite_model_errors() ::
          precondition_failed_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_bulk_import_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_dashboard_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_dataset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type create_gateway_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_portal_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_project_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_asset_model_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_asset_model_composite_model_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_dataset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type describe_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_action_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_composite_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_model_composite_model_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_bulk_import_job_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_default_encryption_configuration_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type describe_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_gateway_capability_configuration_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_logging_options_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_storage_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type describe_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type disassociate_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type disassociate_time_series_from_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type execute_action_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type execute_query_errors() ::
          throttling_exception()
          | query_timeout_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_asset_property_aggregates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_asset_property_value_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_asset_property_value_history_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_interpolated_asset_property_values_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type invoke_assistant_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type list_access_policies_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_actions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_model_composite_models_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_model_properties_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_models_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_asset_properties_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_asset_relationships_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_associated_assets_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_bulk_import_jobs_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_composition_relationships_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_dashboards_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_datasets_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_gateways_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_portals_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_project_assets_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_projects_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type list_time_series_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type put_default_encryption_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type put_storage_configuration_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_access_policy_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_asset_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_model_errors() ::
          precondition_failed_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_model_composite_model_errors() ::
          precondition_failed_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_asset_property_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_dashboard_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_gateway_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_gateway_capability_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_portal_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflicting_operation_exception()
          | internal_failure_exception()

  @type update_project_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotsitewise",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoTSiteWise",
      signature_version: "v4",
      signing_name: "iotsitewise",
      target_prefix: nil
    }
  end

  @doc """
  Associates a child asset with the given parent asset through a hierarchy defined
  in the
  parent asset's model.

  For more information, see [Associating assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec associate_assets(map(), String.t(), associate_assets_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_assets_errors()}
  def associate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/associate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Associates a time series (data stream) with an asset property.
  """
  @spec associate_time_series_to_asset_property(
          map(),
          associate_time_series_to_asset_property_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_time_series_to_asset_property_errors()}
  def associate_time_series_to_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/associate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Associates a group (batch) of assets with an IoT SiteWise Monitor project.
  """
  @spec batch_associate_project_assets(
          map(),
          String.t(),
          batch_associate_project_assets_request(),
          list()
        ) ::
          {:ok, batch_associate_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_project_assets_errors()}
  def batch_associate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/associate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.
  """
  @spec batch_disassociate_project_assets(
          map(),
          String.t(),
          batch_disassociate_project_assets_request(),
          list()
        ) ::
          {:ok, batch_disassociate_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_project_assets_errors()}
  def batch_disassociate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/disassociate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Gets aggregated values (for example, average, minimum, and maximum) for one or
  more asset
  properties.

  For more information, see [Querying aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec batch_get_asset_property_aggregates(
          map(),
          batch_get_asset_property_aggregates_request(),
          list()
        ) ::
          {:ok, batch_get_asset_property_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_asset_property_aggregates_errors()}
  def batch_get_asset_property_aggregates(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/aggregates"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets the current value for one or more asset properties.

  For more information, see [Querying current
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*.
  """
  @spec batch_get_asset_property_value(map(), batch_get_asset_property_value_request(), list()) ::
          {:ok, batch_get_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_asset_property_value_errors()}
  def batch_get_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/latest"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets the historical values for one or more asset properties.

  For more information, see
  [Querying historical values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*.
  """
  @spec batch_get_asset_property_value_history(
          map(),
          batch_get_asset_property_value_history_request(),
          list()
        ) ::
          {:ok, batch_get_asset_property_value_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_asset_property_value_history_errors()}
  def batch_get_asset_property_value_history(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/history"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Sends a list of asset property values to IoT SiteWise.

  Each value is a timestamp-quality-value
  (TQV) data point. For more information, see [Ingesting data using the API](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
  in the
  *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    *
  The `assetId` and `propertyId` of an asset property.

    *
  A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html). 

  With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have a
  timestamp of no more
  than 7 days in the past and no more than 10 minutes in the future. IoT SiteWise
  rejects timestamps
  outside of the inclusive range of [-7 days, +10 minutes] and returns a
  `TimestampOutOfRangeException` error.

  For each asset property, IoT SiteWise overwrites TQVs with duplicate timestamps
  unless the newer
  TQV has a different quality. For example, if you store a TQV `{T1, GOOD, V1}`,
  then storing `{T1, GOOD, V2}` replaces the existing TQV.

  IoT SiteWise authorizes access to each `BatchPutAssetPropertyValue` entry
  individually.
  For more information, see [BatchPutAssetPropertyValue authorization](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec batch_put_asset_property_value(map(), batch_put_asset_property_value_request(), list()) ::
          {:ok, batch_put_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_asset_property_value_errors()}
  def batch_put_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Creates an access policy that grants the specified identity (IAM Identity Center
  user, IAM Identity Center group, or
  IAM user) access to the specified IoT SiteWise Monitor portal or project
  resource.
  """
  @spec create_access_policy(map(), create_access_policy_request(), list()) ::
          {:ok, create_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_access_policy_errors()}
  def create_access_policy(%Client{} = client, input, options \\ []) do
    url_path = "/access-policies"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an asset from an existing asset model.

  For more information, see [Creating assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec create_asset(map(), create_asset_request(), list()) ::
          {:ok, create_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, input, options \\ []) do
    url_path = "/assets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates an asset model from specified property and hierarchy definitions.

  You create
  assets from asset models. With asset models, you can easily create assets of the
  same type
  that have standardized definitions. Each asset created from a model inherits the
  asset model's
  property and hierarchy definitions. For more information, see [Defining asset models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
  in the
  *IoT SiteWise User Guide*.

  You can create two types of asset models, `ASSET_MODEL` or
  `COMPONENT_MODEL`.

    *

  **ASSET_MODEL** – (default) An asset model that
  you can use to create assets. Can't be included as a component in another asset
  model.

    *

  **COMPONENT_MODEL** – A reusable component that
  you can include in the composite models of other asset models. You can't create
  assets directly from this type of asset model.
  """
  @spec create_asset_model(map(), create_asset_model_request(), list()) ::
          {:ok, create_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_model_errors()}
  def create_asset_model(%Client{} = client, input, options \\ []) do
    url_path = "/asset-models"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates a custom composite model from specified property and hierarchy
  definitions.

  There
  are two types of custom composite models, `inline` and
  `component-model-based`.

  Use component-model-based custom composite models to define standard, reusable
  components.
  A component-model-based custom composite model consists of a name, a
  description, and the ID
  of the component model it references. A component-model-based custom composite
  model has no
  properties of its own; its referenced component model provides its associated
  properties to
  any created assets. For more information, see [Custom composite models (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.

  Use inline custom composite models to organize the properties of an asset model.
  The
  properties of inline custom composite models are local to the asset model where
  they are
  included and can't be used to create multiple assets.

  To create a component-model-based model, specify the `composedAssetModelId` of
  an existing asset model with `assetModelType` of
  `COMPONENT_MODEL`.

  To create an inline model, specify the `assetModelCompositeModelProperties` and
  don't include an `composedAssetModelId`.
  """
  @spec create_asset_model_composite_model(
          map(),
          String.t(),
          create_asset_model_composite_model_request(),
          list()
        ) ::
          {:ok, create_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_model_composite_model_errors()}
  def create_asset_model_composite_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"

    {headers, input} =
      [
        {"ifMatch", "If-Match"},
        {"ifNoneMatch", "If-None-Match"},
        {"matchForVersionType", "Match-For-Version-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Defines a job to ingest data to IoT SiteWise from Amazon S3.

  For more information, see [Create a bulk import job
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*.

  Before you create a bulk import job, you must enable IoT SiteWise warm tier or
  IoT SiteWise cold tier.
  For more information about how to configure storage settings, see
  [PutStorageConfiguration](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html).

  Bulk import is designed to store historical data to IoT SiteWise. It does not
  trigger
  computations or notifications on IoT SiteWise warm or cold tier storage.
  """
  @spec create_bulk_import_job(map(), create_bulk_import_job_request(), list()) ::
          {:ok, create_bulk_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bulk_import_job_errors()}
  def create_bulk_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Creates a dashboard in an IoT SiteWise Monitor project.
  """
  @spec create_dashboard(map(), create_dashboard_request(), list()) ::
          {:ok, create_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dashboard_errors()}
  def create_dashboard(%Client{} = client, input, options \\ []) do
    url_path = "/dashboards"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a dataset to connect an external datasource.
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Creates a gateway, which is a virtual or edge device that delivers industrial
  data streams
  from local servers to IoT SiteWise.

  For more information, see [Ingesting data using a gateway](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec create_gateway(map(), create_gateway_request(), list()) ::
          {:ok, create_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_gateway_errors()}
  def create_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/20200301/gateways"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a portal, which can contain projects and dashboards.

  IoT SiteWise Monitor uses IAM Identity Center or IAM
  to authenticate portal users and manage user permissions.

  Before you can sign in to a new portal, you must add at least one identity to
  that
  portal. For more information, see [Adding or removing portal administrators](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins)
  in the *IoT SiteWise User Guide*.
  """
  @spec create_portal(map(), create_portal_request(), list()) ::
          {:ok, create_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_portal_errors()}
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Creates a project in the specified portal.

  Make sure that the project name and description don't contain confidential
  information.
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an access policy that grants the specified identity access to the
  specified
  IoT SiteWise Monitor resource.

  You can use this operation to revoke access to an IoT SiteWise Monitor
  resource.
  """
  @spec delete_access_policy(map(), String.t(), delete_access_policy_request(), list()) ::
          {:ok, delete_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_policy_errors()}
  def delete_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset.

  This action can't be undone. For more information, see [Deleting assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  You can't delete an asset that's associated to another asset. For more
  information, see
  [DisassociateAssets](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).
  """
  @spec delete_asset(map(), String.t(), delete_asset_request(), list()) ::
          {:ok, delete_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes an asset model.

  This action can't be undone. You must delete all assets created
  from an asset model before you can delete the model. Also, you can't delete an
  asset model if
  a parent asset model exists that contains a property formula expression that
  depends on the
  asset model that you want to delete. For more information, see [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec delete_asset_model(map(), String.t(), delete_asset_model_request(), list()) ::
          {:ok, delete_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_model_errors()}
  def delete_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"

    {headers, input} =
      [
        {"ifMatch", "If-Match"},
        {"ifNoneMatch", "If-None-Match"},
        {"matchForVersionType", "Match-For-Version-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a composite model.

  This action can't be undone. You must delete all assets created
  from a composite model before you can delete the model. Also, you can't delete a
  composite
  model if a parent asset model exists that contains a property formula expression
  that depends
  on the asset model that you want to delete. For more information, see [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.
  """
  @spec delete_asset_model_composite_model(
          map(),
          String.t(),
          String.t(),
          delete_asset_model_composite_model_request(),
          list()
        ) ::
          {:ok, delete_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_model_composite_model_errors()}
  def delete_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    {headers, input} =
      [
        {"ifMatch", "If-Match"},
        {"ifNoneMatch", "If-None-Match"},
        {"matchForVersionType", "Match-For-Version-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a dashboard from IoT SiteWise Monitor.
  """
  @spec delete_dashboard(map(), String.t(), delete_dashboard_request(), list()) ::
          {:ok, delete_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dashboard_errors()}
  def delete_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a dataset.

  This cannot be undone.
  """
  @spec delete_dataset(map(), String.t(), delete_dataset_request(), list()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a gateway from IoT SiteWise.

  When you delete a gateway, some of the gateway's files remain
  in your gateway's file system.
  """
  @spec delete_gateway(map(), String.t(), delete_gateway_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a portal from IoT SiteWise Monitor.
  """
  @spec delete_portal(map(), String.t(), delete_portal_request(), list()) ::
          {:ok, delete_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_portal_errors()}
  def delete_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Deletes a project from IoT SiteWise Monitor.
  """
  @spec delete_project(map(), String.t(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a time series (data stream).

  If you delete a time series that's associated with an
  asset property, the asset property still exists, but the time series will no
  longer be
  associated with this asset property.

  To identify a time series, do one of the following:

    *
  If the time series isn't associated with an asset property,
  specify the `alias` of the time series.

    *
  If the time series is associated with an asset property,
  specify one of the following:

      *
  The `alias` of the time series.

      *
  The `assetId` and `propertyId` that identifies the asset property.
  """
  @spec delete_time_series(map(), delete_time_series_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_time_series_errors()}
  def delete_time_series(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/delete"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Describes an access policy, which specifies an identity's access to an IoT
  SiteWise Monitor portal or
  project.
  """
  @spec describe_access_policy(map(), String.t(), list()) ::
          {:ok, describe_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_access_policy_errors()}
  def describe_access_policy(%Client{} = client, access_policy_id, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an action.
  """
  @spec describe_action(map(), String.t(), list()) ::
          {:ok, describe_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_action_errors()}
  def describe_action(%Client{} = client, action_id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(action_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset.
  """
  @spec describe_asset(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_errors()}
  def describe_asset(%Client{} = client, asset_id, exclude_properties \\ nil, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(exclude_properties) do
        [{"excludeProperties", exclude_properties} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset composite model (also known as an asset
  component).

  An `AssetCompositeModel` is an instance of an
  `AssetModelCompositeModel`. If you want to see information about the model this
  is
  based on, call
  [DescribeAssetModelCompositeModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html).
  """
  @spec describe_asset_composite_model(map(), String.t(), String.t(), list()) ::
          {:ok, describe_asset_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_composite_model_errors()}
  def describe_asset_composite_model(
        %Client{} = client,
        asset_composite_model_id,
        asset_id,
        options \\ []
      ) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/composite-models/#{AWS.Util.encode_uri(asset_composite_model_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset model.
  """
  @spec describe_asset_model(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_model_errors()}
  def describe_asset_model(
        %Client{} = client,
        asset_model_id,
        asset_model_version \\ nil,
        exclude_properties \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(exclude_properties) do
        [{"excludeProperties", exclude_properties} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset model composite model (also known as an
  asset model
  component).

  For more information, see [Custom composite models (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.
  """
  @spec describe_asset_model_composite_model(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_model_composite_model_errors()}
  def describe_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        asset_model_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset property.

  When you call this operation for an attribute property, this response includes
  the
  default attribute value that you define in the asset model. If you update the
  default value
  in the model, this operation's response includes the new default value.

  This operation doesn't return the value of the asset property. To get the value
  of an
  asset property, use
  [GetAssetPropertyValue](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html).
  """
  @spec describe_asset_property(map(), String.t(), String.t(), list()) ::
          {:ok, describe_asset_property_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_property_errors()}
  def describe_asset_property(%Client{} = client, asset_id, property_id, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a bulk import job request.

  For more information, see [Describe a bulk import job
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*.
  """
  @spec describe_bulk_import_job(map(), String.t(), list()) ::
          {:ok, describe_bulk_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bulk_import_job_errors()}
  def describe_bulk_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dashboard.
  """
  @spec describe_dashboard(map(), String.t(), list()) ::
          {:ok, describe_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dashboard_errors()}
  def describe_dashboard(%Client{} = client, dashboard_id, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dataset.
  """
  @spec describe_dataset(map(), String.t(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the default encryption configuration for the Amazon
  Web Services account in
  the default or specified Region.

  For more information, see [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec describe_default_encryption_configuration(map(), list()) ::
          {:ok, describe_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_default_encryption_configuration_errors()}
  def describe_default_encryption_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway.
  """
  @spec describe_gateway(map(), String.t(), list()) ::
          {:ok, describe_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_gateway_errors()}
  def describe_gateway(%Client{} = client, gateway_id, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway capability configuration.

  Each gateway capability defines data sources for a gateway. A capability
  configuration
  can contain multiple data source configurations. If you define OPC-UA sources
  for a gateway in
  the IoT SiteWise console, all of your OPC-UA sources are stored in one
  capability configuration. To
  list all capability configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  @spec describe_gateway_capability_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, describe_gateway_capability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_gateway_capability_configuration_errors()}
  def describe_gateway_capability_configuration(
        %Client{} = client,
        capability_namespace,
        gateway_id,
        options \\ []
      ) do
    url_path =
      "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability/#{AWS.Util.encode_uri(capability_namespace)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current IoT SiteWise logging options.
  """
  @spec describe_logging_options(map(), list()) ::
          {:ok, describe_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_logging_options_errors()}
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a portal.
  """
  @spec describe_portal(map(), String.t(), list()) ::
          {:ok, describe_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_portal_errors()}
  def describe_portal(%Client{} = client, portal_id, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a project.
  """
  @spec describe_project(map(), String.t(), list()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, project_id, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the storage configuration for IoT SiteWise.
  """
  @spec describe_storage_configuration(map(), list()) ::
          {:ok, describe_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_storage_configuration_errors()}
  def describe_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/storage"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a time series (data stream).

  To identify a time series, do one of the following:

    *
  If the time series isn't associated with an asset property,
  specify the `alias` of the time series.

    *
  If the time series is associated with an asset property,
  specify one of the following:

      *
  The `alias` of the time series.

      *
  The `assetId` and `propertyId` that identifies the asset property.
  """
  @spec describe_time_series(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_time_series_errors()}
  def describe_time_series(
        %Client{} = client,
        alias \\ nil,
        asset_id \\ nil,
        property_id \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries/describe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a child asset from the given parent asset through a hierarchy
  defined in the
  parent asset's model.
  """
  @spec disassociate_assets(map(), String.t(), disassociate_assets_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_assets_errors()}
  def disassociate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/disassociate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Disassociates a time series (data stream) from an asset property.
  """
  @spec disassociate_time_series_from_asset_property(
          map(),
          disassociate_time_series_from_asset_property_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_time_series_from_asset_property_errors()}
  def disassociate_time_series_from_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/disassociate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Executes an action on a target resource.
  """
  @spec execute_action(map(), execute_action_request(), list()) ::
          {:ok, execute_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_action_errors()}
  def execute_action(%Client{} = client, input, options \\ []) do
    url_path = "/actions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Run SQL queries to retrieve metadata and time-series data from asset models,
  assets,
  measurements, metrics, transforms, and aggregates.
  """
  @spec execute_query(map(), execute_query_request(), list()) ::
          {:ok, execute_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_query_errors()}
  def execute_query(%Client{} = client, input, options \\ []) do
    url_path = "/queries/execution"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Gets aggregated values for an asset property.

  For more information, see [Querying aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    *
  The `assetId` and `propertyId` of an asset property.

    *
  A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  @spec get_asset_property_aggregates(
          map(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_asset_property_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_property_aggregates_errors()}
  def get_asset_property_aggregates(
        %Client{} = client,
        aggregate_types,
        asset_id \\ nil,
        end_date,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        qualities \\ nil,
        resolution,
        start_date,
        time_ordering \\ nil,
        options \\ []
      ) do
    url_path = "/properties/aggregates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(qualities) do
        [{"qualities", qualities} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregate_types) do
        [{"aggregateTypes", aggregate_types} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset property's current value.

  For more information, see [Querying current
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    *
  The `assetId` and `propertyId` of an asset property.

    *
  A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  @spec get_asset_property_value(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_asset_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_property_value_errors()}
  def get_asset_property_value(
        %Client{} = client,
        asset_id \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        options \\ []
      ) do
    url_path = "/properties/latest"
    headers = []
    query_params = []

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the history of an asset property's values.

  For more information, see [Querying historical
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    *
  The `assetId` and `propertyId` of an asset property.

    *
  A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  @spec get_asset_property_value_history(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_asset_property_value_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_property_value_history_errors()}
  def get_asset_property_value_history(
        %Client{} = client,
        asset_id \\ nil,
        end_date \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        qualities \\ nil,
        start_date \\ nil,
        time_ordering \\ nil,
        options \\ []
      ) do
    url_path = "/properties/history"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(qualities) do
        [{"qualities", qualities} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get interpolated values for an asset property for a specified time interval,
  during a
  period of time.

  If your time series is missing data points during the specified time interval,
  you can use interpolation to estimate the missing data.

  For example, you can use this operation to return the interpolated temperature
  values for
  a wind turbine every 24 hours over a duration of 7 days.

  To identify an asset property, you must specify one of the following:

    *
  The `assetId` and `propertyId` of an asset property.

    *
  A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  @spec get_interpolated_asset_property_values(
          map(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, get_interpolated_asset_property_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_interpolated_asset_property_values_errors()}
  def get_interpolated_asset_property_values(
        %Client{} = client,
        asset_id \\ nil,
        end_time_in_seconds,
        end_time_offset_in_nanos \\ nil,
        interval_in_seconds,
        interval_window_in_seconds \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        quality,
        start_time_in_seconds,
        start_time_offset_in_nanos \\ nil,
        type,
        options \\ []
      ) do
    url_path = "/properties/interpolated"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_offset_in_nanos) do
        [{"startTimeOffsetInNanos", start_time_offset_in_nanos} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_in_seconds) do
        [{"startTimeInSeconds", start_time_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(quality) do
        [{"quality", quality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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
      if !is_nil(interval_window_in_seconds) do
        [{"intervalWindowInSeconds", interval_window_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(interval_in_seconds) do
        [{"intervalInSeconds", interval_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time_offset_in_nanos) do
        [{"endTimeOffsetInNanos", end_time_offset_in_nanos} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time_in_seconds) do
        [{"endTimeInSeconds", end_time_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes SiteWise Assistant to start or continue a conversation.
  """
  @spec invoke_assistant(map(), invoke_assistant_request(), list()) ::
          {:ok, invoke_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_assistant_errors()}
  def invoke_assistant(%Client{} = client, input, options \\ []) do
    url_path = "/assistant/invocation"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-iotsitewise-assistant-conversation-id", "conversationId"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Retrieves a paginated list of access policies for an identity (an IAM Identity
  Center user, an IAM Identity Center
  group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or
  project).
  """
  @spec list_access_policies(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_access_policies_errors()}
  def list_access_policies(
        %Client{} = client,
        iam_arn \\ nil,
        identity_id \\ nil,
        identity_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resource_id \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/access-policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_id) do
        [{"resourceId", resource_id} | query_params]
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
      if !is_nil(identity_type) do
        [{"identityType", identity_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(identity_id) do
        [{"identityId", identity_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(iam_arn) do
        [{"iamArn", iam_arn} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of actions for a specific target resource.
  """
  @spec list_actions(map(), String.t() | nil, String.t() | nil, String.t(), String.t(), list()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_actions_errors()}
  def list_actions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_resource_id,
        target_resource_type,
        options \\ []
      ) do
    url_path = "/actions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_resource_type) do
        [{"targetResourceType", target_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_resource_id) do
        [{"targetResourceId", target_resource_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of composite models associated with the asset model
  """
  @spec list_asset_model_composite_models(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_model_composite_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_model_composite_models_errors()}
  def list_asset_model_composite_models(
        %Client{} = client,
        asset_model_id,
        asset_model_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"
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
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset model.

  If you update properties associated with the model before you finish listing all
  the properties,
  you need to start all over again.
  """
  @spec list_asset_model_properties(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_model_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_model_properties_errors()}
  def list_asset_model_properties(
        %Client{} = client,
        asset_model_id,
        asset_model_version \\ nil,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/properties"
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
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of summaries of all asset models.
  """
  @spec list_asset_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_models_errors()}
  def list_asset_models(
        %Client{} = client,
        asset_model_types \\ nil,
        asset_model_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models"
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
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_model_types) do
        [{"assetModelTypes", asset_model_types} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset.

  If you update properties associated with the model before you finish listing all
  the properties,
  you need to start all over again.
  """
  @spec list_asset_properties(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_properties_errors()}
  def list_asset_properties(
        %Client{} = client,
        asset_id,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/properties"
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
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of asset relationships for an asset.

  You can use this operation
  to identify an asset's root asset and all associated assets between that asset
  and its
  root.
  """
  @spec list_asset_relationships(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_asset_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_relationships_errors()}
  def list_asset_relationships(
        %Client{} = client,
        asset_id,
        max_results \\ nil,
        next_token \\ nil,
        traversal_type,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/assetRelationships"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traversal_type) do
        [{"traversalType", traversal_type} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of asset summaries.

  You can use this operation to do the following:

    *
  List assets based on a specific asset model.

    *
  List top-level assets.

  You can't use this operation to list all assets. To retrieve summaries for all
  of your
  assets, use
  [ListAssetModels](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html)
  to get all of your asset model IDs. Then, use ListAssets to get all
  assets for each asset model.
  """
  @spec list_assets(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_assets_errors()}
  def list_assets(
        %Client{} = client,
        asset_model_id \\ nil,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assets"
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
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_model_id) do
        [{"assetModelId", asset_model_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of associated assets.

  You can use this operation to do the following:

    *

  `CHILD` - List all child assets associated to the asset.

    *

  `PARENT` - List the asset's parent asset.
  """
  @spec list_associated_assets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_associated_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_assets_errors()}
  def list_associated_assets(
        %Client{} = client,
        asset_id,
        hierarchy_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        traversal_direction \\ nil,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/hierarchies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traversal_direction) do
        [{"traversalDirection", traversal_direction} | query_params]
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
      if !is_nil(hierarchy_id) do
        [{"hierarchyId", hierarchy_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of bulk import job requests.

  For more information, see [List bulk import jobs
  (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html)
  in the *IoT SiteWise User Guide*.
  """
  @spec list_bulk_import_jobs(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_bulk_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bulk_import_jobs_errors()}
  def list_bulk_import_jobs(
        %Client{} = client,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
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
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of composition relationships for an asset model of
  type
  `COMPONENT_MODEL`.
  """
  @spec list_composition_relationships(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_composition_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_composition_relationships_errors()}
  def list_composition_relationships(
        %Client{} = client,
        asset_model_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composition-relationships"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.
  """
  @spec list_dashboards(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dashboards_errors()}
  def list_dashboards(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        project_id,
        options \\ []
      ) do
    url_path = "/dashboards"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_id) do
        [{"projectId", project_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of datasets for a specific target resource.
  """
  @spec list_datasets(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
  def list_datasets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        source_type,
        options \\ []
      ) do
    url_path = "/datasets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source_type) do
        [{"sourceType", source_type} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of gateways.
  """
  @spec list_gateways(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/20200301/gateways"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of IoT SiteWise Monitor portals.
  """
  @spec list_portals(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of assets associated with an IoT SiteWise Monitor
  project.
  """
  @spec list_project_assets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_project_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_project_assets_errors()}
  def list_project_assets(
        %Client{} = client,
        project_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets"
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.
  """
  @spec list_projects(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        portal_id,
        options \\ []
      ) do
    url_path = "/projects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(portal_id) do
        [{"portalId", portal_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an IoT SiteWise resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of time series (data streams).
  """
  @spec list_time_series(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_time_series_errors()}
  def list_time_series(
        %Client{} = client,
        alias_prefix \\ nil,
        asset_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        time_series_type \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_series_type) do
        [{"timeSeriesType", time_series_type} | query_params]
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
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_prefix) do
        [{"aliasPrefix", alias_prefix} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the default encryption configuration for the Amazon Web Services account.

  For more information, see
  [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in
  the *IoT SiteWise User Guide*.
  """
  @spec put_default_encryption_configuration(
          map(),
          put_default_encryption_configuration_request(),
          list()
        ) ::
          {:ok, put_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_default_encryption_configuration_errors()}
  def put_default_encryption_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Sets logging options for IoT SiteWise.
  """
  @spec put_logging_options(map(), put_logging_options_request(), list()) ::
          {:ok, put_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_logging_options_errors()}
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Configures storage settings for IoT SiteWise.
  """
  @spec put_storage_configuration(map(), put_storage_configuration_request(), list()) ::
          {:ok, put_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_storage_configuration_errors()}
  def put_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/storage"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Adds tags to an IoT SiteWise resource.

  If a tag already exists for the resource, this operation
  updates the tag's value.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Removes a tag from an IoT SiteWise resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates an existing access policy that specifies an identity's access to an IoT
  SiteWise Monitor
  portal or project resource.
  """
  @spec update_access_policy(map(), String.t(), update_access_policy_request(), list()) ::
          {:ok, update_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_access_policy_errors()}
  def update_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Updates an asset's name.

  For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the
  *IoT SiteWise User Guide*.
  """
  @spec update_asset(map(), String.t(), update_asset_request(), list()) ::
          {:ok, update_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_errors()}
  def update_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates an asset model and all of the assets that were created from the model.

  Each asset
  created from the model inherits the updated asset model's property and hierarchy
  definitions.
  For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the
  *IoT SiteWise User Guide*.

  If you remove a property from an asset model, IoT SiteWise deletes all previous
  data for that
  property. You can’t change the type or data type of an existing property.

  To replace an existing asset model property with a new one with the same
  `name`, do the following:

    
  Submit an `UpdateAssetModel` request with the entire existing property
  removed.

    
  Submit a second `UpdateAssetModel` request that includes the new
  property. The new asset property will have the same `name` as the previous
  one and IoT SiteWise will generate a new unique `id`.
  """
  @spec update_asset_model(map(), String.t(), update_asset_model_request(), list()) ::
          {:ok, update_asset_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_model_errors()}
  def update_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"

    {headers, input} =
      [
        {"ifMatch", "If-Match"},
        {"ifNoneMatch", "If-None-Match"},
        {"matchForVersionType", "Match-For-Version-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates a composite model and all of the assets that were created from the
  model.

  Each
  asset created from the model inherits the updated asset model's property and
  hierarchy
  definitions. For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the
  *IoT SiteWise User Guide*.

  If you remove a property from a composite asset model, IoT SiteWise deletes all
  previous data
  for that property. You can’t change the type or data type of an existing
  property.

  To replace an existing composite asset model property with a new one with the
  same
  `name`, do the following:

    
  Submit an `UpdateAssetModelCompositeModel` request with the entire
  existing property removed.

    
  Submit a second `UpdateAssetModelCompositeModel` request that includes
  the new property. The new asset property will have the same `name` as the
  previous one and IoT SiteWise will generate a new unique `id`.
  """
  @spec update_asset_model_composite_model(
          map(),
          String.t(),
          String.t(),
          update_asset_model_composite_model_request(),
          list()
        ) ::
          {:ok, update_asset_model_composite_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_model_composite_model_errors()}
  def update_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    {headers, input} =
      [
        {"ifMatch", "If-Match"},
        {"ifNoneMatch", "If-None-Match"},
        {"matchForVersionType", "Match-For-Version-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates an asset property's alias and notification state.

  This operation overwrites the property's existing alias and notification state.
  To keep
  your existing property's alias or notification state, you must include the
  existing values
  in the UpdateAssetProperty request. For more information, see
  [DescribeAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html).
  """
  @spec update_asset_property(
          map(),
          String.t(),
          String.t(),
          update_asset_property_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_property_errors()}
  def update_asset_property(%Client{} = client, asset_id, property_id, input, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates an IoT SiteWise Monitor dashboard.
  """
  @spec update_dashboard(map(), String.t(), update_dashboard_request(), list()) ::
          {:ok, update_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dashboard_errors()}
  def update_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
  Updates a dataset.
  """
  @spec update_dataset(map(), String.t(), update_dataset_request(), list()) ::
          {:ok, update_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates a gateway's name.
  """
  @spec update_gateway(map(), String.t(), update_gateway_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_errors()}
  def update_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates a gateway capability configuration or defines a new capability
  configuration.

  Each gateway capability defines data sources for a gateway. A capability
  configuration
  can contain multiple data source configurations. If you define OPC-UA sources
  for a gateway in
  the IoT SiteWise console, all of your OPC-UA sources are stored in one
  capability configuration. To
  list all capability configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  @spec update_gateway_capability_configuration(
          map(),
          String.t(),
          update_gateway_capability_configuration_request(),
          list()
        ) ::
          {:ok, update_gateway_capability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_capability_configuration_errors()}
  def update_gateway_capability_configuration(
        %Client{} = client,
        gateway_id,
        input,
        options \\ []
      ) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Updates an IoT SiteWise Monitor portal.
  """
  @spec update_portal(map(), String.t(), update_portal_request(), list()) ::
          {:ok, update_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_portal_errors()}
  def update_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates an IoT SiteWise Monitor project.
  """
  @spec update_project(map(), String.t(), update_project_request(), list()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

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
