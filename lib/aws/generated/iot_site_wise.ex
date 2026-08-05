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

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_policy_summary() :: %{
        "creationDate" => non_neg_integer(),
        "id" => String.t() | atom(),
        "identity" => identity(),
        "lastUpdateDate" => non_neg_integer(),
        "permission" => list(any()),
        "resource" => resource()
      }

  """
  @type access_policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_definition() :: %{
        "actionDefinitionId" => String.t() | atom(),
        "actionName" => String.t() | atom(),
        "actionType" => String.t() | atom()
      }

  """
  @type action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_payload() :: %{
        "stringValue" => String.t() | atom()
      }

  """
  @type action_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "actionDefinitionId" => String.t() | atom(),
        "actionId" => String.t() | atom(),
        "resolveTo" => resolve_to(),
        "targetResource" => target_resource()
      }

  """
  @type action_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregated_value() :: %{
        "quality" => list(any()),
        "timestamp" => non_neg_integer(),
        "value" => aggregates()
      }

  """
  @type aggregated_value() :: %{(String.t() | atom()) => any()}

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
  @type aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alarms() :: %{
        "alarmRoleArn" => String.t() | atom(),
        "notificationLambdaArn" => String.t() | atom()
      }

  """
  @type alarms() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      annotation() :: %{}

  """
  @type annotation() :: %{}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "workspaceName" => String.t() | atom()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_binding_value_filter() :: %{
        "assetId" => String.t() | atom()
      }

  """
  @type asset_binding_value_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_composite_model() :: %{
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "properties" => list(asset_property()),
        "type" => String.t() | atom()
      }

  """
  @type asset_composite_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_composite_model_path_segment() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_composite_model_path_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_composite_model_summary() :: %{
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "path" => list(asset_composite_model_path_segment()),
        "type" => String.t() | atom()
      }

  """
  @type asset_composite_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_error_details() :: %{
        "assetId" => String.t() | atom(),
        "code" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type asset_error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_hierarchy() :: %{
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_hierarchy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_hierarchy_info() :: %{
        "childAssetId" => String.t() | atom(),
        "parentAssetId" => String.t() | atom()
      }

  """
  @type asset_hierarchy_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_binding_value_filter() :: %{
        "assetModelId" => String.t() | atom()
      }

  """
  @type asset_model_binding_value_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model() :: %{
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "properties" => list(asset_model_property()),
        "type" => String.t() | atom()
      }

  """
  @type asset_model_composite_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_definition() :: %{
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "properties" => list(asset_model_property_definition()),
        "type" => String.t() | atom()
      }

  """
  @type asset_model_composite_model_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_path_segment() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_model_composite_model_path_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_composite_model_summary() :: %{
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "path" => list(asset_model_composite_model_path_segment()),
        "type" => String.t() | atom()
      }

  """
  @type asset_model_composite_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy() :: %{
        "childAssetModelId" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_model_hierarchy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_hierarchy_definition() :: %{
        "childAssetModelId" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_model_hierarchy_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "path" => list(asset_model_property_path_segment()),
        "type" => property_type(),
        "unit" => String.t() | atom()
      }

  """
  @type asset_model_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property_binding_value() :: %{
        "assetModelId" => String.t() | atom(),
        "propertyId" => String.t() | atom()
      }

  """
  @type asset_model_property_binding_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property_binding_value_filter() :: %{
        "assetModelId" => String.t() | atom(),
        "propertyId" => String.t() | atom()
      }

  """
  @type asset_model_property_binding_value_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property_definition() :: %{
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => property_type(),
        "unit" => String.t() | atom()
      }

  """
  @type asset_model_property_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property_path_segment() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_model_property_path_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_property_summary() :: %{
        "assetModelCompositeModelId" => String.t() | atom(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "interfaceSummaries" => list(interface_summary()),
        "name" => String.t() | atom(),
        "path" => list(asset_model_property_path_segment()),
        "type" => property_type(),
        "unit" => String.t() | atom()
      }

  """
  @type asset_model_property_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_model_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_model_summary() :: %{
        "arn" => String.t() | atom(),
        "assetModelType" => list(any()),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => asset_model_status(),
        "version" => String.t() | atom()
      }

  """
  @type asset_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property() :: %{
        "alias" => String.t() | atom(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()),
        "unit" => String.t() | atom()
      }

  """
  @type asset_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_binding_value() :: %{
        "assetId" => String.t() | atom(),
        "propertyId" => String.t() | atom()
      }

  """
  @type asset_property_binding_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_binding_value_filter() :: %{
        "assetId" => String.t() | atom(),
        "propertyId" => String.t() | atom()
      }

  """
  @type asset_property_binding_value_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_path_segment() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type asset_property_path_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_summary() :: %{
        "alias" => String.t() | atom(),
        "assetCompositeModelId" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()),
        "unit" => String.t() | atom()
      }

  """
  @type asset_property_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_value() :: %{
        "quality" => list(any()),
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type asset_property_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_relationship_summary() :: %{
        "hierarchyInfo" => asset_hierarchy_info(),
        "relationshipType" => list(any())
      }

  """
  @type asset_relationship_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type asset_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_summary() :: %{
        "arn" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "hierarchies" => list(asset_hierarchy()),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => asset_status()
      }

  """
  @type asset_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_assets_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("childAssetId") => String.t() | atom(),
        required("hierarchyId") => String.t() | atom()
      }

  """
  @type associate_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_data_segment_entry() :: %{
        "endTimestamp" => time_in_nanos(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type associate_data_segment_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_time_series_to_asset_property_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("alias") => String.t() | atom(),
        required("assetId") => String.t() | atom(),
        required("propertyId") => String.t() | atom()
      }

  """
  @type associate_time_series_to_asset_property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_assets_summary() :: %{
        "arn" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "hierarchies" => list(asset_hierarchy()),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => asset_status()
      }

  """
  @type associated_assets_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "defaultValue" => String.t() | atom()
      }

  """
  @type attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_data_segments_to_dataset_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("associateDataSegmentEntries") => list(associate_data_segment_entry()),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type batch_associate_data_segments_to_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_data_segments_to_dataset_response() :: %{
        "datasetId" => String.t() | atom(),
        "datasetVersion" => String.t() | atom(),
        "failedAssociations" => list(failed_data_segment_association())
      }

  """
  @type batch_associate_data_segments_to_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("assetIds") => list(String.t() | atom())
      }

  """
  @type batch_associate_project_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_project_assets_response() :: %{
        "errors" => list(asset_error_details())
      }

  """
  @type batch_associate_project_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_dataset_data_segments_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("deleteDataSegmentEntries") => list(delete_data_segment_entry()),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type batch_delete_dataset_data_segments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_dataset_data_segments_response() :: %{
        "datasetId" => String.t() | atom(),
        "datasetVersion" => String.t() | atom(),
        "errors" => list(failed_data_segment_deletion())
      }

  """
  @type batch_delete_dataset_data_segments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disassociate_data_segments_from_dataset_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("disassociateDataSegmentEntries") => list(disassociate_data_segment_entry()),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type batch_disassociate_data_segments_from_dataset_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_disassociate_data_segments_from_dataset_response() :: %{
        "datasetId" => String.t() | atom(),
        "datasetVersion" => String.t() | atom(),
        "failedDisassociations" => list(failed_data_segment_disassociation())
      }

  """
  @type batch_disassociate_data_segments_from_dataset_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("assetIds") => list(String.t() | atom())
      }

  """
  @type batch_disassociate_project_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disassociate_project_assets_response() :: %{
        "errors" => list(asset_error_details())
      }

  """
  @type batch_disassociate_project_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_entry() :: %{
        "aggregateTypes" => list(list(any())()),
        "assetId" => String.t() | atom(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "qualities" => list(list(any())()),
        "resolution" => String.t() | atom(),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_aggregates_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_entry() :: %{
        "entryId" => String.t() | atom(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_aggregates_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_aggregates_error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("entries") => list(batch_get_asset_property_aggregates_entry())
      }

  """
  @type batch_get_asset_property_aggregates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_response() :: %{
        "errorEntries" => list(batch_get_asset_property_aggregates_error_entry()),
        "nextToken" => String.t() | atom(),
        "skippedEntries" => list(batch_get_asset_property_aggregates_skipped_entry()),
        "successEntries" => list(batch_get_asset_property_aggregates_success_entry())
      }

  """
  @type batch_get_asset_property_aggregates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t() | atom(),
        "errorInfo" => batch_get_asset_property_aggregates_error_info()
      }

  """
  @type batch_get_asset_property_aggregates_skipped_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_aggregates_success_entry() :: %{
        "aggregatedValues" => list(aggregated_value()),
        "entryId" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_aggregates_success_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_entry() :: %{
        "assetId" => String.t() | atom(),
        "entryId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "propertyId" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_value_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_entry() :: %{
        "entryId" => String.t() | atom(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_value_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_entry() :: %{
        "assetId" => String.t() | atom(),
        "endDate" => non_neg_integer(),
        "entryId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "qualities" => list(list(any())()),
        "startDate" => non_neg_integer(),
        "timeOrdering" => list(any())
      }

  """
  @type batch_get_asset_property_value_history_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_error_entry() :: %{
        "entryId" => String.t() | atom(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_value_history_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_error_info() :: %{
        "errorCode" => list(any()),
        "errorTimestamp" => non_neg_integer()
      }

  """
  @type batch_get_asset_property_value_history_error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("entries") => list(batch_get_asset_property_value_history_entry())
      }

  """
  @type batch_get_asset_property_value_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_history_error_entry()),
        "nextToken" => String.t() | atom(),
        "skippedEntries" => list(batch_get_asset_property_value_history_skipped_entry()),
        "successEntries" => list(batch_get_asset_property_value_history_success_entry())
      }

  """
  @type batch_get_asset_property_value_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t() | atom(),
        "errorInfo" => batch_get_asset_property_value_history_error_info()
      }

  """
  @type batch_get_asset_property_value_history_skipped_entry() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_get_asset_property_value_history_success_entry() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()),
        "entryId" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_value_history_success_entry() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_get_asset_property_value_request() :: %{
        optional("nextToken") => String.t() | atom(),
        required("entries") => list(batch_get_asset_property_value_entry())
      }

  """
  @type batch_get_asset_property_value_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_response() :: %{
        "errorEntries" => list(batch_get_asset_property_value_error_entry()),
        "nextToken" => String.t() | atom(),
        "skippedEntries" => list(batch_get_asset_property_value_skipped_entry()),
        "successEntries" => list(batch_get_asset_property_value_success_entry())
      }

  """
  @type batch_get_asset_property_value_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_skipped_entry() :: %{
        "completionStatus" => list(any()),
        "entryId" => String.t() | atom(),
        "errorInfo" => batch_get_asset_property_value_error_info()
      }

  """
  @type batch_get_asset_property_value_skipped_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_asset_property_value_success_entry() :: %{
        "assetPropertyValue" => asset_property_value(),
        "entryId" => String.t() | atom()
      }

  """
  @type batch_get_asset_property_value_success_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "timestamps" => list(time_in_nanos())
      }

  """
  @type batch_put_asset_property_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_error_entry() :: %{
        "entryId" => String.t() | atom(),
        "errors" => list(batch_put_asset_property_error())
      }

  """
  @type batch_put_asset_property_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_request() :: %{
        optional("enablePartialEntryProcessing") => boolean(),
        required("entries") => list(put_asset_property_value_entry())
      }

  """
  @type batch_put_asset_property_value_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_asset_property_value_response() :: %{
        "errorEntries" => list(batch_put_asset_property_error_entry())
      }

  """
  @type batch_put_asset_property_value_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_enrichment_job_request() :: %{}

  """
  @type cancel_enrichment_job_request() :: %{}

  @typedoc """

  ## Example:

      cancel_enrichment_job_response() :: %{
        "jobId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type cancel_enrichment_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_pipeline_execution_request() :: %{
        optional("reason") => String.t() | atom()
      }

  """
  @type cancel_pipeline_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_pipeline_execution_response() :: %{
        "state" => list(any())
      }

  """
  @type cancel_pipeline_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_query_request() :: %{}

  """
  @type cancel_query_request() :: %{}

  @typedoc """

  ## Example:

      cancel_query_response() :: %{
        "queryId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type cancel_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      citation() :: %{
        "content" => content(),
        "reference" => reference()
      }

  """
  @type citation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_info() :: %{
        "name" => String.t() | atom(),
        "type" => column_type()
      }

  """
  @type column_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_information() :: %{
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type column_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_type() :: %{
        "scalarType" => list(any())
      }

  """
  @type column_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_model_property() :: %{
        "assetProperty" => property(),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type composite_model_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composition_details() :: %{
        "compositionRelationship" => list(composition_relationship_item())
      }

  """
  @type composition_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composition_relationship_item() :: %{
        "id" => String.t() | atom()
      }

  """
  @type composition_relationship_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composition_relationship_summary() :: %{
        "assetModelCompositeModelId" => String.t() | atom(),
        "assetModelCompositeModelType" => String.t() | atom(),
        "assetModelId" => String.t() | atom()
      }

  """
  @type composition_relationship_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_anomaly_detection_configuration() :: %{
        "inputProperties" => String.t() | atom(),
        "resultProperty" => String.t() | atom()
      }

  """
  @type computation_model_anomaly_detection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_configuration() :: %{
        "anomalyDetection" => computation_model_anomaly_detection_configuration()
      }

  """
  @type computation_model_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_data_binding_usage_summary() :: %{
        "computationModelIds" => list(String.t() | atom()),
        "matchedDataBinding" => matched_data_binding()
      }

  """
  @type computation_model_data_binding_usage_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_data_binding_value() :: %{
        "assetModelProperty" => asset_model_property_binding_value(),
        "assetProperty" => asset_property_binding_value(),
        "list" => list(computation_model_data_binding_value())
      }

  """
  @type computation_model_data_binding_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_resolve_to_resource_summary() :: %{
        "resolveTo" => resolve_to()
      }

  """
  @type computation_model_resolve_to_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type computation_model_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      computation_model_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => computation_model_status(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type computation_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_node() :: %{
        "computeNodeName" => String.t() | atom(),
        "dependsOn" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "taskName" => String.t() | atom()
      }

  """
  @type compute_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_node_execution_details() :: %{
        "computeNodeName" => String.t() | atom(),
        "dependsOn" => list(String.t() | atom()),
        "endTime" => non_neg_integer(),
        "executionEnvironmentVariables" => map(),
        "startTime" => non_neg_integer(),
        "status" => compute_node_execution_status(),
        "taskArn" => String.t() | atom(),
        "taskName" => String.t() | atom(),
        "taskVersion" => String.t() | atom()
      }

  """
  @type compute_node_execution_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_node_execution_state_details() :: %{
        "code" => list(any()),
        "details" => list(detailed_pipeline_error()),
        "message" => [String.t() | atom()]
      }

  """
  @type compute_node_execution_state_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_node_execution_status() :: %{
        "state" => list(any()),
        "stateDetails" => compute_node_execution_state_details()
      }

  """
  @type compute_node_execution_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_error_details() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type configuration_error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_status() :: %{
        "error" => configuration_error_details(),
        "state" => list(any())
      }

  """
  @type configuration_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflicting_operation_exception() :: %{
        "message" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type conflicting_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_task_configuration() :: %{
        "command" => list([String.t() | atom()]()),
        "ecrUri" => String.t() | atom(),
        "environmentVariables" => map(),
        "processingType" => list(any()),
        "processingUnit" => list(any()),
        "taskExecutionRole" => String.t() | atom(),
        "timeoutSeconds" => float()
      }

  """
  @type container_task_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content() :: %{
        "text" => String.t() | atom()
      }

  """
  @type content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_policy_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type create_access_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_policy_response() :: %{
        "accessPolicyArn" => String.t() | atom(),
        "accessPolicyId" => String.t() | atom()
      }

  """
  @type create_access_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("idcInstanceArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "arn" => String.t() | atom(),
        "dnsSubdomain" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t() | atom(),
        optional("assetModelCompositeModelExternalId") => String.t() | atom(),
        optional("assetModelCompositeModelId") => String.t() | atom(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property_definition()),
        optional("clientToken") => String.t() | atom(),
        optional("composedAssetModelId") => String.t() | atom(),
        optional("ifMatch") => String.t() | atom(),
        optional("ifNoneMatch") => String.t() | atom(),
        optional("matchForVersionType") => list(any()),
        optional("parentAssetModelCompositeModelId") => String.t() | atom(),
        required("assetModelCompositeModelName") => String.t() | atom(),
        required("assetModelCompositeModelType") => String.t() | atom()
      }

  """
  @type create_asset_model_composite_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelId" => String.t() | atom(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()),
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_composite_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model_definition()),
        optional("assetModelDescription") => String.t() | atom(),
        optional("assetModelExternalId") => String.t() | atom(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy_definition()),
        optional("assetModelId") => String.t() | atom(),
        optional("assetModelProperties") => list(asset_model_property_definition()),
        optional("assetModelType") => list(any()),
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("assetModelName") => String.t() | atom()
      }

  """
  @type create_asset_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_model_response() :: %{
        "assetModelArn" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type create_asset_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_request() :: %{
        optional("assetDescription") => String.t() | atom(),
        optional("assetExternalId") => String.t() | atom(),
        optional("assetId") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("assetModelId") => String.t() | atom(),
        required("assetName") => String.t() | atom()
      }

  """
  @type create_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_response() :: %{
        "assetArn" => String.t() | atom(),
        "assetId" => String.t() | atom(),
        "assetStatus" => asset_status()
      }

  """
  @type create_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_request() :: %{
        optional("adaptiveIngestion") => boolean(),
        optional("datasetId") => String.t() | atom(),
        optional("deleteFilesAfterImport") => boolean(),
        optional("jobConfiguration") => job_configuration(),
        optional("workspaceName") => String.t() | atom(),
        required("errorReportLocation") => error_report_location(),
        required("files") => list(file()),
        required("jobName") => String.t() | atom(),
        required("jobRoleArn") => String.t() | atom()
      }

  """
  @type create_bulk_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bulk_import_job_response() :: %{
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobStatus" => list(any())
      }

  """
  @type create_bulk_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_computation_model_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("computationModelDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("computationModelConfiguration") => computation_model_configuration(),
        required("computationModelDataBinding") => map(),
        required("computationModelName") => String.t() | atom()
      }

  """
  @type create_computation_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_computation_model_response() :: %{
        "computationModelArn" => String.t() | atom(),
        "computationModelId" => String.t() | atom(),
        "computationModelStatus" => computation_model_status()
      }

  """
  @type create_computation_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dashboard_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dashboardDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("dashboardDefinition") => String.t() | atom(),
        required("dashboardName") => String.t() | atom(),
        required("projectId") => String.t() | atom()
      }

  """
  @type create_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dashboard_response() :: %{
        "dashboardArn" => String.t() | atom(),
        "dashboardId" => String.t() | atom()
      }

  """
  @type create_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_export_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("destinationS3Uri") => String.t() | atom(),
        required("errorReportLocation") => export_error_report_location(),
        required("input") => list()
      }

  """
  @type create_dataset_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_export_job_response() :: %{
        "jobId" => String.t() | atom(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type create_dataset_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("datasetConfig") => dataset_config(),
        optional("datasetDescription") => String.t() | atom(),
        optional("datasetId") => String.t() | atom(),
        optional("datasetType") => list(any()),
        optional("metadata") => map(),
        optional("tags") => map(),
        optional("workspaceName") => String.t() | atom(),
        required("datasetName") => String.t() | atom(),
        required("datasetSource") => dataset_source()
      }

  """
  @type create_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "datasetArn" => String.t() | atom(),
        "datasetId" => String.t() | atom(),
        "datasetStatus" => dataset_status()
      }

  """
  @type create_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_enrichment_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("jobConfiguration") => list()
      }

  """
  @type create_enrichment_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_enrichment_job_response() :: %{
        "createdAt" => [non_neg_integer()],
        "jobId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_enrichment_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        optional("gatewayVersion") => String.t() | atom(),
        optional("tags") => map(),
        required("gatewayName") => String.t() | atom(),
        required("gatewayPlatform") => gateway_platform()
      }

  """
  @type create_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "gatewayArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom()
      }

  """
  @type create_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pipeline_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("environmentVariables") => map(),
        optional("tags") => map(),
        required("computations") => list(compute_node()),
        required("pipelineName") => String.t() | atom()
      }

  """
  @type create_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "pipelineArn" => String.t() | atom(),
        "pipelineName" => String.t() | atom(),
        "status" => resource_status(),
        "version" => String.t() | atom()
      }

  """
  @type create_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t() | atom(),
        optional("notificationSenderEmail") => String.t() | atom(),
        optional("portalAuthMode") => list(any()),
        optional("portalDescription") => String.t() | atom(),
        optional("portalLogoImageFile") => image_file(),
        optional("portalType") => list(any()),
        optional("portalTypeConfiguration") => map(),
        optional("tags") => map(),
        required("portalContactEmail") => String.t() | atom(),
        required("portalName") => String.t() | atom(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_portal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_portal_response() :: %{
        "portalArn" => String.t() | atom(),
        "portalId" => String.t() | atom(),
        "portalStartUrl" => String.t() | atom(),
        "portalStatus" => portal_status(),
        "ssoApplicationId" => String.t() | atom()
      }

  """
  @type create_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("projectDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("portalId") => String.t() | atom(),
        required("projectName") => String.t() | atom()
      }

  """
  @type create_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "projectArn" => String.t() | atom(),
        "projectId" => String.t() | atom()
      }

  """
  @type create_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_task_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("taskConfiguration") => list(),
        required("taskName") => String.t() | atom()
      }

  """
  @type create_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_task_response() :: %{
        "status" => resource_status(),
        "taskArn" => String.t() | atom(),
        "taskName" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type create_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workspace_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        optional("workspaceDescription") => String.t() | atom(),
        required("encryptionConfiguration") => workspace_encryption_configuration(),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type create_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workspace_response() :: %{
        "workspaceArn" => String.t() | atom(),
        "workspaceName" => String.t() | atom(),
        "workspaceStatus" => workspace_status()
      }

  """
  @type create_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      csv() :: %{
        "columnNames" => list(list(any())())
      }

  """
  @type csv() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      customer_managed_s3_storage() :: %{
        "roleArn" => String.t() | atom(),
        "s3ResourceArn" => String.t() | atom()
      }

  """
  @type customer_managed_s3_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dashboard_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom()
      }

  """
  @type dashboard_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_binding_value() :: %{
        "assetModelProperty" => asset_model_property_binding_value(),
        "assetProperty" => asset_property_binding_value()
      }

  """
  @type data_binding_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_binding_value_filter() :: %{
        "asset" => asset_binding_value_filter(),
        "assetModel" => asset_model_binding_value_filter(),
        "assetModelProperty" => asset_model_property_binding_value_filter(),
        "assetProperty" => asset_property_binding_value_filter()
      }

  """
  @type data_binding_value_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_segment_enrichment() :: %{
        "lastEnrichedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type data_segment_enrichment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_segment_relationship_summary() :: %{
        "endTimestamp" => time_in_nanos(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "targetDatasetId" => String.t() | atom(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type data_segment_relationship_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_segment_summary() :: %{
        "alias" => String.t() | atom(),
        "dataType" => list(any()),
        "endTimestamp" => time_in_nanos(),
        "enrichment" => data_segment_enrichment(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type data_segment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_reference() :: %{
        "datasetArn" => String.t() | atom(),
        "source" => source()
      }

  """
  @type data_set_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_config() :: %{
        "session" => session_config()
      }

  """
  @type dataset_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_enrichment() :: %{
        "video" => dataset_enrichment_entry()
      }

  """
  @type dataset_enrichment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_enrichment_entry() :: %{
        "lastEnrichedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type dataset_enrichment_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_item() :: %{
        "datasetId" => String.t() | atom(),
        "exportDataTypes" => list(list(any())()),
        "trimSettings" => trim_settings()
      }

  """
  @type dataset_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_source() :: %{
        "sourceDetail" => source_detail(),
        "sourceFormat" => list(any()),
        "sourceType" => list(any())
      }

  """
  @type dataset_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_status() :: %{
        "error" => error_details(),
        "state" => list(any())
      }

  """
  @type dataset_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "datasetType" => list(any()),
        "description" => String.t() | atom(),
        "enrichmentStatus" => dataset_enrichment(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "sourceType" => list(any()),
        "status" => dataset_status()
      }

  """
  @type dataset_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datum() :: %{
        "arrayValue" => list(datum()),
        "nullValue" => boolean(),
        "rowValue" => row(),
        "scalarValue" => String.t() | atom()
      }

  """
  @type datum() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_access_policy_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_access_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_access_policy_response() :: %{}

  """
  @type delete_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("ifMatch") => String.t() | atom(),
        optional("ifNoneMatch") => String.t() | atom(),
        optional("matchForVersionType") => list(any())
      }

  """
  @type delete_asset_model_composite_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_model_composite_model_response() :: %{
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_composite_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_model_interface_relationship_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_asset_model_interface_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_model_interface_relationship_response() :: %{
        "assetModelArn" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status(),
        "interfaceAssetModelId" => String.t() | atom()
      }

  """
  @type delete_asset_model_interface_relationship_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_model_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("ifMatch") => String.t() | atom(),
        optional("ifNoneMatch") => String.t() | atom(),
        optional("matchForVersionType") => list(any())
      }

  """
  @type delete_asset_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_model_response() :: %{
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type delete_asset_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_response() :: %{
        "assetId" => String.t() | atom(),
        "assetStatus" => asset_status()
      }

  """
  @type delete_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_computation_model_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_computation_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_computation_model_response() :: %{
        "computationModelStatus" => computation_model_status()
      }

  """
  @type delete_computation_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dashboard_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dashboard_response() :: %{}

  """
  @type delete_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      delete_data_segment_entry() :: %{
        "endTimestamp" => time_in_nanos(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type delete_data_segment_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type delete_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "datasetStatus" => dataset_status()
      }

  """
  @type delete_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      delete_pipeline_response() :: %{
        "status" => resource_status()
      }

  """
  @type delete_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_portal_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_portal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type delete_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{}

  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:

      delete_task_request() :: %{}

  """
  @type delete_task_request() :: %{}

  @typedoc """

  ## Example:

      delete_task_response() :: %{
        "status" => resource_status()
      }

  """
  @type delete_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_time_series_request() :: %{
        optional("alias") => String.t() | atom(),
        optional("assetId") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("propertyId") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type delete_time_series_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workspace_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workspace_response() :: %{
        "workspaceStatus" => workspace_status()
      }

  """
  @type delete_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_access_policy_request() :: %{}

  """
  @type describe_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      describe_access_policy_response() :: %{
        "accessPolicyArn" => String.t() | atom(),
        "accessPolicyCreationDate" => non_neg_integer(),
        "accessPolicyId" => String.t() | atom(),
        "accessPolicyIdentity" => identity(),
        "accessPolicyLastUpdateDate" => non_neg_integer(),
        "accessPolicyPermission" => list(any()),
        "accessPolicyResource" => resource()
      }

  """
  @type describe_access_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_action_request() :: %{}

  """
  @type describe_action_request() :: %{}

  @typedoc """

  ## Example:

      describe_action_response() :: %{
        "actionDefinitionId" => String.t() | atom(),
        "actionId" => String.t() | atom(),
        "actionPayload" => action_payload(),
        "executionTime" => non_neg_integer(),
        "resolveTo" => resolve_to(),
        "targetResource" => target_resource()
      }

  """
  @type describe_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_application_request() :: %{}

  """
  @type describe_application_request() :: %{}

  @typedoc """

  ## Example:

      describe_application_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "dnsSubdomain" => String.t() | atom(),
        "id" => String.t() | atom(),
        "idcApplicationArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_composite_model_request() :: %{}

  """
  @type describe_asset_composite_model_request() :: %{}

  @typedoc """

  ## Example:

      describe_asset_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()),
        "assetCompositeModelDescription" => String.t() | atom(),
        "assetCompositeModelExternalId" => String.t() | atom(),
        "assetCompositeModelId" => String.t() | atom(),
        "assetCompositeModelName" => String.t() | atom(),
        "assetCompositeModelPath" => list(asset_composite_model_path_segment()),
        "assetCompositeModelProperties" => list(asset_property()),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()),
        "assetCompositeModelType" => String.t() | atom(),
        "assetId" => String.t() | atom()
      }

  """
  @type describe_asset_composite_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_request() :: %{
        optional("assetModelVersion") => String.t() | atom()
      }

  """
  @type describe_asset_model_composite_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_model_composite_model_response() :: %{
        "actionDefinitions" => list(action_definition()),
        "assetModelCompositeModelDescription" => String.t() | atom(),
        "assetModelCompositeModelExternalId" => String.t() | atom(),
        "assetModelCompositeModelId" => String.t() | atom(),
        "assetModelCompositeModelName" => String.t() | atom(),
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()),
        "assetModelCompositeModelProperties" => list(asset_model_property()),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()),
        "assetModelCompositeModelType" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "compositionDetails" => composition_details()
      }

  """
  @type describe_asset_model_composite_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_model_interface_relationship_request() :: %{}

  """
  @type describe_asset_model_interface_relationship_request() :: %{}

  @typedoc """

  ## Example:

      describe_asset_model_interface_relationship_response() :: %{
        "assetModelId" => String.t() | atom(),
        "hierarchyMappings" => list(hierarchy_mapping()),
        "interfaceAssetModelId" => String.t() | atom(),
        "propertyMappings" => list(property_mapping())
      }

  """
  @type describe_asset_model_interface_relationship_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      describe_asset_model_request() :: %{
        optional("assetModelVersion") => String.t() | atom(),
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_model_response() :: %{
        "assetModelArn" => String.t() | atom(),
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()),
        "assetModelCompositeModels" => list(asset_model_composite_model()),
        "assetModelCreationDate" => non_neg_integer(),
        "assetModelDescription" => String.t() | atom(),
        "assetModelExternalId" => String.t() | atom(),
        "assetModelHierarchies" => list(asset_model_hierarchy()),
        "assetModelId" => String.t() | atom(),
        "assetModelLastUpdateDate" => non_neg_integer(),
        "assetModelName" => String.t() | atom(),
        "assetModelProperties" => list(asset_model_property()),
        "assetModelStatus" => asset_model_status(),
        "assetModelType" => list(any()),
        "assetModelVersion" => String.t() | atom(),
        "eTag" => String.t() | atom(),
        "interfaceDetails" => list(interface_relationship())
      }

  """
  @type describe_asset_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_property_request() :: %{}

  """
  @type describe_asset_property_request() :: %{}

  @typedoc """

  ## Example:

      describe_asset_property_response() :: %{
        "assetExternalId" => String.t() | atom(),
        "assetId" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "assetName" => String.t() | atom(),
        "assetProperty" => property(),
        "compositeModel" => composite_model_property()
      }

  """
  @type describe_asset_property_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_request() :: %{
        optional("excludeProperties") => boolean()
      }

  """
  @type describe_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_asset_response() :: %{
        "assetArn" => String.t() | atom(),
        "assetCompositeModelSummaries" => list(asset_composite_model_summary()),
        "assetCompositeModels" => list(asset_composite_model()),
        "assetCreationDate" => non_neg_integer(),
        "assetDescription" => String.t() | atom(),
        "assetExternalId" => String.t() | atom(),
        "assetHierarchies" => list(asset_hierarchy()),
        "assetId" => String.t() | atom(),
        "assetLastUpdateDate" => non_neg_integer(),
        "assetModelId" => String.t() | atom(),
        "assetName" => String.t() | atom(),
        "assetProperties" => list(asset_property()),
        "assetStatus" => asset_status()
      }

  """
  @type describe_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_bulk_import_job_request() :: %{
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type describe_bulk_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_bulk_import_job_response() :: %{
        "adaptiveIngestion" => boolean(),
        "datasetId" => String.t() | atom(),
        "deleteFilesAfterImport" => boolean(),
        "errorReportLocation" => error_report_location(),
        "files" => list(file()),
        "jobConfiguration" => job_configuration(),
        "jobCreationDate" => non_neg_integer(),
        "jobId" => String.t() | atom(),
        "jobLastUpdateDate" => non_neg_integer(),
        "jobName" => String.t() | atom(),
        "jobRoleArn" => String.t() | atom(),
        "jobStatus" => list(any()),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_bulk_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_computation_model_execution_summary_request() :: %{
        optional("resolveToResourceId") => String.t() | atom(),
        optional("resolveToResourceType") => list(any())
      }

  """
  @type describe_computation_model_execution_summary_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      describe_computation_model_execution_summary_response() :: %{
        "computationModelExecutionSummary" => map(),
        "computationModelId" => String.t() | atom(),
        "resolveTo" => resolve_to()
      }

  """
  @type describe_computation_model_execution_summary_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      describe_computation_model_request() :: %{
        optional("computationModelVersion") => String.t() | atom()
      }

  """
  @type describe_computation_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_computation_model_response() :: %{
        "actionDefinitions" => list(action_definition()),
        "computationModelArn" => String.t() | atom(),
        "computationModelConfiguration" => computation_model_configuration(),
        "computationModelCreationDate" => non_neg_integer(),
        "computationModelDataBinding" => map(),
        "computationModelDescription" => String.t() | atom(),
        "computationModelId" => String.t() | atom(),
        "computationModelLastUpdateDate" => non_neg_integer(),
        "computationModelName" => String.t() | atom(),
        "computationModelStatus" => computation_model_status(),
        "computationModelVersion" => String.t() | atom()
      }

  """
  @type describe_computation_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dashboard_request() :: %{}

  """
  @type describe_dashboard_request() :: %{}

  @typedoc """

  ## Example:

      describe_dashboard_response() :: %{
        "dashboardArn" => String.t() | atom(),
        "dashboardCreationDate" => non_neg_integer(),
        "dashboardDefinition" => String.t() | atom(),
        "dashboardDescription" => String.t() | atom(),
        "dashboardId" => String.t() | atom(),
        "dashboardLastUpdateDate" => non_neg_integer(),
        "dashboardName" => String.t() | atom(),
        "projectId" => String.t() | atom()
      }

  """
  @type describe_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dataset_export_job_request() :: %{}

  """
  @type describe_dataset_export_job_request() :: %{}

  @typedoc """

  ## Example:

      describe_dataset_export_job_response() :: %{
        "completedAt" => [non_neg_integer()],
        "destinationS3Uri" => String.t() | atom(),
        "errorReportLocation" => export_error_report_location(),
        "input" => list(),
        "jobId" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_dataset_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{
        optional("datasetVersion") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type describe_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "datasetArn" => String.t() | atom(),
        "datasetConfig" => dataset_config(),
        "datasetCreationDate" => non_neg_integer(),
        "datasetDescription" => String.t() | atom(),
        "datasetId" => String.t() | atom(),
        "datasetLastUpdateDate" => non_neg_integer(),
        "datasetName" => String.t() | atom(),
        "datasetSource" => dataset_source(),
        "datasetStatus" => dataset_status(),
        "datasetType" => list(any()),
        "datasetVersion" => String.t() | atom(),
        "enrichmentStatus" => dataset_enrichment(),
        "metadata" => map(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_request() :: %{}

  """
  @type describe_default_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type describe_default_encryption_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_enrichment_job_request() :: %{}

  """
  @type describe_enrichment_job_request() :: %{}

  @typedoc """

  ## Example:

      describe_enrichment_job_response() :: %{
        "cancelledAt" => [non_neg_integer()],
        "completedAt" => [non_neg_integer()],
        "createdAt" => [non_neg_integer()],
        "failureMessage" => [String.t() | atom()],
        "jobConfiguration" => list(),
        "jobId" => String.t() | atom(),
        "jobType" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_enrichment_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_execution_request() :: %{}

  """
  @type describe_execution_request() :: %{}

  @typedoc """

  ## Example:

      describe_execution_response() :: %{
        "actionType" => String.t() | atom(),
        "executionDetails" => map(),
        "executionEndTime" => non_neg_integer(),
        "executionEntityVersion" => String.t() | atom(),
        "executionId" => String.t() | atom(),
        "executionResult" => map(),
        "executionStartTime" => non_neg_integer(),
        "executionStatus" => execution_status(),
        "resolveTo" => resolve_to(),
        "targetResource" => target_resource(),
        "targetResourceVersion" => String.t() | atom()
      }

  """
  @type describe_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_request() :: %{}

  """
  @type describe_gateway_capability_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_capability_configuration_response() :: %{
        "capabilityConfiguration" => String.t() | atom(),
        "capabilityNamespace" => String.t() | atom(),
        "capabilitySyncStatus" => list(any()),
        "gatewayId" => String.t() | atom()
      }

  """
  @type describe_gateway_capability_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_gateway_request() :: %{}

  """
  @type describe_gateway_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_response() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayArn" => String.t() | atom(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()),
        "gatewayId" => String.t() | atom(),
        "gatewayName" => String.t() | atom(),
        "gatewayPlatform" => gateway_platform(),
        "gatewayVersion" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type describe_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_logging_options_request() :: %{
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type describe_logging_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_logging_options_response() :: %{
        "loggingOptions" => logging_options()
      }

  """
  @type describe_logging_options_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_pipeline_execution_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_pipeline_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_pipeline_execution_response() :: %{
        "computeNodeExecutionDetails" => list(compute_node_execution_details()),
        "endTime" => [non_neg_integer()],
        "executionPriority" => integer(),
        "nextToken" => String.t() | atom(),
        "pipelineExecutionId" => String.t() | atom(),
        "pipelineName" => String.t() | atom(),
        "pipelineVersion" => String.t() | atom(),
        "requestEnvironmentVariables" => execution_environment_variables(),
        "startTime" => [non_neg_integer()],
        "status" => pipeline_execution_status(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_pipeline_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_pipeline_request() :: %{
        optional("pipelineVersion") => String.t() | atom()
      }

  """
  @type describe_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_pipeline_response() :: %{
        "computations" => list(compute_node()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentVariables" => map(),
        "pipelineArn" => String.t() | atom(),
        "pipelineName" => String.t() | atom(),
        "status" => resource_status(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_portal_request() :: %{}

  """
  @type describe_portal_request() :: %{}

  @typedoc """

  ## Example:

      describe_portal_response() :: %{
        "alarms" => alarms(),
        "notificationSenderEmail" => String.t() | atom(),
        "portalArn" => String.t() | atom(),
        "portalAuthMode" => list(any()),
        "portalClientId" => String.t() | atom(),
        "portalContactEmail" => String.t() | atom(),
        "portalCreationDate" => non_neg_integer(),
        "portalDescription" => String.t() | atom(),
        "portalId" => String.t() | atom(),
        "portalLastUpdateDate" => non_neg_integer(),
        "portalLogoImageLocation" => image_location(),
        "portalName" => String.t() | atom(),
        "portalStartUrl" => String.t() | atom(),
        "portalStatus" => portal_status(),
        "portalType" => list(any()),
        "portalTypeConfiguration" => map(),
        "roleArn" => String.t() | atom()
      }

  """
  @type describe_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "portalId" => String.t() | atom(),
        "projectArn" => String.t() | atom(),
        "projectCreationDate" => non_neg_integer(),
        "projectDescription" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "projectLastUpdateDate" => non_neg_integer(),
        "projectName" => String.t() | atom()
      }

  """
  @type describe_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_query_request() :: %{}

  """
  @type describe_query_request() :: %{}

  @typedoc """

  ## Example:

      describe_query_response() :: %{
        "completedAt" => [non_neg_integer()],
        "errorMessage" => String.t() | atom(),
        "queryId" => String.t() | atom(),
        "statistics" => query_statistics(),
        "status" => list(any()),
        "submittedAt" => [non_neg_integer()]
      }

  """
  @type describe_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_search_request() :: %{}

  """
  @type describe_search_request() :: %{}

  @typedoc """

  ## Example:

      describe_search_response() :: %{
        "groupId" => String.t() | atom(),
        "queryStatement" => String.t() | atom(),
        "searchId" => String.t() | atom(),
        "searchType" => list(any()),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_search_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_storage_configuration_request() :: %{}

  """
  @type describe_storage_configuration_request() :: %{}

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
  @type describe_storage_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_task_request() :: %{
        optional("taskVersion") => String.t() | atom()
      }

  """
  @type describe_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_task_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "status" => resource_status(),
        "taskArn" => String.t() | atom(),
        "taskConfiguration" => list(),
        "taskName" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_time_series_request() :: %{
        optional("alias") => String.t() | atom(),
        optional("assetId") => String.t() | atom(),
        optional("propertyId") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type describe_time_series_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_time_series_response() :: %{
        "alias" => String.t() | atom(),
        "assetId" => String.t() | atom(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "timeSeriesArn" => String.t() | atom(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t() | atom(),
        "timeSeriesLastUpdateDate" => non_neg_integer(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type describe_time_series_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_workspace_request() :: %{}

  """
  @type describe_workspace_request() :: %{}

  @typedoc """

  ## Example:

      describe_workspace_response() :: %{
        "createdAt" => non_neg_integer(),
        "encryptionConfiguration" => workspace_encryption_configuration_info(),
        "updatedAt" => non_neg_integer(),
        "workspaceArn" => String.t() | atom(),
        "workspaceDescription" => String.t() | atom(),
        "workspaceName" => String.t() | atom(),
        "workspaceStatus" => workspace_status()
      }

  """
  @type describe_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detailed_error() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type detailed_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detailed_pipeline_error() :: %{
        "code" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type detailed_pipeline_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_assets_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("childAssetId") => String.t() | atom(),
        required("hierarchyId") => String.t() | atom()
      }

  """
  @type disassociate_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_data_segment_entry() :: %{
        "endTimestamp" => time_in_nanos(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type disassociate_data_segment_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_time_series_from_asset_property_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("alias") => String.t() | atom(),
        required("assetId") => String.t() | atom(),
        required("propertyId") => String.t() | atom()
      }

  """
  @type disassociate_time_series_from_asset_property_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      enrichment_job_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "datasetId" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobType" => list(any()),
        "propertyAlias" => String.t() | atom(),
        "status" => list(any()),
        "timeSeriesId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "workspaceName" => String.t() | atom()
      }

  """
  @type enrichment_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enrichment_trim_settings() :: %{
        "endTime" => time_in_nanos(),
        "startTime" => time_in_nanos()
      }

  """
  @type enrichment_trim_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => list(any()),
        "details" => list(detailed_error()),
        "message" => String.t() | atom()
      }

  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_report_location() :: %{
        "bucket" => String.t() | atom(),
        "prefix" => String.t() | atom()
      }

  """
  @type error_report_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_detection() :: %{
        "datasetId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "timeSeriesId" => String.t() | atom(),
        "trimSettings" => enrichment_trim_settings()
      }

  """
  @type event_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_action_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("resolveTo") => resolve_to(),
        required("actionDefinitionId") => String.t() | atom(),
        required("actionPayload") => action_payload(),
        required("targetResource") => target_resource()
      }

  """
  @type execute_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_action_response() :: %{
        "actionId" => String.t() | atom()
      }

  """
  @type execute_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_query_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("queryStatement") => String.t() | atom()
      }

  """
  @type execute_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_query_response() :: %{
        "columns" => list(column_info()),
        "nextToken" => String.t() | atom(),
        "rows" => list(row())
      }

  """
  @type execute_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_environment_variables() :: %{
        "computeNodes" => map(),
        "global" => map()
      }

  """
  @type execution_environment_variables() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_status() :: %{
        "state" => list(any())
      }

  """
  @type execution_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_summary() :: %{
        "actionType" => String.t() | atom(),
        "executionEndTime" => non_neg_integer(),
        "executionEntityVersion" => String.t() | atom(),
        "executionId" => String.t() | atom(),
        "executionStartTime" => non_neg_integer(),
        "executionStatus" => execution_status(),
        "resolveTo" => resolve_to(),
        "targetResource" => target_resource(),
        "targetResourceVersion" => String.t() | atom()
      }

  """
  @type execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_error_report_location() :: %{
        "s3Uri" => String.t() | atom()
      }

  """
  @type export_error_report_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_job_summary() :: %{
        "completedAt" => [non_neg_integer()],
        "destinationS3Uri" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type export_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expression_variable() :: %{
        "name" => String.t() | atom(),
        "value" => variable_value()
      }

  """
  @type expression_variable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_data_segment_association() :: %{
        "endTimestamp" => time_in_nanos(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type failed_data_segment_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_data_segment_deletion() :: %{
        "endTimestamp" => time_in_nanos(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type failed_data_segment_deletion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_data_segment_disassociation() :: %{
        "endTimestamp" => time_in_nanos(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "sourceDatasetId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom()
      }

  """
  @type failed_data_segment_disassociation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file() :: %{
        "alias" => String.t() | atom(),
        "bucket" => String.t() | atom(),
        "fileFormat" => file_format(),
        "key" => String.t() | atom(),
        "startTime" => time_in_nanos(),
        "versionId" => String.t() | atom()
      }

  """
  @type file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_format() :: %{
        "annotation" => annotation(),
        "csv" => csv(),
        "mp4" => mp4(),
        "parquet" => parquet()
      }

  """
  @type file_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      format_settings() :: %{
        "framesPerSecond" => integer(),
        "heightInPixels" => integer(),
        "widthInPixels" => integer()
      }

  """
  @type format_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forwarding_config() :: %{
        "state" => list(any())
      }

  """
  @type forwarding_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_capability_summary() :: %{
        "capabilityNamespace" => String.t() | atom(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type gateway_capability_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_platform() :: %{
        "greengrass" => greengrass(),
        "greengrassV2" => greengrass_v2(),
        "siemensIE" => siemens_i_e()
      }

  """
  @type gateway_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_summary() :: %{
        "creationDate" => non_neg_integer(),
        "gatewayCapabilitySummaries" => list(gateway_capability_summary()),
        "gatewayId" => String.t() | atom(),
        "gatewayName" => String.t() | atom(),
        "gatewayPlatform" => gateway_platform(),
        "gatewayVersion" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer()
      }

  """
  @type gateway_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_request() :: %{
        optional("assetId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("propertyId") => String.t() | atom(),
        optional("qualities") => list(list(any())()),
        optional("timeOrdering") => list(any()),
        required("aggregateTypes") => list(list(any())()),
        required("endDate") => non_neg_integer(),
        required("resolution") => String.t() | atom(),
        required("startDate") => non_neg_integer()
      }

  """
  @type get_asset_property_aggregates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_aggregates_response() :: %{
        "aggregatedValues" => list(aggregated_value()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_asset_property_aggregates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_request() :: %{
        optional("assetId") => String.t() | atom(),
        optional("endDate") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("propertyId") => String.t() | atom(),
        optional("qualities") => list(list(any())()),
        optional("startDate") => non_neg_integer(),
        optional("timeOrdering") => list(any())
      }

  """
  @type get_asset_property_value_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_history_response() :: %{
        "assetPropertyValueHistory" => list(asset_property_value()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_asset_property_value_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_request() :: %{
        optional("assetId") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("propertyId") => String.t() | atom()
      }

  """
  @type get_asset_property_value_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_property_value_response() :: %{
        "propertyValue" => asset_property_value()
      }

  """
  @type get_asset_property_value_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_capture_data_request() :: %{
        optional("formatSettings") => format_settings(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("timeSeriesId") => String.t() | atom(),
        required("endTime") => time_in_nanos(),
        required("startTime") => time_in_nanos()
      }

  """
  @type get_capture_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_capture_data_response() :: %{
        "data" => binary(),
        "dataType" => list(any()),
        "endTime" => time_in_nanos(),
        "nextToken" => String.t() | atom(),
        "startTime" => time_in_nanos()
      }

  """
  @type get_capture_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_request() :: %{
        optional("assetId") => String.t() | atom(),
        optional("endTimeOffsetInNanos") => integer(),
        optional("intervalWindowInSeconds") => float(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("propertyId") => String.t() | atom(),
        optional("startTimeOffsetInNanos") => integer(),
        required("endTimeInSeconds") => float(),
        required("intervalInSeconds") => float(),
        required("quality") => list(any()),
        required("startTimeInSeconds") => float(),
        required("type") => String.t() | atom()
      }

  """
  @type get_interpolated_asset_property_values_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_interpolated_asset_property_values_response() :: %{
        "interpolatedAssetPropertyValues" => list(interpolated_asset_property_value()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_interpolated_asset_property_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_results_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_query_results_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_results_response() :: %{
        "columnInfo" => list(column_information()),
        "nextToken" => String.t() | atom(),
        "rows" => list(list(String.t() | atom())())
      }

  """
  @type get_query_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_search_results_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_search_results_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_search_results_response() :: %{
        "nextToken" => String.t() | atom(),
        "searchResults" => list(search_result())
      }

  """
  @type get_search_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greengrass() :: %{
        "groupArn" => String.t() | atom()
      }

  """
  @type greengrass() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greengrass_v2() :: %{
        "coreDeviceOperatingSystem" => list(any()),
        "coreDeviceThingName" => String.t() | atom()
      }

  """
  @type greengrass_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_identity() :: %{
        "id" => String.t() | atom()
      }

  """
  @type group_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_mapping() :: %{
        "assetModelHierarchyId" => String.t() | atom(),
        "interfaceAssetModelHierarchyId" => String.t() | atom()
      }

  """
  @type hierarchy_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_role_identity() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type iam_role_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_user_identity() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type iam_user_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity() :: %{
        "group" => group_identity(),
        "iamRole" => iam_role_identity(),
        "iamUser" => iam_user_identity(),
        "user" => user_identity()
      }

  """
  @type identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "file" => image_file(),
        "id" => String.t() | atom()
      }

  """
  @type image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_file() :: %{
        "data" => binary(),
        "type" => list(any())
      }

  """
  @type image_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_location() :: %{
        "id" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type image_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interface_relationship() :: %{
        "id" => String.t() | atom()
      }

  """
  @type interface_relationship() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interface_relationship_summary() :: %{
        "id" => String.t() | atom()
      }

  """
  @type interface_relationship_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interface_summary() :: %{
        "interfaceAssetModelId" => String.t() | atom(),
        "interfaceAssetModelPropertyId" => String.t() | atom()
      }

  """
  @type interface_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interpolated_asset_property_value() :: %{
        "timestamp" => time_in_nanos(),
        "value" => variant()
      }

  """
  @type interpolated_asset_property_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_output() :: %{
        "citations" => list(citation()),
        "message" => String.t() | atom()
      }

  """
  @type invocation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_assistant_request() :: %{
        optional("conversationId") => String.t() | atom(),
        optional("enableTrace") => [boolean()],
        required("message") => String.t() | atom()
      }

  """
  @type invoke_assistant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_assistant_response() :: %{
        "body" => list(),
        "conversationId" => String.t() | atom()
      }

  """
  @type invoke_assistant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iotsitewise_reference() :: %{
        "dataset" => data_set_reference()
      }

  """
  @type iotsitewise_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_configuration() :: %{
        "fileFormat" => file_format()
      }

  """
  @type job_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kendra_source_detail() :: %{
        "knowledgeBaseArn" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type kendra_source_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_policies_request() :: %{
        optional("iamArn") => String.t() | atom(),
        optional("identityId") => String.t() | atom(),
        optional("identityType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceId") => String.t() | atom(),
        optional("resourceType") => list(any())
      }

  """
  @type list_access_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_policies_response() :: %{
        "accessPolicySummaries" => list(access_policy_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_access_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resolveToResourceId") => String.t() | atom(),
        optional("resolveToResourceType") => list(any()),
        required("targetResourceId") => String.t() | atom(),
        required("targetResourceType") => list(any())
      }

  """
  @type list_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actions_response() :: %{
        "actionSummaries" => list(action_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_request() :: %{
        optional("assetModelVersion") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_model_composite_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_model_composite_models_response() :: %{
        "assetModelCompositeModelSummaries" => list(asset_model_composite_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_model_composite_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_request() :: %{
        optional("assetModelVersion") => String.t() | atom(),
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_model_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_model_properties_response() :: %{
        "assetModelPropertySummaries" => list(asset_model_property_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_model_properties_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_models_request() :: %{
        optional("assetModelTypes") => list(list(any())()),
        optional("assetModelVersion") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_models_response() :: %{
        "assetModelSummaries" => list(asset_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_properties_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_properties_response() :: %{
        "assetPropertySummaries" => list(asset_property_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_properties_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("traversalType") => list(any())
      }

  """
  @type list_asset_relationships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_relationships_response() :: %{
        "assetRelationshipSummaries" => list(asset_relationship_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_relationships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assets_request() :: %{
        optional("assetModelId") => String.t() | atom(),
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assets_response() :: %{
        "assetSummaries" => list(asset_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_assets_request() :: %{
        optional("hierarchyId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("traversalDirection") => list(any())
      }

  """
  @type list_associated_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_assets_response() :: %{
        "assetSummaries" => list(associated_assets_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_associated_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type list_bulk_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_bulk_import_jobs_response() :: %{
        "jobSummaries" => list(job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_bulk_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_composition_relationships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_composition_relationships_response() :: %{
        "compositionRelationshipSummaries" => list(composition_relationship_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_composition_relationships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_computation_model_data_binding_usages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("dataBindingValueFilter") => data_binding_value_filter()
      }

  """
  @type list_computation_model_data_binding_usages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_computation_model_data_binding_usages_response() :: %{
        "dataBindingUsageSummaries" => list(computation_model_data_binding_usage_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_computation_model_data_binding_usages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_computation_model_resolve_to_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_computation_model_resolve_to_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_computation_model_resolve_to_resources_response() :: %{
        "computationModelResolveToResourceSummaries" => list(computation_model_resolve_to_resource_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_computation_model_resolve_to_resources_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_computation_models_request() :: %{
        optional("computationModelType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_computation_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_computation_models_response() :: %{
        "computationModelSummaries" => list(computation_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_computation_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dashboards_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("projectId") => String.t() | atom()
      }

  """
  @type list_dashboards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dashboards_response() :: %{
        "dashboardSummaries" => list(dashboard_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dashboards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_data_segment_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type list_dataset_data_segment_relationships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_data_segment_relationships_response() :: %{
        "dataSegmentRelationshipSummaries" => list(data_segment_relationship_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dataset_data_segment_relationships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_data_segments_request() :: %{
        optional("datasetVersion") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("workspaceName") => String.t() | atom()
      }

  """
  @type list_dataset_data_segments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_data_segments_response() :: %{
        "dataSegments" => list(data_segment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dataset_data_segments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_export_jobs_request() :: %{
        optional("filter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_dataset_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dataset_export_jobs_response() :: %{
        "jobs" => list(export_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dataset_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("datasetType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("workspaceName") => String.t() | atom(),
        required("sourceType") => list(any())
      }

  """
  @type list_datasets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "datasetSummaries" => list(dataset_summary()),
        "nextToken" => String.t() | atom(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type list_datasets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_enrichment_jobs_request() :: %{
        optional("datasetId") => String.t() | atom(),
        optional("endDate") => [non_neg_integer()],
        optional("jobType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("startDate") => [non_neg_integer()],
        optional("status") => list(any()),
        optional("timeSeriesId") => String.t() | atom()
      }

  """
  @type list_enrichment_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_enrichment_jobs_response() :: %{
        "jobs" => list(enrichment_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_enrichment_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_executions_request() :: %{
        optional("actionType") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resolveToResourceId") => String.t() | atom(),
        optional("resolveToResourceType") => list(any()),
        required("targetResourceId") => String.t() | atom(),
        required("targetResourceType") => list(any())
      }

  """
  @type list_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_executions_response() :: %{
        "executionSummaries" => list(execution_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_gateways_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "gatewaySummaries" => list(gateway_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_gateways_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_interface_relationships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_interface_relationships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_interface_relationships_response() :: %{
        "interfaceRelationshipSummaries" => list(interface_relationship_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_interface_relationships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pipeline_executions_request() :: %{
        optional("endTimeAfter") => non_neg_integer(),
        optional("endTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startTimeAfter") => non_neg_integer(),
        optional("startTimeBefore") => non_neg_integer(),
        optional("state") => list(any())
      }

  """
  @type list_pipeline_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pipeline_executions_response() :: %{
        "nextToken" => String.t() | atom(),
        "pipelineExecutionSummaries" => list(pipeline_execution_summary())
      }

  """
  @type list_pipeline_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_pipelines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pipelines_response() :: %{
        "nextToken" => String.t() | atom(),
        "pipelineSummaries" => list(pipeline_summary())
      }

  """
  @type list_pipelines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_portals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_portals_response() :: %{
        "nextToken" => String.t() | atom(),
        "portalSummaries" => list(portal_summary())
      }

  """
  @type list_portals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_assets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_project_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_assets_response() :: %{
        "assetIds" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_project_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("portalId") => String.t() | atom()
      }

  """
  @type list_projects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "nextToken" => String.t() | atom(),
        "projectSummaries" => list(project_summary())
      }

  """
  @type list_projects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_queries_request() :: %{
        optional("filter") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_queries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_queries_response() :: %{
        "nextToken" => String.t() | atom(),
        "queries" => list(query_summary())
      }

  """
  @type list_queries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_searches_filters() :: %{
        "groupIdFilter" => list(String.t() | atom()),
        "searchTypeFilter" => list(list(any())()),
        "startedAfter" => [non_neg_integer()],
        "startedBefore" => [non_neg_integer()],
        "statusFilter" => list(list(any())())
      }

  """
  @type list_searches_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_searches_request() :: %{
        optional("listSearchesFilters") => list_searches_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_searches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_searches_response() :: %{
        "nextToken" => String.t() | atom(),
        "searchSummaries" => list(search_summary())
      }

  """
  @type list_searches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "taskSummaries" => list(task_summary())
      }

  """
  @type list_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_time_series_request() :: %{
        optional("aliasPrefix") => String.t() | atom(),
        optional("assetId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("timeSeriesType") => list(any()),
        optional("workspaceName") => String.t() | atom()
      }

  """
  @type list_time_series_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_time_series_response() :: %{
        "TimeSeriesSummaries" => list(time_series_summary()),
        "nextToken" => String.t() | atom(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type list_time_series_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workspaces_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workspaces_response() :: %{
        "nextToken" => String.t() | atom(),
        "workspaceSummaries" => list(workspace_summary())
      }

  """
  @type list_workspaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      location() :: %{
        "uri" => String.t() | atom()
      }

  """
  @type location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_options() :: %{
        "level" => list(any())
      }

  """
  @type logging_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matched_data_binding() :: %{
        "value" => data_binding_value()
      }

  """
  @type matched_data_binding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      measurement() :: %{
        "processingConfig" => measurement_processing_config()
      }

  """
  @type measurement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      measurement_processing_config() :: %{
        "forwardingConfig" => forwarding_config()
      }

  """
  @type measurement_processing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric() :: %{
        "expression" => String.t() | atom(),
        "processingConfig" => metric_processing_config(),
        "variables" => list(expression_variable()),
        "window" => metric_window()
      }

  """
  @type metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_processing_config() :: %{
        "computeLocation" => list(any())
      }

  """
  @type metric_processing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_window() :: %{
        "tumbling" => tumbling_window()
      }

  """
  @type metric_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monitor_error_details() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type monitor_error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mp4() :: %{}

  """
  @type mp4() :: %{}

  @typedoc """

  ## Example:

      multi_layer_storage() :: %{
        "customerManagedS3Storage" => customer_managed_s3_storage()
      }

  """
  @type multi_layer_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parquet() :: %{}

  """
  @type parquet() :: %{}

  @typedoc """

  ## Example:

      pipeline_execution_state_details() :: %{
        "code" => list(any()),
        "details" => list(detailed_pipeline_error()),
        "message" => [String.t() | atom()]
      }

  """
  @type pipeline_execution_state_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_execution_status() :: %{
        "state" => list(any()),
        "stateDetails" => pipeline_execution_state_details()
      }

  """
  @type pipeline_execution_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_execution_summary() :: %{
        "endTime" => non_neg_integer(),
        "executionPriority" => integer(),
        "pipelineExecutionId" => String.t() | atom(),
        "pipelineVersion" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => pipeline_execution_status()
      }

  """
  @type pipeline_execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "pipelineArn" => String.t() | atom(),
        "pipelineName" => String.t() | atom(),
        "status" => resource_status(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type pipeline_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_resource() :: %{
        "id" => String.t() | atom()
      }

  """
  @type portal_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_status() :: %{
        "error" => monitor_error_details(),
        "state" => list(any())
      }

  """
  @type portal_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "portalType" => list(any()),
        "roleArn" => String.t() | atom(),
        "startUrl" => String.t() | atom(),
        "status" => portal_status()
      }

  """
  @type portal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_type_entry() :: %{
        "portalTools" => list(String.t() | atom())
      }

  """
  @type portal_type_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type precondition_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_resource() :: %{
        "id" => String.t() | atom()
      }

  """
  @type project_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdateDate" => non_neg_integer(),
        "name" => String.t() | atom()
      }

  """
  @type project_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property() :: %{
        "alias" => String.t() | atom(),
        "dataType" => list(any()),
        "externalId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "notification" => property_notification(),
        "path" => list(asset_property_path_segment()),
        "type" => property_type(),
        "unit" => String.t() | atom()
      }

  """
  @type property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_mapping() :: %{
        "assetModelPropertyId" => String.t() | atom(),
        "interfaceAssetModelPropertyId" => String.t() | atom()
      }

  """
  @type property_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_mapping_configuration() :: %{
        "createMissingProperty" => boolean(),
        "matchByPropertyName" => boolean(),
        "overrides" => list(property_mapping())
      }

  """
  @type property_mapping_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_notification() :: %{
        "state" => list(any()),
        "topic" => String.t() | atom()
      }

  """
  @type property_notification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_type() :: %{
        "attribute" => attribute(),
        "measurement" => measurement(),
        "metric" => metric(),
        "transform" => transform()
      }

  """
  @type property_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_value_null_value() :: %{
        "valueType" => list(any())
      }

  """
  @type property_value_null_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_asset_model_interface_relationship_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("propertyMappingConfiguration") => property_mapping_configuration()
      }

  """
  @type put_asset_model_interface_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_asset_model_interface_relationship_response() :: %{
        "assetModelArn" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status(),
        "interfaceAssetModelId" => String.t() | atom()
      }

  """
  @type put_asset_model_interface_relationship_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_asset_property_value_entry() :: %{
        "assetId" => String.t() | atom(),
        "entryId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "propertyValues" => list(asset_property_value())
      }

  """
  @type put_asset_property_value_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_request() :: %{
        optional("kmsKeyId") => String.t() | atom(),
        required("encryptionType") => list(any())
      }

  """
  @type put_default_encryption_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type put_default_encryption_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_logging_options_request() :: %{
        optional("workspaceName") => String.t() | atom(),
        required("loggingOptions") => logging_options()
      }

  """
  @type put_logging_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_logging_options_response() :: %{}

  """
  @type put_logging_options_response() :: %{}

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
  @type put_storage_configuration_request() :: %{(String.t() | atom()) => any()}

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
  @type put_storage_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_statistics() :: %{
        "bytesScanned" => [float()],
        "executionTimeInMillis" => [float()],
        "rowCount" => [float()]
      }

  """
  @type query_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_summary() :: %{
        "completedAt" => [non_neg_integer()],
        "queryId" => String.t() | atom(),
        "status" => list(any()),
        "submittedAt" => [non_neg_integer()]
      }

  """
  @type query_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_timeout_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type query_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resolve_to() :: %{
        "assetId" => String.t() | atom()
      }

  """
  @type resolve_to() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "portal" => portal_resource(),
        "project" => project_resource()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_error() :: %{
        "code" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type resource_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_status() :: %{
        "error" => resource_error(),
        "state" => list(any())
      }

  """
  @type resource_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type retention_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      row() :: %{
        "data" => list(datum())
      }

  """
  @type row() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_filters() :: %{
        "datasetIds" => list(String.t() | atom()),
        "timeIntervals" => list(time_interval()),
        "timeSeriesIds" => list(String.t() | atom())
      }

  """
  @type search_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_result() :: %{
        "datasetId" => String.t() | atom(),
        "endTimestamp" => time_in_nanos(),
        "score" => [float()],
        "searchId" => String.t() | atom(),
        "startTimestamp" => time_in_nanos(),
        "timeSeriesId" => String.t() | atom(),
        "topTimestamp" => time_in_nanos(),
        "workspaceName" => String.t() | atom()
      }

  """
  @type search_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_summary() :: %{
        "groupId" => String.t() | atom(),
        "queryStatement" => String.t() | atom(),
        "searchId" => String.t() | atom(),
        "searchType" => list(any()),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "workspaceName" => String.t() | atom()
      }

  """
  @type search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_config() :: %{
        "sessionEndTimestamp" => time_in_nanos(),
        "sessionStartTimestamp" => time_in_nanos()
      }

  """
  @type session_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      siemens_i_e() :: %{
        "iotCoreThingName" => String.t() | atom()
      }

  """
  @type siemens_i_e() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "arn" => String.t() | atom(),
        "location" => location()
      }

  """
  @type source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_detail() :: %{
        "kendra" => kendra_source_detail()
      }

  """
  @type source_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_pipeline_execution_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("executionEnvironmentVariableOverrides") => execution_environment_variables(),
        optional("executionPriority") => integer()
      }

  """
  @type start_pipeline_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_pipeline_execution_response() :: %{
        "pipelineExecutionId" => String.t() | atom()
      }

  """
  @type start_pipeline_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_query_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("queryStatement") => String.t() | atom()
      }

  """
  @type start_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_query_response() :: %{
        "queryId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type start_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_search_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("groupId") => String.t() | atom(),
        optional("searchFilters") => search_filters(),
        optional("searchType") => list(any()),
        required("queryStatement") => String.t() | atom()
      }

  """
  @type start_search_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_search_response() :: %{
        "groupId" => String.t() | atom(),
        "searchId" => String.t() | atom(),
        "status" => list(any()),
        "workspaceName" => String.t() | atom()
      }

  """
  @type start_search_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      target_resource() :: %{
        "assetId" => String.t() | atom(),
        "computationModelId" => String.t() | atom()
      }

  """
  @type target_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "status" => resource_status(),
        "taskArn" => String.t() | atom(),
        "taskName" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_in_nanos() :: %{
        "offsetInNanos" => integer(),
        "timeInSeconds" => float()
      }

  """
  @type time_in_nanos() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_interval() :: %{
        "endTime" => time_in_nanos(),
        "startTime" => time_in_nanos()
      }

  """
  @type time_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_series_summary() :: %{
        "alias" => String.t() | atom(),
        "assetId" => String.t() | atom(),
        "dataType" => list(any()),
        "dataTypeSpec" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "timeSeriesArn" => String.t() | atom(),
        "timeSeriesCreationDate" => non_neg_integer(),
        "timeSeriesId" => String.t() | atom(),
        "timeSeriesLastUpdateDate" => non_neg_integer()
      }

  """
  @type time_series_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timeseries_item() :: %{
        "formatSettings" => format_settings(),
        "propertyAlias" => String.t() | atom(),
        "timeSeriesId" => String.t() | atom(),
        "trimSettings" => trim_settings()
      }

  """
  @type timeseries_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t() | atom(),
        "resourceName" => String.t() | atom()
      }

  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace() :: %{
        "text" => String.t() | atom()
      }

  """
  @type trace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transform() :: %{
        "expression" => String.t() | atom(),
        "processingConfig" => transform_processing_config(),
        "variables" => list(expression_variable())
      }

  """
  @type transform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transform_processing_config() :: %{
        "computeLocation" => list(any()),
        "forwardingConfig" => forwarding_config()
      }

  """
  @type transform_processing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trim_settings() :: %{
        "endTime" => time_in_nanos(),
        "startTime" => time_in_nanos()
      }

  """
  @type trim_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tumbling_window() :: %{
        "interval" => String.t() | atom(),
        "offset" => String.t() | atom()
      }

  """
  @type tumbling_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_access_policy_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("accessPolicyIdentity") => identity(),
        required("accessPolicyPermission") => list(any()),
        required("accessPolicyResource") => resource()
      }

  """
  @type update_access_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_access_policy_response() :: %{}

  """
  @type update_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_request() :: %{
        optional("assetModelCompositeModelDescription") => String.t() | atom(),
        optional("assetModelCompositeModelExternalId") => String.t() | atom(),
        optional("assetModelCompositeModelProperties") => list(asset_model_property()),
        optional("clientToken") => String.t() | atom(),
        optional("ifMatch") => String.t() | atom(),
        optional("ifNoneMatch") => String.t() | atom(),
        optional("matchForVersionType") => list(any()),
        required("assetModelCompositeModelName") => String.t() | atom()
      }

  """
  @type update_asset_model_composite_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_model_composite_model_response() :: %{
        "assetModelCompositeModelPath" => list(asset_model_composite_model_path_segment()),
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_composite_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_model_request() :: %{
        optional("assetModelCompositeModels") => list(asset_model_composite_model()),
        optional("assetModelDescription") => String.t() | atom(),
        optional("assetModelExternalId") => String.t() | atom(),
        optional("assetModelHierarchies") => list(asset_model_hierarchy()),
        optional("assetModelProperties") => list(asset_model_property()),
        optional("clientToken") => String.t() | atom(),
        optional("ifMatch") => String.t() | atom(),
        optional("ifNoneMatch") => String.t() | atom(),
        optional("matchForVersionType") => list(any()),
        required("assetModelName") => String.t() | atom()
      }

  """
  @type update_asset_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_model_response() :: %{
        "assetModelId" => String.t() | atom(),
        "assetModelStatus" => asset_model_status()
      }

  """
  @type update_asset_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_property_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("propertyAlias") => String.t() | atom(),
        optional("propertyNotificationState") => list(any()),
        optional("propertyUnit") => String.t() | atom()
      }

  """
  @type update_asset_property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_request() :: %{
        optional("assetDescription") => String.t() | atom(),
        optional("assetExternalId") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        required("assetName") => String.t() | atom()
      }

  """
  @type update_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_response() :: %{
        "assetId" => String.t() | atom(),
        "assetStatus" => asset_status()
      }

  """
  @type update_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_computation_model_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("computationModelDescription") => String.t() | atom(),
        required("computationModelConfiguration") => computation_model_configuration(),
        required("computationModelDataBinding") => map(),
        required("computationModelName") => String.t() | atom()
      }

  """
  @type update_computation_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_computation_model_response() :: %{
        "computationModelStatus" => computation_model_status()
      }

  """
  @type update_computation_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dashboard_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dashboardDescription") => String.t() | atom(),
        required("dashboardDefinition") => String.t() | atom(),
        required("dashboardName") => String.t() | atom()
      }

  """
  @type update_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dashboard_response() :: %{}

  """
  @type update_dashboard_response() :: %{}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("datasetConfig") => dataset_config(),
        optional("datasetDescription") => String.t() | atom(),
        optional("metadata") => map(),
        optional("workspaceName") => String.t() | atom(),
        required("datasetName") => String.t() | atom(),
        required("datasetSource") => dataset_source()
      }

  """
  @type update_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dataset_response() :: %{
        "datasetArn" => String.t() | atom(),
        "datasetId" => String.t() | atom(),
        "datasetStatus" => dataset_status()
      }

  """
  @type update_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_request() :: %{
        required("capabilityConfiguration") => String.t() | atom(),
        required("capabilityNamespace") => String.t() | atom()
      }

  """
  @type update_gateway_capability_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_capability_configuration_response() :: %{
        "capabilityNamespace" => String.t() | atom(),
        "capabilitySyncStatus" => list(any())
      }

  """
  @type update_gateway_capability_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        required("gatewayName") => String.t() | atom()
      }

  """
  @type update_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        optional("computations") => list(compute_node()),
        optional("description") => String.t() | atom(),
        optional("environmentVariables") => map()
      }

  """
  @type update_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_response() :: %{
        "status" => resource_status(),
        "version" => String.t() | atom()
      }

  """
  @type update_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_portal_request() :: %{
        optional("alarms") => alarms(),
        optional("clientToken") => String.t() | atom(),
        optional("notificationSenderEmail") => String.t() | atom(),
        optional("portalDescription") => String.t() | atom(),
        optional("portalLogoImage") => image(),
        optional("portalType") => list(any()),
        optional("portalTypeConfiguration") => map(),
        required("portalContactEmail") => String.t() | atom(),
        required("portalName") => String.t() | atom(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type update_portal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_portal_response() :: %{
        "portalStatus" => portal_status()
      }

  """
  @type update_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("projectDescription") => String.t() | atom(),
        required("projectName") => String.t() | atom()
      }

  """
  @type update_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_response() :: %{}

  """
  @type update_project_response() :: %{}

  @typedoc """

  ## Example:

      update_task_request() :: %{
        optional("description") => String.t() | atom(),
        optional("taskConfiguration") => list()
      }

  """
  @type update_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_task_response() :: %{
        "status" => resource_status(),
        "version" => String.t() | atom()
      }

  """
  @type update_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("encryptionConfiguration") => workspace_encryption_configuration(),
        optional("workspaceDescription") => String.t() | atom()
      }

  """
  @type update_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_response() :: %{
        "workspaceStatus" => workspace_status()
      }

  """
  @type update_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_identity() :: %{
        "id" => String.t() | atom()
      }

  """
  @type user_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variable_value() :: %{
        "hierarchyId" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "propertyPath" => list(asset_model_property_path_segment())
      }

  """
  @type variable_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant() :: %{
        "booleanValue" => boolean(),
        "doubleValue" => float(),
        "integerValue" => integer(),
        "nullValue" => property_value_null_value(),
        "stringValue" => String.t() | atom()
      }

  """
  @type variant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      warm_tier_retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type warm_tier_retention_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_encryption_configuration() :: %{
        "encryptionType" => list(any()),
        "kmsKeyId" => String.t() | atom()
      }

  """
  @type workspace_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_encryption_configuration_info() :: %{
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type workspace_encryption_configuration_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_error_details() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type workspace_error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_status() :: %{
        "error" => workspace_error_details(),
        "state" => list(any())
      }

  """
  @type workspace_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => workspace_status(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type workspace_summary() :: %{(String.t() | atom()) => any()}

  @type associate_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type associate_time_series_to_asset_property_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type batch_associate_data_segments_to_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type batch_associate_project_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_delete_dataset_data_segments_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type batch_disassociate_data_segments_from_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type batch_disassociate_project_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
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
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type cancel_enrichment_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type cancel_pipeline_execution_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type cancel_query_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_access_policy_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_asset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_asset_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_asset_model_composite_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | precondition_failed_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_bulk_import_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_computation_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_dashboard_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type create_dataset_export_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_enrichment_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_gateway_errors() ::
          throttling_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_pipeline_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_portal_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_project_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_task_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type delete_access_policy_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_asset_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | precondition_failed_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_asset_model_composite_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | precondition_failed_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_asset_model_interface_relationship_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_computation_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_dashboard_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_gateway_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_pipeline_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type delete_portal_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_task_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type delete_time_series_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type describe_access_policy_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_action_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_asset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_asset_composite_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_asset_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_asset_model_composite_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_asset_model_interface_relationship_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_asset_property_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_bulk_import_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_computation_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_computation_model_execution_summary_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_dashboard_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_dataset_export_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_default_encryption_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_enrichment_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type describe_execution_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_gateway_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_gateway_capability_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_logging_options_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_pipeline_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_pipeline_execution_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_portal_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_project_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_query_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_search_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_storage_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type describe_task_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type describe_time_series_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_workspace_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type disassociate_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type disassociate_time_series_from_asset_property_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type execute_action_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type execute_query_errors() ::
          validation_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | query_timeout_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type get_asset_property_aggregates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_asset_property_value_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_asset_property_value_history_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_capture_data_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type get_interpolated_asset_property_values_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_query_results_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type get_search_results_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type invoke_assistant_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type list_access_policies_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_actions_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_asset_model_composite_models_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_asset_model_properties_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_asset_models_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_asset_properties_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_asset_relationships_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_associated_assets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_bulk_import_jobs_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_composition_relationships_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_computation_model_data_binding_usages_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_computation_model_resolve_to_resources_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_computation_models_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_dashboards_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_dataset_data_segment_relationships_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_dataset_data_segments_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_dataset_export_jobs_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_datasets_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_enrichment_jobs_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type list_executions_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_gateways_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_interface_relationships_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_pipeline_executions_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_pipelines_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_portals_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_project_assets_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_projects_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_queries_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_searches_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type list_tasks_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type list_time_series_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_workspaces_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | access_denied_exception()

  @type put_asset_model_interface_relationship_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type put_default_encryption_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type put_storage_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type start_pipeline_execution_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type start_query_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type start_search_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          unauthorized_exception()
          | too_many_tags_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type untag_resource_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_access_policy_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_asset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_asset_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | precondition_failed_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_asset_model_composite_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | precondition_failed_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_asset_property_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_computation_model_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_dashboard_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_dataset_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_gateway_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_gateway_capability_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_pipeline_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type update_portal_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()

  @type update_project_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_task_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

  @type update_workspace_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflicting_operation_exception()
          | access_denied_exception()

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
  @spec associate_assets(map(), String.t() | atom(), associate_assets_request(), list()) ::
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
  Associates a batch of data segments with a curated dataset.

  Data segments are
  time-bounded slices of time series data selected from source session datasets.
  Data segments
  that belong to the same time series can't overlap in time, regardless of which
  dataset they
  belong to.
  """
  @spec batch_associate_data_segments_to_dataset(
          map(),
          String.t() | atom(),
          batch_associate_data_segments_to_dataset_request(),
          list()
        ) ::
          {:ok, batch_associate_data_segments_to_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_data_segments_to_dataset_errors()}
  def batch_associate_data_segments_to_dataset(
        %Client{} = client,
        dataset_id,
        input,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/data-segments/associate"
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Associates a group (batch) of assets with an IoT SiteWise Monitor project.
  """
  @spec batch_associate_project_assets(
          map(),
          String.t() | atom(),
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
  Deletes a batch of data segments from a session dataset.

  Deleting a data segment deletes
  the underlying time series data for the segment's time range.
  """
  @spec batch_delete_dataset_data_segments(
          map(),
          String.t() | atom(),
          batch_delete_dataset_data_segments_request(),
          list()
        ) ::
          {:ok, batch_delete_dataset_data_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_dataset_data_segments_errors()}
  def batch_delete_dataset_data_segments(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/data-segments/batch-delete"
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
  Disassociates a batch of data segments from a curated dataset.

  Disassociating a data
  segment doesn't delete the underlying data in the source session dataset.
  """
  @spec batch_disassociate_data_segments_from_dataset(
          map(),
          String.t() | atom(),
          batch_disassociate_data_segments_from_dataset_request(),
          list()
        ) ::
          {:ok, batch_disassociate_data_segments_from_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_data_segments_from_dataset_errors()}
  def batch_disassociate_data_segments_from_dataset(
        %Client{} = client,
        dataset_id,
        input,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/data-segments/disassociate"
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
  Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.
  """
  @spec batch_disassociate_project_assets(
          map(),
          String.t() | atom(),
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
  Cancels a running or pending enrichment job.

  This is an idempotent operation—calling it multiple
  times with the same jobId is safe and returns the current status.

  <h2>Behavior</h2>

    * Jobs in PENDING or RUNNING status transition to CANCELLED

    * Jobs in RUNNING state may not be cancellable once they have
  progressed to certain processing stages

    * Jobs already in terminal states (COMPLETED, FAILED, TIMED_OUT)
  cannot be cancelled;
  the operation returns a ConflictingOperationException

    * Cancelling an already-CANCELLED job is a no-op and returns the
  current status (idempotent behavior)

    * The API responds immediately after recording the cancellation

    * Cleanup of job resources happens asynchronously in the background

  <h2>When to Cancel</h2>
  Cancel a job when:

    * The job is taking longer than expected

    * The job was created with incorrect parameters

    * You no longer need the results

  <h2>Idempotency</h2>
  You can safely retry cancellation requests. Calling CancelEnrichmentJob multiple
  times for the same
  job returns the current status without error as long as the job is not in a
  terminal state other
  than CANCELLED.
  """
  @spec cancel_enrichment_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_enrichment_job_request(),
          list()
        ) ::
          {:ok, cancel_enrichment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_enrichment_job_errors()}
  def cancel_enrichment_job(%Client{} = client, job_id, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/enrichment-jobs/#{AWS.Util.encode_uri(job_id)}/cancel"

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
  Cancels a pipeline execution in the specified workspace.

  If the execution
  is not in a terminal state (such as NOT_STARTED or RUNNING), it transitions to
  CANCELLING and asynchronously to CANCELLED. This operation is idempotent:
  calling
  it on an execution that is already CANCELLING or CANCELLED returns success with
  the current state. Calling it on a terminal execution (SUCCEEDED or FAILED)
  returns a conflict error. You can optionally provide a reason; it is returned in
  the stateDetails field when you describe the execution.
  """
  @spec cancel_pipeline_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_pipeline_execution_request(),
          list()
        ) ::
          {:ok, cancel_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_pipeline_execution_errors()}
  def cancel_pipeline_execution(
        %Client{} = client,
        pipeline_execution_id,
        pipeline_name,
        workspace_name,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/executions/#{AWS.Util.encode_uri(pipeline_execution_id)}/cancel"

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
  Cancels a running query.
  """
  @spec cancel_query(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_query_request(),
          list()
        ) ::
          {:ok, cancel_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_query_errors()}
  def cancel_query(%Client{} = client, query_id, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/queries/#{AWS.Util.encode_uri(query_id)}/cancel"

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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Creates an access policy that grants the specified identity (IAM Identity Center
  user, IAM Identity Center group, or
  IAM user) access to the specified IoT SiteWise Monitor portal or project
  resource.

  Support for access policies that use an SSO Group as the identity is not
  supported at this time.
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
  Creates a new application for the workspace and IdC application provided
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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

  You can create three types of asset models, `ASSET_MODEL`,
  `COMPONENT_MODEL`, or an `INTERFACE`.

    *

  **ASSET_MODEL** – (default) An asset model that
  you can use to create assets. Can't be included as a component in another asset
  model.

    *

  **COMPONENT_MODEL** – A reusable component that
  you can include in the composite models of other asset models. You can't create
  assets directly from this type of asset model.

    *

  **INTERFACE** – An interface is a type of model
  that defines a standard structure that can be applied to different asset models.
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
          String.t() | atom(),
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

  Before you create a bulk import job that ingests data into time series outside
  of a
  workspace, you must enable IoT SiteWise warm tier or IoT SiteWise cold tier. For
  more information about how
  to configure storage settings, see
  [PutStorageConfiguration](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html).
  This requirement doesn't apply to bulk import jobs that
  ingest data into a session dataset in a workspace (jobs that specify a
  `workspaceName` and `datasetId`). Those jobs don't use IoT SiteWise warm or
  cold tier storage.

  Bulk import is designed to store historical data to IoT SiteWise.

    
  Newly ingested data in the hot tier triggers notifications and computations.

    
  After data moves from the hot tier to the warm or cold tier based on retention
  settings, it does not trigger computations or notifications.

    
  Data older than 7 days does not trigger computations or notifications.
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
  Create a computation model with a configuration and data binding.
  """
  @spec create_computation_model(map(), create_computation_model_request(), list()) ::
          {:ok, create_computation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_computation_model_errors()}
  def create_computation_model(%Client{} = client, input, options \\ []) do
    url_path = "/computation-models"
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

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
  Creates a dataset.

  Session and curated datasets are created in a workspace. A session dataset
  contains data segments of time series data, and a curated dataset curates data
  segments selected from source session datasets. A dataset that connects to an
  external datasource is created outside of a workspace.
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
  Starts an asynchronous job that exports dataset and time-series data from a
  workspace to Amazon
  S3.

  The operation returns a jobId immediately; poll DescribeDatasetExportJob to
  track progress and
  ListDatasetExportJobs to enumerate a workspace's jobs.
  """
  @spec create_dataset_export_job(
          map(),
          String.t() | atom(),
          create_dataset_export_job_request(),
          list()
        ) ::
          {:ok, create_dataset_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataset_export_job_errors()}
  def create_dataset_export_job(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/dataset-export-jobs"
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
  Creates an asynchronous enrichment job to analyze time-series sensor data.

  The operation returns
  immediately with job details while processing continues in the background.

  <h2>Idempotency</h2>
  Include a clientToken to make the operation idempotent. If you submit the same
  request with the same
  token within the idempotency window, you receive the original job details
  without creating a duplicate.

  <h2>Prerequisites</h2>
  Before creating a job, ensure:

    * The workspace is in ACTIVE state (not being deleted)

    * You have IAM permissions for the workspace, dataset, and
  time-series resources

    * You have KMS Decrypt permission on the workspace's
  customer-managed encryption key

    * No duplicate job (same workspace, dataset, property, and job type)
  is currently running

  <h2>Workflow</h2>

    1. Submit the job with configuration specifying which video data to
  analyze and the time range

    2. Capture the jobId from the response

    3. Use DescribeEnrichmentJob to monitor progress and check job
  status

    4. When status reaches a terminal state (COMPLETED, FAILED,
  TIMED_OUT, CANCELLED), check results

    5. For COMPLETED jobs, query IoT SiteWise for semantic search on
  video events

  <h2>Error Handling</h2>

    * ConflictingOperationException: A duplicate job is already running
  for the same configuration

    * InvalidRequestException: Invalid parameters (e.g., both
  timeSeriesId and propertyAlias specified)

    * AccessDeniedException: Insufficient IAM or KMS permissions

    * LimitExceededException: Too many concurrent jobs or requests
  """
  @spec create_enrichment_job(map(), String.t() | atom(), create_enrichment_job_request(), list()) ::
          {:ok, create_enrichment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_enrichment_job_errors()}
  def create_enrichment_job(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/enrichment-jobs"
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
  Creates a new pipeline in the specified workspace.

  A pipeline defines a
  directed acyclic graph (DAG) of compute nodes, where each node references a task
  and can declare dependencies on other nodes. Cyclic dependencies are not
  allowed. Nodes without dependencies run in parallel, while nodes with
  dependencies
  wait for all upstream nodes to complete successfully before starting.

  You can set environment variables at the pipeline level that are shared across
  all
  compute nodes, and override them at the individual compute node level.
  """
  @spec create_pipeline(map(), String.t() | atom(), create_pipeline_request(), list()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines"
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Creates a portal, which can contain projects and dashboards. IoT SiteWise
  Monitor uses IAM Identity Center or IAM
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

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
  Creates a new task in the specified workspace.

  A task defines a reusable
  containerized compute workload that can be referenced by one or more pipeline
  compute nodes.

  Specify a
  [`containerTaskConfiguration`](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ContainerTaskConfiguration.html)
  for custom container workloads with
  configurable ECR image, processing type, processing unit, and environment
  variables.
  """
  @spec create_task(map(), String.t() | atom(), create_task_request(), list()) ::
          {:ok, create_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_task_errors()}
  def create_task(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/tasks"
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
  Creates a workspace in IoT SiteWise.

  A workspace isolates its resources, such as datasets, time
  series, pipelines, and tasks, and their data from other workspaces, and has its
  own quotas
  and throttling limits. You must specify an encryption configuration when you
  create
  a workspace. The operation returns immediately with the workspace in the
  `CREATING` state. Provisioning completes asynchronously, after which the
  workspace
  state is `ACTIVE`, or `FAILED` if provisioning doesn't complete.
  """
  @spec create_workspace(map(), create_workspace_request(), list()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
  Deletes an access policy that grants the specified identity access to the
  specified
  IoT SiteWise Monitor resource.

  You can use this operation to revoke access to an IoT SiteWise Monitor
  resource.
  """
  @spec delete_access_policy(map(), String.t() | atom(), delete_access_policy_request(), list()) ::
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
  Deletes an application by ID
  """
  @spec delete_application(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_application_request(),
          list()
        ) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, id, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/applications/#{AWS.Util.encode_uri(id)}"

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
  @spec delete_asset(map(), String.t() | atom(), delete_asset_request(), list()) ::
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
  @spec delete_asset_model(map(), String.t() | atom(), delete_asset_model_request(), list()) ::
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
          String.t() | atom(),
          String.t() | atom(),
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
  Deletes an interface relationship between an asset model and an interface asset
  model.
  """
  @spec delete_asset_model_interface_relationship(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_model_interface_relationship_request(),
          list()
        ) ::
          {:ok, delete_asset_model_interface_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_model_interface_relationship_errors()}
  def delete_asset_model_interface_relationship(
        %Client{} = client,
        asset_model_id,
        interface_asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/interface/#{AWS.Util.encode_uri(interface_asset_model_id)}/asset-model-interface-relationship"

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
  Deletes a computation model.

  This action can't be undone.
  """
  @spec delete_computation_model(
          map(),
          String.t() | atom(),
          delete_computation_model_request(),
          list()
        ) ::
          {:ok, delete_computation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_computation_model_errors()}
  def delete_computation_model(%Client{} = client, computation_model_id, input, options \\ []) do
    url_path = "/computation-models/#{AWS.Util.encode_uri(computation_model_id)}"
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
  Deletes a dashboard from IoT SiteWise Monitor.
  """
  @spec delete_dashboard(map(), String.t() | atom(), delete_dashboard_request(), list()) ::
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

  This can't be undone. Deleting a session dataset also deletes the underlying
  time series data in the session. You can't delete a session dataset while a
  curated dataset references its data segments. First delete the curated dataset
  or disassociate the data segments. Deleting a curated dataset doesn't delete the
  underlying data in the source session datasets.
  """
  @spec delete_dataset(map(), String.t() | atom(), delete_dataset_request(), list()) ::
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
        {"clientToken", "clientToken"},
        {"workspaceName", "workspaceName"}
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
  @spec delete_gateway(map(), String.t() | atom(), delete_gateway_request(), list()) ::
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
  Deletes a pipeline from the specified workspace.

  A pipeline cannot be
  deleted if it has any active executions. Wait for all executions to complete
  before
  attempting to delete the pipeline, or use
  [CancelPipelineExecution](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CancelPipelineExecution.html)
  to stop a running
  execution.
  """
  @spec delete_pipeline(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_pipeline_request(),
          list()
        ) ::
          {:ok, delete_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, pipeline_name, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"

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
  @spec delete_portal(map(), String.t() | atom(), delete_portal_request(), list()) ::
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
  @spec delete_project(map(), String.t() | atom(), delete_project_request(), list()) ::
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
  Deletes a task from the specified workspace.

  A task cannot be deleted
  if it is currently referenced by any existing pipeline. Remove the task from all
  pipelines before attempting to delete it.
  """
  @spec delete_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_task_request(),
          list()
        ) ::
          {:ok, delete_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_task_errors()}
  def delete_task(%Client{} = client, task_name, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/tasks/#{AWS.Util.encode_uri(task_name)}"

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
  Deletes a time series (data stream).

  If you delete a time series that's associated with an
  asset property, the asset property still exists, but the time series will no
  longer be
  associated with this asset property. You can't delete a time series until all of
  its data
  segments have been deleted from session datasets.

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
        {"propertyId", "propertyId"},
        {"workspaceName", "workspaceName"}
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
  Deletes a workspace.

  Before you delete a workspace, you must delete all resources
  contained in or associated with the workspace, such as datasets, time series,
  pipelines,
  and tasks.
  """
  @spec delete_workspace(map(), String.t() | atom(), delete_workspace_request(), list()) ::
          {:ok, delete_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}"
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
      200
    )
  end

  @doc """
  Describes an access policy, which specifies an identity's access to an IoT
  SiteWise Monitor portal or
  project.
  """
  @spec describe_access_policy(map(), String.t() | atom(), list()) ::
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
  @spec describe_action(map(), String.t() | atom(), list()) ::
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
  Retrieves Application details based on the ID
  """
  @spec describe_application(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, id, workspace_name, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/applications/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset.
  """
  @spec describe_asset(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
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
  @spec describe_asset_composite_model(map(), String.t() | atom(), String.t() | atom(), list()) ::
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

  This includes details about the asset model's
  properties, hierarchies, composite models, and any interface relationships if
  the asset model
  implements interfaces.
  """
  @spec describe_asset_model(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
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
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(exclude_properties) do
        [{"excludeProperties", exclude_properties} | query_params]
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
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
  Retrieves information about an interface relationship between an asset model and
  an
  interface asset model.
  """
  @spec describe_asset_model_interface_relationship(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_asset_model_interface_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_asset_model_interface_relationship_errors()}
  def describe_asset_model_interface_relationship(
        %Client{} = client,
        asset_model_id,
        interface_asset_model_id,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/interface/#{AWS.Util.encode_uri(interface_asset_model_id)}/asset-model-interface-relationship"

    headers = []
    query_params = []

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
  @spec describe_asset_property(map(), String.t() | atom(), String.t() | atom(), list()) ::
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
  @spec describe_bulk_import_job(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_bulk_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bulk_import_job_errors()}
  def describe_bulk_import_job(%Client{} = client, job_id, workspace_name \\ nil, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a computation model.
  """
  @spec describe_computation_model(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_computation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_computation_model_errors()}
  def describe_computation_model(
        %Client{} = client,
        computation_model_id,
        computation_model_version \\ nil,
        options \\ []
      ) do
    url_path = "/computation-models/#{AWS.Util.encode_uri(computation_model_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(computation_model_version) do
        [{"computationModelVersion", computation_model_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the execution summary of a computation model.
  """
  @spec describe_computation_model_execution_summary(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_computation_model_execution_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_computation_model_execution_summary_errors()}
  def describe_computation_model_execution_summary(
        %Client{} = client,
        computation_model_id,
        resolve_to_resource_id \\ nil,
        resolve_to_resource_type \\ nil,
        options \\ []
      ) do
    url_path =
      "/computation-models/#{AWS.Util.encode_uri(computation_model_id)}/execution-summary"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resolve_to_resource_id) do
        [{"resolveToResourceId", resolve_to_resource_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolve_to_resource_type) do
        [{"resolveToResourceType", resolve_to_resource_type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dashboard.
  """
  @spec describe_dashboard(map(), String.t() | atom(), list()) ::
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
  @spec describe_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
  def describe_dataset(
        %Client{} = client,
        dataset_id,
        dataset_version \\ nil,
        workspace_name \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(dataset_version) do
        [{"datasetVersion", dataset_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dataset export job.
  """
  @spec describe_dataset_export_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_dataset_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_export_job_errors()}
  def describe_dataset_export_job(%Client{} = client, job_id, workspace_name, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/dataset-export-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Retrieves detailed information about a specific enrichment job, including its
  current status,
  configuration, and timestamps.

  <h2>Use Cases</h2>

    * Monitor job progress by checking status updates with
  DescribeEnrichmentJob

    * Retrieve the complete job configuration submitted during creation

    * Debug failed jobs by examining the failureMessage field

    * Track job lifecycle with creation, update, completion, and
  cancellation timestamps

  <h2>Status Monitoring</h2>
  Jobs progress through statuses: PENDING → RUNNING → terminal state

  Terminal states:

    * COMPLETED: Job finished successfully; query IoT SiteWise for
  semantic search results

    * FAILED: Job encountered an error; check failureMessage for details

    * TIMED_OUT: Job exceeded maximum processing time

    * CANCELLED: Job was cancelled via CancelEnrichmentJob

  <h2>Response Fields</h2>
  The response includes:

    * Current job status and type

    * Full job configuration as originally submitted

    * Lifecycle timestamps (created, updated, completed, cancelled)

    * Failure details if status is FAILED
  """
  @spec describe_enrichment_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_enrichment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_enrichment_job_errors()}
  def describe_enrichment_job(%Client{} = client, job_id, workspace_name, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/enrichment-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the execution.
  """
  @spec describe_execution(map(), String.t() | atom(), list()) ::
          {:ok, describe_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_execution_errors()}
  def describe_execution(%Client{} = client, execution_id, options \\ []) do
    url_path = "/executions/#{AWS.Util.encode_uri(execution_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway.
  """
  @spec describe_gateway(map(), String.t() | atom(), list()) ::
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
  Each gateway capability defines data sources for a gateway.

  This is the namespace of the gateway capability.

  . The namespace follows the format `service:capability:version`, where:

    *

  `service` - The service providing the capability, or `iotsitewise`.

    *

  `capability` - The specific capability type. Options include: `opcuacollector`
  for the OPC UA data source collector, or `publisher` for data publisher
  capability.

    *

  `version` - The version number of the capability. Option include `2` for Classic
  streams, V2 gateways, and `3` for MQTT-enabled, V3 gateways.

  After updating a capability configuration, the sync status becomes `OUT_OF_SYNC`
  until the gateway processes the configuration.Use
  `DescribeGatewayCapabilityConfiguration` to check the sync status and verify the
  configuration was applied.

  A gateway can have multiple capability configurations with different namespaces.
  """
  @spec describe_gateway_capability_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
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
  @spec describe_logging_options(map(), String.t() | atom() | nil, list()) ::
          {:ok, describe_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_logging_options_errors()}
  def describe_logging_options(%Client{} = client, workspace_name \\ nil, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific pipeline in a workspace.
  """
  @spec describe_pipeline(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pipeline_errors()}
  def describe_pipeline(
        %Client{} = client,
        pipeline_name,
        workspace_name,
        pipeline_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(pipeline_version) do
        [{"version", pipeline_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific pipeline execution, including
  the
  overall execution status and the status of each individual compute node.

  Use this
  operation to monitor execution progress and inspect per-node results,
  environment
  variables, and error details.
  """
  @spec describe_pipeline_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pipeline_execution_errors()}
  def describe_pipeline_execution(
        %Client{} = client,
        pipeline_execution_id,
        pipeline_name,
        workspace_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/executions/#{AWS.Util.encode_uri(pipeline_execution_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a portal.
  """
  @spec describe_portal(map(), String.t() | atom(), list()) ::
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
  @spec describe_project(map(), String.t() | atom(), list()) ::
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
  Retrieves information about a query, including its status.
  """
  @spec describe_query(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_query_errors()}
  def describe_query(%Client{} = client, query_id, workspace_name, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/queries/#{AWS.Util.encode_uri(query_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current status and metadata of a single search, including the query
  that was
  submitted, the search type, and — when the search has failed — the reason.

  Use this to poll a
  search started with `StartSearch` until it reaches a terminal status
  (`SUCCEEDED` or
  `FAILED`).
  """
  @spec describe_search(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_search_errors()}
  def describe_search(%Client{} = client, search_id, workspace_name, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/searches/#{AWS.Util.encode_uri(search_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

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
  Retrieves detailed information about a specific task in a workspace.
  """
  @spec describe_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_task_errors()}
  def describe_task(
        %Client{} = client,
        task_name,
        workspace_name,
        task_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/tasks/#{AWS.Util.encode_uri(task_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(task_version) do
        [{"version", task_version} | query_params]
      else
        query_params
      end

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
  @spec describe_time_series(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_time_series_errors()}
  def describe_time_series(
        %Client{} = client,
        alias \\ nil,
        asset_id \\ nil,
        property_id \\ nil,
        workspace_name \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries/describe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
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
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a workspace.
  """
  @spec describe_workspace(map(), String.t() | atom(), list()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_errors()}
  def describe_workspace(%Client{} = client, workspace_name, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a child asset from the given parent asset through a hierarchy
  defined in the
  parent asset's model.
  """
  @spec disassociate_assets(map(), String.t() | atom(), disassociate_assets_request(), list()) ::
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
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
      if !is_nil(aggregate_types) do
        [{"aggregateTypes", aggregate_types} | query_params]
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
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
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
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
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
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
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
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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
      if !is_nil(qualities) do
        [{"qualities", qualities} | query_params]
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
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves video data for a specific time range.
  """
  @spec get_capture_data(map(), String.t() | atom(), get_capture_data_request(), list()) ::
          {:ok, get_capture_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_capture_data_errors()}
  def get_capture_data(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/get-capture-data"
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
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
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
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
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
      if !is_nil(end_time_offset_in_nanos) do
        [{"endTimeOffsetInNanos", end_time_offset_in_nanos} | query_params]
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
      if !is_nil(interval_window_in_seconds) do
        [{"intervalWindowInSeconds", interval_window_in_seconds} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
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
      if !is_nil(start_time_in_seconds) do
        [{"startTimeInSeconds", start_time_in_seconds} | query_params]
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
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the paginated results of a query.

  Returns empty rows if the query is not yet complete.
  """
  @spec get_query_results(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_query_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_errors()}
  def get_query_results(
        %Client{} = client,
        query_id,
        workspace_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/queries/#{AWS.Util.encode_uri(query_id)}/results"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the ranked results of a search, ordered by descending relevance score.

  Results are
  available only after the search has reached the `SUCCEEDED` status. Calling this
  on a search
  that exists but has not yet completed returns `InvalidRequestException`, while
  calling it on a
  search that does not exist returns `ResourceNotFoundException`. The response is
  paginated: when
  `nextToken` is present, pass it on a subsequent call to retrieve the next page.
  """
  @spec get_search_results(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_search_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_search_results_errors()}
  def get_search_results(
        %Client{} = client,
        search_id,
        workspace_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/searches/#{AWS.Util.encode_uri(search_id)}/results"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(iam_arn) do
        [{"iamArn", iam_arn} | query_params]
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
      if !is_nil(identity_type) do
        [{"identityType", identity_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of actions for a specific target resource.
  """
  @spec list_actions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_actions_errors()}
  def list_actions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resolve_to_resource_id \\ nil,
        resolve_to_resource_type \\ nil,
        target_resource_id,
        target_resource_type,
        options \\ []
      ) do
    url_path = "/actions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(resolve_to_resource_id) do
        [{"resolveToResourceId", resolve_to_resource_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolve_to_resource_type) do
        [{"resolveToResourceType", resolve_to_resource_type} | query_params]
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
      if !is_nil(target_resource_type) do
        [{"targetResourceType", target_resource_type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of existing applications
  """
  @spec list_applications(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_model_version) do
        [{"assetModelVersion", asset_model_version} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_model_types) do
        [{"assetModelTypes", asset_model_types} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(traversal_type) do
        [{"traversalType", traversal_type} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(asset_model_id) do
        [{"assetModelId", asset_model_id} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(hierarchy_id) do
        [{"hierarchyId", hierarchy_id} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traversal_direction) do
        [{"traversalDirection", traversal_direction} | query_params]
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
  @spec list_bulk_import_jobs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_bulk_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bulk_import_jobs_errors()}
  def list_bulk_import_jobs(
        %Client{} = client,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        workspace_name \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all data binding usages for computation models.

  This allows to identify where
  specific data bindings are being utilized across the computation models. This
  track
  dependencies between data sources and computation models.
  """
  @spec list_computation_model_data_binding_usages(
          map(),
          list_computation_model_data_binding_usages_request(),
          list()
        ) ::
          {:ok, list_computation_model_data_binding_usages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_computation_model_data_binding_usages_errors()}
  def list_computation_model_data_binding_usages(%Client{} = client, input, options \\ []) do
    url_path = "/computation-models/data-binding-usages"
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
  Lists all distinct resources that are resolved from the executed actions of the
  computation model.
  """
  @spec list_computation_model_resolve_to_resources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_computation_model_resolve_to_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_computation_model_resolve_to_resources_errors()}
  def list_computation_model_resolve_to_resources(
        %Client{} = client,
        computation_model_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/computation-models/#{AWS.Util.encode_uri(computation_model_id)}/resolve-to-resources"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of summaries of all computation models.
  """
  @spec list_computation_models(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_computation_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_computation_models_errors()}
  def list_computation_models(
        %Client{} = client,
        computation_model_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/computation-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(computation_model_type) do
        [{"computationModelType", computation_model_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.
  """
  @spec list_dashboards(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(project_id) do
        [{"projectId", project_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of data segment relationships for a session dataset.

  Use this
  operation to find the curated datasets that reference data segments of the
  specified session
  dataset. Use the `nextToken` parameter to retrieve additional results.
  """
  @spec list_dataset_data_segment_relationships(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_dataset_data_segment_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_data_segment_relationships_errors()}
  def list_dataset_data_segment_relationships(
        %Client{} = client,
        dataset_id,
        max_results \\ nil,
        next_token \\ nil,
        workspace_name,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/data-segment-relationships"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of data segments associated with a dataset.

  Use the `nextToken` parameter to retrieve additional results.
  """
  @spec list_dataset_data_segments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_dataset_data_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_data_segments_errors()}
  def list_dataset_data_segments(
        %Client{} = client,
        dataset_id,
        dataset_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        workspace_name,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/data-segments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(dataset_version) do
        [{"datasetVersion", dataset_version} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of dataset export jobs for a workspace.
  """
  @spec list_dataset_export_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_dataset_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataset_export_jobs_errors()}
  def list_dataset_export_jobs(
        %Client{} = client,
        workspace_name,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/dataset-export-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of datasets for a specific target resource.
  """
  @spec list_datasets(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
  def list_datasets(
        %Client{} = client,
        dataset_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        source_type,
        workspace_name \\ nil,
        options \\ []
      ) do
    url_path = "/datasets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(dataset_type) do
        [{"datasetType", dataset_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source_type) do
        [{"sourceType", source_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists enrichment jobs within a workspace with optional filtering and pagination.

  Results are ordered
  by createdAt timestamp descending (newest first).

  <h2>Filtering</h2>
  Combine filters to narrow results:

    * **datasetId**: Filter by dataset

    * **propertyAlias** OR **timeSeriesId**: Filter by time series
  (specify one, not both)

    * **status**: Filter by job status (e.g., RUNNING to find active
  jobs)

    * **jobType**: Filter by enrichment type (currently only
  EVENT_DETECTION)

    * **startDate** and **endDate**: Filter by job creation time range

  <h2>Important Constraints</h2>

    * You must specify either propertyAlias OR timeSeriesId, but not
  both

    * Attempting to specify both results in an InvalidRequestException

    * Date filters use ISO 8601 format

    * startDate is exclusive, endDate is inclusive

  <h2>Pagination</h2>
  The operation returns up to maxResults jobs per page (default 50). If more
  results exist, the
  response includes a nextToken. Submit this token in a subsequent request to
  retrieve the next page.

  <h2>Common Use Cases</h2>

    * Find all running jobs: Filter by status=RUNNING

    * List recent jobs for a dataset: Filter by datasetId with optional
  date range

    * Monitor jobs for a specific sensor: Filter by propertyAlias or
  timeSeriesId

    * Track all event detection jobs: Filter by jobType=EVENT_DETECTION

  <h2>Performance</h2>
  Performance is optimal when filtering by supported fields (datasetId,
  propertyAlias, timeSeriesId, status, jobType).
  """
  @spec list_enrichment_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_enrichment_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_enrichment_jobs_errors()}
  def list_enrichment_jobs(
        %Client{} = client,
        workspace_name,
        dataset_id \\ nil,
        end_date \\ nil,
        job_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        start_date \\ nil,
        status \\ nil,
        time_series_id \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/enrichment-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(dataset_id) do
        [{"datasetId", dataset_id} | query_params]
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
      if !is_nil(job_type) do
        [{"jobType", job_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(time_series_id) do
        [{"timeSeriesId", time_series_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of summaries of all executions.
  """
  @spec list_executions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executions_errors()}
  def list_executions(
        %Client{} = client,
        action_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resolve_to_resource_id \\ nil,
        resolve_to_resource_type \\ nil,
        target_resource_id,
        target_resource_type,
        options \\ []
      ) do
    url_path = "/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(action_type) do
        [{"actionType", action_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolve_to_resource_id) do
        [{"resolveToResourceId", resolve_to_resource_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolve_to_resource_type) do
        [{"resolveToResourceType", resolve_to_resource_type} | query_params]
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
      if !is_nil(target_resource_type) do
        [{"targetResourceType", target_resource_type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of gateways.
  """
  @spec list_gateways(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/20200301/gateways"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of asset models that have a specific interface asset
  model
  applied to them.
  """
  @spec list_interface_relationships(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_interface_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_interface_relationships_errors()}
  def list_interface_relationships(
        %Client{} = client,
        interface_asset_model_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/interface/#{AWS.Util.encode_uri(interface_asset_model_id)}/asset-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists pipeline executions for a specific pipeline in a workspace.

  Supports filtering by state and time range. State can be combined with either
  startTime or endTime filters. Time range filters are grouped: use startTime
  filters
  (startTimeAfter, startTimeBefore) or endTime filters (endTimeAfter,
  endTimeBefore),
  but not both. Combining startTime and endTime filters returns an
  InvalidRequestException.
  Note: endTime filters only return executions in terminal states, as in-progress
  executions have no endTime.
  """
  @spec list_pipeline_executions(
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
          {:ok, list_pipeline_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipeline_executions_errors()}
  def list_pipeline_executions(
        %Client{} = client,
        pipeline_name,
        workspace_name,
        end_time_after \\ nil,
        end_time_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time_after \\ nil,
        start_time_before \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/executions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(end_time_after) do
        [{"endTimeAfter", end_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time_before) do
        [{"endTimeBefore", end_time_before} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_after) do
        [{"startTimeAfter", start_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_before) do
        [{"startTimeBefore", start_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists pipelines in a workspace.

  To get complete details about a pipeline, use
  [DescribePipeline](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribePipeline.html).
  """
  @spec list_pipelines(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipelines_errors()}
  def list_pipelines(
        %Client{} = client,
        workspace_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of IoT SiteWise Monitor portals.
  """
  @spec list_portals(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
  @spec list_project_assets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.
  """
  @spec list_projects(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(portal_id) do
        [{"portalId", portal_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of queries for a workspace.
  """
  @spec list_queries(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queries_errors()}
  def list_queries(
        %Client{} = client,
        workspace_name,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/queries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the searches in a workspace, most recently started first.

  Results can be narrowed with
  optional filters (status, search type, group, and started-at time range) and are
  paginated: when
  `nextToken` is present, pass it on a subsequent call to retrieve the next page.
  """
  @spec list_searches(map(), String.t() | atom(), list_searches_request(), list()) ::
          {:ok, list_searches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_searches_errors()}
  def list_searches(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/searches/list"
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
  Retrieves the list of tags for an IoT SiteWise resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Lists tasks in a workspace.

  To get complete details about a task, use
  [DescribeTask](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeTask.html).
  """
  @spec list_tasks(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tasks_errors()}
  def list_tasks(
        %Client{} = client,
        workspace_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
        workspace_name \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(alias_prefix) do
        [{"aliasPrefix", alias_prefix} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(time_series_type) do
        [{"timeSeriesType", time_series_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(workspace_name) do
        [{"workspaceName", workspace_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of workspaces.

  Use the `nextToken` parameter to retrieve additional results.
  """
  @spec list_workspaces(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workspaces_errors()}
  def list_workspaces(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/workspaces"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates or updates an interface relationship between an asset model and an
  interface asset
  model.

  This operation applies an interface to an asset model.
  """
  @spec put_asset_model_interface_relationship(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_asset_model_interface_relationship_request(),
          list()
        ) ::
          {:ok, put_asset_model_interface_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_asset_model_interface_relationship_errors()}
  def put_asset_model_interface_relationship(
        %Client{} = client,
        asset_model_id,
        interface_asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/interface/#{AWS.Util.encode_uri(interface_asset_model_id)}/asset-model-interface-relationship"

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
  Starts execution of a pipeline in the specified workspace.

  Each compute node runs
  according to the DAG dependency order defined in the pipeline. Nodes without
  dependencies start immediately, while dependent nodes wait for all upstream
  nodes
  to complete successfully.

  You can provide runtime environment variable overrides that take the highest
  priority
  in the environment variable hierarchy, without modifying the pipeline
  definition.
  """
  @spec start_pipeline_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_pipeline_execution_request(),
          list()
        ) ::
          {:ok, start_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_pipeline_execution_errors()}
  def start_pipeline_execution(
        %Client{} = client,
        pipeline_name,
        workspace_name,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/executions"

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
  Starts an asynchronous SQL query against workspace telemetry, annotations, data
  segment, and dataset data.
  """
  @spec start_query(map(), String.t() | atom(), start_query_request(), list()) ::
          {:ok, start_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_errors()}
  def start_query(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/queries"
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
  Starts an asynchronous search over the data in a workspace.

  The search runs in the background;
  the response returns immediately with a `searchId` and an initial status of
  `QUEUED`. Use
  `DescribeSearch` to poll for completion and `GetSearchResults` to retrieve the
  results once the
  search reaches `SUCCEEDED`. The request is idempotent on `clientToken`:
  repeating a call with the
  same token returns the original search instead of starting a new one.
  """
  @spec start_search(map(), String.t() | atom(), start_search_request(), list()) ::
          {:ok, start_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_search_errors()}
  def start_search(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/searches"
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Updates an existing access policy that specifies an identity's access to an IoT
  SiteWise Monitor
  portal or project resource.
  """
  @spec update_access_policy(map(), String.t() | atom(), update_access_policy_request(), list()) ::
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
  @spec update_asset(map(), String.t() | atom(), update_asset_request(), list()) ::
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
  @spec update_asset_model(map(), String.t() | atom(), update_asset_model_request(), list()) ::
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
          String.t() | atom(),
          String.t() | atom(),
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
          String.t() | atom(),
          String.t() | atom(),
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
  Updates the computation model.
  """
  @spec update_computation_model(
          map(),
          String.t() | atom(),
          update_computation_model_request(),
          list()
        ) ::
          {:ok, update_computation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_computation_model_errors()}
  def update_computation_model(%Client{} = client, computation_model_id, input, options \\ []) do
    url_path = "/computation-models/#{AWS.Util.encode_uri(computation_model_id)}"
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Updates an IoT SiteWise Monitor dashboard.
  """
  @spec update_dashboard(map(), String.t() | atom(), update_dashboard_request(), list()) ::
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
  @spec update_dataset(map(), String.t() | atom(), update_dataset_request(), list()) ::
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
  @spec update_gateway(map(), String.t() | atom(), update_gateway_request(), list()) ::
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

  Each gateway capability defines data sources for a gateway.

  Important workflow notes:

  Each gateway capability defines data sources for a gateway. This is the
  namespace of the gateway capability.

  . The namespace follows the format `service:capability:version`, where:

    *

  `service` - The service providing the capability, or `iotsitewise`.

    *

  `capability` - The specific capability type. Options include: `opcuacollector`
  for the OPC UA data source collector, or `publisher` for data publisher
  capability.

    *

  `version` - The version number of the capability. Option include `2` for Classic
  streams, V2 gateways, and `3` for MQTT-enabled, V3 gateways.

  After updating a capability configuration, the sync status becomes `OUT_OF_SYNC`
  until the gateway processes the configuration.Use
  `DescribeGatewayCapabilityConfiguration` to check the sync status and verify the
  configuration was applied.

  A gateway can have multiple capability configurations with different namespaces.
  """
  @spec update_gateway_capability_configuration(
          map(),
          String.t() | atom(),
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
  Updates an existing pipeline in the specified workspace.

  Only the fields
  provided in the request are updated; fields not included in the request are
  preserved
  unchanged. You can update the pipeline description, environment variables, and
  the
  list of compute nodes independently.
  """
  @spec update_pipeline(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_pipeline_request(),
          list()
        ) ::
          {:ok, update_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, pipeline_name, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"

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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Updates an IoT SiteWise Monitor portal.
  """
  @spec update_portal(map(), String.t() | atom(), update_portal_request(), list()) ::
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

  The IoT SiteWise Monitor feature will no longer be open to new
  customers starting November 7, 2025.

  If you would like to use the IoT SiteWise Monitor feature, sign up prior to that
  date. Existing customers can
  continue to use the service as normal. For more information, see
  [IoT SiteWise Monitor availability change](https://docs.aws.amazon.com/iot-sitewise/latest/appguide/iotsitewise-monitor-availability-change.html).

  Updates an IoT SiteWise Monitor project.
  """
  @spec update_project(map(), String.t() | atom(), update_project_request(), list()) ::
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

  @doc """
  Updates an existing task in the specified workspace.

  Only the fields
  provided in the request are updated; fields not included in the request are
  preserved
  unchanged.
  """
  @spec update_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_task_request(),
          list()
        ) ::
          {:ok, update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_task_errors()}
  def update_task(%Client{} = client, task_name, workspace_name, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_name)}/tasks/#{AWS.Util.encode_uri(task_name)}"

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
  Updates a workspace.

  You can update only workspaces in the `ACTIVE` or
  `FAILED` state. Fields that you omit from the request are left unchanged. To
  recover a workspace in the `FAILED` state, call this operation and supply its
  encryption configuration again.
  """
  @spec update_workspace(map(), String.t() | atom(), update_workspace_request(), list()) ::
          {:ok, update_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_errors()}
  def update_workspace(%Client{} = client, workspace_name, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_name)}"
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
end
