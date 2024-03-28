# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Location do
  @moduledoc """
  "Suite of geospatial services including Maps, Places, Routes, Tracking, and
  Geofencing"
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_device_position_request() :: %{}

  """
  @type get_device_position_request() :: %{}

  @typedoc """

  ## Example:

      list_geofence_collections_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_geofence_collections_response_entry()())
      }

  """
  @type list_geofence_collections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      truck_dimensions() :: %{
        "Height" => [float()],
        "Length" => [float()],
        "Unit" => String.t(),
        "Width" => [float()]
      }

  """
  @type truck_dimensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_geofence_response() :: %{
        optional("GeofenceProperties") => map(),
        required("CreateTime") => non_neg_integer(),
        required("GeofenceId") => String.t(),
        required("Geometry") => geofence_geometry(),
        required("Status") => [String.t()],
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type get_geofence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_geofence_collection_request() :: %{}

  """
  @type describe_geofence_collection_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_device_position_response() :: %{
        required("Errors") => list(batch_update_device_position_error()())
      }

  """
  @type batch_update_device_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_positions_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_device_positions_response_entry()())
      }

  """
  @type list_device_positions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_tracker_consumer_request() :: %{
        required("ConsumerArn") => String.t()
      }

  """
  @type associate_tracker_consumer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_request() :: %{
        required("Entries") => list(batch_put_geofence_request_entry()())
      }

  """
  @type batch_put_geofence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_car_mode_options() :: %{
        "AvoidFerries" => [boolean()],
        "AvoidTolls" => [boolean()]
      }

  """
  @type calculate_route_car_mode_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_error() :: %{
        "Error" => batch_item_error(),
        "GeofenceId" => String.t()
      }

  """
  @type batch_put_geofence_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_device_position_error() :: %{
        "DeviceId" => String.t(),
        "Error" => batch_item_error(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type batch_update_device_position_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_response() :: %{
        required("Errors") => list(batch_delete_geofence_error()())
      }

  """
  @type batch_delete_geofence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_request() :: %{
        optional("Description") => String.t(),
        optional("ExpireTime") => non_neg_integer(),
        optional("NoExpiry") => [boolean()],
        optional("Tags") => map(),
        required("KeyName") => String.t(),
        required("Restrictions") => api_key_restrictions()
      }

  """
  @type create_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_place_index_request() :: %{
        optional("DataSourceConfiguration") => data_source_configuration(),
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("DataSource") => [String.t()],
        required("IndexName") => String.t()
      }

  """
  @type create_place_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_configuration() :: %{
        "IntendedUse" => String.t()
      }

  """
  @type data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_calculator_response() :: %{
        required("CalculatorArn") => String.t(),
        required("CalculatorName") => String.t(),
        required("CreateTime") => non_neg_integer()
      }

  """
  @type create_route_calculator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_tracker_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("TrackerArn") => String.t(),
        required("TrackerName") => String.t()
      }

  """
  @type create_tracker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_map_tile_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t()],
        optional("ContentType") => [String.t()]
      }

  """
  @type get_map_tile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_map_response() :: %{
        required("MapArn") => String.t(),
        required("MapName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_maps_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_maps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_calculator_response() :: %{}

  """
  @type delete_route_calculator_response() :: %{}

  @typedoc """

  ## Example:

      get_map_glyphs_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()]
      }

  """
  @type get_map_glyphs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_place_index_request() :: %{}

  """
  @type describe_place_index_request() :: %{}

  @typedoc """

  ## Example:

      list_keys_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_keys_response_entry()())
      }

  """
  @type list_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_response() :: %{
        "Legs" => list(leg()()),
        "Summary" => calculate_route_summary()
      }

  """
  @type calculate_route_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_route_calculators_response_entry() :: %{
        "CalculatorName" => String.t(),
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t()],
        "Description" => String.t(),
        "PricingPlan" => String.t(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_route_calculators_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_response() :: %{
        required("KeyArn") => String.t(),
        required("KeyName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_response() :: %{
        required("Results") => list(search_for_position_result()()),
        required("Summary") => search_place_index_for_position_summary()
      }

  """
  @type search_place_index_for_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_maps_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t()],
        "Description" => String.t(),
        "MapName" => String.t(),
        "PricingPlan" => String.t(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_maps_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trackers_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_trackers_response_entry()())
      }

  """
  @type list_trackers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_route_calculator_request() :: %{}

  """
  @type describe_route_calculator_request() :: %{}

  @typedoc """

  ## Example:

      delete_key_request() :: %{
        optional("ForceDelete") => [boolean()]
      }

  """
  @type delete_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_calculator_request() :: %{
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t()
      }

  """
  @type update_route_calculator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_for_position_result() :: %{
        "Distance" => [float()],
        "Place" => place(),
        "PlaceId" => String.t()
      }

  """
  @type search_for_position_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_geofence_request() :: %{
        optional("GeofenceProperties") => map(),
        required("Geometry") => geofence_geometry()
      }

  """
  @type put_geofence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_success() :: %{
        "CreateTime" => non_neg_integer(),
        "GeofenceId" => String.t(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type batch_put_geofence_success() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key_filter() :: %{
        "KeyStatus" => String.t()
      }

  """
  @type api_key_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_for_suggestions_result() :: %{
        "Categories" => list(String.t()()),
        "PlaceId" => String.t(),
        "SupplementalCategories" => list(String.t()()),
        "Text" => [String.t()]
      }

  """
  @type search_for_suggestions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_tracker_consumer_response() :: %{}

  """
  @type associate_tracker_consumer_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_text_summary() :: %{
        "BiasPosition" => list([float()]()),
        "DataSource" => [String.t()],
        "FilterBBox" => list([float()]()),
        "FilterCategories" => list(String.t()()),
        "FilterCountries" => list(String.t()()),
        "Language" => String.t(),
        "MaxResults" => integer(),
        "ResultBBox" => list([float()]()),
        "Text" => String.t()
      }

  """
  @type search_place_index_for_text_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_error() :: %{
        "Error" => batch_item_error(),
        "GeofenceId" => String.t()
      }

  """
  @type batch_delete_geofence_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_request() :: %{
        required("DevicePositionUpdates") => list(device_position_update()())
      }

  """
  @type batch_evaluate_geofences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_geofences_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_geofence_response_entry()())
      }

  """
  @type list_geofences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_entry_error() :: %{
        "Code" => String.t(),
        "Message" => [String.t()]
      }

  """
  @type route_matrix_entry_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_place_index_response() :: %{}

  """
  @type delete_place_index_response() :: %{}

  @typedoc """

  ## Example:

      get_map_sprites_request() :: %{
        optional("Key") => String.t()
      }

  """
  @type get_map_sprites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_map_request() :: %{}

  """
  @type delete_map_request() :: %{}

  @typedoc """

  ## Example:

      list_geofence_collections_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_geofence_collections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_map_style_descriptor_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t()],
        optional("ContentType") => [String.t()]
      }

  """
  @type get_map_style_descriptor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_response() :: %{}

  """
  @type delete_key_response() :: %{}

  @typedoc """

  ## Example:

      list_tracker_consumers_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_tracker_consumers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_positions_response_entry() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type list_device_positions_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keys_request() :: %{
        optional("Filter") => api_key_filter(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_summary() :: %{
        "DataSource" => [String.t()],
        "Language" => String.t(),
        "MaxResults" => integer(),
        "Position" => list([float()]())
      }

  """
  @type search_place_index_for_position_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_place_index_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("IndexArn") => String.t(),
        required("IndexName") => String.t()
      }

  """
  @type create_place_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_calculator_request() :: %{}

  """
  @type delete_route_calculator_request() :: %{}

  @typedoc """

  ## Example:

      update_geofence_collection_response() :: %{
        required("CollectionArn") => String.t(),
        required("CollectionName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_geofence_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_request() :: %{}

  """
  @type describe_key_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_geofence_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("GeofenceId") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type put_geofence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_geofence_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "GeofenceId" => String.t(),
        "GeofenceProperties" => map(),
        "Geometry" => geofence_geometry(),
        "Status" => [String.t()],
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_geofence_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_map_response() :: %{}

  """
  @type delete_map_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_text_response() :: %{
        required("Results") => list(search_for_text_result()()),
        required("Summary") => search_place_index_for_text_summary()
      }

  """
  @type search_place_index_for_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_map_tile_request() :: %{
        optional("Key") => String.t()
      }

  """
  @type get_map_tile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_request() :: %{
        optional("Description") => String.t(),
        optional("ExpireTime") => non_neg_integer(),
        optional("ForceUpdate") => [boolean()],
        optional("NoExpiry") => [boolean()],
        optional("Restrictions") => api_key_restrictions()
      }

  """
  @type update_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_geofence_collection_response() :: %{
        required("CollectionArn") => String.t(),
        required("CollectionName") => String.t(),
        required("CreateTime") => non_neg_integer()
      }

  """
  @type create_geofence_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_tracker_request() :: %{}

  """
  @type describe_tracker_request() :: %{}

  @typedoc """

  ## Example:

      describe_route_calculator_response() :: %{
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("CalculatorArn") => String.t(),
        required("CalculatorName") => String.t(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t()],
        required("Description") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_route_calculator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_map_request() :: %{}

  """
  @type describe_map_request() :: %{}

  @typedoc """

  ## Example:

      map_configuration_update() :: %{
        "CustomLayers" => list(String.t()()),
        "PoliticalView" => String.t()
      }

  """
  @type map_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_map_request() :: %{
        optional("ConfigurationUpdate") => map_configuration_update(),
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t()
      }

  """
  @type update_map_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_calculator_response() :: %{
        required("CalculatorArn") => String.t(),
        required("CalculatorName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_route_calculator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      place_geometry() :: %{
        "Point" => list([float()]())
      }

  """
  @type place_geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_request() :: %{
        required("DeviceIds") => list(String.t()())
      }

  """
  @type batch_get_device_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_place_indexes_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_place_indexes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      circle() :: %{
        "Center" => list([float()]()),
        "Radius" => [float()]
      }

  """
  @type circle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_map_request() :: %{
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("Configuration") => map_configuration(),
        required("MapName") => String.t()
      }

  """
  @type create_map_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_tracker_consumer_request() :: %{}

  """
  @type disassociate_tracker_consumer_request() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_text_request() :: %{
        optional("BiasPosition") => list([float()]()),
        optional("FilterBBox") => list([float()]()),
        optional("FilterCategories") => list(String.t()()),
        optional("FilterCountries") => list(String.t()()),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => integer(),
        required("Text") => String.t()
      }

  """
  @type search_place_index_for_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_place_request() :: %{
        optional("Key") => String.t(),
        optional("Language") => String.t()
      }

  """
  @type get_place_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_zone() :: %{
        "Name" => [String.t()],
        "Offset" => [integer()]
      }

  """
  @type time_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_geofence_collection_request() :: %{
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()]
      }

  """
  @type update_geofence_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_geofence_collection_request() :: %{}

  """
  @type delete_geofence_collection_request() :: %{}

  @typedoc """

  ## Example:

      batch_item_error() :: %{
        "Code" => String.t(),
        "Message" => [String.t()]
      }

  """
  @type batch_item_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_map_response() :: %{
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("Configuration") => map_configuration(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t()],
        required("Description") => String.t(),
        required("MapArn") => String.t(),
        required("MapName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_summary() :: %{
        "BiasPosition" => list([float()]()),
        "DataSource" => [String.t()],
        "FilterBBox" => list([float()]()),
        "FilterCategories" => list(String.t()()),
        "FilterCountries" => list(String.t()()),
        "Language" => String.t(),
        "MaxResults" => [integer()],
        "Text" => String.t()
      }

  """
  @type search_place_index_for_suggestions_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_place_index_response() :: %{
        required("IndexArn") => String.t(),
        required("IndexName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_place_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_calculator_request() :: %{
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("CalculatorName") => String.t(),
        required("DataSource") => [String.t()]
      }

  """
  @type create_route_calculator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_place_indexes_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t()],
        "Description" => String.t(),
        "IndexName" => String.t(),
        "PricingPlan" => String.t(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_place_indexes_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_position_history_response() :: %{
        optional("NextToken") => String.t(),
        required("DevicePositions") => list(device_position()())
      }

  """
  @type get_device_position_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_response() :: %{
        required("Errors") => list(batch_evaluate_geofences_error()())
      }

  """
  @type batch_evaluate_geofences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_map_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("MapArn") => String.t(),
        required("MapName") => String.t()
      }

  """
  @type create_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key_restrictions() :: %{
        "AllowActions" => list(String.t()()),
        "AllowReferers" => list(String.t()()),
        "AllowResources" => list(String.t()())
      }

  """
  @type api_key_restrictions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_tracker_response() :: %{
        required("TrackerArn") => String.t(),
        required("TrackerName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_tracker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_place_indexes_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_place_indexes_response_entry()())
      }

  """
  @type list_place_indexes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_route_calculators_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_route_calculators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_maps_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_maps_response_entry()())
      }

  """
  @type list_maps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_request_entry() :: %{
        "GeofenceId" => String.t(),
        "GeofenceProperties" => map(),
        "Geometry" => geofence_geometry()
      }

  """
  @type batch_put_geofence_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tracker_request() :: %{}

  """
  @type delete_tracker_request() :: %{}

  @typedoc """

  ## Example:

      get_map_sprites_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t()],
        optional("ContentType") => [String.t()]
      }

  """
  @type get_map_sprites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_place_index_response() :: %{
        optional("PricingPlan") => String.t(),
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t()],
        required("DataSourceConfiguration") => data_source_configuration(),
        required("Description") => String.t(),
        required("IndexArn") => String.t(),
        required("IndexName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_place_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_truck_mode_options() :: %{
        "AvoidFerries" => [boolean()],
        "AvoidTolls" => [boolean()],
        "Dimensions" => truck_dimensions(),
        "Weight" => truck_weight()
      }

  """
  @type calculate_route_truck_mode_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_tracker_response() :: %{
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("KmsKeyId") => String.t(),
        optional("PositionFiltering") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()],
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("Description") => String.t(),
        required("TrackerArn") => String.t(),
        required("TrackerName") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_tracker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_tracker_request() :: %{
        optional("Description") => String.t(),
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("KmsKeyId") => String.t(),
        optional("PositionFiltering") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()],
        optional("Tags") => map(),
        required("TrackerName") => String.t()
      }

  """
  @type create_tracker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_geofence_collection_response() :: %{
        optional("GeofenceCount") => [integer()],
        optional("KmsKeyId") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()],
        optional("Tags") => map(),
        required("CollectionArn") => String.t(),
        required("CollectionName") => String.t(),
        required("CreateTime") => non_neg_integer(),
        required("Description") => String.t(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_geofence_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_response() :: %{
        "RouteMatrix" => list(list(route_matrix_entry()())()),
        "SnappedDeparturePositions" => list(list([float()]())()),
        "SnappedDestinationPositions" => list(list([float()]())()),
        "Summary" => calculate_route_matrix_summary()
      }

  """
  @type calculate_route_matrix_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_error() :: %{
        "DeviceId" => String.t(),
        "Error" => batch_item_error()
      }

  """
  @type batch_get_device_position_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_request() :: %{
        optional("ArrivalTime") => non_neg_integer(),
        optional("CarModeOptions") => calculate_route_car_mode_options(),
        optional("DepartNow") => [boolean()],
        optional("DepartureTime") => non_neg_integer(),
        optional("DistanceUnit") => String.t(),
        optional("IncludeLegGeometry") => [boolean()],
        optional("Key") => String.t(),
        optional("OptimizeFor") => String.t(),
        optional("TravelMode") => String.t(),
        optional("TruckModeOptions") => calculate_route_truck_mode_options(),
        optional("WaypointPositions") => list(list([float()]())()),
        required("DeparturePosition") => list([float()]()),
        required("DestinationPosition") => list([float()]())
      }

  """
  @type calculate_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()()),
        "Message" => [String.t()],
        "Reason" => String.t()
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

      batch_put_geofence_response() :: %{
        required("Errors") => list(batch_put_geofence_error()()),
        required("Successes") => list(batch_put_geofence_success()())
      }

  """
  @type batch_put_geofence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_error() :: %{
        "DeviceId" => String.t(),
        "Error" => batch_item_error()
      }

  """
  @type batch_delete_device_position_history_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_place_response() :: %{
        required("Place") => place()
      }

  """
  @type get_place_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_response() :: %{
        required("DevicePositions") => list(device_position()()),
        required("Errors") => list(batch_get_device_position_error()())
      }

  """
  @type batch_get_device_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_tracker_consumer_response() :: %{}

  """
  @type disassociate_tracker_consumer_response() :: %{}

  @typedoc """

  ## Example:

      truck_weight() :: %{
        "Total" => [float()],
        "Unit" => String.t()
      }

  """
  @type truck_weight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_response() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("ExpireTime") => non_neg_integer(),
        required("Key") => String.t(),
        required("KeyArn") => String.t(),
        required("KeyName") => String.t(),
        required("Restrictions") => api_key_restrictions(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_device_position_request() :: %{
        required("Updates") => list(device_position_update()())
      }

  """
  @type batch_update_device_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_position_update() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type device_position_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_summary() :: %{
        "DataSource" => [String.t()],
        "DistanceUnit" => String.t(),
        "ErrorCount" => [integer()],
        "RouteCount" => [integer()]
      }

  """
  @type calculate_route_matrix_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_request() :: %{
        required("GeofenceIds") => list(String.t()())
      }

  """
  @type batch_delete_geofence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keys_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "Description" => String.t(),
        "ExpireTime" => non_neg_integer(),
        "KeyName" => String.t(),
        "Restrictions" => api_key_restrictions(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_keys_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_summary() :: %{
        "DataSource" => [String.t()],
        "Distance" => [float()],
        "DistanceUnit" => String.t(),
        "DurationSeconds" => [float()],
        "RouteBBox" => list([float()]())
      }

  """
  @type calculate_route_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      map_configuration() :: %{
        "CustomLayers" => list(String.t()()),
        "PoliticalView" => String.t(),
        "Style" => String.t()
      }

  """
  @type map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      positional_accuracy() :: %{
        "Horizontal" => [float()]
      }

  """
  @type positional_accuracy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_position() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "ReceivedTime" => non_neg_integer(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type device_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_geofence_collection_request() :: %{
        optional("Description") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()],
        optional("Tags") => map(),
        required("CollectionName") => String.t()
      }

  """
  @type create_geofence_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "Distance" => [float()],
        "DurationSeconds" => [float()],
        "EndPosition" => list([float()]()),
        "GeometryOffset" => [integer()],
        "StartPosition" => list([float()]())
      }

  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tracker_consumers_response() :: %{
        optional("NextToken") => String.t(),
        required("ConsumerArns") => list(String.t()())
      }

  """
  @type list_tracker_consumers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_map_style_descriptor_request() :: %{
        optional("Key") => String.t()
      }

  """
  @type get_map_style_descriptor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tracking_filter_geometry() :: %{
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type tracking_filter_geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_for_text_result() :: %{
        "Distance" => [float()],
        "Place" => place(),
        "PlaceId" => String.t(),
        "Relevance" => [float()]
      }

  """
  @type search_for_text_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trackers_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_trackers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_place_index_request() :: %{}

  """
  @type delete_place_index_request() :: %{}

  @typedoc """

  ## Example:

      update_tracker_request() :: %{
        optional("Description") => String.t(),
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("PositionFiltering") => String.t(),
        optional("PricingPlan") => String.t(),
        optional("PricingPlanDataSource") => [String.t()]
      }

  """
  @type update_tracker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_positions_request() :: %{
        optional("FilterGeometry") => tracking_filter_geometry(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_device_positions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      leg_geometry() :: %{
        "LineString" => list(list([float()]())())
      }

  """
  @type leg_geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geofence_geometry() :: %{
        "Circle" => circle(),
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type geofence_geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_geofence_request() :: %{}

  """
  @type get_geofence_request() :: %{}

  @typedoc """

  ## Example:

      list_route_calculators_response() :: %{
        optional("NextToken") => String.t(),
        required("Entries") => list(list_route_calculators_response_entry()())
      }

  """
  @type list_route_calculators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_position_history_request() :: %{
        optional("EndTimeExclusive") => non_neg_integer(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t(),
        optional("StartTimeInclusive") => non_neg_integer()
      }

  """
  @type get_device_position_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_entry() :: %{
        "Distance" => [float()],
        "DurationSeconds" => [float()],
        "Error" => route_matrix_entry_error()
      }

  """
  @type route_matrix_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_position_response() :: %{
        optional("Accuracy") => positional_accuracy(),
        optional("DeviceId") => String.t(),
        optional("PositionProperties") => map(),
        required("Position") => list([float()]()),
        required("ReceivedTime") => non_neg_integer(),
        required("SampleTime") => non_neg_integer()
      }

  """
  @type get_device_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_request() :: %{
        optional("BiasPosition") => list([float()]()),
        optional("FilterBBox") => list([float()]()),
        optional("FilterCategories") => list(String.t()()),
        optional("FilterCountries") => list(String.t()()),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        required("Text") => String.t()
      }

  """
  @type search_place_index_for_suggestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_response() :: %{
        required("Errors") => list(batch_delete_device_position_history_error()())
      }

  """
  @type batch_delete_device_position_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tracker_response() :: %{}

  """
  @type delete_tracker_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_response() :: %{
        required("Results") => list(search_for_suggestions_result()()),
        required("Summary") => search_place_index_for_suggestions_summary()
      }

  """
  @type search_place_index_for_suggestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_map_glyphs_request() :: %{
        optional("Key") => String.t()
      }

  """
  @type get_map_glyphs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      leg() :: %{
        "Distance" => [float()],
        "DurationSeconds" => [float()],
        "EndPosition" => list([float()]()),
        "Geometry" => leg_geometry(),
        "StartPosition" => list([float()]()),
        "Steps" => list(step()())
      }

  """
  @type leg() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      place() :: %{
        "AddressNumber" => [String.t()],
        "Categories" => list(String.t()()),
        "Country" => [String.t()],
        "Geometry" => place_geometry(),
        "Interpolated" => [boolean()],
        "Label" => [String.t()],
        "Municipality" => [String.t()],
        "Neighborhood" => [String.t()],
        "PostalCode" => [String.t()],
        "Region" => [String.t()],
        "Street" => [String.t()],
        "SubMunicipality" => [String.t()],
        "SubRegion" => [String.t()],
        "SupplementalCategories" => list(String.t()()),
        "TimeZone" => time_zone(),
        "UnitNumber" => [String.t()],
        "UnitType" => [String.t()]
      }

  """
  @type place() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_error() :: %{
        "DeviceId" => String.t(),
        "Error" => batch_item_error(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type batch_evaluate_geofences_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_geofence_collections_response_entry() :: %{
        "CollectionName" => String.t(),
        "CreateTime" => non_neg_integer(),
        "Description" => String.t(),
        "PricingPlan" => String.t(),
        "PricingPlanDataSource" => [String.t()],
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_geofence_collections_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_place_index_request() :: %{
        optional("DataSourceConfiguration") => data_source_configuration(),
        optional("Description") => String.t(),
        optional("PricingPlan") => String.t()
      }

  """
  @type update_place_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("Key") => String.t(),
        required("KeyArn") => String.t(),
        required("KeyName") => String.t()
      }

  """
  @type create_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_request() :: %{
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => integer(),
        required("Position") => list([float()]())
      }

  """
  @type search_place_index_for_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_request() :: %{
        optional("CarModeOptions") => calculate_route_car_mode_options(),
        optional("DepartNow") => [boolean()],
        optional("DepartureTime") => non_neg_integer(),
        optional("DistanceUnit") => String.t(),
        optional("Key") => String.t(),
        optional("TravelMode") => String.t(),
        optional("TruckModeOptions") => calculate_route_truck_mode_options(),
        required("DeparturePositions") => list(list([float()]())()),
        required("DestinationPositions") => list(list([float()]())())
      }

  """
  @type calculate_route_matrix_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_geofence_collection_response() :: %{}

  """
  @type delete_geofence_collection_response() :: %{}

  @typedoc """

  ## Example:

      list_geofences_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_geofences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trackers_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "Description" => String.t(),
        "PricingPlan" => String.t(),
        "PricingPlanDataSource" => [String.t()],
        "TrackerName" => String.t(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_trackers_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_request() :: %{
        required("DeviceIds") => list(String.t()())
      }

  """
  @type batch_delete_device_position_history_request() :: %{String.t() => any()}

  @type associate_tracker_consumer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_device_position_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_delete_geofence_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_evaluate_geofences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_device_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_put_geofence_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_update_device_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type calculate_route_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type calculate_route_matrix_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_geofence_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_map_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_place_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_route_calculator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_tracker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_geofence_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_map_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_place_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_route_calculator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_tracker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_geofence_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_map_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_place_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_route_calculator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_tracker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_tracker_consumer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_device_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_device_position_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_geofence_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_map_glyphs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_map_sprites_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_map_style_descriptor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_map_tile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_place_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_device_positions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_geofence_collections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_geofences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_keys_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_maps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_place_indexes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_route_calculators_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tracker_consumers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_trackers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_geofence_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_place_index_for_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_place_index_for_suggestions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_place_index_for_text_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_geofence_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_map_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_place_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_route_calculator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_tracker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-11-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "geo",
      global?: false,
      protocol: "rest-json",
      service_id: "Location",
      signature_version: "v4",
      signing_name: "geo",
      target_prefix: nil
    }
  end

  @doc """
  Creates an association between a geofence collection and a tracker resource.

  This
  allows the tracker resource to communicate location data to the linked geofence
  collection.

  You can associate up to five geofence collections to each tracker resource.

  Currently not supported — Cross-account configurations, such as creating
  associations between a tracker resource in one account and a geofence collection
  in another account.
  """
  @spec associate_tracker_consumer(
          map(),
          String.t(),
          associate_tracker_consumer_request(),
          list()
        ) ::
          {:ok, associate_tracker_consumer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_tracker_consumer_errors()}
  def associate_tracker_consumer(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/consumers"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the position history of one or more devices from a tracker resource.
  """
  @spec batch_delete_device_position_history(
          map(),
          String.t(),
          batch_delete_device_position_history_request(),
          list()
        ) ::
          {:ok, batch_delete_device_position_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_device_position_history_errors()}
  def batch_delete_device_position_history(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/delete-positions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a batch of geofences from a geofence collection.

  This operation deletes the resource permanently.
  """
  @spec batch_delete_geofence(map(), String.t(), batch_delete_geofence_request(), list()) ::
          {:ok, batch_delete_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_geofence_errors()}
  def batch_delete_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/delete-geofences"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Evaluates device positions against the geofence geometries from a given geofence
  collection.

  This operation always returns an empty response because geofences are
  asynchronously
  evaluated. The evaluation determines if the device has entered or exited a
  geofenced
  area, and then publishes one of the following events to Amazon EventBridge:

    *

  `ENTER` if Amazon Location determines that the tracked device has entered
  a geofenced area.

    *

  `EXIT` if Amazon Location determines that the tracked device has exited a
  geofenced area.

  The last geofence that a device was observed within is tracked for 30 days after
  the most recent device position update.

  Geofence evaluation uses the given device position. It does not account for the
  optional `Accuracy` of a `DevicePositionUpdate`.

  The `DeviceID` is used as a string to represent the device. You do not
  need to have a `Tracker` associated with the `DeviceID`.
  """
  @spec batch_evaluate_geofences(map(), String.t(), batch_evaluate_geofences_request(), list()) ::
          {:ok, batch_evaluate_geofences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_evaluate_geofences_errors()}
  def batch_evaluate_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/positions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the latest device positions for requested devices.
  """
  @spec batch_get_device_position(map(), String.t(), batch_get_device_position_request(), list()) ::
          {:ok, batch_get_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_device_position_errors()}
  def batch_get_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/get-positions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A batch request for storing geofence geometries into a given geofence
  collection, or
  updates the geometry of an existing geofence if a geofence ID is included in the
  request.
  """
  @spec batch_put_geofence(map(), String.t(), batch_put_geofence_request(), list()) ::
          {:ok, batch_put_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_geofence_errors()}
  def batch_put_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/put-geofences"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Uploads position update data for one or more devices to a tracker resource (up
  to
  10 devices per batch).

  Amazon Location uses the data when it reports the last known device
  position and position history. Amazon Location retains location data for 30
  days.

  Position updates are handled based on the `PositionFiltering`
  property of the tracker. When `PositionFiltering` is set to
  `TimeBased`, updates are evaluated against linked geofence collections,
  and location data is stored at a maximum of one position per 30 second interval.
  If your update frequency is more often than every 30 seconds, only one update
  per
  30 seconds is stored for each unique device ID.

  When `PositionFiltering` is set to `DistanceBased`
  filtering, location data is stored and evaluated against linked geofence
  collections only if the device has moved more than 30 m (98.4 ft).

  When `PositionFiltering` is set to `AccuracyBased`
  filtering, location data is stored and evaluated against linked geofence
  collections only if the device has moved more than the measured accuracy. For
  example, if two consecutive updates from a device have a horizontal accuracy of
  5 m and 10 m, the second update is neither stored or evaluated if the device has
  moved less than 15 m. If `PositionFiltering` is set to
  `AccuracyBased` filtering, Amazon Location uses the default value
  `{ "Horizontal": 0}` when accuracy is not provided on a
  `DevicePositionUpdate`.
  """
  @spec batch_update_device_position(
          map(),
          String.t(),
          batch_update_device_position_request(),
          list()
        ) ::
          {:ok, batch_update_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_device_position_errors()}
  def batch_update_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/positions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  [Calculates a route](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html)
  given the following required parameters:
  `DeparturePosition` and `DestinationPosition`.

  Requires that
  you first [create a route calculator
  resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day
  to travel with the best traffic conditions when calculating the route.

  Additional options include:

    *

  [Specifying a departure
  time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
  using either `DepartureTime` or
  `DepartNow`. This calculates a route based on predictive traffic
  data at the given time.

  You can't specify both `DepartureTime` and
  `DepartNow` in a single request. Specifying both parameters
  returns a validation error.

    *

  [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate
  the routes. This also lets you specify additional route preferences in
  `CarModeOptions` if traveling by `Car`, or
  `TruckModeOptions` if traveling by `Truck`.

  If you specify `walking` for the travel mode and your data
  provider is Esri, the start and destination must be within 40km.
  """
  @spec calculate_route(map(), String.t(), calculate_route_request(), list()) ::
          {:ok, calculate_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, calculate_route_errors()}
  def calculate_route(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}/calculate/route"
    headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "routes.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  [ Calculates a route matrix](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html)
  given the following required parameters:
  `DeparturePositions` and `DestinationPositions`.

  `CalculateRouteMatrix` calculates routes and returns the travel time and
  travel distance from each departure position to each destination position in the
  request. For example, given departure positions A and B, and destination
  positions X and
  Y, `CalculateRouteMatrix` will return time and distance for routes from A to
  X, A to Y, B to X, and B to Y (in that order). The number of results returned
  (and
  routes calculated) will be the number of `DeparturePositions` times the
  number of `DestinationPositions`.

  Your account is charged for each route calculated, not the number of
  requests.

  Requires that you first [create a route calculator
  resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day
  to travel with the best traffic conditions when calculating routes.

  Additional options include:

    *

  [ Specifying a departure
  time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
  using either `DepartureTime` or
  `DepartNow`. This calculates routes based on predictive traffic
  data at the given time.

  You can't specify both `DepartureTime` and
  `DepartNow` in a single request. Specifying both parameters
  returns a validation error.

    *

  [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate
  the routes. This also lets you specify additional route preferences in
  `CarModeOptions` if traveling by `Car`, or
  `TruckModeOptions` if traveling by `Truck`.
  """
  @spec calculate_route_matrix(map(), String.t(), calculate_route_matrix_request(), list()) ::
          {:ok, calculate_route_matrix_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, calculate_route_matrix_errors()}
  def calculate_route_matrix(%Client{} = client, calculator_name, input, options \\ []) do
    url_path =
      "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}/calculate/route-matrix"

    headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "routes.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a geofence collection, which manages and stores geofences.
  """
  @spec create_geofence_collection(map(), create_geofence_collection_request(), list()) ::
          {:ok, create_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_geofence_collection_errors()}
  def create_geofence_collection(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/collections"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an API key resource in your Amazon Web Services account, which lets you
  grant
  actions for Amazon Location resources to the API key bearer.

  For more information, see [Using API keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).
  """
  @spec create_key(map(), create_key_request(), list()) ::
          {:ok, create_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_key_errors()}
  def create_key(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/keys"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a map resource in your Amazon Web Services account, which provides map
  tiles of different
  styles sourced from global location data providers.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_map(map(), create_map_request(), list()) ::
          {:ok, create_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_map_errors()}
  def create_map(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/maps"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a place index resource in your Amazon Web Services account.

  Use a place index resource to
  geocode addresses and other text queries by using the
  `SearchPlaceIndexForText` operation, and reverse geocode coordinates by
  using the `SearchPlaceIndexForPosition` operation, and enable autosuggestions
  by using the `SearchPlaceIndexForSuggestions` operation.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_place_index(map(), create_place_index_request(), list()) ::
          {:ok, create_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_place_index_errors()}
  def create_place_index(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/indexes"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a route calculator resource in your Amazon Web Services account.

  You can send requests to a route calculator resource to estimate travel time,
  distance, and get directions. A route calculator sources traffic and road
  network data
  from your chosen data provider.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_route_calculator(map(), create_route_calculator_request(), list()) ::
          {:ok, create_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_calculator_errors()}
  def create_route_calculator(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/calculators"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a tracker resource in your Amazon Web Services account, which lets you
  retrieve current and
  historical location of devices.
  """
  @spec create_tracker(map(), create_tracker_request(), list()) ::
          {:ok, create_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tracker_errors()}
  def create_tracker(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/trackers"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a geofence collection from your Amazon Web Services account.

  This operation deletes the resource permanently. If the geofence collection is
  the
  target of a tracker resource, the devices will no longer be monitored.
  """
  @spec delete_geofence_collection(
          map(),
          String.t(),
          delete_geofence_collection_request(),
          list()
        ) ::
          {:ok, delete_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_geofence_collection_errors()}
  def delete_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified API key.

  The API key must have been deactivated more than
  90 days previously.
  """
  @spec delete_key(map(), String.t(), delete_key_request(), list()) ::
          {:ok, delete_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_key_errors()}
  def delete_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []

    {query_params, input} =
      [
        {"ForceDelete", "forceDelete"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a map resource from your Amazon Web Services account.

  This operation deletes the resource permanently. If the map is being used in an
  application,
  the map may not render.
  """
  @spec delete_map(map(), String.t(), delete_map_request(), list()) ::
          {:ok, delete_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_map_errors()}
  def delete_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a place index resource from your Amazon Web Services account.

  This operation deletes the resource permanently.
  """
  @spec delete_place_index(map(), String.t(), delete_place_index_request(), list()) ::
          {:ok, delete_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_place_index_errors()}
  def delete_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a route calculator resource from your Amazon Web Services account.

  This operation deletes the resource permanently.
  """
  @spec delete_route_calculator(map(), String.t(), delete_route_calculator_request(), list()) ::
          {:ok, delete_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_calculator_errors()}
  def delete_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a tracker resource from your Amazon Web Services account.

  This operation deletes the resource permanently. If the tracker resource is in
  use, you may
  encounter an error. Make sure that the target resource isn't a dependency for
  your
  applications.
  """
  @spec delete_tracker(map(), String.t(), delete_tracker_request(), list()) ::
          {:ok, delete_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tracker_errors()}
  def delete_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the geofence collection details.
  """
  @spec describe_geofence_collection(map(), String.t(), list()) ::
          {:ok, describe_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_geofence_collection_errors()}
  def describe_geofence_collection(%Client{} = client, collection_name, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the API key resource details.
  """
  @spec describe_key(map(), String.t(), list()) ::
          {:ok, describe_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_key_errors()}
  def describe_key(%Client{} = client, key_name, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the map resource details.
  """
  @spec describe_map(map(), String.t(), list()) ::
          {:ok, describe_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_map_errors()}
  def describe_map(%Client{} = client, map_name, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the place index resource details.
  """
  @spec describe_place_index(map(), String.t(), list()) ::
          {:ok, describe_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_place_index_errors()}
  def describe_place_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the route calculator resource details.
  """
  @spec describe_route_calculator(map(), String.t(), list()) ::
          {:ok, describe_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_route_calculator_errors()}
  def describe_route_calculator(%Client{} = client, calculator_name, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the tracker resource details.
  """
  @spec describe_tracker(map(), String.t(), list()) ::
          {:ok, describe_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tracker_errors()}
  def describe_tracker(%Client{} = client, tracker_name, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the association between a tracker resource and a geofence collection.

  Once you unlink a tracker resource from a geofence collection, the tracker
  positions will no longer be automatically evaluated against geofences.
  """
  @spec disassociate_tracker_consumer(
          map(),
          String.t(),
          String.t(),
          disassociate_tracker_consumer_request(),
          list()
        ) ::
          {:ok, disassociate_tracker_consumer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_tracker_consumer_errors()}
  def disassociate_tracker_consumer(
        %Client{} = client,
        consumer_arn,
        tracker_name,
        input,
        options \\ []
      ) do
    url_path =
      "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/consumers/#{AWS.Util.encode_uri(consumer_arn)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a device's most recent position according to its sample time.

  Device positions are deleted after 30 days.
  """
  @spec get_device_position(map(), String.t(), String.t(), list()) ::
          {:ok, get_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_position_errors()}
  def get_device_position(%Client{} = client, device_id, tracker_name, options \\ []) do
    url_path =
      "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/devices/#{AWS.Util.encode_uri(device_id)}/positions/latest"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the device position history from a tracker resource within a specified
  range
  of time.

  Device positions are deleted after 30 days.
  """
  @spec get_device_position_history(
          map(),
          String.t(),
          String.t(),
          get_device_position_history_request(),
          list()
        ) ::
          {:ok, get_device_position_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_position_history_errors()}
  def get_device_position_history(
        %Client{} = client,
        device_id,
        tracker_name,
        input,
        options \\ []
      ) do
    url_path =
      "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/devices/#{AWS.Util.encode_uri(device_id)}/list-positions"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the geofence details from a geofence collection.
  """
  @spec get_geofence(map(), String.t(), String.t(), list()) ::
          {:ok, get_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_geofence_errors()}
  def get_geofence(%Client{} = client, collection_name, geofence_id, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/geofences/#{AWS.Util.encode_uri(geofence_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves glyphs used to display labels on a map.
  """
  @spec get_map_glyphs(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_map_glyphs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_map_glyphs_errors()}
  def get_map_glyphs(
        %Client{} = client,
        font_stack,
        font_unicode_range,
        map_name,
        key \\ nil,
        options \\ []
      ) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/glyphs/#{AWS.Util.encode_uri(font_stack)}/#{AWS.Util.encode_uri(font_unicode_range)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Cache-Control", "CacheControl"}, {"Content-Type", "ContentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the sprite sheet corresponding to a map resource.

  The sprite sheet is a PNG
  image paired with a JSON document describing the offsets of individual icons
  that will
  be displayed on a rendered map.
  """
  @spec get_map_sprites(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_map_sprites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_map_sprites_errors()}
  def get_map_sprites(%Client{} = client, file_name, map_name, key \\ nil, options \\ []) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/sprites/#{AWS.Util.encode_uri(file_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Cache-Control", "CacheControl"}, {"Content-Type", "ContentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the map style descriptor from a map resource.

  The style descriptor contains speciﬁcations on how features render on a map. For
  example, what data to display, what order to display the data in, and the style
  for the
  data. Style descriptors follow the Mapbox Style Specification.
  """
  @spec get_map_style_descriptor(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_map_style_descriptor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_map_style_descriptor_errors()}
  def get_map_style_descriptor(%Client{} = client, map_name, key \\ nil, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/style-descriptor"
    headers = []
    query_params = []

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Cache-Control", "CacheControl"}, {"Content-Type", "ContentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a vector data tile from the map resource.

  Map tiles are used by clients to
  render a map. they're addressed using a grid arrangement with an X coordinate, Y
  coordinate, and Z (zoom) level.

  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1
  doubles
  both the X and Y dimensions, so a tile containing data for the entire world at
  (0/0/0)
  will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
  """
  @spec get_map_tile(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_map_tile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_map_tile_errors()}
  def get_map_tile(%Client{} = client, map_name, x, y, z, key \\ nil, options \\ []) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/tiles/#{AWS.Util.encode_uri(z)}/#{AWS.Util.encode_uri(x)}/#{AWS.Util.encode_uri(y)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Cache-Control", "CacheControl"}, {"Content-Type", "ContentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Finds a place by its unique ID.

  A `PlaceId` is returned by other search
  operations.

  A PlaceId is valid only if all of the following are the same in the original
  search request and the call to `GetPlace`.

    
  Customer Amazon Web Services account

    
  Amazon Web Services Region

    
  Data provider specified in the place index resource
  """
  @spec get_place(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_place_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_place_errors()}
  def get_place(
        %Client{} = client,
        index_name,
        place_id,
        key \\ nil,
        language \\ nil,
        options \\ []
      ) do
    url_path =
      "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/places/#{AWS.Util.encode_uri(place_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(language) do
        [{"language", language} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A batch request to retrieve all device positions.
  """
  @spec list_device_positions(map(), String.t(), list_device_positions_request(), list()) ::
          {:ok, list_device_positions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_positions_errors()}
  def list_device_positions(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-positions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists geofence collections in your Amazon Web Services account.
  """
  @spec list_geofence_collections(map(), list_geofence_collections_request(), list()) ::
          {:ok, list_geofence_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_geofence_collections_errors()}
  def list_geofence_collections(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/list-collections"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists geofences stored in a given geofence collection.
  """
  @spec list_geofences(map(), String.t(), list_geofences_request(), list()) ::
          {:ok, list_geofences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_geofences_errors()}
  def list_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/list-geofences"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists API key resources in your Amazon Web Services account.
  """
  @spec list_keys(map(), list_keys_request(), list()) ::
          {:ok, list_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keys_errors()}
  def list_keys(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/list-keys"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists map resources in your Amazon Web Services account.
  """
  @spec list_maps(map(), list_maps_request(), list()) ::
          {:ok, list_maps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_maps_errors()}
  def list_maps(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/list-maps"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists place index resources in your Amazon Web Services account.
  """
  @spec list_place_indexes(map(), list_place_indexes_request(), list()) ::
          {:ok, list_place_indexes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_place_indexes_errors()}
  def list_place_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/list-indexes"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists route calculator resources in your Amazon Web Services account.
  """
  @spec list_route_calculators(map(), list_route_calculators_request(), list()) ::
          {:ok, list_route_calculators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_route_calculators_errors()}
  def list_route_calculators(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/list-calculators"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of tags that are applied to the specified Amazon Location
  resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists geofence collections currently associated to the given tracker resource.
  """
  @spec list_tracker_consumers(map(), String.t(), list_tracker_consumers_request(), list()) ::
          {:ok, list_tracker_consumers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tracker_consumers_errors()}
  def list_tracker_consumers(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-consumers"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists tracker resources in your Amazon Web Services account.
  """
  @spec list_trackers(map(), list_trackers_request(), list()) ::
          {:ok, list_trackers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trackers_errors()}
  def list_trackers(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/list-trackers"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stores a geofence geometry in a given geofence collection, or updates the
  geometry of
  an existing geofence if a geofence ID is included in the request.
  """
  @spec put_geofence(map(), String.t(), String.t(), put_geofence_request(), list()) ::
          {:ok, put_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_geofence_errors()}
  def put_geofence(%Client{} = client, collection_name, geofence_id, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/geofences/#{AWS.Util.encode_uri(geofence_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Reverse geocodes a given coordinate and returns a legible address.

  Allows you to
  search for Places or points of interest near a given position.
  """
  @spec search_place_index_for_position(
          map(),
          String.t(),
          search_place_index_for_position_request(),
          list()
        ) ::
          {:ok, search_place_index_for_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_place_index_for_position_errors()}
  def search_place_index_for_position(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/position"
    headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates suggestions for addresses and points of interest based on partial or
  misspelled free-form text.

  This operation is also known as autocomplete, autosuggest, or
  fuzzy matching.

  Optional parameters let you narrow your search results by bounding box or
  country, or
  bias your search toward a specific position on the globe.

  You can search for suggested place names near a specified position by using
  `BiasPosition`, or filter results within a bounding box by using
  `FilterBBox`. These parameters are mutually exclusive; using both
  `BiasPosition` and `FilterBBox` in the same command
  returns an error.
  """
  @spec search_place_index_for_suggestions(
          map(),
          String.t(),
          search_place_index_for_suggestions_request(),
          list()
        ) ::
          {:ok, search_place_index_for_suggestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_place_index_for_suggestions_errors()}
  def search_place_index_for_suggestions(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/suggestions"
    headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Geocodes free-form text, such as an address, name, city, or region to allow you
  to
  search for Places or points of interest.

  Optional parameters let you narrow your search results by bounding box or
  country, or
  bias your search toward a specific position on the globe.

  You can search for places near a given position using `BiasPosition`,
  or filter results within a bounding box using `FilterBBox`. Providing
  both parameters simultaneously returns an error.

  Search results are returned in order of highest to lowest relevance.
  """
  @spec search_place_index_for_text(
          map(),
          String.t(),
          search_place_index_for_text_request(),
          list()
        ) ::
          {:ok, search_place_index_for_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_place_index_for_text_errors()}
  def search_place_index_for_text(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/text"
    headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified Amazon Location
  Service
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to
  scope user permissions, by granting a user permission to access or change only
  resources
  with certain tag values.

  You can use the `TagResource` operation with an Amazon Location Service
  resource that already has tags. If you specify a new tag key for the resource,
  this tag
  is appended to the tags already associated with the resource. If you specify a
  tag key
  that's already associated with the resource, the new tag value that you specify
  replaces
  the previous value for that tag.

  You can associate up to 50 tags with a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from the specified Amazon Location resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given geofence collection.
  """
  @spec update_geofence_collection(
          map(),
          String.t(),
          update_geofence_collection_request(),
          list()
        ) ::
          {:ok, update_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_geofence_collection_errors()}
  def update_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given API key resource.
  """
  @spec update_key(map(), String.t(), update_key_request(), list()) ::
          {:ok, update_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_key_errors()}
  def update_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given map resource.
  """
  @spec update_map(map(), String.t(), update_map_request(), list()) ::
          {:ok, update_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_map_errors()}
  def update_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given place index resource.
  """
  @spec update_place_index(map(), String.t(), update_place_index_request(), list()) ::
          {:ok, update_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_place_index_errors()}
  def update_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties for a given route calculator resource.
  """
  @spec update_route_calculator(map(), String.t(), update_route_calculator_request(), list()) ::
          {:ok, update_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_calculator_errors()}
  def update_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given tracker resource.
  """
  @spec update_tracker(map(), String.t(), update_tracker_request(), list()) ::
          {:ok, update_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_tracker_errors()}
  def update_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
