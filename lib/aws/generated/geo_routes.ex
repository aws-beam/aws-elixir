# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GeoRoutes do
  @moduledoc """
  With the Routes API you can calculate routes and estimate travel time based on
  up-to-date road network and live traffic information.

  Key features include:

    * Point-to-point routing with estimated travel time, distance, and
  turn-by-turn directions. See
  [CalculateRoutes](https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateRoutes.html).     * Multi-point route optimization to minimize travel time or
  distance. See
  [OptimizeWaypoints](https://docs.aws.amazon.com/location/latest/APIReference/API_OptimizeWaypoints.html).

    * Route matrices for efficient multi-destination planning. See
  [CalculateRouteMatrix](https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateRouteMatrix.html).     * Isoline calculations to determine reachable areas within specified
  time or distance thresholds. See
  [CalculateIsolines](https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateIsolines.html).

    * Map-matching to align GPS traces with the road network. See
  [SnapToRoads](https://docs.aws.amazon.com/location/latest/APIReference/API_SnapToRoads.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      route_intermodal_transit_options() :: %{
        "AllowedModes" => list(list(any())()),
        "EnabledFor" => list(list(any())()),
        "ExcludedModes" => list(list(any())())
      }

  """
  @type route_intermodal_transit_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_major_road_label() :: %{
        "RoadName" => localized_string(),
        "RouteNumber" => route_number()
      }

  """
  @type route_major_road_label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_departure() :: %{
        "Place" => route_taxi_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_taxi_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_cycles() :: %{
        "LongCycle" => waypoint_optimization_rest_cycle_durations(),
        "ShortCycle" => waypoint_optimization_rest_cycle_durations()
      }

  """
  @type waypoint_optimization_rest_cycles() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_summary() :: %{
        "Overview" => route_ferry_overview_summary(),
        "TravelOnly" => route_ferry_travel_only_summary()
      }

  """
  @type route_ferry_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_departure() :: %{
        "Delay" => float(),
        "Place" => route_transit_place(),
        "Status" => list(any()),
        "Time" => String.t() | atom()
      }

  """
  @type route_transit_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_options() :: %{
        "Areas" => list(route_matrix_avoidance_area()),
        "CarShuttleTrains" => boolean(),
        "ControlledAccessHighways" => boolean(),
        "DirtRoads" => boolean(),
        "Ferries" => boolean(),
        "TollRoads" => boolean(),
        "TollTransponders" => boolean(),
        "TruckRoadTypes" => list(String.t() | atom()),
        "Tunnels" => boolean(),
        "UTurns" => boolean(),
        "ZoneCategories" => list(route_matrix_avoidance_zone_category())
      }

  """
  @type route_matrix_avoidance_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_options() :: %{
        "Areas" => list(isoline_avoidance_area()),
        "CarShuttleTrains" => boolean(),
        "ControlledAccessHighways" => boolean(),
        "DirtRoads" => boolean(),
        "Ferries" => boolean(),
        "SeasonalClosure" => boolean(),
        "TollRoads" => boolean(),
        "TollTransponders" => boolean(),
        "TruckRoadTypes" => list(String.t() | atom()),
        "Tunnels" => boolean(),
        "UTurns" => boolean(),
        "ZoneCategories" => list(isoline_avoidance_zone_category())
      }

  """
  @type isoline_avoidance_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      optimize_waypoints_response() :: %{
        "Connections" => list(waypoint_optimization_connection()),
        "Distance" => float(),
        "Duration" => float(),
        "ImpedingWaypoints" => list(waypoint_optimization_impeding_waypoint()),
        "OptimizedWaypoints" => list(waypoint_optimization_optimized_waypoint()),
        "PricingBucket" => [String.t() | atom()],
        "TimeBreakdown" => waypoint_optimization_time_breakdown()
      }

  """
  @type optimize_waypoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_auto_circle() :: %{
        "Margin" => float(),
        "MaxRadius" => float()
      }

  """
  @type route_matrix_auto_circle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_departure() :: %{
        "Place" => route_rental_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_rental_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_departure() :: %{
        "Place" => route_pedestrian_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_pedestrian_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_vehicle_license_plate() :: %{
        "LastCharacter" => [String.t() | atom()]
      }

  """
  @type isoline_vehicle_license_plate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_avoidance_area() :: %{
        "Except" => list(route_avoidance_area_geometry()),
        "Geometry" => route_avoidance_area_geometry()
      }

  """
  @type route_avoidance_area() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => list(any())
      }

  """
  @type route_matrix_side_of_street_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_response() :: %{
        "ErrorCount" => [integer()],
        "PricingBucket" => [String.t() | atom()],
        "RouteMatrix" => list(list(route_matrix_entry())()),
        "RoutingBoundary" => route_matrix_boundary()
      }

  """
  @type calculate_route_matrix_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_roundabout_pass_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_roundabout_pass_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_scooter_options() :: %{
        "EngineType" => list(any()),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type isoline_scooter_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_intermediate_stop() :: %{
        "Attributes" => list(list(any())()),
        "Departure" => route_transit_departure(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Transport" => route_transit_transport_mode_details()
      }

  """
  @type route_transit_intermediate_stop() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_boundary_geometry() :: %{
        "AutoCircle" => route_matrix_auto_circle(),
        "BoundingBox" => list([float()]()),
        "Circle" => circle(),
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type route_matrix_boundary_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => list(any())
      }

  """
  @type route_matrix_traffic_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_to_roads_request() :: %{
        optional("Key") => String.t() | atom(),
        optional("SnapRadius") => float(),
        optional("SnappedGeometryFormat") => list(any()),
        required("TracePoints") => list(road_snap_trace_point()),
        optional("TravelMode") => list(any()),
        optional("TravelModeOptions") => road_snap_travel_mode_options()
      }

  """
  @type snap_to_roads_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_travel_step() :: %{
        "ContinueStepDetails" => route_continue_step_details(),
        "CurrentRoad" => route_road(),
        "Distance" => float(),
        "Duration" => float(),
        "ExitNumber" => list(localized_string()),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "KeepStepDetails" => route_keep_step_details(),
        "NextRoad" => route_road(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "Signpost" => route_signpost(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => list(any())
      }

  """
  @type route_pedestrian_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_rental_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_place() :: %{
        "AccessPointDetails" => route_access_point_details(),
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "StationDetails" => route_station_details(),
        "Type" => list(any()),
        "WaypointIndex" => integer()
      }

  """
  @type route_rental_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_violated_constraints() :: %{
        "AllHazardsRestricted" => boolean(),
        "AxleCount" => route_notice_detail_range(),
        "HazardousCargos" => list(list(any())()),
        "MaxHeight" => float(),
        "MaxKpraLength" => float(),
        "MaxLength" => float(),
        "MaxPayloadCapacity" => float(),
        "MaxWeight" => route_weight_constraint(),
        "MaxWeightPerAxle" => float(),
        "MaxWeightPerAxleGroup" => weight_per_axle_group(),
        "MaxWidth" => float(),
        "Occupancy" => route_notice_detail_range(),
        "RestrictedTimes" => [String.t() | atom()],
        "TimeDependent" => boolean(),
        "TrailerCount" => route_notice_detail_range(),
        "TravelMode" => boolean(),
        "TruckRoadType" => [String.t() | atom()],
        "TruckType" => list(any()),
        "TunnelRestrictionCode" => String.t() | atom()
      }

  """
  @type route_violated_constraints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_matching_options() :: %{
        "NameHint" => String.t() | atom(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => list(any())
      }

  """
  @type route_matrix_matching_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_travel_mode_options() :: %{
        "Truck" => road_snap_truck_options()
      }

  """
  @type road_snap_travel_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_rate() :: %{
        "ApplicableTimes" => String.t() | atom(),
        "ConvertedPrice" => route_toll_price(),
        "Id" => String.t() | atom(),
        "LocalPrice" => route_toll_price(),
        "Name" => String.t() | atom(),
        "Pass" => route_toll_pass(),
        "PaymentMethods" => list(list(any())()),
        "Transponders" => list(route_transponder())
      }

  """
  @type route_toll_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_place() :: %{
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "WaypointIndex" => integer()
      }

  """
  @type route_ferry_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_enter_highway_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_enter_highway_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_granularity_options() :: %{
        "MaxPoints" => [integer()],
        "MaxResolution" => float()
      }

  """
  @type isoline_granularity_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_leg_details() :: %{
        "AfterTravelSteps" => list(route_ferry_after_travel_step()),
        "Arrival" => route_ferry_arrival(),
        "BeforeTravelSteps" => list(route_ferry_before_travel_step()),
        "Departure" => route_ferry_departure(),
        "Notices" => list(route_ferry_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "RouteName" => String.t() | atom(),
        "Spans" => list(route_ferry_span()),
        "Summary" => route_ferry_summary(),
        "TravelSteps" => list(route_ferry_travel_step())
      }

  """
  @type route_ferry_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_roundabout_enter_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_roundabout_enter_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_notice() :: %{
        "Code" => list(any()),
        "Impact" => list(any())
      }

  """
  @type route_pedestrian_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_continue_highway_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_continue_highway_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_span_dynamic_speed_details() :: %{
        "BestCaseSpeed" => float(),
        "TurnDuration" => float(),
        "TypicalSpeed" => float()
      }

  """
  @type route_span_dynamic_speed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_failed_constraint() :: %{
        "Constraint" => list(any()),
        "Reason" => String.t() | atom()
      }

  """
  @type waypoint_optimization_failed_constraint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_before_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_ferry_before_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_driver_schedule_interval() :: %{
        "DriveDuration" => float(),
        "RestDuration" => float()
      }

  """
  @type route_driver_schedule_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_access_point_details() :: %{
        "Accessibility" => route_accessibility_availability_details()
      }

  """
  @type route_access_point_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_summary() :: %{
        "Overview" => route_rental_overview_summary(),
        "TravelOnly" => route_rental_travel_only_summary()
      }

  """
  @type route_rental_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_place() :: %{
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "StationDetails" => route_station_details(),
        "Type" => list(any()),
        "WaypointIndex" => integer()
      }

  """
  @type route_transit_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_trailer_options() :: %{
        "TrailerCount" => integer()
      }

  """
  @type route_matrix_trailer_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_before_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_rental_before_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => route_matrix_matching_options(),
        "SideOfStreet" => route_matrix_side_of_street_options()
      }

  """
  @type route_matrix_destination_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_place() :: %{
        "AccessPointDetails" => route_access_point_details(),
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "SideOfStreet" => list(any()),
        "StationDetails" => route_station_details(),
        "Type" => list(any()),
        "WaypointIndex" => integer()
      }

  """
  @type route_pedestrian_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_trailer_options() :: %{
        "AxleCount" => integer(),
        "TrailerCount" => integer()
      }

  """
  @type isoline_trailer_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ramp_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_ramp_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      localized_string() :: %{
        "Language" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type localized_string() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_travel_step() :: %{
        "ContinueStepDetails" => route_continue_step_details(),
        "Distance" => float(),
        "Duration" => float(),
        "ExitStepDetails" => route_exit_step_details(),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "KeepStepDetails" => route_keep_step_details(),
        "RampStepDetails" => route_ramp_step_details(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => list(any()),
        "UTurnStepDetails" => route_u_turn_step_details()
      }

  """
  @type route_taxi_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_departure() :: %{
        "Place" => route_vehicle_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_vehicle_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => boolean(),
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "SideOfStreet" => route_side_of_street_options()
      }

  """
  @type route_origin_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_origin() :: %{
        "Options" => route_matrix_origin_options(),
        "Position" => list([float()]())
      }

  """
  @type route_matrix_origin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_travel_step() :: %{
        "ContinueStepDetails" => route_continue_step_details(),
        "Distance" => float(),
        "Duration" => float(),
        "ExitStepDetails" => route_exit_step_details(),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "KeepStepDetails" => route_keep_step_details(),
        "RampStepDetails" => route_ramp_step_details(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => list(any()),
        "UTurnStepDetails" => route_u_turn_step_details()
      }

  """
  @type route_rental_travel_step() :: %{(String.t() | atom()) => any()}

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

      route_exit_step_details() :: %{
        "Intersection" => list(localized_string()),
        "RelativeExit" => integer(),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_exit_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_allow_options() :: %{
        "Hot" => boolean(),
        "Hov" => boolean()
      }

  """
  @type isoline_allow_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_summary() :: %{
        "Overview" => route_taxi_overview_summary(),
        "TravelOnly" => route_taxi_travel_only_summary()
      }

  """
  @type route_taxi_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_travel_step() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_transit_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_options() :: %{
        "Speed" => float()
      }

  """
  @type route_pedestrian_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_entry() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "Error" => list(any())
      }

  """
  @type route_matrix_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_payment_site() :: %{
        "Name" => [String.t() | atom()],
        "Position" => list([float()]())
      }

  """
  @type route_toll_payment_site() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_road() :: %{
        "RoadName" => list(localized_string()),
        "RouteNumber" => list(route_number()),
        "Towards" => list(localized_string()),
        "Type" => list(any())
      }

  """
  @type route_road() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_travel_mode_options() :: %{
        "Pedestrian" => waypoint_optimization_pedestrian_options(),
        "Truck" => waypoint_optimization_truck_options()
      }

  """
  @type waypoint_optimization_travel_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_span() :: %{
        "BestCaseDuration" => float(),
        "Country" => String.t() | atom(),
        "Distance" => float(),
        "Duration" => float(),
        "DynamicSpeed" => route_span_dynamic_speed_details(),
        "FunctionalClassification" => integer(),
        "GeometryOffset" => [integer()],
        "Incidents" => list([integer()]()),
        "Names" => list(localized_string()),
        "PedestrianAccess" => list(list(any())()),
        "Region" => String.t() | atom(),
        "RoadAttributes" => list(list(any())()),
        "RouteNumbers" => list(route_number()),
        "SpeedLimit" => route_span_speed_limit_details(),
        "TypicalDuration" => float()
      }

  """
  @type route_pedestrian_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_request() :: %{
        optional("Allow") => route_matrix_allow_options(),
        optional("Avoid") => route_matrix_avoidance_options(),
        optional("DepartNow") => boolean(),
        optional("DepartureTime") => String.t() | atom(),
        required("Destinations") => list(route_matrix_destination()),
        optional("Exclude") => route_matrix_exclusion_options(),
        optional("Key") => String.t() | atom(),
        optional("OptimizeRoutingFor") => list(any()),
        required("Origins") => list(route_matrix_origin()),
        optional("RoutingBoundary") => route_matrix_boundary(),
        optional("Traffic") => route_matrix_traffic_options(),
        optional("TravelMode") => list(any()),
        optional("TravelModeOptions") => route_matrix_travel_mode_options()
      }

  """
  @type calculate_route_matrix_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_connection_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | atom()
      }

  """
  @type isoline_connection_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_transit_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_signpost() :: %{
        "Labels" => list(route_signpost_label())
      }

  """
  @type route_signpost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_vehicle_license_plate() :: %{
        "LastCharacter" => [String.t() | atom()]
      }

  """
  @type route_matrix_vehicle_license_plate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_leg_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | atom()
      }

  """
  @type route_leg_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_span() :: %{
        "BestCaseDuration" => float(),
        "CarAccess" => list(list(any())()),
        "Country" => String.t() | atom(),
        "Distance" => float(),
        "Duration" => float(),
        "DynamicSpeed" => route_span_dynamic_speed_details(),
        "FunctionalClassification" => integer(),
        "Gate" => list(any()),
        "GeometryOffset" => [integer()],
        "Incidents" => list([integer()]()),
        "Names" => list(localized_string()),
        "Notices" => list([integer()]()),
        "RailwayCrossing" => list(any()),
        "Region" => String.t() | atom(),
        "RoadAttributes" => list(list(any())()),
        "RouteNumbers" => list(route_number()),
        "ScooterAccess" => list(list(any())()),
        "SpeedLimit" => route_span_speed_limit_details(),
        "TollSystems" => list([integer()]()),
        "TruckAccess" => list(list(any())()),
        "TruckRoadTypes" => list([integer()]()),
        "TypicalDuration" => float(),
        "Zones" => list([integer()]())
      }

  """
  @type route_vehicle_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_driving_distance_options() :: %{
        "DrivingDistance" => float()
      }

  """
  @type waypoint_optimization_driving_distance_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Corridor" => corridor(),
        "Polygon" => list(list(list([float()]())())()),
        "PolylineCorridor" => polyline_corridor(),
        "PolylinePolygon" => list(String.t() | atom())
      }

  """
  @type route_avoidance_area_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_arrival() :: %{
        "Place" => route_vehicle_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_vehicle_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => isoline_matching_options(),
        "SideOfStreet" => isoline_side_of_street_options()
      }

  """
  @type isoline_origin_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_destination() :: %{
        "Options" => route_matrix_destination_options(),
        "Position" => list([float()]())
      }

  """
  @type route_matrix_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_summary() :: %{
        "Overview" => route_vehicle_overview_summary(),
        "TravelOnly" => route_vehicle_travel_only_summary()
      }

  """
  @type route_vehicle_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_trailer_options() :: %{
        "AxleCount" => integer(),
        "TrailerCount" => integer()
      }

  """
  @type route_trailer_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Polygon" => list(list(list([float()]())())()),
        "PolylinePolygon" => list(String.t() | atom())
      }

  """
  @type route_matrix_avoidance_area_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_license_plate() :: %{
        "LastCharacter" => String.t() | atom()
      }

  """
  @type route_vehicle_license_plate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_summary() :: %{
        "Overview" => route_pedestrian_overview_summary(),
        "TravelOnly" => route_pedestrian_travel_only_summary()
      }

  """
  @type route_pedestrian_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_before_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_taxi_before_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Corridor" => corridor(),
        "Polygon" => list(list(list([float()]())())()),
        "PolylineCorridor" => polyline_corridor(),
        "PolylinePolygon" => list(String.t() | atom())
      }

  """
  @type isoline_avoidance_area_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_summary() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "Tolls" => route_toll_summary()
      }

  """
  @type route_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_zone() :: %{
        "Category" => list(any()),
        "Name" => String.t() | atom()
      }

  """
  @type route_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_matching_options() :: %{
        "NameHint" => String.t() | atom(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => list(any())
      }

  """
  @type isoline_matching_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => list(any())
      }

  """
  @type route_side_of_street_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_exclusion_options() :: %{
        "Countries" => list(String.t() | atom())
      }

  """
  @type route_exclusion_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_agency() :: %{
        "Name" => String.t() | atom(),
        "Url" => String.t() | atom()
      }

  """
  @type route_rental_agency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_notice() :: %{
        "Code" => list(any()),
        "Impact" => list(any())
      }

  """
  @type route_transit_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_transport_mode_details() :: %{
        "Accessibility" => route_accessibility_availability_details(),
        "Color" => String.t() | atom(),
        "Headsign" => String.t() | atom(),
        "LongRouteName" => String.t() | atom(),
        "Mode" => list(any()),
        "RouteName" => String.t() | atom(),
        "ShortRouteName" => String.t() | atom(),
        "TextColor" => String.t() | atom()
      }

  """
  @type route_transit_transport_mode_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_arrival() :: %{
        "Place" => route_pedestrian_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_pedestrian_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_transport_mode_details() :: %{
        "AvailableSeats" => integer(),
        "Category" => String.t() | atom(),
        "Color" => String.t() | atom(),
        "Engine" => list(any()),
        "LicensePlate" => String.t() | atom(),
        "Mode" => list(any()),
        "Model" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TextColor" => String.t() | atom()
      }

  """
  @type route_rental_transport_mode_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_keep_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_keep_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_destination_options() :: %{
        "AccessHours" => waypoint_optimization_access_hours(),
        "AppointmentTime" => String.t() | atom(),
        "Heading" => float(),
        "Id" => String.t() | atom(),
        "ServiceDuration" => float(),
        "SideOfStreet" => waypoint_optimization_side_of_street_options()
      }

  """
  @type waypoint_optimization_destination_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_snapped_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | atom()
      }

  """
  @type road_snap_snapped_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_avoidance_zone_category() :: %{
        "Category" => list(any())
      }

  """
  @type route_avoidance_zone_category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_notice_detail() :: %{
        "Title" => String.t() | atom(),
        "ViolatedConstraints" => route_violated_constraints()
      }

  """
  @type route_vehicle_notice_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_intermodal_options() :: %{
        "AccessibilityAttributes" => list(list(any())()),
        "MaxTransfers" => [integer()],
        "Pedestrian" => route_intermodal_pedestrian_options(),
        "Rental" => route_intermodal_rental_options(),
        "Taxi" => route_intermodal_taxi_options(),
        "Transit" => route_intermodal_transit_options(),
        "Vehicle" => route_intermodal_vehicle_options()
      }

  """
  @type route_intermodal_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_station_details() :: %{
        "Accessibility" => route_accessibility_availability_details(),
        "PlatformName" => String.t() | atom(),
        "ShortName" => String.t() | atom()
      }

  """
  @type route_station_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_boundary() :: %{
        "Geometry" => route_matrix_boundary_geometry(),
        "Unbounded" => boolean()
      }

  """
  @type route_matrix_boundary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      polyline_corridor() :: %{
        "Polyline" => String.t() | atom(),
        "Radius" => [integer()]
      }

  """
  @type polyline_corridor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_connection() :: %{
        "Distance" => float(),
        "From" => String.t() | atom(),
        "RestDuration" => float(),
        "To" => String.t() | atom(),
        "TravelDuration" => float(),
        "WaitDuration" => float()
      }

  """
  @type waypoint_optimization_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_taxi_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pass_through_waypoint() :: %{
        "GeometryOffset" => [integer()],
        "Place" => route_pass_through_place()
      }

  """
  @type route_pass_through_waypoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_trailer_options() :: %{
        "TrailerCount" => integer()
      }

  """
  @type waypoint_optimization_trailer_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll() :: %{
        "Country" => String.t() | atom(),
        "PaymentSites" => list(route_toll_payment_site()),
        "Rates" => list(route_toll_rate()),
        "Systems" => list([integer()]())
      }

  """
  @type route_toll() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_travel_only_summary() :: %{
        "BestCaseDuration" => float(),
        "Duration" => float(),
        "TypicalDuration" => float()
      }

  """
  @type route_vehicle_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_intermodal_taxi_options() :: %{
        "AllowedModes" => list(list(any())()),
        "EnabledFor" => list(list(any())()),
        "ExcludedModes" => list(list(any())())
      }

  """
  @type route_intermodal_taxi_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_arrival() :: %{
        "Delay" => float(),
        "Place" => route_transit_place(),
        "Status" => list(any()),
        "Time" => String.t() | atom()
      }

  """
  @type route_transit_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_car_options() :: %{
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type route_matrix_car_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => boolean(),
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "SideOfStreet" => route_side_of_street_options(),
        "StopDuration" => float()
      }

  """
  @type route_destination_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_exclusion_options() :: %{
        "Countries" => list(String.t() | atom())
      }

  """
  @type route_matrix_exclusion_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_attribution() :: %{
        "AttributionType" => list(any()),
        "WebLink" => route_web_link()
      }

  """
  @type route_attribution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_turn_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_turn_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_before_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_transit_before_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pass_through_place() :: %{
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "WaypointIndex" => integer()
      }

  """
  @type route_pass_through_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_accessibility_availability_details() :: %{
        "Wheelchair" => list(any())
      }

  """
  @type route_accessibility_availability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_intermodal_pedestrian_options() :: %{
        "MaxDistance" => float(),
        "Speed" => float()
      }

  """
  @type route_intermodal_pedestrian_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_area() :: %{
        "Geometry" => waypoint_optimization_avoidance_area_geometry()
      }

  """
  @type waypoint_optimization_avoidance_area() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_leg_details() :: %{
        "AfterTravelSteps" => list(route_vehicle_after_travel_step()),
        "Arrival" => route_vehicle_arrival(),
        "Departure" => route_vehicle_departure(),
        "Incidents" => list(route_vehicle_incident()),
        "Notices" => list(route_vehicle_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "Spans" => list(route_vehicle_span()),
        "Summary" => route_vehicle_summary(),
        "TollSystems" => list(route_toll_system()),
        "Tolls" => list(route_toll()),
        "TravelSteps" => list(route_vehicle_travel_step()),
        "TruckRoadTypes" => list(String.t() | atom()),
        "Zones" => list(route_zone())
      }

  """
  @type route_vehicle_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_ferry_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_roundabout_exit_step_details() :: %{
        "Intersection" => list(localized_string()),
        "RelativeExit" => integer(),
        "RoundaboutAngle" => float(),
        "SteeringDirection" => list(any())
      }

  """
  @type route_roundabout_exit_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_span_speed_limit_details() :: %{
        "MaxSpeed" => float(),
        "Unlimited" => boolean()
      }

  """
  @type route_span_speed_limit_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_car_options() :: %{
        "EngineType" => list(any()),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type isoline_car_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_avoidance_options() :: %{
        "Areas" => list(route_avoidance_area()),
        "CarShuttleTrains" => boolean(),
        "ControlledAccessHighways" => boolean(),
        "DirtRoads" => boolean(),
        "Ferries" => boolean(),
        "SeasonalClosure" => boolean(),
        "TollRoads" => boolean(),
        "TollTransponders" => boolean(),
        "TruckRoadTypes" => list(String.t() | atom()),
        "Tunnels" => boolean(),
        "UTurns" => boolean(),
        "ZoneCategories" => list(route_avoidance_zone_category())
      }

  """
  @type route_avoidance_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_pass_validity_period() :: %{
        "Period" => list(any()),
        "PeriodCount" => integer()
      }

  """
  @type route_toll_pass_validity_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_charge_step_details() :: %{
        "ArrivalCharge" => float(),
        "ConsumablePower" => float(),
        "DesiredCharge" => float()
      }

  """
  @type route_charge_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => list(any())
      }

  """
  @type isoline_traffic_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_truck_options() :: %{
        "AxleCount" => integer(),
        "EngineType" => list(any()),
        "GrossWeight" => float(),
        "HazardousCargos" => list(list(any())()),
        "Height" => float(),
        "HeightAboveFirstAxle" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer(),
        "PayloadCapacity" => float(),
        "TireCount" => integer(),
        "Trailer" => isoline_trailer_options(),
        "TruckType" => list(any()),
        "TunnelRestrictionCode" => String.t() | atom(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type isoline_truck_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_allow_options() :: %{
        "Hot" => boolean(),
        "Hov" => boolean()
      }

  """
  @type route_matrix_allow_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_car_options() :: %{
        "EngineType" => list(any()),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type route_car_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_emission_type() :: %{
        "Co2EmissionClass" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type route_emission_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_transit_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_to_roads_response() :: %{
        "Notices" => list(road_snap_notice()),
        "PricingBucket" => [String.t() | atom()],
        "SnappedGeometry" => road_snap_snapped_geometry(),
        "SnappedGeometryFormat" => list(any()),
        "SnappedTracePoints" => list(road_snap_snapped_trace_point())
      }

  """
  @type snap_to_roads_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_exclusion_options() :: %{
        "Countries" => list(String.t() | atom())
      }

  """
  @type waypoint_optimization_exclusion_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_taxi_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_summary() :: %{
        "Total" => route_toll_price_summary()
      }

  """
  @type route_toll_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matching_options() :: %{
        "NameHint" => String.t() | atom(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => list(any())
      }

  """
  @type route_matching_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_zone_category() :: %{
        "Category" => list(any())
      }

  """
  @type route_matrix_avoidance_zone_category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_web_link() :: %{
        "AnchorText" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DeviceType" => list(any()),
        "Url" => String.t() | atom()
      }

  """
  @type route_web_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_isolines_response() :: %{
        "ArrivalTime" => String.t() | atom(),
        "DepartureTime" => String.t() | atom(),
        "IsolineGeometryFormat" => list(any()),
        "Isolines" => list(isoline()),
        "PricingBucket" => [String.t() | atom()],
        "SnappedDestination" => list([float()]()),
        "SnappedOrigin" => list([float()]())
      }

  """
  @type calculate_isolines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_truck_options() :: %{
        "AxleCount" => integer(),
        "EngineType" => list(any()),
        "GrossWeight" => float(),
        "HazardousCargos" => list(list(any())()),
        "Height" => float(),
        "HeightAboveFirstAxle" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer(),
        "PayloadCapacity" => float(),
        "TireCount" => integer(),
        "Trailer" => route_trailer_options(),
        "TruckType" => list(any()),
        "TunnelRestrictionCode" => String.t() | atom(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type route_truck_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_truck_options() :: %{
        "AxleCount" => integer(),
        "GrossWeight" => float(),
        "HazardousCargos" => list(list(any())()),
        "Height" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer(),
        "PayloadCapacity" => float(),
        "Trailer" => route_matrix_trailer_options(),
        "TruckType" => list(any()),
        "TunnelRestrictionCode" => String.t() | atom(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type route_matrix_truck_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_routes_response() :: %{
        "LegGeometryFormat" => list(any()),
        "Notices" => list(route_response_notice()),
        "PricingBucket" => [String.t() | atom()],
        "Routes" => list(route())
      }

  """
  @type calculate_routes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_isolines_request() :: %{
        optional("Allow") => isoline_allow_options(),
        optional("ArrivalTime") => String.t() | atom(),
        optional("Avoid") => isoline_avoidance_options(),
        optional("DepartNow") => boolean(),
        optional("DepartureTime") => String.t() | atom(),
        optional("Destination") => list([float()]()),
        optional("DestinationOptions") => isoline_destination_options(),
        optional("IsolineGeometryFormat") => list(any()),
        optional("IsolineGranularity") => isoline_granularity_options(),
        optional("Key") => String.t() | atom(),
        optional("OptimizeIsolineFor") => list(any()),
        optional("OptimizeRoutingFor") => list(any()),
        optional("Origin") => list([float()]()),
        optional("OriginOptions") => isoline_origin_options(),
        required("Thresholds") => isoline_thresholds(),
        optional("Traffic") => isoline_traffic_options(),
        optional("TravelMode") => list(any()),
        optional("TravelModeOptions") => isoline_travel_mode_options()
      }

  """
  @type calculate_isolines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_taxi_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_allow_options() :: %{
        "Hot" => boolean(),
        "Hov" => boolean()
      }

  """
  @type route_allow_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_scooter_options() :: %{
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type route_matrix_scooter_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_trailer_options() :: %{
        "TrailerCount" => integer()
      }

  """
  @type road_snap_trailer_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => isoline_matching_options(),
        "SideOfStreet" => isoline_side_of_street_options()
      }

  """
  @type isoline_destination_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_transit_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_waypoint() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => boolean(),
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "PassThrough" => boolean(),
        "Position" => list([float()]()),
        "SideOfStreet" => route_side_of_street_options(),
        "StopDuration" => float()
      }

  """
  @type route_waypoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculate_routes_request() :: %{
        optional("Allow") => route_allow_options(),
        optional("ArrivalTime") => String.t() | atom(),
        optional("Avoid") => route_avoidance_options(),
        optional("DepartNow") => boolean(),
        optional("DepartureTime") => String.t() | atom(),
        required("Destination") => list([float()]()),
        optional("DestinationOptions") => route_destination_options(),
        optional("Driver") => route_driver_options(),
        optional("Exclude") => route_exclusion_options(),
        optional("InstructionsMeasurementSystem") => list(any()),
        optional("Key") => String.t() | atom(),
        optional("Languages") => list(String.t() | atom()),
        optional("LegAdditionalFeatures") => list(list(any())()),
        optional("LegGeometryFormat") => list(any()),
        optional("MaxAlternatives") => [integer()],
        optional("OptimizeRoutingFor") => list(any()),
        required("Origin") => list([float()]()),
        optional("OriginOptions") => route_origin_options(),
        optional("SpanAdditionalFeatures") => list(list(any())()),
        optional("Tolls") => route_toll_options(),
        optional("Traffic") => route_traffic_options(),
        optional("TravelMode") => list(any()),
        optional("TravelModeOptions") => route_travel_mode_options(),
        optional("TravelStepType") => list(any()),
        optional("Waypoints") => list(route_waypoint())
      }

  """
  @type calculate_routes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_arrival() :: %{
        "Place" => route_taxi_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_taxi_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_leg_details() :: %{
        "AfterTravelSteps" => list(route_rental_after_travel_step()),
        "Agency" => route_rental_agency(),
        "Arrival" => route_rental_arrival(),
        "Attributions" => list(route_attribution()),
        "BeforeTravelSteps" => list(route_rental_before_travel_step()),
        "BookingWebLinks" => list(route_web_link()),
        "Departure" => route_rental_departure(),
        "Summary" => route_rental_summary(),
        "Transport" => route_rental_transport_mode_details(),
        "TravelSteps" => list(route_rental_travel_step())
      }

  """
  @type route_rental_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_signpost_label() :: %{
        "RouteNumber" => route_number(),
        "Text" => localized_string()
      }

  """
  @type route_signpost_label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_place() :: %{
        "AccessPointDetails" => route_access_point_details(),
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "SideOfStreet" => list(any()),
        "StationDetails" => route_station_details(),
        "Type" => list(any()),
        "WaypointIndex" => integer()
      }

  """
  @type route_vehicle_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_driver_options() :: %{
        "RestCycles" => waypoint_optimization_rest_cycles(),
        "RestProfile" => waypoint_optimization_rest_profile(),
        "TreatServiceTimeAs" => list(any())
      }

  """
  @type waypoint_optimization_driver_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline() :: %{
        "Connections" => list(isoline_connection()),
        "DistanceThreshold" => float(),
        "Geometries" => list(isoline_shape_geometry()),
        "TimeThreshold" => float()
      }

  """
  @type isoline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_travel_step() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_ferry_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_after_travel_step() :: %{
        "ChargeStepDetails" => route_charge_step_details(),
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_vehicle_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_next_departure() :: %{
        "Delay" => float(),
        "PlatformName" => String.t() | atom(),
        "Status" => list(any()),
        "Time" => String.t() | atom(),
        "Transport" => route_transit_transport_mode_details()
      }

  """
  @type route_transit_next_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_travel_mode_options() :: %{
        "Car" => route_car_options(),
        "Intermodal" => route_intermodal_options(),
        "Pedestrian" => route_pedestrian_options(),
        "Scooter" => route_scooter_options(),
        "Transit" => route_transit_options(),
        "Truck" => route_truck_options()
      }

  """
  @type route_travel_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_incident() :: %{
        "Description" => String.t() | atom(),
        "Effect" => list(any()),
        "EndTime" => String.t() | atom(),
        "StartTime" => String.t() | atom(),
        "Type" => list(any()),
        "Url" => String.t() | atom()
      }

  """
  @type route_transit_incident() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_shape_geometry() :: %{
        "Polygon" => list(list(list([float()]())())()),
        "PolylinePolygon" => list(String.t() | atom())
      }

  """
  @type isoline_shape_geometry() :: %{(String.t() | atom()) => any()}

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

      route() :: %{
        "Legs" => list(route_leg()),
        "MajorRoadLabels" => list(route_major_road_label()),
        "Summary" => route_summary()
      }

  """
  @type route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_ferry_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_intermodal_rental_options() :: %{
        "AllowedModes" => list(list(any())()),
        "EnabledFor" => list(list(any())()),
        "ExcludedModes" => list(list(any())())
      }

  """
  @type route_intermodal_rental_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_time_breakdown() :: %{
        "RestDuration" => float(),
        "ServiceDuration" => float(),
        "TravelDuration" => float(),
        "WaitDuration" => float()
      }

  """
  @type waypoint_optimization_time_breakdown() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_leg_details() :: %{
        "AfterTravelSteps" => list(route_pedestrian_after_travel_step()),
        "Arrival" => route_pedestrian_arrival(),
        "Departure" => route_pedestrian_departure(),
        "Notices" => list(route_pedestrian_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "Spans" => list(route_pedestrian_span()),
        "Summary" => route_pedestrian_summary(),
        "TravelSteps" => list(route_pedestrian_travel_step())
      }

  """
  @type route_pedestrian_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_clustering_options() :: %{
        "Algorithm" => list(any()),
        "DrivingDistanceOptions" => waypoint_optimization_driving_distance_options()
      }

  """
  @type waypoint_optimization_clustering_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transponder() :: %{
        "SystemName" => String.t() | atom()
      }

  """
  @type route_transponder() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_cycle_durations() :: %{
        "RestDuration" => float(),
        "WorkDuration" => float()
      }

  """
  @type waypoint_optimization_rest_cycle_durations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_pedestrian_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_origin_options() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type waypoint_optimization_origin_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_area() :: %{
        "Geometry" => route_matrix_avoidance_area_geometry()
      }

  """
  @type route_matrix_avoidance_area() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_traffic_options() :: %{
        "Usage" => list(any())
      }

  """
  @type waypoint_optimization_traffic_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_agency() :: %{
        "Name" => String.t() | atom(),
        "Url" => String.t() | atom()
      }

  """
  @type route_transit_agency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_ferry_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_pass() :: %{
        "IncludesReturnTrip" => boolean(),
        "SeniorPass" => boolean(),
        "TransferCount" => integer(),
        "TripCount" => integer(),
        "ValidityPeriod" => route_toll_pass_validity_period()
      }

  """
  @type route_toll_pass() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_profile() :: %{
        "Profile" => String.t() | atom()
      }

  """
  @type waypoint_optimization_rest_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_options() :: %{
        "AccessibilityAttributes" => list(list(any())()),
        "AllowedModes" => list(list(any())()),
        "ExcludedModes" => list(list(any())()),
        "MaxTransfers" => [integer()],
        "Pedestrian" => route_transit_pedestrian_options()
      }

  """
  @type route_transit_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_truck_options() :: %{
        "GrossWeight" => float(),
        "HazardousCargos" => list(list(any())()),
        "Height" => float(),
        "Length" => float(),
        "Trailer" => road_snap_trailer_options(),
        "TunnelRestrictionCode" => String.t() | atom(),
        "Width" => float()
      }

  """
  @type road_snap_truck_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_arrival() :: %{
        "Place" => route_rental_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_rental_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => list(any())
      }

  """
  @type isoline_side_of_street_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_options() :: %{
        "Areas" => list(waypoint_optimization_avoidance_area()),
        "CarShuttleTrains" => boolean(),
        "ControlledAccessHighways" => boolean(),
        "DirtRoads" => boolean(),
        "Ferries" => boolean(),
        "TollRoads" => boolean(),
        "Tunnels" => boolean(),
        "UTurns" => boolean()
      }

  """
  @type waypoint_optimization_avoidance_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_notice() :: %{
        "Code" => list(any()),
        "Impact" => list(any())
      }

  """
  @type route_taxi_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_notice_detail_range() :: %{
        "Max" => [integer()],
        "Min" => [integer()]
      }

  """
  @type route_notice_detail_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => list(any())
      }

  """
  @type waypoint_optimization_side_of_street_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_intermodal_vehicle_options() :: %{
        "AllowedModes" => list(list(any())()),
        "EnabledFor" => list(list(any())()),
        "ExcludedModes" => list(list(any())())
      }

  """
  @type route_intermodal_vehicle_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_connection() :: %{
        "FromPolygonIndex" => [integer()],
        "Geometry" => isoline_connection_geometry(),
        "ToPolygonIndex" => [integer()]
      }

  """
  @type isoline_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_thresholds() :: %{
        "Distance" => list(float()),
        "Time" => list(float())
      }

  """
  @type isoline_thresholds() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_u_turn_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => list(any()),
        "TurnAngle" => float(),
        "TurnIntensity" => list(any())
      }

  """
  @type route_u_turn_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_scooter_options() :: %{
        "EngineType" => list(any()),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => integer()
      }

  """
  @type route_scooter_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_area() :: %{
        "Except" => list(isoline_avoidance_area_geometry()),
        "Geometry" => isoline_avoidance_area_geometry()
      }

  """
  @type isoline_avoidance_area() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_leg() :: %{
        "FerryLegDetails" => route_ferry_leg_details(),
        "Geometry" => route_leg_geometry(),
        "Language" => String.t() | atom(),
        "PedestrianLegDetails" => route_pedestrian_leg_details(),
        "RentalLegDetails" => route_rental_leg_details(),
        "TaxiLegDetails" => route_taxi_leg_details(),
        "TransitLegDetails" => route_transit_leg_details(),
        "TravelMode" => list(any()),
        "Type" => list(any()),
        "VehicleLegDetails" => route_vehicle_leg_details()
      }

  """
  @type route_leg() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_number() :: %{
        "Direction" => list(any()),
        "Language" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type route_number() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_options() :: %{
        "AllTransponders" => boolean(),
        "AllVignettes" => boolean(),
        "Currency" => String.t() | atom(),
        "EmissionType" => route_emission_type(),
        "VehicleCategory" => list(any())
      }

  """
  @type route_toll_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      optimize_waypoints_request() :: %{
        optional("Avoid") => waypoint_optimization_avoidance_options(),
        optional("Clustering") => waypoint_optimization_clustering_options(),
        optional("DepartureTime") => String.t() | atom(),
        optional("Destination") => list([float()]()),
        optional("DestinationOptions") => waypoint_optimization_destination_options(),
        optional("Driver") => waypoint_optimization_driver_options(),
        optional("Exclude") => waypoint_optimization_exclusion_options(),
        optional("Key") => String.t() | atom(),
        optional("OptimizeSequencingFor") => list(any()),
        required("Origin") => list([float()]()),
        optional("OriginOptions") => waypoint_optimization_origin_options(),
        optional("Traffic") => waypoint_optimization_traffic_options(),
        optional("TravelMode") => list(any()),
        optional("TravelModeOptions") => waypoint_optimization_travel_mode_options(),
        optional("Waypoints") => list(waypoint_optimization_waypoint())
      }

  """
  @type optimize_waypoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_weight_constraint() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type route_weight_constraint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_departure() :: %{
        "Place" => route_ferry_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_ferry_departure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_snapped_trace_point() :: %{
        "Confidence" => float(),
        "OriginalPosition" => list([float()]()),
        "SnappedPosition" => list([float()]())
      }

  """
  @type road_snap_snapped_trace_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_pedestrian_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      weight_per_axle_group() :: %{
        "Quad" => float(),
        "Quint" => float(),
        "Single" => float(),
        "Tandem" => float(),
        "Triple" => float()
      }

  """
  @type weight_per_axle_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_rental_after_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_response_notice() :: %{
        "Code" => list(any()),
        "Impact" => list(any())
      }

  """
  @type route_response_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_driver_options() :: %{
        "Schedule" => list(route_driver_schedule_interval())
      }

  """
  @type route_driver_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_truck_options() :: %{
        "GrossWeight" => float(),
        "HazardousCargos" => list(list(any())()),
        "Height" => float(),
        "Length" => float(),
        "Trailer" => waypoint_optimization_trailer_options(),
        "TruckType" => list(any()),
        "TunnelRestrictionCode" => String.t() | atom(),
        "WeightPerAxle" => float(),
        "Width" => float()
      }

  """
  @type waypoint_optimization_truck_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_waypoint() :: %{
        "AccessHours" => waypoint_optimization_access_hours(),
        "AppointmentTime" => String.t() | atom(),
        "Before" => list(integer()),
        "Heading" => float(),
        "Id" => String.t() | atom(),
        "Position" => list([float()]()),
        "ServiceDuration" => float(),
        "SideOfStreet" => waypoint_optimization_side_of_street_options()
      }

  """
  @type waypoint_optimization_waypoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_transport_mode_details() :: %{
        "AvailableSeats" => integer(),
        "Category" => String.t() | atom(),
        "Color" => String.t() | atom(),
        "Engine" => list(any()),
        "LicensePlate" => String.t() | atom(),
        "Mode" => list(any()),
        "Model" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TextColor" => String.t() | atom()
      }

  """
  @type route_taxi_transport_mode_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      corridor() :: %{
        "LineString" => list(list([float()]())()),
        "Radius" => [integer()]
      }

  """
  @type corridor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_agency() :: %{
        "Name" => String.t() | atom(),
        "Url" => String.t() | atom()
      }

  """
  @type route_taxi_agency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_impeding_waypoint() :: %{
        "FailedConstraints" => list(waypoint_optimization_failed_constraint()),
        "Id" => String.t() | atom(),
        "Position" => list([float()]())
      }

  """
  @type waypoint_optimization_impeding_waypoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_travel_step() :: %{
        "ContinueHighwayStepDetails" => route_continue_highway_step_details(),
        "ContinueStepDetails" => route_continue_step_details(),
        "CurrentRoad" => route_road(),
        "Distance" => float(),
        "Duration" => float(),
        "EnterHighwayStepDetails" => route_enter_highway_step_details(),
        "ExitNumber" => list(localized_string()),
        "ExitStepDetails" => route_exit_step_details(),
        "GeometryOffset" => [integer()],
        "Instruction" => String.t() | atom(),
        "KeepStepDetails" => route_keep_step_details(),
        "NextRoad" => route_road(),
        "RampStepDetails" => route_ramp_step_details(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "Signpost" => route_signpost(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => list(any()),
        "UTurnStepDetails" => route_u_turn_step_details()
      }

  """
  @type route_vehicle_travel_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_arrival() :: %{
        "Place" => route_ferry_place(),
        "Time" => String.t() | atom()
      }

  """
  @type route_ferry_arrival() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_travel_mode_options() :: %{
        "Car" => isoline_car_options(),
        "Scooter" => isoline_scooter_options(),
        "Truck" => isoline_truck_options()
      }

  """
  @type isoline_travel_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_notice() :: %{
        "Code" => list(any()),
        "Details" => list(route_vehicle_notice_detail()),
        "Impact" => list(any())
      }

  """
  @type route_vehicle_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_summary() :: %{
        "Overview" => route_transit_overview_summary(),
        "TravelOnly" => route_transit_travel_only_summary()
      }

  """
  @type route_transit_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_trace_point() :: %{
        "Heading" => float(),
        "Position" => list([float()]()),
        "Speed" => float(),
        "Timestamp" => String.t() | atom()
      }

  """
  @type road_snap_trace_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_access_hours_entry() :: %{
        "DayOfWeek" => list(any()),
        "TimeOfDay" => String.t() | atom()
      }

  """
  @type waypoint_optimization_access_hours_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_overview_summary() :: %{
        "BestCaseDuration" => float(),
        "Distance" => float(),
        "Duration" => float(),
        "TypicalDuration" => float()
      }

  """
  @type route_vehicle_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_span() :: %{
        "Country" => String.t() | atom(),
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Names" => list(localized_string()),
        "Region" => String.t() | atom()
      }

  """
  @type route_ferry_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_system() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type route_toll_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_travel_mode_options() :: %{
        "Car" => route_matrix_car_options(),
        "Scooter" => route_matrix_scooter_options(),
        "Truck" => route_matrix_truck_options()
      }

  """
  @type route_matrix_travel_mode_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_pedestrian_options() :: %{
        "MaxDistance" => float(),
        "Speed" => float()
      }

  """
  @type route_transit_pedestrian_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_span() :: %{
        "Country" => String.t() | atom(),
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Names" => list(localized_string()),
        "Region" => String.t() | atom()
      }

  """
  @type route_transit_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_price() :: %{
        "Currency" => String.t() | atom(),
        "Estimate" => boolean(),
        "PerDuration" => float(),
        "Range" => boolean(),
        "RangeValue" => route_toll_price_value_range(),
        "Value" => float()
      }

  """
  @type route_toll_price() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_rental_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_rental_overview_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_optimized_waypoint() :: %{
        "ArrivalTime" => String.t() | atom(),
        "ClusterIndex" => integer(),
        "DepartureTime" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Position" => list([float()]())
      }

  """
  @type waypoint_optimization_optimized_waypoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      road_snap_notice() :: %{
        "Code" => list(any()),
        "Title" => String.t() | atom(),
        "TracePointIndexes" => list([integer()]())
      }

  """
  @type road_snap_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_pedestrian_options() :: %{
        "Speed" => float()
      }

  """
  @type waypoint_optimization_pedestrian_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_continue_step_details() :: %{
        "Intersection" => list(localized_string())
      }

  """
  @type route_continue_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_matrix_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => route_matrix_matching_options(),
        "SideOfStreet" => route_matrix_side_of_street_options()
      }

  """
  @type route_matrix_origin_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_vehicle_incident() :: %{
        "Description" => String.t() | atom(),
        "EndTime" => String.t() | atom(),
        "Severity" => list(any()),
        "StartTime" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type route_vehicle_incident() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_price_summary() :: %{
        "Currency" => String.t() | atom(),
        "Estimate" => boolean(),
        "Range" => boolean(),
        "RangeValue" => route_toll_price_value_range(),
        "Value" => float()
      }

  """
  @type route_toll_price_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_ferry_notice() :: %{
        "Code" => list(any()),
        "Impact" => list(any())
      }

  """
  @type route_ferry_notice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_leg_details() :: %{
        "AfterTravelSteps" => list(route_taxi_after_travel_step()),
        "Agency" => route_taxi_agency(),
        "Arrival" => route_taxi_arrival(),
        "Attributions" => list(route_attribution()),
        "BeforeTravelSteps" => list(route_taxi_before_travel_step()),
        "BookingWebLinks" => list(route_web_link()),
        "Departure" => route_taxi_departure(),
        "Notices" => list(route_taxi_notice()),
        "Summary" => route_taxi_summary(),
        "Transport" => route_taxi_transport_mode_details(),
        "TravelSteps" => list(route_taxi_travel_step())
      }

  """
  @type route_taxi_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_taxi_place() :: %{
        "AccessPointDetails" => route_access_point_details(),
        "Name" => String.t() | atom(),
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "StationDetails" => route_station_details(),
        "Type" => list(any()),
        "WaypointIndex" => integer()
      }

  """
  @type route_taxi_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_pedestrian_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_pedestrian_travel_only_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_zone_category() :: %{
        "Category" => list(any())
      }

  """
  @type isoline_avoidance_zone_category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]())
      }

  """
  @type waypoint_optimization_avoidance_area_geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => list(any())
      }

  """
  @type route_traffic_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_toll_price_value_range() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type route_toll_price_value_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_transit_leg_details() :: %{
        "AfterTravelSteps" => list(route_transit_after_travel_step()),
        "Agency" => route_transit_agency(),
        "Arrival" => route_transit_arrival(),
        "Attributions" => list(route_attribution()),
        "BeforeTravelSteps" => list(route_transit_before_travel_step()),
        "BookingWebLinks" => list(route_web_link()),
        "Departure" => route_transit_departure(),
        "Incidents" => list(route_transit_incident()),
        "IntermediateStops" => list(route_transit_intermediate_stop()),
        "NextDepartures" => list(route_transit_next_departure()),
        "Notices" => list(route_transit_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "Spans" => list(route_transit_span()),
        "Summary" => route_transit_summary(),
        "Transport" => route_transit_transport_mode_details(),
        "TravelSteps" => list(route_transit_travel_step())
      }

  """
  @type route_transit_leg_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_access_hours() :: %{
        "From" => waypoint_optimization_access_hours_entry(),
        "To" => waypoint_optimization_access_hours_entry()
      }

  """
  @type waypoint_optimization_access_hours() :: %{(String.t() | atom()) => any()}

  @type calculate_isolines_errors() ::
          internal_server_exception()
          | access_denied_exception()
          | throttling_exception()
          | validation_exception()

  @type calculate_route_matrix_errors() ::
          internal_server_exception()
          | access_denied_exception()
          | throttling_exception()
          | validation_exception()

  @type calculate_routes_errors() ::
          internal_server_exception()
          | access_denied_exception()
          | throttling_exception()
          | validation_exception()

  @type optimize_waypoints_errors() ::
          internal_server_exception()
          | access_denied_exception()
          | throttling_exception()
          | validation_exception()

  @type snap_to_roads_errors() ::
          internal_server_exception()
          | access_denied_exception()
          | throttling_exception()
          | validation_exception()

  def metadata do
    %{
      api_version: "2020-11-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "geo-routes",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Geo Routes",
      signature_version: "v4",
      signing_name: "geo-routes",
      target_prefix: nil
    }
  end

  @doc """
  Calculates areas that can be reached within specified time or distance
  thresholds from a given point.

  For example, you can use this operation to determine the area within a 30-minute
  drive of a store location, find neighborhoods within walking distance of a
  school, or identify delivery zones based on drive time.

  Isolines (also known as isochrones for time-based calculations) are useful for
  various applications including:

    * Service area visualization - Show customers the area you can serve
  within promised delivery times

    * Site selection - Analyze potential business locations based on
  population within travel distance

    * Site selection - Determine areas that can be reached within
  specified response times

  Route preferences such as avoiding toll roads or ferries are treated as
  preferences rather than absolute restrictions. If a viable route cannot be
  calculated while honoring all preferences, some may be ignored.

  For more information, see [Calculate isolines](https://docs.aws.amazon.com/location/latest/developerguide/calculate-isolines.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec calculate_isolines(map(), calculate_isolines_request(), list()) ::
          {:ok, calculate_isolines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_isolines_errors()}
  def calculate_isolines(%Client{} = client, input, options \\ []) do
    url_path = "/v2/isolines"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  Use `CalculateRouteMatrix` to compute results for all pairs of Origins to
  Destinations.

  Each row corresponds to one entry in Origins. Each entry in the row corresponds
  to the route from that entry in Origins to an entry in Destinations positions.

  For more information, see [Calculate route matrix](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec calculate_route_matrix(map(), calculate_route_matrix_request(), list()) ::
          {:ok, calculate_route_matrix_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_route_matrix_errors()}
  def calculate_route_matrix(%Client{} = client, input, options \\ []) do
    url_path = "/v2/route-matrix"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `CalculateRoutes` computes routes given the following required parameters:
  `Origin` and `Destination`.

  For more information, see [Calculate routes](https://docs.aws.amazon.com/location/latest/developerguide/calculate-routes.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec calculate_routes(map(), calculate_routes_request(), list()) ::
          {:ok, calculate_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_routes_errors()}
  def calculate_routes(%Client{} = client, input, options \\ []) do
    url_path = "/v2/routes"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `OptimizeWaypoints` calculates the optimal order to travel between a set of
  waypoints to minimize either the travel time or the distance travelled during
  the journey, based on road network restrictions and the traffic pattern data.

  For more information, see [Optimize waypoints](https://docs.aws.amazon.com/location/latest/developerguide/actions-optimize-waypoints.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec optimize_waypoints(map(), optimize_waypoints_request(), list()) ::
          {:ok, optimize_waypoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, optimize_waypoints_errors()}
  def optimize_waypoints(%Client{} = client, input, options \\ []) do
    url_path = "/v2/optimize-waypoints"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `SnapToRoads` matches GPS trace to roads most likely traveled on.

  For more information, see [Snap to Roads](https://docs.aws.amazon.com/location/latest/developerguide/snap-to-roads.html)
  in the *Amazon Location Service Developer Guide*.
  """
  @spec snap_to_roads(map(), snap_to_roads_request(), list()) ::
          {:ok, snap_to_roads_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, snap_to_roads_errors()}
  def snap_to_roads(%Client{} = client, input, options \\ []) do
    url_path = "/v2/snap-to-roads"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
end
