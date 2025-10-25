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
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_geofence_collections_response_entry())
      }

  """
  @type list_geofence_collections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      truck_dimensions() :: %{
        "Height" => float(),
        "Length" => float(),
        "Unit" => String.t() | atom(),
        "Width" => float()
      }

  """
  @type truck_dimensions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_geofence_response() :: %{
        optional("GeofenceProperties") => map(),
        required("CreateTime") => non_neg_integer(),
        required("GeofenceId") => String.t() | atom(),
        required("Geometry") => geofence_geometry(),
        required("Status") => [String.t() | atom()],
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type get_geofence_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_geofence_collection_request() :: %{}

  """
  @type describe_geofence_collection_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_device_position_response() :: %{
        required("Errors") => list(batch_update_device_position_error())
      }

  """
  @type batch_update_device_position_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_device_positions_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_device_positions_response_entry())
      }

  """
  @type list_device_positions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_tracker_consumer_request() :: %{
        required("ConsumerArn") => String.t() | atom()
      }

  """
  @type associate_tracker_consumer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_request() :: %{
        required("Entries") => list(batch_put_geofence_request_entry())
      }

  """
  @type batch_put_geofence_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_car_mode_options() :: %{
        "AvoidFerries" => boolean(),
        "AvoidTolls" => boolean()
      }

  """
  @type calculate_route_car_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_error() :: %{
        "Error" => batch_item_error(),
        "GeofenceId" => String.t() | atom()
      }

  """
  @type batch_put_geofence_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forecasted_event() :: %{
        "EventId" => String.t() | atom(),
        "EventType" => String.t() | atom(),
        "ForecastedBreachTime" => non_neg_integer(),
        "GeofenceId" => String.t() | atom(),
        "GeofenceProperties" => map(),
        "IsDeviceInGeofence" => [boolean()],
        "NearestDistance" => float()
      }

  """
  @type forecasted_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_device_position_error() :: %{
        "DeviceId" => String.t() | atom(),
        "Error" => batch_item_error(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type batch_update_device_position_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_response() :: %{
        required("Errors") => list(batch_delete_geofence_error())
      }

  """
  @type batch_delete_geofence_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_key_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ExpireTime") => non_neg_integer(),
        optional("NoExpiry") => [boolean()],
        optional("Tags") => map(),
        required("KeyName") => String.t() | atom(),
        required("Restrictions") => api_key_restrictions()
      }

  """
  @type create_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_place_index_request() :: %{
        optional("DataSourceConfiguration") => data_source_configuration(),
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("DataSource") => [String.t() | atom()],
        required("IndexName") => String.t() | atom()
      }

  """
  @type create_place_index_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_configuration() :: %{
        "IntendedUse" => String.t() | atom()
      }

  """
  @type data_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_calculator_response() :: %{
        required("CalculatorArn") => String.t() | atom(),
        required("CalculatorName") => String.t() | atom(),
        required("CreateTime") => non_neg_integer()
      }

  """
  @type create_route_calculator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_tracker_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("TrackerArn") => String.t() | atom(),
        required("TrackerName") => String.t() | atom()
      }

  """
  @type create_tracker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_map_tile_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t() | atom()],
        optional("ContentType") => [String.t() | atom()]
      }

  """
  @type get_map_tile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_map_response() :: %{
        required("MapArn") => String.t() | atom(),
        required("MapName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_map_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_maps_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_maps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_route_calculator_response() :: %{}

  """
  @type delete_route_calculator_response() :: %{}

  @typedoc """

  ## Example:

      get_map_glyphs_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t() | atom()],
        "ContentType" => [String.t() | atom()]
      }

  """
  @type get_map_glyphs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_place_index_request() :: %{}

  """
  @type describe_place_index_request() :: %{}

  @typedoc """

  ## Example:

      list_keys_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_keys_response_entry())
      }

  """
  @type list_keys_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_response() :: %{
        "Legs" => list(leg()),
        "Summary" => calculate_route_summary()
      }

  """
  @type calculate_route_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_route_calculators_response_entry() :: %{
        "CalculatorName" => String.t() | atom(),
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t() | atom()],
        "Description" => String.t() | atom(),
        "PricingPlan" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_route_calculators_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_key_response() :: %{
        required("KeyArn") => String.t() | atom(),
        required("KeyName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_response() :: %{
        required("Results") => list(search_for_position_result()),
        required("Summary") => search_place_index_for_position_summary()
      }

  """
  @type search_place_index_for_position_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_maps_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t() | atom()],
        "Description" => String.t() | atom(),
        "MapName" => String.t() | atom(),
        "PricingPlan" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_maps_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trackers_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_trackers_response_entry())
      }

  """
  @type list_trackers_response() :: %{(String.t() | atom()) => any()}

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
  @type delete_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_calculator_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom()
      }

  """
  @type update_route_calculator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_for_position_result() :: %{
        "Distance" => float(),
        "Place" => place(),
        "PlaceId" => String.t() | atom()
      }

  """
  @type search_for_position_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_geofence_request() :: %{
        optional("GeofenceProperties") => map(),
        required("Geometry") => geofence_geometry()
      }

  """
  @type put_geofence_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_success() :: %{
        "CreateTime" => non_neg_integer(),
        "GeofenceId" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type batch_put_geofence_success() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_key_filter() :: %{
        "KeyStatus" => String.t() | atom()
      }

  """
  @type api_key_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t() | atom()]())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_for_suggestions_result() :: %{
        "Categories" => list(String.t() | atom()),
        "PlaceId" => String.t() | atom(),
        "SupplementalCategories" => list(String.t() | atom()),
        "Text" => String.t() | atom()
      }

  """
  @type search_for_suggestions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_tracker_consumer_response() :: %{}

  """
  @type associate_tracker_consumer_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_text_summary() :: %{
        "BiasPosition" => list([float()]()),
        "DataSource" => [String.t() | atom()],
        "FilterBBox" => list([float()]()),
        "FilterCategories" => list(String.t() | atom()),
        "FilterCountries" => list(String.t() | atom()),
        "Language" => String.t() | atom(),
        "MaxResults" => integer(),
        "ResultBBox" => list([float()]()),
        "Text" => String.t() | atom()
      }

  """
  @type search_place_index_for_text_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_error() :: %{
        "Error" => batch_item_error(),
        "GeofenceId" => String.t() | atom()
      }

  """
  @type batch_delete_geofence_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_request() :: %{
        required("DevicePositionUpdates") => list(device_position_update())
      }

  """
  @type batch_evaluate_geofences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_geofences_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_geofence_response_entry())
      }

  """
  @type list_geofences_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_entry_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => [String.t() | atom()]
      }

  """
  @type route_matrix_entry_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_place_index_response() :: %{}

  """
  @type delete_place_index_response() :: %{}

  @typedoc """

  ## Example:

      get_map_sprites_request() :: %{
        optional("Key") => String.t() | atom()
      }

  """
  @type get_map_sprites_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_map_request() :: %{}

  """
  @type delete_map_request() :: %{}

  @typedoc """

  ## Example:

      list_geofence_collections_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_geofence_collections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_map_style_descriptor_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t() | atom()],
        optional("ContentType") => [String.t() | atom()]
      }

  """
  @type get_map_style_descriptor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_key_response() :: %{}

  """
  @type delete_key_response() :: %{}

  @typedoc """

  ## Example:

      list_tracker_consumers_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_tracker_consumers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_device_positions_response_entry() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t() | atom(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type list_device_positions_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_keys_request() :: %{
        optional("Filter") => api_key_filter(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_summary() :: %{
        "DataSource" => [String.t() | atom()],
        "Language" => String.t() | atom(),
        "MaxResults" => integer(),
        "Position" => list([float()]())
      }

  """
  @type search_place_index_for_position_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_place_index_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("IndexArn") => String.t() | atom(),
        required("IndexName") => String.t() | atom()
      }

  """
  @type create_place_index_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_route_calculator_request() :: %{}

  """
  @type delete_route_calculator_request() :: %{}

  @typedoc """

  ## Example:

      update_geofence_collection_response() :: %{
        required("CollectionArn") => String.t() | atom(),
        required("CollectionName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_geofence_collection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_key_request() :: %{}

  """
  @type describe_key_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_geofence_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("GeofenceId") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type put_geofence_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lte_local_id() :: %{
        "Earfcn" => integer(),
        "Pci" => integer()
      }

  """
  @type lte_local_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_geofence_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "GeofenceId" => String.t() | atom(),
        "GeofenceProperties" => map(),
        "Geometry" => geofence_geometry(),
        "Status" => [String.t() | atom()],
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_geofence_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_map_response() :: %{}

  """
  @type delete_map_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_text_response() :: %{
        required("Results") => list(search_for_text_result()),
        required("Summary") => search_place_index_for_text_summary()
      }

  """
  @type search_place_index_for_text_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_map_tile_request() :: %{
        optional("Key") => String.t() | atom()
      }

  """
  @type get_map_tile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_key_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ExpireTime") => non_neg_integer(),
        optional("ForceUpdate") => [boolean()],
        optional("NoExpiry") => [boolean()],
        optional("Restrictions") => api_key_restrictions()
      }

  """
  @type update_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_geofence_collection_response() :: %{
        required("CollectionArn") => String.t() | atom(),
        required("CollectionName") => String.t() | atom(),
        required("CreateTime") => non_neg_integer()
      }

  """
  @type create_geofence_collection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wi_fi_access_point() :: %{
        "MacAddress" => [String.t() | atom()],
        "Rss" => [integer()]
      }

  """
  @type wi_fi_access_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_state() :: %{
        "Accuracy" => positional_accuracy(),
        "CellSignals" => cell_signals(),
        "DeviceId" => String.t() | atom(),
        "Ipv4Address" => [String.t() | atom()],
        "Position" => list([float()]()),
        "SampleTime" => non_neg_integer(),
        "WiFiAccessPoints" => list(wi_fi_access_point())
      }

  """
  @type device_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_tracker_request() :: %{}

  """
  @type describe_tracker_request() :: %{}

  @typedoc """

  ## Example:

      describe_route_calculator_response() :: %{
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("CalculatorArn") => String.t() | atom(),
        required("CalculatorName") => String.t() | atom(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t() | atom()],
        required("Description") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_route_calculator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_map_request() :: %{}

  """
  @type describe_map_request() :: %{}

  @typedoc """

  ## Example:

      map_configuration_update() :: %{
        "CustomLayers" => list(String.t() | atom()),
        "PoliticalView" => String.t() | atom()
      }

  """
  @type map_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_map_request() :: %{
        optional("ConfigurationUpdate") => map_configuration_update(),
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom()
      }

  """
  @type update_map_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      apple_app() :: %{
        "BundleId" => String.t() | atom()
      }

  """
  @type apple_app() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_calculator_response() :: %{
        required("CalculatorArn") => String.t() | atom(),
        required("CalculatorName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_route_calculator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      place_geometry() :: %{
        "Point" => list([float()]())
      }

  """
  @type place_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_request() :: %{
        required("DeviceIds") => list(String.t() | atom())
      }

  """
  @type batch_get_device_position_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_place_indexes_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_place_indexes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      circle() :: %{
        "Center" => list([float()]()),
        "Radius" => float()
      }

  """
  @type circle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_map_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("Configuration") => map_configuration(),
        required("MapName") => String.t() | atom()
      }

  """
  @type create_map_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forecast_geofence_events_device_state() :: %{
        "Position" => list([float()]()),
        "Speed" => [float()]
      }

  """
  @type forecast_geofence_events_device_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verify_device_position_request() :: %{
        optional("DistanceUnit") => String.t() | atom(),
        required("DeviceState") => device_state()
      }

  """
  @type verify_device_position_request() :: %{(String.t() | atom()) => any()}

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
        optional("FilterCategories") => list(String.t() | atom()),
        optional("FilterCountries") => list(String.t() | atom()),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => integer(),
        required("Text") => String.t() | atom()
      }

  """
  @type search_place_index_for_text_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_place_request() :: %{
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom()
      }

  """
  @type get_place_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_zone() :: %{
        "Name" => String.t() | atom(),
        "Offset" => integer()
      }

  """
  @type time_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_geofence_collection_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()]
      }

  """
  @type update_geofence_collection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_geofence_collection_request() :: %{}

  """
  @type delete_geofence_collection_request() :: %{}

  @typedoc """

  ## Example:

      batch_item_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => [String.t() | atom()]
      }

  """
  @type batch_item_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_map_response() :: %{
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("Configuration") => map_configuration(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t() | atom()],
        required("Description") => String.t() | atom(),
        required("MapArn") => String.t() | atom(),
        required("MapName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_map_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_summary() :: %{
        "BiasPosition" => list([float()]()),
        "DataSource" => [String.t() | atom()],
        "FilterBBox" => list([float()]()),
        "FilterCategories" => list(String.t() | atom()),
        "FilterCountries" => list(String.t() | atom()),
        "Language" => String.t() | atom(),
        "MaxResults" => [integer()],
        "Text" => String.t() | atom()
      }

  """
  @type search_place_index_for_suggestions_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_place_index_response() :: %{
        required("IndexArn") => String.t() | atom(),
        required("IndexName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_place_index_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_calculator_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("CalculatorName") => String.t() | atom(),
        required("DataSource") => [String.t() | atom()]
      }

  """
  @type create_route_calculator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_place_indexes_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "DataSource" => [String.t() | atom()],
        "Description" => String.t() | atom(),
        "IndexName" => String.t() | atom(),
        "PricingPlan" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_place_indexes_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_position_history_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("DevicePositions") => list(device_position())
      }

  """
  @type get_device_position_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_response() :: %{
        required("Errors") => list(batch_evaluate_geofences_error())
      }

  """
  @type batch_evaluate_geofences_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_map_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("MapArn") => String.t() | atom(),
        required("MapName") => String.t() | atom()
      }

  """
  @type create_map_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forecast_geofence_events_request() :: %{
        optional("DistanceUnit") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom(),
        optional("SpeedUnit") => String.t() | atom(),
        optional("TimeHorizonMinutes") => [float()],
        required("DeviceState") => forecast_geofence_events_device_state()
      }

  """
  @type forecast_geofence_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_key_restrictions() :: %{
        "AllowActions" => list(String.t() | atom()),
        "AllowAndroidApps" => list(android_app()),
        "AllowAppleApps" => list(apple_app()),
        "AllowReferers" => list(String.t() | atom()),
        "AllowResources" => list(String.t() | atom())
      }

  """
  @type api_key_restrictions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_tracker_response() :: %{
        required("TrackerArn") => String.t() | atom(),
        required("TrackerName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type update_tracker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_place_indexes_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_place_indexes_response_entry())
      }

  """
  @type list_place_indexes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_route_calculators_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_route_calculators_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_maps_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_maps_response_entry())
      }

  """
  @type list_maps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_geofence_request_entry() :: %{
        "GeofenceId" => String.t() | atom(),
        "GeofenceProperties" => map(),
        "Geometry" => geofence_geometry()
      }

  """
  @type batch_put_geofence_request_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_tracker_request() :: %{}

  """
  @type delete_tracker_request() :: %{}

  @typedoc """

  ## Example:

      get_map_sprites_response() :: %{
        optional("Blob") => [binary()],
        optional("CacheControl") => [String.t() | atom()],
        optional("ContentType") => [String.t() | atom()]
      }

  """
  @type get_map_sprites_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_place_index_response() :: %{
        optional("PricingPlan") => String.t() | atom(),
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("DataSource") => [String.t() | atom()],
        required("DataSourceConfiguration") => data_source_configuration(),
        required("Description") => String.t() | atom(),
        required("IndexArn") => String.t() | atom(),
        required("IndexName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_place_index_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_truck_mode_options() :: %{
        "AvoidFerries" => boolean(),
        "AvoidTolls" => boolean(),
        "Dimensions" => truck_dimensions(),
        "Weight" => truck_weight()
      }

  """
  @type calculate_route_truck_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_tracker_response() :: %{
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("KmsKeyId") => String.t() | atom(),
        optional("PositionFiltering") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()],
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("Description") => String.t() | atom(),
        required("TrackerArn") => String.t() | atom(),
        required("TrackerName") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_tracker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_tracker_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("KmsKeyId") => String.t() | atom(),
        optional("PositionFiltering") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()],
        optional("Tags") => map(),
        required("TrackerName") => String.t() | atom()
      }

  """
  @type create_tracker_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_geofence_collection_response() :: %{
        optional("GeofenceCount") => [integer()],
        optional("KmsKeyId") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()],
        optional("Tags") => map(),
        required("CollectionArn") => String.t() | atom(),
        required("CollectionName") => String.t() | atom(),
        required("CreateTime") => non_neg_integer(),
        required("Description") => String.t() | atom(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_geofence_collection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_response() :: %{
        "RouteMatrix" => list(list(route_matrix_entry())()),
        "SnappedDeparturePositions" => list(list([float()]())()),
        "SnappedDestinationPositions" => list(list([float()]())()),
        "Summary" => calculate_route_matrix_summary()
      }

  """
  @type calculate_route_matrix_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      android_app() :: %{
        "CertificateFingerprint" => String.t() | atom(),
        "Package" => String.t() | atom()
      }

  """
  @type android_app() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_error() :: %{
        "DeviceId" => String.t() | atom(),
        "Error" => batch_item_error()
      }

  """
  @type batch_get_device_position_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_request() :: %{
        optional("ArrivalTime") => non_neg_integer(),
        optional("CarModeOptions") => calculate_route_car_mode_options(),
        optional("DepartNow") => boolean(),
        optional("DepartureTime") => non_neg_integer(),
        optional("DistanceUnit") => String.t() | atom(),
        optional("IncludeLegGeometry") => boolean(),
        optional("Key") => String.t() | atom(),
        optional("OptimizeFor") => String.t() | atom(),
        optional("TravelMode") => String.t() | atom(),
        optional("TruckModeOptions") => calculate_route_truck_mode_options(),
        optional("WaypointPositions") => list(list([float()]())()),
        required("DeparturePosition") => list([float()]()),
        required("DestinationPosition") => list([float()]())
      }

  """
  @type calculate_route_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | atom()],
        "Reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      batch_put_geofence_response() :: %{
        required("Errors") => list(batch_put_geofence_error()),
        required("Successes") => list(batch_put_geofence_success())
      }

  """
  @type batch_put_geofence_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_error() :: %{
        "DeviceId" => String.t() | atom(),
        "Error" => batch_item_error()
      }

  """
  @type batch_delete_device_position_history_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_place_response() :: %{
        required("Place") => place()
      }

  """
  @type get_place_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_device_position_response() :: %{
        required("DevicePositions") => list(device_position()),
        required("Errors") => list(batch_get_device_position_error())
      }

  """
  @type batch_get_device_position_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_tracker_consumer_response() :: %{}

  """
  @type disassociate_tracker_consumer_response() :: %{}

  @typedoc """

  ## Example:

      truck_weight() :: %{
        "Total" => float(),
        "Unit" => String.t() | atom()
      }

  """
  @type truck_weight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_key_response() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("CreateTime") => non_neg_integer(),
        required("ExpireTime") => non_neg_integer(),
        required("Key") => String.t() | atom(),
        required("KeyArn") => String.t() | atom(),
        required("KeyName") => String.t() | atom(),
        required("Restrictions") => api_key_restrictions(),
        required("UpdateTime") => non_neg_integer()
      }

  """
  @type describe_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_device_position_request() :: %{
        required("Updates") => list(device_position_update())
      }

  """
  @type batch_update_device_position_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_position_update() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t() | atom(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type device_position_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lte_cell_details() :: %{
        "CellId" => integer(),
        "LocalId" => lte_local_id(),
        "Mcc" => [integer()],
        "Mnc" => [integer()],
        "NetworkMeasurements" => list(lte_network_measurements()),
        "NrCapable" => [boolean()],
        "Rsrp" => integer(),
        "Rsrq" => float(),
        "Tac" => [integer()],
        "TimingAdvance" => [integer()]
      }

  """
  @type lte_cell_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cell_signals() :: %{
        "LteCellDetails" => list(lte_cell_details())
      }

  """
  @type cell_signals() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_summary() :: %{
        "DataSource" => [String.t() | atom()],
        "DistanceUnit" => String.t() | atom(),
        "ErrorCount" => [integer()],
        "RouteCount" => [integer()]
      }

  """
  @type calculate_route_matrix_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_geofence_request() :: %{
        required("GeofenceIds") => list(String.t() | atom())
      }

  """
  @type batch_delete_geofence_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_keys_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ExpireTime" => non_neg_integer(),
        "KeyName" => String.t() | atom(),
        "Restrictions" => api_key_restrictions(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_keys_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_summary() :: %{
        "DataSource" => [String.t() | atom()],
        "Distance" => float(),
        "DistanceUnit" => String.t() | atom(),
        "DurationSeconds" => float(),
        "RouteBBox" => list([float()]())
      }

  """
  @type calculate_route_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lte_network_measurements() :: %{
        "CellId" => integer(),
        "Earfcn" => integer(),
        "Pci" => integer(),
        "Rsrp" => integer(),
        "Rsrq" => float()
      }

  """
  @type lte_network_measurements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      map_configuration() :: %{
        "CustomLayers" => list(String.t() | atom()),
        "PoliticalView" => String.t() | atom(),
        "Style" => String.t() | atom()
      }

  """
  @type map_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      positional_accuracy() :: %{
        "Horizontal" => float()
      }

  """
  @type positional_accuracy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_position() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviceId" => String.t() | atom(),
        "Position" => list([float()]()),
        "PositionProperties" => map(),
        "ReceivedTime" => non_neg_integer(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type device_position() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_geofence_collection_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()],
        optional("Tags") => map(),
        required("CollectionName") => String.t() | atom()
      }

  """
  @type create_geofence_collection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "Distance" => float(),
        "DurationSeconds" => float(),
        "EndPosition" => list([float()]()),
        "GeometryOffset" => [integer()],
        "StartPosition" => list([float()]())
      }

  """
  @type step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tracker_consumers_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ConsumerArns") => list(String.t() | atom())
      }

  """
  @type list_tracker_consumers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_map_style_descriptor_request() :: %{
        optional("Key") => String.t() | atom()
      }

  """
  @type get_map_style_descriptor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tracking_filter_geometry() :: %{
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type tracking_filter_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_for_text_result() :: %{
        "Distance" => float(),
        "Place" => place(),
        "PlaceId" => String.t() | atom(),
        "Relevance" => float()
      }

  """
  @type search_for_text_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trackers_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_trackers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verify_device_position_response() :: %{
        "DeviceId" => String.t() | atom(),
        "DistanceUnit" => String.t() | atom(),
        "InferredState" => inferred_state(),
        "ReceivedTime" => non_neg_integer(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type verify_device_position_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_place_index_request() :: %{}

  """
  @type delete_place_index_request() :: %{}

  @typedoc """

  ## Example:

      update_tracker_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EventBridgeEnabled") => [boolean()],
        optional("KmsKeyEnableGeospatialQueries") => [boolean()],
        optional("PositionFiltering") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom(),
        optional("PricingPlanDataSource") => [String.t() | atom()]
      }

  """
  @type update_tracker_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_device_positions_request() :: %{
        optional("FilterGeometry") => tracking_filter_geometry(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_device_positions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      leg_geometry() :: %{
        "LineString" => list(list([float()]())())
      }

  """
  @type leg_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geofence_geometry() :: %{
        "Circle" => circle(),
        "Geobuf" => binary(),
        "MultiPolygon" => list(list(list(list([float()]())())())()),
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type geofence_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_geofence_request() :: %{}

  """
  @type get_geofence_request() :: %{}

  @typedoc """

  ## Example:

      list_route_calculators_response() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Entries") => list(list_route_calculators_response_entry())
      }

  """
  @type list_route_calculators_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_position_history_request() :: %{
        optional("EndTimeExclusive") => non_neg_integer(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom(),
        optional("StartTimeInclusive") => non_neg_integer()
      }

  """
  @type get_device_position_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_entry() :: %{
        "Distance" => float(),
        "DurationSeconds" => float(),
        "Error" => route_matrix_entry_error()
      }

  """
  @type route_matrix_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inferred_state() :: %{
        "Accuracy" => positional_accuracy(),
        "DeviationDistance" => [float()],
        "Position" => list([float()]()),
        "ProxyDetected" => [boolean()]
      }

  """
  @type inferred_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_position_response() :: %{
        optional("Accuracy") => positional_accuracy(),
        optional("DeviceId") => String.t() | atom(),
        optional("PositionProperties") => map(),
        required("Position") => list([float()]()),
        required("ReceivedTime") => non_neg_integer(),
        required("SampleTime") => non_neg_integer()
      }

  """
  @type get_device_position_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_request() :: %{
        optional("BiasPosition") => list([float()]()),
        optional("FilterBBox") => list([float()]()),
        optional("FilterCategories") => list(String.t() | atom()),
        optional("FilterCountries") => list(String.t() | atom()),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        required("Text") => String.t() | atom()
      }

  """
  @type search_place_index_for_suggestions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_response() :: %{
        required("Errors") => list(batch_delete_device_position_history_error())
      }

  """
  @type batch_delete_device_position_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_tracker_response() :: %{}

  """
  @type delete_tracker_response() :: %{}

  @typedoc """

  ## Example:

      search_place_index_for_suggestions_response() :: %{
        required("Results") => list(search_for_suggestions_result()),
        required("Summary") => search_place_index_for_suggestions_summary()
      }

  """
  @type search_place_index_for_suggestions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_map_glyphs_request() :: %{
        optional("Key") => String.t() | atom()
      }

  """
  @type get_map_glyphs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      leg() :: %{
        "Distance" => float(),
        "DurationSeconds" => float(),
        "EndPosition" => list([float()]()),
        "Geometry" => leg_geometry(),
        "StartPosition" => list([float()]()),
        "Steps" => list(step())
      }

  """
  @type leg() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      place() :: %{
        "AddressNumber" => String.t() | atom(),
        "Categories" => list(String.t() | atom()),
        "Country" => String.t() | atom(),
        "Geometry" => place_geometry(),
        "Interpolated" => boolean(),
        "Label" => String.t() | atom(),
        "Municipality" => String.t() | atom(),
        "Neighborhood" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "Street" => String.t() | atom(),
        "SubMunicipality" => String.t() | atom(),
        "SubRegion" => String.t() | atom(),
        "SupplementalCategories" => list(String.t() | atom()),
        "TimeZone" => time_zone(),
        "UnitNumber" => String.t() | atom(),
        "UnitType" => String.t() | atom()
      }

  """
  @type place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_evaluate_geofences_error() :: %{
        "DeviceId" => String.t() | atom(),
        "Error" => batch_item_error(),
        "SampleTime" => non_neg_integer()
      }

  """
  @type batch_evaluate_geofences_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_geofence_collections_response_entry() :: %{
        "CollectionName" => String.t() | atom(),
        "CreateTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "PricingPlan" => String.t() | atom(),
        "PricingPlanDataSource" => [String.t() | atom()],
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_geofence_collections_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_place_index_request() :: %{
        optional("DataSourceConfiguration") => data_source_configuration(),
        optional("Description") => String.t() | atom(),
        optional("PricingPlan") => String.t() | atom()
      }

  """
  @type update_place_index_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_key_response() :: %{
        required("CreateTime") => non_neg_integer(),
        required("Key") => String.t() | atom(),
        required("KeyArn") => String.t() | atom(),
        required("KeyName") => String.t() | atom()
      }

  """
  @type create_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_place_index_for_position_request() :: %{
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => integer(),
        required("Position") => list([float()]())
      }

  """
  @type search_place_index_for_position_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_request() :: %{
        optional("CarModeOptions") => calculate_route_car_mode_options(),
        optional("DepartNow") => boolean(),
        optional("DepartureTime") => non_neg_integer(),
        optional("DistanceUnit") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("TravelMode") => String.t() | atom(),
        optional("TruckModeOptions") => calculate_route_truck_mode_options(),
        required("DeparturePositions") => list(list([float()]())()),
        required("DestinationPositions") => list(list([float()]())())
      }

  """
  @type calculate_route_matrix_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_geofence_collection_response() :: %{}

  """
  @type delete_geofence_collection_response() :: %{}

  @typedoc """

  ## Example:

      list_geofences_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_geofences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trackers_response_entry() :: %{
        "CreateTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "PricingPlan" => String.t() | atom(),
        "PricingPlanDataSource" => [String.t() | atom()],
        "TrackerName" => String.t() | atom(),
        "UpdateTime" => non_neg_integer()
      }

  """
  @type list_trackers_response_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forecast_geofence_events_response() :: %{
        "DistanceUnit" => String.t() | atom(),
        "ForecastedEvents" => list(forecasted_event()),
        "NextToken" => String.t() | atom(),
        "SpeedUnit" => String.t() | atom()
      }

  """
  @type forecast_geofence_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_device_position_history_request() :: %{
        required("DeviceIds") => list(String.t() | atom())
      }

  """
  @type batch_delete_device_position_history_request() :: %{(String.t() | atom()) => any()}

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

  @type forecast_geofence_events_errors() ::
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

  @type verify_device_position_errors() ::
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
      hostname: nil,
      protocol: "rest-json",
      service_id: "Location",
      signature_version: "v4",
      signing_name: "geo",
      target_prefix: nil
    }
  end

  @doc """
  Creates an association between a geofence collection and a tracker resource.

  This allows the tracker resource to communicate location data to the linked
  geofence collection.

  You can associate up to five geofence collections to each tracker resource.

  Currently not supported — Cross-account configurations, such as creating
  associations between a tracker resource in one account and a geofence collection
  in another account.
  """
  @spec associate_tracker_consumer(
          map(),
          String.t() | atom(),
          associate_tracker_consumer_request(),
          list()
        ) ::
          {:ok, associate_tracker_consumer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_tracker_consumer_errors()}
  def associate_tracker_consumer(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/consumers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  Deletes the position history of one or more devices from a tracker resource.
  """
  @spec batch_delete_device_position_history(
          map(),
          String.t() | atom(),
          batch_delete_device_position_history_request(),
          list()
        ) ::
          {:ok, batch_delete_device_position_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_device_position_history_errors()}
  def batch_delete_device_position_history(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/delete-positions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  Deletes a batch of geofences from a geofence collection.

  This operation deletes the resource permanently.
  """
  @spec batch_delete_geofence(map(), String.t() | atom(), batch_delete_geofence_request(), list()) ::
          {:ok, batch_delete_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_geofence_errors()}
  def batch_delete_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/delete-geofences"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  Evaluates device positions against the geofence geometries from a given geofence
  collection.

  This operation always returns an empty response because geofences are
  asynchronously evaluated. The evaluation determines if the device has entered or
  exited a geofenced area, and then publishes one of the following events to
  Amazon EventBridge:

    * `ENTER` if Amazon Location determines that the tracked device has
  entered a geofenced area.

    * `EXIT` if Amazon Location determines that the tracked device has
  exited a geofenced area.

  The last geofence that a device was observed within is tracked for 30 days after
  the most recent device position update.

  Geofence evaluation uses the given device position. It does not account for the
  optional `Accuracy` of a `DevicePositionUpdate`.

  The `DeviceID` is used as a string to represent the device. You do not need to
  have a `Tracker` associated with the `DeviceID`.
  """
  @spec batch_evaluate_geofences(
          map(),
          String.t() | atom(),
          batch_evaluate_geofences_request(),
          list()
        ) ::
          {:ok, batch_evaluate_geofences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_evaluate_geofences_errors()}
  def batch_evaluate_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/positions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  Lists the latest device positions for requested devices.
  """
  @spec batch_get_device_position(
          map(),
          String.t() | atom(),
          batch_get_device_position_request(),
          list()
        ) ::
          {:ok, batch_get_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_device_position_errors()}
  def batch_get_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/get-positions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  A batch request for storing geofence geometries into a given geofence
  collection, or updates the geometry of an existing geofence if a geofence ID is
  included in the request.
  """
  @spec batch_put_geofence(map(), String.t() | atom(), batch_put_geofence_request(), list()) ::
          {:ok, batch_put_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_geofence_errors()}
  def batch_put_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/put-geofences"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  Uploads position update data for one or more devices to a tracker resource (up
  to 10 devices per batch).

  Amazon Location uses the data when it reports the last known device position and
  position history. Amazon Location retains location data for 30 days.

  Position updates are handled based on the `PositionFiltering` property of the
  tracker. When `PositionFiltering` is set to `TimeBased`, updates are evaluated
  against linked geofence collections, and location data is stored at a maximum of
  one position per 30 second interval. If your update frequency is more often than
  every 30 seconds, only one update per 30 seconds is stored for each unique
  device ID.

  When `PositionFiltering` is set to `DistanceBased` filtering, location data is
  stored and evaluated against linked geofence collections only if the device has
  moved more than 30 m (98.4 ft).

  When `PositionFiltering` is set to `AccuracyBased` filtering, location data is
  stored and evaluated against linked geofence collections only if the device has
  moved more than the measured accuracy. For example, if two consecutive updates
  from a device have a horizontal accuracy of 5 m and 10 m, the second update is
  neither stored or evaluated if the device has moved less than 15 m. If
  `PositionFiltering` is set to `AccuracyBased` filtering, Amazon Location uses
  the default value `{ "Horizontal": 0}` when accuracy is not provided on a
  `DevicePositionUpdate`.
  """
  @spec batch_update_device_position(
          map(),
          String.t() | atom(),
          batch_update_device_position_request(),
          list()
        ) ::
          {:ok, batch_update_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_device_position_errors()}
  def batch_update_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/positions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to [ `CalculateRoutes`
  ](/location/latest/APIReference/API_CalculateRoutes.html) or [
  `CalculateIsolines` ](/location/latest/APIReference/API_CalculateIsolines.html)
  unless you require Grab data.

     `CalculateRoute` is part of a previous Amazon Location Service
  Routes API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The version 2 `CalculateRoutes` operation gives better results for
  point-to-point routing, while the version 2 `CalculateIsolines` operation adds
  support for calculating service areas and travel time envelopes.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

  [Calculates a route](https://docs.aws.amazon.com/location/previous/developerguide/calculate-route.html)
  given the following required parameters: `DeparturePosition` and
  `DestinationPosition`. Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day to travel with the best traffic conditions when calculating the route.

  Additional options include:

    * [Specifying a departure time](https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html)
  using either `DepartureTime` or `DepartNow`. This calculates a route based on
  predictive traffic data at the given time.

  You can't specify both `DepartureTime` and `DepartNow` in a single request.
  Specifying both parameters returns a validation error.

    * [Specifying a travel mode](https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate the routes. This
  also lets you specify additional route preferences in `CarModeOptions` if
  traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.

  If you specify `walking` for the travel mode and your data provider is Esri, the
  start and destination must be within 40km.
  """
  @spec calculate_route(map(), String.t() | atom(), calculate_route_request(), list()) ::
          {:ok, calculate_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_route_errors()}
  def calculate_route(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}/calculate/route"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the [V2 `CalculateRouteMatrix`
  ](/location/latest/APIReference/API_CalculateRouteMatrix.html) unless you
  require Grab data.

     This version of `CalculateRouteMatrix` is part of a previous Amazon
  Location Service Routes API (version 1) which has been superseded by a more
  intuitive, powerful, and complete API (version 2).

     The version 2 `CalculateRouteMatrix` operation gives better results
  for matrix routing calculations.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html). 
  [ Calculates a route
  matrix](https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html)
  given the following required parameters: `DeparturePositions` and
  `DestinationPositions`. `CalculateRouteMatrix` calculates routes and returns the
  travel time and travel distance from each departure position to each destination
  position in the request. For example, given departure positions A and B, and
  destination positions X and Y, `CalculateRouteMatrix` will return time and
  distance for routes from A to X, A to Y, B to X, and B to Y (in that order). The
  number of results returned (and routes calculated) will be the number of
  `DeparturePositions` times the number of `DestinationPositions`.

  Your account is charged for each route calculated, not the number of requests.

  Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day to travel with the best traffic conditions when calculating routes.

  Additional options include:

    * [ Specifying a departure time](https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html)
  using either `DepartureTime` or `DepartNow`. This calculates routes based on
  predictive traffic data at the given time.

  You can't specify both `DepartureTime` and `DepartNow` in a single request.
  Specifying both parameters returns a validation error.

    * [Specifying a travel mode](https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate the routes. This
  also lets you specify additional route preferences in `CarModeOptions` if
  traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.
  """
  @spec calculate_route_matrix(
          map(),
          String.t() | atom(),
          calculate_route_matrix_request(),
          list()
        ) ::
          {:ok, calculate_route_matrix_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_route_matrix_errors()}
  def calculate_route_matrix(%Client{} = client, calculator_name, input, options \\ []) do
    url_path =
      "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}/calculate/route-matrix"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, create_geofence_collection_errors()}
  def create_geofence_collection(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/collections"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

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
  Creates an API key resource in your Amazon Web Services account, which lets you
  grant actions for Amazon Location resources to the API key bearer.

  For more information, see [Use API keys to authenticate](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec create_key(map(), create_key_request(), list()) ::
          {:ok, create_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_key_errors()}
  def create_key(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/keys"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to the Maps API V2 unless you require `Grab` data.

     `CreateMap` is part of a previous Amazon Location Service Maps API
  (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The Maps API version 2 has a simplified interface that can be used
  without creating or managing map resources.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Creates a map resource in your Amazon Web Services account, which provides map
  tiles of different styles sourced from global location data providers.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_map(map(), create_map_request(), list()) ::
          {:ok, create_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_map_errors()}
  def create_map(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/maps"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Places API V2 unless you require Grab data.

     `CreatePlaceIndex` is part of a previous Amazon Location Service
  Places API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The Places API version 2 has a simplified interface that can be
  used without creating or managing place index resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html). 
  Creates a place index resource in your Amazon Web Services account. Use a place
  index resource to geocode addresses and other text queries by using the
  `SearchPlaceIndexForText` operation, and reverse geocode coordinates by using
  the `SearchPlaceIndexForPosition` operation, and enable autosuggestions by using
  the `SearchPlaceIndexForSuggestions` operation.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service
  terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_place_index(map(), create_place_index_request(), list()) ::
          {:ok, create_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_place_index_errors()}
  def create_place_index(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/indexes"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Routes API V2 unless you require Grab data.

     `CreateRouteCalculator` is part of a previous Amazon Location
  Service Routes API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The Routes API version 2 has a simplified interface that can be
  used without creating or managing route calculator resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html). 
  Creates a route calculator resource in your Amazon Web Services account.

  You can send requests to a route calculator resource to estimate travel time,
  distance, and get directions. A route calculator sources traffic and road
  network data from your chosen data provider.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service
  terms](http://aws.amazon.com/service-terms) for more details.
  """
  @spec create_route_calculator(map(), create_route_calculator_request(), list()) ::
          {:ok, create_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_route_calculator_errors()}
  def create_route_calculator(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/calculators"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

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
  Creates a tracker resource in your Amazon Web Services account, which lets you
  retrieve current and historical location of devices.
  """
  @spec create_tracker(map(), create_tracker_request(), list()) ::
          {:ok, create_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tracker_errors()}
  def create_tracker(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/trackers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  Deletes a geofence collection from your Amazon Web Services account.

  This operation deletes the resource permanently. If the geofence collection is
  the target of a tracker resource, the devices will no longer be monitored.
  """
  @spec delete_geofence_collection(
          map(),
          String.t() | atom(),
          delete_geofence_collection_request(),
          list()
        ) ::
          {:ok, delete_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_geofence_collection_errors()}
  def delete_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

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
  Deletes the specified API key.

  The API key must have been deactivated more than 90 days previously.

  For more information, see [Use API keys to authenticate](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec delete_key(map(), String.t() | atom(), delete_key_request(), list()) ::
          {:ok, delete_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_key_errors()}
  def delete_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to the Maps API V2 unless you require `Grab` data.

     `DeleteMap` is part of a previous Amazon Location Service Maps API
  (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The Maps API version 2 has a simplified interface that can be used
  without creating or managing map resources.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Deletes a map resource from your Amazon Web Services account.

  This operation deletes the resource permanently. If the map is being used in an
  application, the map may not render.
  """
  @spec delete_map(map(), String.t() | atom(), delete_map_request(), list()) ::
          {:ok, delete_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_map_errors()}
  def delete_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Places API V2 unless you require Grab data.

     `DeletePlaceIndex` is part of a previous Amazon Location Service
  Places API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The Places API version 2 has a simplified interface that can be
  used without creating or managing place index resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html).

  Deletes a place index resource from your Amazon Web Services account.

  This operation deletes the resource permanently.
  """
  @spec delete_place_index(map(), String.t() | atom(), delete_place_index_request(), list()) ::
          {:ok, delete_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_place_index_errors()}
  def delete_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Routes API V2 unless you require Grab data.

     `DeleteRouteCalculator` is part of a previous Amazon Location
  Service Routes API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The Routes API version 2 has a simplified interface that can be
  used without creating or managing route calculator resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html).

  Deletes a route calculator resource from your Amazon Web Services account.

  This operation deletes the resource permanently.
  """
  @spec delete_route_calculator(
          map(),
          String.t() | atom(),
          delete_route_calculator_request(),
          list()
        ) ::
          {:ok, delete_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_route_calculator_errors()}
  def delete_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

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
  Deletes a tracker resource from your Amazon Web Services account.

  This operation deletes the resource permanently. If the tracker resource is in
  use, you may encounter an error. Make sure that the target resource isn't a
  dependency for your applications.
  """
  @spec delete_tracker(map(), String.t() | atom(), delete_tracker_request(), list()) ::
          {:ok, delete_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tracker_errors()}
  def delete_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  Retrieves the geofence collection details.
  """
  @spec describe_geofence_collection(map(), String.t() | atom(), list()) ::
          {:ok, describe_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  For more information, see [Use API keys to authenticate](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec describe_key(map(), String.t() | atom(), list()) ::
          {:ok, describe_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_key_errors()}
  def describe_key(%Client{} = client, key_name, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to the Maps API V2 unless you require `Grab` data.

     `DescribeMap` is part of a previous Amazon Location Service Maps
  API (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The Maps API version 2 has a simplified interface that can be used
  without creating or managing map resources.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Retrieves the map resource details.
  """
  @spec describe_map(map(), String.t() | atom(), list()) ::
          {:ok, describe_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_map_errors()}
  def describe_map(%Client{} = client, map_name, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Places API V2 unless you require Grab data.

     `DescribePlaceIndex` is part of a previous Amazon Location Service
  Places API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The Places API version 2 has a simplified interface that can be
  used without creating or managing place index resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html).

  Retrieves the place index resource details.
  """
  @spec describe_place_index(map(), String.t() | atom(), list()) ::
          {:ok, describe_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_place_index_errors()}
  def describe_place_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Routes API V2 unless you require Grab data.

     `DescribeRouteCalculator` is part of a previous Amazon Location
  Service Routes API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The Routes API version 2 has a simplified interface that can be
  used without creating or managing route calculator resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html).

  Retrieves the route calculator resource details.
  """
  @spec describe_route_calculator(map(), String.t() | atom(), list()) ::
          {:ok, describe_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec describe_tracker(map(), String.t() | atom(), list()) ::
          {:ok, describe_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom(),
          disassociate_tracker_consumer_request(),
          list()
        ) ::
          {:ok, disassociate_tracker_consumer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  This action forecasts future geofence events that are likely to occur within a
  specified time horizon if a device continues moving at its current speed.

  Each forecasted event is associated with a geofence from a provided geofence
  collection. A forecast event can have one of the following states:

  `ENTER`: The device position is outside the referenced geofence, but the device
  may cross into the geofence during the forecasting time horizon if it maintains
  its current speed.

  `EXIT`: The device position is inside the referenced geofence, but the device
  may leave the geofence during the forecasted time horizon if the device
  maintains it's current speed.

  `IDLE`:The device is inside the geofence, and it will remain inside the geofence
  through the end of the time horizon if the device maintains it's current speed.

  Heading direction is not considered in the current version. The API takes a
  conservative approach and includes events that can occur for any heading.
  """
  @spec forecast_geofence_events(
          map(),
          String.t() | atom(),
          forecast_geofence_events_request(),
          list()
        ) ::
          {:ok, forecast_geofence_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, forecast_geofence_events_errors()}
  def forecast_geofence_events(%Client{} = client, collection_name, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/forecast-geofence-events"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  Retrieves a device's most recent position according to its sample time.

  Device positions are deleted after 30 days.
  """
  @spec get_device_position(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  range of time.

  Device positions are deleted after 30 days.
  """
  @spec get_device_position_history(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          get_device_position_history_request(),
          list()
        ) ::
          {:ok, get_device_position_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  Retrieves the geofence details from a geofence collection.

  The returned geometry will always match the geometry format used when the
  geofence was created.
  """
  @spec get_geofence(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to [ `GetGlyphs`
  ](https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetGlyphs.html)
  unless you require `Grab` data.

     `GetMapGlyphs` is part of a previous Amazon Location Service Maps
  API (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The version 2 `GetGlyphs` operation gives a better user experience
  and is compatible with the remainder of the V2 Maps API.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Retrieves glyphs used to display labels on a map.
  """
  @spec get_map_glyphs(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_map_glyphs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to [ `GetSprites`
  ](https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetSprites.html)
  unless you require `Grab` data.

     `GetMapSprites` is part of a previous Amazon Location Service Maps
  API (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The version 2 `GetSprites` operation gives a better user experience
  and is compatible with the remainder of the V2 Maps API.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is
  a PNG image paired with a JSON document describing the offsets of individual
  icons that will be displayed on a rendered map.
  """
  @spec get_map_sprites(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_map_sprites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to [ `GetStyleDescriptor`
  ](https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetStyleDescriptor.html)
  unless you require `Grab` data.

     `GetMapStyleDescriptor` is part of a previous Amazon Location
  Service Maps API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The version 2 `GetStyleDescriptor` operation gives a better user
  experience and is compatible with the remainder of the V2 Maps API.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Retrieves the map style descriptor from a map resource.

  The style descriptor contains speciﬁcations on how features render on a map. For
  example, what data to display, what order to display the data in, and the style
  for the data. Style descriptors follow the Mapbox Style Specification.
  """
  @spec get_map_style_descriptor(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_map_style_descriptor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to [ `GetTile`
  ](https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetTile.html)
  unless you require `Grab` data.

     `GetMapTile` is part of a previous Amazon Location Service Maps API
  (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The version 2 `GetTile` operation gives a better user experience
  and is compatible with the remainder of the V2 Maps API.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Retrieves a vector data tile from the map resource. Map tiles are used by
  clients to render a map. they're addressed using a grid arrangement with an X
  coordinate, Y coordinate, and Z (zoom) level.

  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1
  doubles both the X and Y dimensions, so a tile containing data for the entire
  world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0,
  1/1/1).
  """
  @spec get_map_tile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_map_tile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the [V2 `GetPlace`
  ](/location/latest/APIReference/API_geoplaces_GetPlace.html) operation unless
  you require Grab data.

     This version of `GetPlace` is part of a previous Amazon Location
  Service Places API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     Version 2 of the `GetPlace` operation interoperates with the rest
  of the Places V2 API, while this version does not.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html). 
  Finds a place by its unique ID. A `PlaceId` is returned by other search
  operations.

  A PlaceId is valid only if all of the following are the same in the original
  search request and the call to `GetPlace`.

     Customer Amazon Web Services account

     Amazon Web Services Region

     Data provider specified in the place index resource

  If your Place index resource is configured with Grab as your geolocation
  provider and Storage as Intended use, the GetPlace operation is unavailable. For
  more information, see [AWS service terms](http://aws.amazon.com/service-terms).
  """
  @spec get_place(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_place_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_device_positions(map(), String.t() | atom(), list_device_positions_request(), list()) ::
          {:ok, list_device_positions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_device_positions_errors()}
  def list_device_positions(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-positions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  Lists geofence collections in your Amazon Web Services account.
  """
  @spec list_geofence_collections(map(), list_geofence_collections_request(), list()) ::
          {:ok, list_geofence_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_geofence_collections_errors()}
  def list_geofence_collections(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/list-collections"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

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
  Lists geofences stored in a given geofence collection.
  """
  @spec list_geofences(map(), String.t() | atom(), list_geofences_request(), list()) ::
          {:ok, list_geofences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_geofences_errors()}
  def list_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/list-geofences"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  Lists API key resources in your Amazon Web Services account.

  For more information, see [Use API keys to authenticate](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec list_keys(map(), list_keys_request(), list()) ::
          {:ok, list_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_keys_errors()}
  def list_keys(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/list-keys"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to the Maps API V2 unless you require `Grab` data.

     `ListMaps` is part of a previous Amazon Location Service Maps API
  (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The Maps API version 2 has a simplified interface that can be used
  without creating or managing map resources.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Lists map resources in your Amazon Web Services account.
  """
  @spec list_maps(map(), list_maps_request(), list()) ::
          {:ok, list_maps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_maps_errors()}
  def list_maps(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/list-maps"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Places API V2 unless you require Grab data.

     `ListPlaceIndexes` is part of a previous Amazon Location Service
  Places API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The Places API version 2 has a simplified interface that can be
  used without creating or managing place index resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html).

  Lists place index resources in your Amazon Web Services account.
  """
  @spec list_place_indexes(map(), list_place_indexes_request(), list()) ::
          {:ok, list_place_indexes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_place_indexes_errors()}
  def list_place_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/list-indexes"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Routes API V2 unless you require Grab data.

     `ListRouteCalculators` is part of a previous Amazon Location
  Service Routes API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The Routes API version 2 has a simplified interface that can be
  used without creating or managing route calculator resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html).

  Lists route calculator resources in your Amazon Web Services account.
  """
  @spec list_route_calculators(map(), list_route_calculators_request(), list()) ::
          {:ok, list_route_calculators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_route_calculators_errors()}
  def list_route_calculators(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/list-calculators"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

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
  Returns a list of tags that are applied to the specified Amazon Location
  resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_tracker_consumers(
          map(),
          String.t() | atom(),
          list_tracker_consumers_request(),
          list()
        ) ::
          {:ok, list_tracker_consumers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tracker_consumers_errors()}
  def list_tracker_consumers(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-consumers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  Lists tracker resources in your Amazon Web Services account.
  """
  @spec list_trackers(map(), list_trackers_request(), list()) ::
          {:ok, list_trackers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trackers_errors()}
  def list_trackers(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/list-trackers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

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
  Stores a geofence geometry in a given geofence collection, or updates the
  geometry of an existing geofence if a geofence ID is included in the request.
  """
  @spec put_geofence(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_geofence_request(),
          list()
        ) ::
          {:ok, put_geofence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_geofence_errors()}
  def put_geofence(%Client{} = client, collection_name, geofence_id, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/geofences/#{AWS.Util.encode_uri(geofence_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to [ `ReverseGeocode`
  ](/location/latest/APIReference/API_geoplaces_ReverseGeocode.html) or [
  `SearchNearby` ](/location/latest/APIReference/API_geoplaces_SearchNearby.html)
  unless you require Grab data.

     `SearchPlaceIndexForPosition` is part of a previous Amazon Location
  Service Places API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The version 2 `ReverseGeocode` operation gives better results in
  the address reverse-geocoding use case, while the version 2 `SearchNearby`
  operation gives better results when searching for businesses and points of
  interest near a specific location.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

  Reverse geocodes a given coordinate and returns a legible address. Allows you to
  search for Places or points of interest near a given position.
  """
  @spec search_place_index_for_position(
          map(),
          String.t() | atom(),
          search_place_index_for_position_request(),
          list()
        ) ::
          {:ok, search_place_index_for_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_place_index_for_position_errors()}
  def search_place_index_for_position(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/position"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to [ `Suggest`
  ](/location/latest/APIReference/API_geoplaces_Suggest.html) or [ `Autocomplete`
  ](/location/latest/APIReference/API_geoplaces_Autocomplete.html) unless you
  require Grab data.

     `SearchPlaceIndexForSuggestions` is part of a previous Amazon
  Location Service Places API (version 1) which has been superseded by a more
  intuitive, powerful, and complete API (version 2).

     The version 2 `Suggest` operation gives better results for
  typeahead place search suggestions with fuzzy matching, while the version 2
  `Autocomplete` operation gives better results for address completion based on
  partial input.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

  Generates suggestions for addresses and points of interest based on partial or
  misspelled free-form text. This operation is also known as autocomplete,
  autosuggest, or fuzzy matching.

  Optional parameters let you narrow your search results by bounding box or
  country, or bias your search toward a specific position on the globe.

  You can search for suggested place names near a specified position by using
  `BiasPosition`, or filter results within a bounding box by using `FilterBBox`.
  These parameters are mutually exclusive; using both `BiasPosition` and
  `FilterBBox` in the same command returns an error.
  """
  @spec search_place_index_for_suggestions(
          map(),
          String.t() | atom(),
          search_place_index_for_suggestions_request(),
          list()
        ) ::
          {:ok, search_place_index_for_suggestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_place_index_for_suggestions_errors()}
  def search_place_index_for_suggestions(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/suggestions"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to [ `Geocode`
  ](/location/latest/APIReference/API_geoplaces_Geocode.html) or [ `SearchText`
  ](/location/latest/APIReference/API_geoplaces_SearchText.html) unless you
  require Grab data.

     `SearchPlaceIndexForText` is part of a previous Amazon Location
  Service Places API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The version 2 `Geocode` operation gives better results in the
  address geocoding use case, while the version 2 `SearchText` operation gives
  better results when searching for businesses and points of interest.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

  Geocodes free-form text, such as an address, name, city, or region to allow you
  to search for Places or points of interest.

  Optional parameters let you narrow your search results by bounding box or
  country, or bias your search toward a specific position on the globe.

  You can search for places near a given position using `BiasPosition`, or filter
  results within a bounding box using `FilterBBox`. Providing both parameters
  simultaneously returns an error.

  Search results are returned in order of highest to lowest relevance.
  """
  @spec search_place_index_for_text(
          map(),
          String.t() | atom(),
          search_place_index_for_text_request(),
          list()
        ) ::
          {:ok, search_place_index_for_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_place_index_for_text_errors()}
  def search_place_index_for_text(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/text"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified Amazon Location
  Service resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions, by granting a user permission to access or change
  only resources with certain tag values.

  You can use the `TagResource` operation with an Amazon Location Service resource
  that already has tags. If you specify a new tag key for the resource, this tag
  is appended to the tags already associated with the resource. If you specify a
  tag key that's already associated with the resource, the new tag value that you
  specify replaces the previous value for that tag.

  You can associate up to 50 tags with a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

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
  Removes one or more tags from the specified Amazon Location resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

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
  Updates the specified properties of a given geofence collection.
  """
  @spec update_geofence_collection(
          map(),
          String.t() | atom(),
          update_geofence_collection_request(),
          list()
        ) ::
          {:ok, update_geofence_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_geofence_collection_errors()}
  def update_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.geofencing.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given API key resource.
  """
  @spec update_key(map(), String.t() | atom(), update_key_request(), list()) ::
          {:ok, update_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_key_errors()}
  def update_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.metadata.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend upgrading to the Maps API V2 unless you require `Grab` data.

     `UpdateMap` is part of a previous Amazon Location Service Maps API
  (version 1) which has been superseded by a more intuitive, powerful, and
  complete API (version 2).

     The Maps API version 2 has a simplified interface that can be used
  without creating or managing map resources.

     If you are using an AWS SDK or the AWS CLI, note that the Maps API
  version 2 is found under `geo-maps` or `geo_maps`, not under `location`.

     Since `Grab` is not yet fully supported in Maps API version 2, we
  recommend you continue using API version 1 when using `Grab`.

     Start your version 2 API journey with the [Maps V2 API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html)
  or the [Developer Guide](https://docs.aws.amazon.com/location/latest/developerguide/maps.html).

  Updates the specified properties of a given map resource.
  """
  @spec update_map(map(), String.t() | atom(), update_map_request(), list()) ::
          {:ok, update_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_map_errors()}
  def update_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.maps.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Places API V2 unless you require Grab data.

     `UpdatePlaceIndex` is part of a previous Amazon Location Service
  Places API (version 1) which has been superseded by a more intuitive, powerful,
  and complete API (version 2).

     The Places API version 2 has a simplified interface that can be
  used without creating or managing place index resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Places API version 2 is found under `geo-places` or
  `geo_places`, not under `location`.

     Since Grab is not yet fully supported in Places API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Places V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
  or the [Developer Guide](/location/latest/developerguide/places.html).

  Updates the specified properties of a given place index resource.
  """
  @spec update_place_index(map(), String.t() | atom(), update_place_index_request(), list()) ::
          {:ok, update_place_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_place_index_errors()}
  def update_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.places.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation is no longer current and may be deprecated in the future.

  We recommend you upgrade to the Routes API V2 unless you require Grab data.

     `UpdateRouteCalculator` is part of a previous Amazon Location
  Service Routes API (version 1) which has been superseded by a more intuitive,
  powerful, and complete API (version 2).

     The Routes API version 2 has a simplified interface that can be
  used without creating or managing route calculator resources.

     If you are using an Amazon Web Services SDK or the Amazon Web
  Services CLI, note that the Routes API version 2 is found under `geo-routes` or
  `geo_routes`, not under `location`.

     Since Grab is not yet fully supported in Routes API version 2, we
  recommend you continue using API version 1 when using Grab.

     Start your version 2 API journey with the Routes V2 [API Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
  or the [Developer Guide](/location/latest/developerguide/routes.html).

  Updates the specified properties for a given route calculator resource.
  """
  @spec update_route_calculator(
          map(),
          String.t() | atom(),
          update_route_calculator_request(),
          list()
        ) ::
          {:ok, update_route_calculator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_route_calculator_errors()}
  def update_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.routes.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified properties of a given tracker resource.
  """
  @spec update_tracker(map(), String.t() | atom(), update_tracker_request(), list()) ::
          {:ok, update_tracker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_tracker_errors()}
  def update_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.tracking.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Verifies the integrity of the device's position by determining if it was
  reported behind a proxy, and by comparing it to an inferred position estimated
  based on the device's state.

  The Location Integrity SDK provides enhanced features related to device
  verification, and it is available for use by request. To get access to the SDK,
  contact [Sales Support](https://aws.amazon.com/contact-us/sales-support/?pg=locationprice&cta=herobtn).
  """
  @spec verify_device_position(
          map(),
          String.t() | atom(),
          verify_device_position_request(),
          list()
        ) ::
          {:ok, verify_device_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_device_position_errors()}
  def verify_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/positions/verify"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
end
