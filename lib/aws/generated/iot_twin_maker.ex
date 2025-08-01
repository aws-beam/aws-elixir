# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTTwinMaker do
  @moduledoc """
  IoT TwinMaker is a service with which you can
  build operational digital twins of physical systems.

  IoT TwinMaker overlays measurements
  and analysis from real-world sensors, cameras, and enterprise applications so
  you can
  create data visualizations to monitor your physical factory, building, or
  industrial plant.
  You can use this real-world data to monitor operations and diagnose and repair
  errors.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      execute_query_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("queryStatement") => String.t() | atom(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type execute_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sync_job_request() :: %{
        optional("workspaceId") => String.t() | atom()
      }

  """
  @type get_sync_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scene_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer()
      }

  """
  @type create_scene_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sync_job_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("status") => sync_job_status(),
        required("syncRole") => String.t() | atom(),
        required("syncSource") => String.t() | atom(),
        required("updateDateTime") => non_neg_integer(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type get_sync_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_update_request() :: %{
        "componentTypeId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "propertyGroupUpdates" => map(),
        "propertyUpdates" => map(),
        "updateType" => String.t() | atom()
      }

  """
  @type component_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_metadata_transfer_job_response() :: %{
        "arn" => String.t() | atom(),
        "metadataTransferJobId" => String.t() | atom(),
        "progress" => metadata_transfer_job_progress(),
        "status" => metadata_transfer_job_status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type cancel_metadata_transfer_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_entities_request() :: %{
        optional("filters") => list(list()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_entities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_source_configuration() :: %{
        "location" => String.t() | atom()
      }

  """
  @type s3_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_metadata_transfer_job_request() :: %{}

  """
  @type cancel_metadata_transfer_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_entity_response() :: %{
        required("state") => String.t() | atom()
      }

  """
  @type delete_entity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tabular_conditions() :: %{
        "orderBy" => list(order_by()),
        "propertyFilters" => list(property_filter())
      }

  """
  @type tabular_conditions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceARN") => String.t() | atom(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scenes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scenes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type connector_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_properties_response() :: %{
        "nextToken" => String.t() | atom(),
        "propertySummaries" => list(property_summary())
      }

  """
  @type list_properties_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iot_twin_maker_source_configuration() :: %{
        "filters" => list(list()),
        "workspace" => String.t() | atom()
      }

  """
  @type iot_twin_maker_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_request() :: %{
        "definition" => property_definition_request(),
        "updateType" => String.t() | atom(),
        "value" => data_value()
      }

  """
  @type property_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_property_value_request() :: %{
        optional("componentName") => String.t() | atom(),
        optional("componentPath") => String.t() | atom(),
        optional("componentTypeId") => String.t() | atom(),
        optional("entityId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("propertyGroupName") => String.t() | atom(),
        optional("tabularConditions") => tabular_conditions(),
        required("selectedProperties") => list(String.t() | atom())
      }

  """
  @type get_property_value_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_component_type_request() :: %{
        optional("componentTypeName") => String.t() | atom(),
        optional("compositeComponentTypes") => map(),
        optional("description") => String.t() | atom(),
        optional("extendsFrom") => list(String.t() | atom()),
        optional("functions") => map(),
        optional("isSingleton") => boolean(),
        optional("propertyDefinitions") => map(),
        optional("propertyGroups") => map(),
        optional("tags") => map()
      }

  """
  @type create_component_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_component_type_response() :: %{
        "componentTypeId" => String.t() | atom(),
        "isInherited" => boolean()
      }

  """
  @type composite_component_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      column_description() :: %{
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type column_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_pricing_plan_request() :: %{}

  """
  @type get_pricing_plan_request() :: %{}

  @typedoc """

  ## Example:

      get_entity_request() :: %{}

  """
  @type get_entity_request() :: %{}

  @typedoc """

  ## Example:

      pricing_plan() :: %{
        "billableEntityCount" => float(),
        "bundleInformation" => bundle_information(),
        "effectiveDateTime" => non_neg_integer(),
        "pricingMode" => String.t() | atom(),
        "updateDateTime" => non_neg_integer(),
        "updateReason" => String.t() | atom()
      }

  """
  @type pricing_plan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      relationship() :: %{
        "relationshipType" => String.t() | atom(),
        "targetComponentTypeId" => String.t() | atom()
      }

  """
  @type relationship() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_function() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type lambda_function() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "entityName" => String.t() | atom(),
        "hasChildEntities" => boolean(),
        "parentEntityId" => String.t() | atom(),
        "status" => status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type entity_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "linkedServices" => list(String.t() | atom()),
        "updateDateTime" => non_neg_integer(),
        "workspaceId" => String.t() | atom()
      }

  """
  @type workspace_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_property_group_response() :: %{
        "groupType" => String.t() | atom(),
        "isInherited" => boolean(),
        "propertyNames" => list(String.t() | atom())
      }

  """
  @type component_property_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_component_update_request() :: %{
        "description" => String.t() | atom(),
        "propertyGroupUpdates" => map(),
        "propertyUpdates" => map(),
        "updateType" => String.t() | atom()
      }

  """
  @type composite_component_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sync_job_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "status" => sync_job_status(),
        "syncSource" => String.t() | atom(),
        "updateDateTime" => non_neg_integer(),
        "workspaceId" => String.t() | atom()
      }

  """
  @type sync_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iot_twin_maker_destination_configuration() :: %{
        "workspace" => String.t() | atom()
      }

  """
  @type iot_twin_maker_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_entity_request() :: %{
        optional("componentUpdates") => map(),
        optional("compositeComponentUpdates") => map(),
        optional("description") => String.t() | atom(),
        optional("entityName") => String.t() | atom(),
        optional("parentEntityUpdate") => parent_entity_update_request()
      }

  """
  @type update_entity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_component_request() :: %{
        "description" => String.t() | atom(),
        "properties" => map(),
        "propertyGroups" => map()
      }

  """
  @type composite_component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scene_response() :: %{
        required("updateDateTime") => non_neg_integer()
      }

  """
  @type update_scene_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scene_summary() :: %{
        "arn" => String.t() | atom(),
        "contentLocation" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "sceneId" => String.t() | atom(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type scene_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_type() :: %{
        "allowedValues" => list(data_value()),
        "nestedType" => data_type(),
        "relationship" => relationship(),
        "type" => String.t() | atom(),
        "unitOfMeasure" => String.t() | atom()
      }

  """
  @type data_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_component_type_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("state") => String.t() | atom()
      }

  """
  @type create_component_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_properties_request() :: %{
        optional("componentName") => String.t() | atom(),
        optional("componentPath") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("entityId") => String.t() | atom()
      }

  """
  @type list_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      order_by() :: %{
        "order" => String.t() | atom(),
        "propertyName" => String.t() | atom()
      }

  """
  @type order_by() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceARN") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_summary() :: %{
        "componentName" => String.t() | atom(),
        "componentPath" => String.t() | atom(),
        "componentTypeId" => String.t() | atom(),
        "definedIn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "propertyGroups" => map(),
        "status" => status(),
        "syncSource" => String.t() | atom()
      }

  """
  @type component_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_latest_value() :: %{
        "propertyReference" => entity_property_reference(),
        "propertyValue" => data_value()
      }

  """
  @type property_latest_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workspace_response() :: %{
        optional("message") => String.t() | atom()
      }

  """
  @type delete_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sync_job_response() :: %{
        required("state") => String.t() | atom()
      }

  """
  @type delete_sync_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_value() :: %{
        "time" => String.t() | atom(),
        "timestamp" => non_neg_integer(),
        "value" => data_value()
      }

  """
  @type property_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_component_type_request() :: %{
        optional("componentTypeName") => String.t() | atom(),
        optional("compositeComponentTypes") => map(),
        optional("description") => String.t() | atom(),
        optional("extendsFrom") => list(String.t() | atom()),
        optional("functions") => map(),
        optional("isSingleton") => boolean(),
        optional("propertyDefinitions") => map(),
        optional("propertyGroups") => map()
      }

  """
  @type update_component_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_group_request() :: %{
        "groupType" => String.t() | atom(),
        "propertyNames" => list(String.t() | atom())
      }

  """
  @type property_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity_property_reference() :: %{
        "componentName" => String.t() | atom(),
        "componentPath" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "externalIdProperty" => map(),
        "propertyName" => String.t() | atom()
      }

  """
  @type entity_property_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_property_error() :: %{
        "entry" => property_value_entry(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom()
      }

  """
  @type batch_put_property_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metadata_transfer_job_request() :: %{}

  """
  @type get_metadata_transfer_job_request() :: %{}

  @typedoc """

  ## Example:

      property_value_entry() :: %{
        "entityPropertyReference" => entity_property_reference(),
        "propertyValues" => list(property_value())
      }

  """
  @type property_value_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_property_group_request() :: %{
        "groupType" => String.t() | atom(),
        "propertyNames" => list(String.t() | atom()),
        "updateType" => String.t() | atom()
      }

  """
  @type component_property_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metadata_transfer_job_response() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "destination" => destination_configuration(),
        "metadataTransferJobId" => String.t() | atom(),
        "metadataTransferJobRole" => String.t() | atom(),
        "progress" => metadata_transfer_job_progress(),
        "reportUrl" => String.t() | atom(),
        "sources" => list(source_configuration()),
        "status" => metadata_transfer_job_status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type get_metadata_transfer_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_property_value_history_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("propertyValues") => list(property_value_history())
      }

  """
  @type get_property_value_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_property_values_request() :: %{
        required("entries") => list(property_value_entry())
      }

  """
  @type batch_put_property_values_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_type_response() :: %{
        optional("componentTypeName") => String.t() | atom(),
        optional("compositeComponentTypes") => map(),
        optional("description") => String.t() | atom(),
        optional("extendsFrom") => list(String.t() | atom()),
        optional("functions") => map(),
        optional("isAbstract") => boolean(),
        optional("isSchemaInitialized") => boolean(),
        optional("isSingleton") => boolean(),
        optional("propertyDefinitions") => map(),
        optional("propertyGroups") => map(),
        optional("status") => status(),
        optional("syncSource") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("componentTypeId") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("updateDateTime") => non_neg_integer(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type get_component_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sync_resource_status() :: %{
        "error" => error_details(),
        "state" => String.t() | atom()
      }

  """
  @type sync_resource_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_request() :: %{
        optional("componentPath") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_components_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sync_jobs_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("syncJobSummaries") => list(sync_job_summary())
      }

  """
  @type list_sync_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_entity_request() :: %{
        optional("isRecursive") => boolean()
      }

  """
  @type delete_entity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workspace_request() :: %{}

  """
  @type get_workspace_request() :: %{}

  @typedoc """

  ## Example:

      batch_put_property_values_response() :: %{
        required("errorEntries") => list(batch_put_property_error_entry())
      }

  """
  @type batch_put_property_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sync_job_request() :: %{
        optional("tags") => map(),
        required("syncRole") => String.t() | atom()
      }

  """
  @type create_sync_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      row() :: %{
        "rowData" => list(any())
      }

  """
  @type row() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_definition_request() :: %{
        "configuration" => map(),
        "dataType" => data_type(),
        "defaultValue" => data_value(),
        "displayName" => String.t() | atom(),
        "isExternalId" => boolean(),
        "isRequiredInEntity" => boolean(),
        "isStoredExternally" => boolean(),
        "isTimeSeries" => boolean()
      }

  """
  @type property_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_component_type_request() :: %{
        "componentTypeId" => String.t() | atom()
      }

  """
  @type composite_component_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sync_job_status() :: %{
        "error" => error_details(),
        "state" => String.t() | atom()
      }

  """
  @type sync_job_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_destination_configuration() :: %{
        "location" => String.t() | atom()
      }

  """
  @type s3_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scene_error() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type scene_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_scene_request() :: %{}

  """
  @type get_scene_request() :: %{}

  @typedoc """

  ## Example:

      get_scene_response() :: %{
        optional("capabilities") => list(String.t() | atom()),
        optional("description") => String.t() | atom(),
        optional("error") => scene_error(),
        optional("generatedSceneMetadata") => map(),
        optional("sceneMetadata") => map(),
        required("arn") => String.t() | atom(),
        required("contentLocation") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("sceneId") => String.t() | atom(),
        required("updateDateTime") => non_neg_integer(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type get_scene_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_request() :: %{
        "componentTypeId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "properties" => map(),
        "propertyGroups" => map()
      }

  """
  @type component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sync_job_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("state") => String.t() | atom()
      }

  """
  @type create_sync_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pricing_plan_response() :: %{
        optional("pendingPricingPlan") => pricing_plan(),
        required("currentPricingPlan") => pricing_plan()
      }

  """
  @type update_pricing_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_configuration() :: %{
        "iotSiteWiseConfiguration" => iot_site_wise_source_configuration(),
        "iotTwinMakerConfiguration" => iot_twin_maker_source_configuration(),
        "s3Configuration" => s3_source_configuration(),
        "type" => String.t() | atom()
      }

  """
  @type source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_property_error_entry() :: %{
        "errors" => list(batch_put_property_error())
      }

  """
  @type batch_put_property_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_response() :: %{
        required("updateDateTime") => non_neg_integer()
      }

  """
  @type update_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_transfer_job_status() :: %{
        "error" => error_details(),
        "queuedPosition" => integer(),
        "state" => String.t() | atom()
      }

  """
  @type metadata_transfer_job_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parent_entity_update_request() :: %{
        "parentEntityId" => String.t() | atom(),
        "updateType" => String.t() | atom()
      }

  """
  @type parent_entity_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_entity_response() :: %{
        required("state") => String.t() | atom(),
        required("updateDateTime") => non_neg_integer()
      }

  """
  @type update_entity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workspace_request() :: %{}

  """
  @type delete_workspace_request() :: %{}

  @typedoc """

  ## Example:

      component_response() :: %{
        "areAllCompositeComponentsReturned" => boolean(),
        "areAllPropertiesReturned" => boolean(),
        "componentName" => String.t() | atom(),
        "componentTypeId" => String.t() | atom(),
        "compositeComponents" => map(),
        "definedIn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "properties" => map(),
        "propertyGroups" => map(),
        "status" => status(),
        "syncSource" => String.t() | atom()
      }

  """
  @type component_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_type_summary() :: %{
        "arn" => String.t() | atom(),
        "componentTypeId" => String.t() | atom(),
        "componentTypeName" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "status" => status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type component_type_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_request() :: %{
        "implementedBy" => data_connector(),
        "requiredProperties" => list(String.t() | atom()),
        "scope" => String.t() | atom()
      }

  """
  @type function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_request() :: %{
        optional("description") => String.t() | atom(),
        optional("role") => String.t() | atom(),
        optional("s3Location") => String.t() | atom()
      }

  """
  @type update_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_group_response() :: %{
        "groupType" => String.t() | atom(),
        "isInherited" => boolean(),
        "propertyNames" => list(String.t() | atom())
      }

  """
  @type property_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_by_asset() :: %{
        "assetExternalId" => String.t() | atom(),
        "assetId" => String.t() | atom(),
        "includeAssetModel" => boolean(),
        "includeOffspring" => boolean()
      }

  """
  @type filter_by_asset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_transfer_job_summary() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "metadataTransferJobId" => String.t() | atom(),
        "progress" => metadata_transfer_job_progress(),
        "status" => metadata_transfer_job_status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type metadata_transfer_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_connector() :: %{
        "isNative" => boolean(),
        "lambda" => lambda_function()
      }

  """
  @type data_connector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_summary() :: %{
        "areAllPropertyValuesReturned" => boolean(),
        "definition" => property_definition_response(),
        "propertyName" => String.t() | atom(),
        "value" => data_value()
      }

  """
  @type property_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_component_types_response() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("componentTypeSummaries") => list(component_type_summary()),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type list_component_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sync_resource_summary() :: %{
        "externalId" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "status" => sync_resource_status(),
        "updateDateTime" => non_neg_integer()
      }

  """
  @type sync_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workspace_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer()
      }

  """
  @type create_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sync_resources_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("syncResources") => list(sync_resource_summary())
      }

  """
  @type list_sync_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workspaces_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("workspaceSummaries") => list(workspace_summary())
      }

  """
  @type list_workspaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sync_job_request() :: %{}

  """
  @type delete_sync_job_request() :: %{}

  @typedoc """

  ## Example:

      relationship_value() :: %{
        "targetComponentName" => String.t() | atom(),
        "targetEntityId" => String.t() | atom()
      }

  """
  @type relationship_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_metadata_transfer_jobs_request() :: %{
        optional("filters") => list(list()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("destinationType") => String.t() | atom(),
        required("sourceType") => String.t() | atom()
      }

  """
  @type list_metadata_transfer_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scene_response() :: %{}

  """
  @type delete_scene_response() :: %{}

  @typedoc """

  ## Example:

      get_pricing_plan_response() :: %{
        optional("pendingPricingPlan") => pricing_plan(),
        required("currentPricingPlan") => pricing_plan()
      }

  """
  @type get_pricing_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_entity_request() :: %{
        optional("components") => map(),
        optional("compositeComponents") => map(),
        optional("description") => String.t() | atom(),
        optional("entityId") => String.t() | atom(),
        optional("parentEntityId") => String.t() | atom(),
        optional("tags") => map(),
        required("entityName") => String.t() | atom()
      }

  """
  @type create_entity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_filter() :: %{
        "operator" => String.t() | atom(),
        "propertyName" => String.t() | atom(),
        "value" => data_value()
      }

  """
  @type property_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sync_resources_request() :: %{
        optional("filters") => list(list()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sync_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_transfer_job_progress() :: %{
        "failedCount" => integer(),
        "skippedCount" => integer(),
        "succeededCount" => integer(),
        "totalCount" => integer()
      }

  """
  @type metadata_transfer_job_progress() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_component_type_request() :: %{}

  """
  @type delete_component_type_request() :: %{}

  @typedoc """

  ## Example:

      property_response() :: %{
        "areAllPropertyValuesReturned" => boolean(),
        "definition" => property_definition_response(),
        "value" => data_value()
      }

  """
  @type property_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_by_component_type() :: %{
        "componentTypeId" => String.t() | atom()
      }

  """
  @type filter_by_component_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_entity_response() :: %{
        optional("areAllComponentsReturned") => boolean(),
        optional("components") => map(),
        optional("description") => String.t() | atom(),
        optional("syncSource") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("entityId") => String.t() | atom(),
        required("entityName") => String.t() | atom(),
        required("hasChildEntities") => boolean(),
        required("parentEntityId") => String.t() | atom(),
        required("status") => status(),
        required("updateDateTime") => non_neg_integer(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type get_entity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_by_asset_model() :: %{
        "assetModelExternalId" => String.t() | atom(),
        "assetModelId" => String.t() | atom(),
        "includeAssets" => boolean(),
        "includeOffspring" => boolean()
      }

  """
  @type filter_by_asset_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sync_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sync_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("resourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

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

      update_pricing_plan_request() :: %{
        optional("bundleNames") => list(String.t() | atom()),
        required("pricingMode") => String.t() | atom()
      }

  """
  @type update_pricing_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_component_type_response() :: %{
        required("arn") => String.t() | atom(),
        required("componentTypeId") => String.t() | atom(),
        required("state") => String.t() | atom(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type update_component_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_query_response() :: %{
        optional("columnDescriptions") => list(column_description()),
        optional("nextToken") => String.t() | atom(),
        optional("rows") => list(row())
      }

  """
  @type execute_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_timeout_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type query_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_component_type_response() :: %{
        required("state") => String.t() | atom()
      }

  """
  @type delete_component_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_property_value_history_request() :: %{
        optional("componentName") => String.t() | atom(),
        optional("componentPath") => String.t() | atom(),
        optional("componentTypeId") => String.t() | atom(),
        optional("endDateTime") => non_neg_integer(),
        optional("endTime") => String.t() | atom(),
        optional("entityId") => String.t() | atom(),
        optional("interpolation") => interpolation_parameters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("orderByTime") => String.t() | atom(),
        optional("propertyFilters") => list(property_filter()),
        optional("startDateTime") => non_neg_integer(),
        optional("startTime") => String.t() | atom(),
        required("selectedProperties") => list(String.t() | atom())
      }

  """
  @type get_property_value_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_response() :: %{
        "componentSummaries" => list(component_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_components_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_entity_response() :: %{
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("entityId") => String.t() | atom(),
        required("state") => String.t() | atom()
      }

  """
  @type create_entity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_metadata_transfer_job_request() :: %{
        optional("description") => String.t() | atom(),
        optional("metadataTransferJobId") => String.t() | atom(),
        required("destination") => destination_configuration(),
        required("sources") => list(source_configuration())
      }

  """
  @type create_metadata_transfer_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bundle_information() :: %{
        "bundleNames" => list(String.t() | atom()),
        "pricingTier" => String.t() | atom()
      }

  """
  @type bundle_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_timeout_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type connector_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scene_request() :: %{
        optional("capabilities") => list(String.t() | atom()),
        optional("description") => String.t() | atom(),
        optional("sceneMetadata") => map(),
        optional("tags") => map(),
        required("contentLocation") => String.t() | atom(),
        required("sceneId") => String.t() | atom()
      }

  """
  @type create_scene_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_metadata_transfer_jobs_response() :: %{
        "metadataTransferJobSummaries" => list(metadata_transfer_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_metadata_transfer_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_definition_response() :: %{
        "configuration" => map(),
        "dataType" => data_type(),
        "defaultValue" => data_value(),
        "displayName" => String.t() | atom(),
        "isExternalId" => boolean(),
        "isFinal" => boolean(),
        "isImported" => boolean(),
        "isInherited" => boolean(),
        "isRequiredInEntity" => boolean(),
        "isStoredExternally" => boolean(),
        "isTimeSeries" => boolean()
      }

  """
  @type property_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_value_history() :: %{
        "entityPropertyReference" => entity_property_reference(),
        "values" => list(property_value())
      }

  """
  @type property_value_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scene_request() :: %{}

  """
  @type delete_scene_request() :: %{}

  @typedoc """

  ## Example:

      status() :: %{
        "error" => error_details(),
        "state" => String.t() | atom()
      }

  """
  @type status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_response() :: %{
        "implementedBy" => data_connector(),
        "isInherited" => boolean(),
        "requiredProperties" => list(String.t() | atom()),
        "scope" => String.t() | atom()
      }

  """
  @type function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_entities_response() :: %{
        optional("entitySummaries") => list(entity_summary()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_entities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_by_entity() :: %{
        "entityId" => String.t() | atom()
      }

  """
  @type filter_by_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iot_site_wise_source_configuration() :: %{
        "filters" => list(list())
      }

  """
  @type iot_site_wise_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_type_request() :: %{}

  """
  @type get_component_type_request() :: %{}

  @typedoc """

  ## Example:

      interpolation_parameters() :: %{
        "interpolationType" => String.t() | atom(),
        "intervalInSeconds" => float()
      }

  """
  @type interpolation_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_component_types_request() :: %{
        optional("filters") => list(list()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_component_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_value() :: %{
        "booleanValue" => boolean(),
        "doubleValue" => float(),
        "expression" => String.t() | atom(),
        "integerValue" => integer(),
        "listValue" => list(data_value()),
        "longValue" => float(),
        "mapValue" => map(),
        "relationshipValue" => relationship_value(),
        "stringValue" => String.t() | atom()
      }

  """
  @type data_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_metadata_transfer_job_response() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => non_neg_integer(),
        "metadataTransferJobId" => String.t() | atom(),
        "status" => metadata_transfer_job_status()
      }

  """
  @type create_metadata_transfer_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workspace_response() :: %{
        optional("description") => String.t() | atom(),
        optional("linkedServices") => list(String.t() | atom()),
        optional("role") => String.t() | atom(),
        optional("s3Location") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("creationDateTime") => non_neg_integer(),
        required("updateDateTime") => non_neg_integer(),
        required("workspaceId") => String.t() | atom()
      }

  """
  @type get_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scenes_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("sceneSummaries") => list(scene_summary())
      }

  """
  @type list_scenes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_configuration() :: %{
        "iotTwinMakerConfiguration" => iot_twin_maker_destination_configuration(),
        "s3Configuration" => s3_destination_configuration(),
        "type" => String.t() | atom()
      }

  """
  @type destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workspace_request() :: %{
        optional("description") => String.t() | atom(),
        optional("role") => String.t() | atom(),
        optional("s3Location") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_property_value_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("propertyValues") => map(),
        optional("tabularPropertyValues") => list(list(map())())
      }

  """
  @type get_property_value_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scene_request() :: %{
        optional("capabilities") => list(String.t() | atom()),
        optional("contentLocation") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("sceneMetadata") => map()
      }

  """
  @type update_scene_request() :: %{(String.t() | atom()) => any()}

  @type batch_put_property_values_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_metadata_transfer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_component_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_entity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_metadata_transfer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_scene_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_sync_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_component_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_entity_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_scene_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_sync_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type execute_query_errors() ::
          throttling_exception()
          | query_timeout_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type get_component_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_entity_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_metadata_transfer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_pricing_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_property_value_errors() ::
          connector_timeout_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | connector_failure_exception()

  @type get_property_value_history_errors() ::
          connector_timeout_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | connector_failure_exception()

  @type get_scene_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sync_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_component_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_entities_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_metadata_transfer_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_properties_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_scenes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sync_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_sync_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type list_workspaces_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | access_denied_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: access_denied_exception() | resource_not_found_exception()

  @type update_component_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_entity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_pricing_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_scene_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iottwinmaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoTTwinMaker",
      signature_version: "v4",
      signing_name: "iottwinmaker",
      target_prefix: nil
    }
  end

  @doc """
  Sets values for multiple time series properties.
  """
  @spec batch_put_property_values(
          map(),
          String.t() | atom(),
          batch_put_property_values_request(),
          list()
        ) ::
          {:ok, batch_put_property_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_property_values_errors()}
  def batch_put_property_values(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entity-properties"
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
  Cancels the metadata transfer job.
  """
  @spec cancel_metadata_transfer_job(
          map(),
          String.t() | atom(),
          cancel_metadata_transfer_job_request(),
          list()
        ) ::
          {:ok, cancel_metadata_transfer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_metadata_transfer_job_errors()}
  def cancel_metadata_transfer_job(
        %Client{} = client,
        metadata_transfer_job_id,
        input,
        options \\ []
      ) do
    url_path = "/metadata-transfer-jobs/#{AWS.Util.encode_uri(metadata_transfer_job_id)}/cancel"
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
  Creates a component type.
  """
  @spec create_component_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_component_type_request(),
          list()
        ) ::
          {:ok, create_component_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_component_type_errors()}
  def create_component_type(
        %Client{} = client,
        component_type_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/component-types/#{AWS.Util.encode_uri(component_type_id)}"

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
  Creates an entity.
  """
  @spec create_entity(map(), String.t() | atom(), create_entity_request(), list()) ::
          {:ok, create_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_entity_errors()}
  def create_entity(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities"
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
  Creates a new metadata transfer job.
  """
  @spec create_metadata_transfer_job(map(), create_metadata_transfer_job_request(), list()) ::
          {:ok, create_metadata_transfer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_metadata_transfer_job_errors()}
  def create_metadata_transfer_job(%Client{} = client, input, options \\ []) do
    url_path = "/metadata-transfer-jobs"
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
  Creates a scene.
  """
  @spec create_scene(map(), String.t() | atom(), create_scene_request(), list()) ::
          {:ok, create_scene_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scene_errors()}
  def create_scene(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/scenes"
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
  This action creates a SyncJob.
  """
  @spec create_sync_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_sync_job_request(),
          list()
        ) ::
          {:ok, create_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sync_job_errors()}
  def create_sync_job(%Client{} = client, sync_source, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/sync-jobs/#{AWS.Util.encode_uri(sync_source)}"

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
  Creates a workplace.
  """
  @spec create_workspace(map(), String.t() | atom(), create_workspace_request(), list()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
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
  Deletes a component type.
  """
  @spec delete_component_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_component_type_request(),
          list()
        ) ::
          {:ok, delete_component_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_component_type_errors()}
  def delete_component_type(
        %Client{} = client,
        component_type_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/component-types/#{AWS.Util.encode_uri(component_type_id)}"

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
  Deletes an entity.
  """
  @spec delete_entity(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_entity_request(),
          list()
        ) ::
          {:ok, delete_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_entity_errors()}
  def delete_entity(%Client{} = client, entity_id, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities/#{AWS.Util.encode_uri(entity_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"isRecursive", "isRecursive"}
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
  Deletes a scene.
  """
  @spec delete_scene(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_scene_request(),
          list()
        ) ::
          {:ok, delete_scene_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scene_errors()}
  def delete_scene(%Client{} = client, scene_id, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/scenes/#{AWS.Util.encode_uri(scene_id)}"

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
  Delete the SyncJob.
  """
  @spec delete_sync_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_sync_job_request(),
          list()
        ) ::
          {:ok, delete_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sync_job_errors()}
  def delete_sync_job(%Client{} = client, sync_source, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/sync-jobs/#{AWS.Util.encode_uri(sync_source)}"

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
  Deletes a workspace.
  """
  @spec delete_workspace(map(), String.t() | atom(), delete_workspace_request(), list()) ::
          {:ok, delete_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
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
  Run queries to access information from your knowledge graph of entities within
  individual workspaces.

  The ExecuteQuery action only works with [Amazon Web Services Java SDK2](https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html).
  ExecuteQuery will not work with any Amazon Web Services Java SDK version < 2.x.
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
  Retrieves information about a component type.
  """
  @spec get_component_type(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_component_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_type_errors()}
  def get_component_type(%Client{} = client, component_type_id, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/component-types/#{AWS.Util.encode_uri(component_type_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an entity.
  """
  @spec get_entity(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_entity_errors()}
  def get_entity(%Client{} = client, entity_id, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities/#{AWS.Util.encode_uri(entity_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a nmetadata transfer job.
  """
  @spec get_metadata_transfer_job(map(), String.t() | atom(), list()) ::
          {:ok, get_metadata_transfer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metadata_transfer_job_errors()}
  def get_metadata_transfer_job(%Client{} = client, metadata_transfer_job_id, options \\ []) do
    url_path = "/metadata-transfer-jobs/#{AWS.Util.encode_uri(metadata_transfer_job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the pricing plan.
  """
  @spec get_pricing_plan(map(), list()) ::
          {:ok, get_pricing_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pricing_plan_errors()}
  def get_pricing_plan(%Client{} = client, options \\ []) do
    url_path = "/pricingplan"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the property values for a component, component type, entity, or workspace.

  You must specify a value for either `componentName`,
  `componentTypeId`, `entityId`, or `workspaceId`.
  """
  @spec get_property_value(map(), String.t() | atom(), get_property_value_request(), list()) ::
          {:ok, get_property_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_property_value_errors()}
  def get_property_value(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entity-properties/value"
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
  Retrieves information about the history of a time series property value for a
  component,
  component type, entity, or workspace.

  You must specify a value for `workspaceId`. For entity-specific queries,
  specify values for `componentName` and `entityId`. For cross-entity
  quries, specify a value for `componentTypeId`.
  """
  @spec get_property_value_history(
          map(),
          String.t() | atom(),
          get_property_value_history_request(),
          list()
        ) ::
          {:ok, get_property_value_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_property_value_history_errors()}
  def get_property_value_history(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entity-properties/history"
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
  Retrieves information about a scene.
  """
  @spec get_scene(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_scene_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scene_errors()}
  def get_scene(%Client{} = client, scene_id, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/scenes/#{AWS.Util.encode_uri(scene_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the SyncJob.
  """
  @spec get_sync_job(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sync_job_errors()}
  def get_sync_job(%Client{} = client, sync_source, workspace_id \\ nil, options \\ []) do
    url_path = "/sync-jobs/#{AWS.Util.encode_uri(sync_source)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workspace_id) do
        [{"workspace", workspace_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a workspace.
  """
  @spec get_workspace(map(), String.t() | atom(), list()) ::
          {:ok, get_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workspace_errors()}
  def get_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all component types in a workspace.
  """
  @spec list_component_types(map(), String.t() | atom(), list_component_types_request(), list()) ::
          {:ok, list_component_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_component_types_errors()}
  def list_component_types(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/component-types-list"
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
  This API lists the components of an entity.
  """
  @spec list_components(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_components_request(),
          list()
        ) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, entity_id, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities/#{AWS.Util.encode_uri(entity_id)}/components-list"

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
  Lists all entities in a workspace.
  """
  @spec list_entities(map(), String.t() | atom(), list_entities_request(), list()) ::
          {:ok, list_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entities_errors()}
  def list_entities(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities-list"
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
  Lists the metadata transfer jobs.
  """
  @spec list_metadata_transfer_jobs(map(), list_metadata_transfer_jobs_request(), list()) ::
          {:ok, list_metadata_transfer_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metadata_transfer_jobs_errors()}
  def list_metadata_transfer_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/metadata-transfer-jobs-list"
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
  This API lists the properties of a component.
  """
  @spec list_properties(map(), String.t() | atom(), list_properties_request(), list()) ::
          {:ok, list_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_properties_errors()}
  def list_properties(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/properties-list"
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
  Lists all scenes in a workspace.
  """
  @spec list_scenes(map(), String.t() | atom(), list_scenes_request(), list()) ::
          {:ok, list_scenes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scenes_errors()}
  def list_scenes(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/scenes-list"
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
  List all SyncJobs.
  """
  @spec list_sync_jobs(map(), String.t() | atom(), list_sync_jobs_request(), list()) ::
          {:ok, list_sync_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sync_jobs_errors()}
  def list_sync_jobs(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/sync-jobs-list"
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
  Lists the sync resources.
  """
  @spec list_sync_resources(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_sync_resources_request(),
          list()
        ) ::
          {:ok, list_sync_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sync_resources_errors()}
  def list_sync_resources(%Client{} = client, sync_source, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/sync-jobs/#{AWS.Util.encode_uri(sync_source)}/resources-list"

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
  Lists all tags associated with a resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags-list"
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
  Retrieves information about workspaces in the current account.
  """
  @spec list_workspaces(map(), list_workspaces_request(), list()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workspaces_errors()}
  def list_workspaces(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces-list"
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
  Adds tags to a resource.
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
  Removes tags from a resource.
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
        {"resourceARN", "resourceARN"},
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
  Updates information in a component type.
  """
  @spec update_component_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_component_type_request(),
          list()
        ) ::
          {:ok, update_component_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_component_type_errors()}
  def update_component_type(
        %Client{} = client,
        component_type_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/component-types/#{AWS.Util.encode_uri(component_type_id)}"

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
  Updates an entity.
  """
  @spec update_entity(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_entity_request(),
          list()
        ) ::
          {:ok, update_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_entity_errors()}
  def update_entity(%Client{} = client, entity_id, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/entities/#{AWS.Util.encode_uri(entity_id)}"

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
  Update the pricing plan.
  """
  @spec update_pricing_plan(map(), update_pricing_plan_request(), list()) ::
          {:ok, update_pricing_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pricing_plan_errors()}
  def update_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/pricingplan"
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
  Updates a scene.
  """
  @spec update_scene(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_scene_request(),
          list()
        ) ::
          {:ok, update_scene_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scene_errors()}
  def update_scene(%Client{} = client, scene_id, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/scenes/#{AWS.Util.encode_uri(scene_id)}"

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
  """
  @spec update_workspace(map(), String.t() | atom(), update_workspace_request(), list()) ::
          {:ok, update_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_errors()}
  def update_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
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
