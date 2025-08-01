# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GeoRoutes do
  @moduledoc """
  With the Amazon Location Routes API you can calculate routes and estimate travel
  time
  based on up-to-date road network and live traffic information.

  Calculate optimal travel routes and estimate travel times using up-to-date road
  network
  and traffic data. Key features include:

    *
  Point-to-point routing with estimated travel time, distance, and turn-by-turn
  directions

    *
  Multi-point route optimization to minimize travel time or distance

    *
  Route matrices for efficient multi-destination planning

    *
  Isoline calculations to determine reachable areas within specified time or
  distance thresholds

    *
  Map-matching to align GPS traces with the road network
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      route_toll_pass() :: %{
        "IncludesReturnTrip" => [boolean()],
        "SeniorPass" => [boolean()],
        "TransferCount" => [integer()],
        "TripCount" => [integer()],
        "ValidityPeriod" => route_toll_pass_validity_period()
      }

  """
  @type route_toll_pass() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_trailer_options() :: %{
        "TrailerCount" => [integer()]
      }

  """
  @type waypoint_optimization_trailer_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_avoidance_options() :: %{
        "Areas" => list(route_avoidance_area()),
        "CarShuttleTrains" => [boolean()],
        "ControlledAccessHighways" => [boolean()],
        "DirtRoads" => [boolean()],
        "Ferries" => [boolean()],
        "SeasonalClosure" => [boolean()],
        "TollRoads" => [boolean()],
        "TollTransponders" => [boolean()],
        "TruckRoadTypes" => list(String.t() | Atom.t()),
        "Tunnels" => [boolean()],
        "UTurns" => [boolean()],
        "ZoneCategories" => list(route_avoidance_zone_category())
      }

  """
  @type route_avoidance_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_impeding_waypoint() :: %{
        "FailedConstraints" => list(waypoint_optimization_failed_constraint()),
        "Id" => String.t() | Atom.t(),
        "Position" => list([float()]())
      }

  """
  @type waypoint_optimization_impeding_waypoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_notice() :: %{
        "Code" => String.t() | Atom.t(),
        "Impact" => String.t() | Atom.t()
      }

  """
  @type route_ferry_notice() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_u_turn_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_u_turn_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_truck_options() :: %{
        "GrossWeight" => float(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "Height" => float(),
        "Length" => float(),
        "Trailer" => waypoint_optimization_trailer_options(),
        "TruckType" => String.t() | Atom.t(),
        "TunnelRestrictionCode" => String.t() | Atom.t(),
        "WeightPerAxle" => float(),
        "Width" => float()
      }

  """
  @type waypoint_optimization_truck_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      snap_to_roads_request() :: %{
        optional("Key") => String.t() | Atom.t(),
        optional("SnapRadius") => float(),
        optional("SnappedGeometryFormat") => String.t() | Atom.t(),
        optional("TravelMode") => String.t() | Atom.t(),
        optional("TravelModeOptions") => road_snap_travel_mode_options(),
        required("TracePoints") => list(road_snap_trace_point())
      }

  """
  @type snap_to_roads_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => [boolean()],
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "SideOfStreet" => route_side_of_street_options(),
        "StopDuration" => float()
      }

  """
  @type route_destination_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_payment_site() :: %{
        "Name" => [String.t() | Atom.t()],
        "Position" => list([float()]())
      }

  """
  @type route_toll_payment_site() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_allow_options() :: %{
        "Hot" => [boolean()],
        "Hov" => [boolean()]
      }

  """
  @type isoline_allow_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_rate() :: %{
        "ApplicableTimes" => [String.t() | Atom.t()],
        "ConvertedPrice" => route_toll_price(),
        "Id" => [String.t() | Atom.t()],
        "LocalPrice" => route_toll_price(),
        "Name" => [String.t() | Atom.t()],
        "Pass" => route_toll_pass(),
        "PaymentMethods" => list(String.t() | Atom.t()),
        "Transponders" => list(route_transponder())
      }

  """
  @type route_toll_rate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_area() :: %{
        "Geometry" => route_matrix_avoidance_area_geometry()
      }

  """
  @type route_matrix_avoidance_area() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_exit_step_details() :: %{
        "Intersection" => list(localized_string()),
        "RelativeExit" => [integer()],
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_exit_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_arrival() :: %{
        "Place" => route_ferry_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_ferry_arrival() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_place() :: %{
        "Name" => [String.t() | Atom.t()],
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "SideOfStreet" => String.t() | Atom.t(),
        "WaypointIndex" => [integer()]
      }

  """
  @type route_vehicle_place() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_driver_schedule_interval() :: %{
        "DriveDuration" => float(),
        "RestDuration" => float()
      }

  """
  @type route_driver_schedule_interval() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_zone_category() :: %{
        "Category" => String.t() | Atom.t()
      }

  """
  @type route_matrix_avoidance_zone_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_signpost() :: %{
        "Labels" => list(route_signpost_label())
      }

  """
  @type route_signpost() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_license_plate() :: %{
        "LastCharacter" => [String.t() | Atom.t()]
      }

  """
  @type route_vehicle_license_plate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_driver_options() :: %{
        "RestCycles" => waypoint_optimization_rest_cycles(),
        "RestProfile" => waypoint_optimization_rest_profile(),
        "TreatServiceTimeAs" => String.t() | Atom.t()
      }

  """
  @type waypoint_optimization_driver_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_car_options() :: %{
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type route_matrix_car_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Corridor" => corridor(),
        "Polygon" => list(list(list([float()]())())()),
        "PolylineCorridor" => polyline_corridor(),
        "PolylinePolygon" => list(String.t() | Atom.t())
      }

  """
  @type route_avoidance_area_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_travel_mode_options() :: %{
        "Car" => isoline_car_options(),
        "Scooter" => isoline_scooter_options(),
        "Truck" => isoline_truck_options()
      }

  """
  @type isoline_travel_mode_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_summary() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "Tolls" => route_toll_summary()
      }

  """
  @type route_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pass_through_waypoint() :: %{
        "GeometryOffset" => [integer()],
        "Place" => route_pass_through_place()
      }

  """
  @type route_pass_through_waypoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_access_hours_entry() :: %{
        "DayOfWeek" => String.t() | Atom.t(),
        "TimeOfDay" => String.t() | Atom.t()
      }

  """
  @type waypoint_optimization_access_hours_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_car_options() :: %{
        "EngineType" => String.t() | Atom.t(),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type isoline_car_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_connection() :: %{
        "Distance" => float(),
        "From" => String.t() | Atom.t(),
        "RestDuration" => float(),
        "To" => String.t() | Atom.t(),
        "TravelDuration" => float(),
        "WaitDuration" => float()
      }

  """
  @type waypoint_optimization_connection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_summary() :: %{
        "Total" => route_toll_price_summary()
      }

  """
  @type route_toll_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_clustering_options() :: %{
        "Algorithm" => String.t() | Atom.t(),
        "DrivingDistanceOptions" => waypoint_optimization_driving_distance_options()
      }

  """
  @type waypoint_optimization_clustering_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_roundabout_exit_step_details() :: %{
        "Intersection" => list(localized_string()),
        "RelativeExit" => [integer()],
        "RoundaboutAngle" => float(),
        "SteeringDirection" => String.t() | Atom.t()
      }

  """
  @type route_roundabout_exit_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_enter_highway_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_enter_highway_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_system() :: %{
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type route_toll_system() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_access_hours() :: %{
        "From" => waypoint_optimization_access_hours_entry(),
        "To" => waypoint_optimization_access_hours_entry()
      }

  """
  @type waypoint_optimization_access_hours() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_origin_options() :: %{
        "Id" => String.t() | Atom.t()
      }

  """
  @type waypoint_optimization_origin_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_notice() :: %{
        "Code" => String.t() | Atom.t(),
        "Title" => [String.t() | Atom.t()],
        "TracePointIndexes" => list([integer()]())
      }

  """
  @type road_snap_notice() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_price_value_range() :: %{
        "Max" => [float()],
        "Min" => [float()]
      }

  """
  @type route_toll_price_value_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      snap_to_roads_response() :: %{
        "Notices" => list(road_snap_notice()),
        "PricingBucket" => [String.t() | Atom.t()],
        "SnappedGeometry" => road_snap_snapped_geometry(),
        "SnappedGeometryFormat" => String.t() | Atom.t(),
        "SnappedTracePoints" => list(road_snap_snapped_trace_point())
      }

  """
  @type snap_to_roads_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_pedestrian_overview_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_area() :: %{
        "Geometry" => waypoint_optimization_avoidance_area_geometry()
      }

  """
  @type waypoint_optimization_avoidance_area() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_keep_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_keep_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => String.t() | Atom.t()
      }

  """
  @type route_traffic_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_cycles() :: %{
        "LongCycle" => waypoint_optimization_rest_cycle_durations(),
        "ShortCycle" => waypoint_optimization_rest_cycle_durations()
      }

  """
  @type waypoint_optimization_rest_cycles() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_waypoint() :: %{
        "AccessHours" => waypoint_optimization_access_hours(),
        "AppointmentTime" => String.t() | Atom.t(),
        "Before" => list(integer()),
        "Heading" => float(),
        "Id" => String.t() | Atom.t(),
        "Position" => list([float()]()),
        "ServiceDuration" => float(),
        "SideOfStreet" => waypoint_optimization_side_of_street_options()
      }

  """
  @type waypoint_optimization_waypoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      optimize_waypoints_response() :: %{
        "Connections" => list(waypoint_optimization_connection()),
        "Distance" => float(),
        "Duration" => float(),
        "ImpedingWaypoints" => list(waypoint_optimization_impeding_waypoint()),
        "OptimizedWaypoints" => list(waypoint_optimization_optimized_waypoint()),
        "PricingBucket" => [String.t() | Atom.t()],
        "TimeBreakdown" => waypoint_optimization_time_breakdown()
      }

  """
  @type optimize_waypoints_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_place() :: %{
        "Name" => [String.t() | Atom.t()],
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "SideOfStreet" => String.t() | Atom.t(),
        "WaypointIndex" => [integer()]
      }

  """
  @type route_pedestrian_place() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_summary() :: %{
        "Overview" => route_pedestrian_overview_summary(),
        "TravelOnly" => route_pedestrian_travel_only_summary()
      }

  """
  @type route_pedestrian_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_options() :: %{
        "AllTransponders" => [boolean()],
        "AllVignettes" => [boolean()],
        "Currency" => String.t() | Atom.t(),
        "EmissionType" => route_emission_type(),
        "VehicleCategory" => String.t() | Atom.t()
      }

  """
  @type route_toll_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      optimize_waypoints_request() :: %{
        optional("Avoid") => waypoint_optimization_avoidance_options(),
        optional("Clustering") => waypoint_optimization_clustering_options(),
        optional("DepartureTime") => String.t() | Atom.t(),
        optional("Destination") => list([float()]()),
        optional("DestinationOptions") => waypoint_optimization_destination_options(),
        optional("Driver") => waypoint_optimization_driver_options(),
        optional("Exclude") => waypoint_optimization_exclusion_options(),
        optional("Key") => String.t() | Atom.t(),
        optional("OptimizeSequencingFor") => String.t() | Atom.t(),
        optional("OriginOptions") => waypoint_optimization_origin_options(),
        optional("Traffic") => waypoint_optimization_traffic_options(),
        optional("TravelMode") => String.t() | Atom.t(),
        optional("TravelModeOptions") => waypoint_optimization_travel_mode_options(),
        optional("Waypoints") => list(waypoint_optimization_waypoint()),
        required("Origin") => list([float()]())
      }

  """
  @type optimize_waypoints_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_profile() :: %{
        "Profile" => [String.t() | Atom.t()]
      }

  """
  @type waypoint_optimization_rest_profile() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_major_road_label() :: %{
        "RoadName" => localized_string(),
        "RouteNumber" => route_number()
      }

  """
  @type route_major_road_label() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      polyline_corridor() :: %{
        "Polyline" => String.t() | Atom.t(),
        "Radius" => [integer()]
      }

  """
  @type polyline_corridor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_arrival() :: %{
        "Place" => route_pedestrian_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_pedestrian_arrival() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_isolines_request() :: %{
        optional("Allow") => isoline_allow_options(),
        optional("ArrivalTime") => String.t() | Atom.t(),
        optional("Avoid") => isoline_avoidance_options(),
        optional("DepartNow") => [boolean()],
        optional("DepartureTime") => String.t() | Atom.t(),
        optional("Destination") => list([float()]()),
        optional("DestinationOptions") => isoline_destination_options(),
        optional("IsolineGeometryFormat") => String.t() | Atom.t(),
        optional("IsolineGranularity") => isoline_granularity_options(),
        optional("Key") => String.t() | Atom.t(),
        optional("OptimizeIsolineFor") => String.t() | Atom.t(),
        optional("OptimizeRoutingFor") => String.t() | Atom.t(),
        optional("Origin") => list([float()]()),
        optional("OriginOptions") => isoline_origin_options(),
        optional("Traffic") => isoline_traffic_options(),
        optional("TravelMode") => String.t() | Atom.t(),
        optional("TravelModeOptions") => isoline_travel_mode_options(),
        required("Thresholds") => isoline_thresholds()
      }

  """
  @type calculate_isolines_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_avoidance_zone_category() :: %{
        "Category" => String.t() | Atom.t()
      }

  """
  @type route_avoidance_zone_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_roundabout_pass_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_roundabout_pass_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_summary() :: %{
        "Overview" => route_ferry_overview_summary(),
        "TravelOnly" => route_ferry_travel_only_summary()
      }

  """
  @type route_ferry_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_origin() :: %{
        "Options" => route_matrix_origin_options(),
        "Position" => list([float()]())
      }

  """
  @type route_matrix_origin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline() :: %{
        "Connections" => list(isoline_connection()),
        "DistanceThreshold" => float(),
        "Geometries" => list(isoline_shape_geometry()),
        "TimeThreshold" => float()
      }

  """
  @type isoline() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_notice() :: %{
        "Code" => String.t() | Atom.t(),
        "Impact" => String.t() | Atom.t()
      }

  """
  @type route_pedestrian_notice() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_connection_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | Atom.t()
      }

  """
  @type isoline_connection_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_span() :: %{
        "BestCaseDuration" => float(),
        "CarAccess" => list(String.t() | Atom.t()),
        "Country" => String.t() | Atom.t(),
        "Distance" => float(),
        "Duration" => float(),
        "DynamicSpeed" => route_span_dynamic_speed_details(),
        "FunctionalClassification" => [integer()],
        "Gate" => String.t() | Atom.t(),
        "GeometryOffset" => [integer()],
        "Incidents" => list([integer()]()),
        "Names" => list(localized_string()),
        "Notices" => list([integer()]()),
        "RailwayCrossing" => String.t() | Atom.t(),
        "Region" => [String.t() | Atom.t()],
        "RoadAttributes" => list(String.t() | Atom.t()),
        "RouteNumbers" => list(route_number()),
        "ScooterAccess" => list(String.t() | Atom.t()),
        "SpeedLimit" => route_span_speed_limit_details(),
        "TollSystems" => list([integer()]()),
        "TruckAccess" => list(String.t() | Atom.t()),
        "TruckRoadTypes" => list([integer()]()),
        "TypicalDuration" => float(),
        "Zones" => list([integer()]())
      }

  """
  @type route_vehicle_span() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => isoline_matching_options(),
        "SideOfStreet" => isoline_side_of_street_options()
      }

  """
  @type isoline_destination_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_transponder() :: %{
        "SystemName" => [String.t() | Atom.t()]
      }

  """
  @type route_transponder() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_leg_details() :: %{
        "AfterTravelSteps" => list(route_ferry_after_travel_step()),
        "Arrival" => route_ferry_arrival(),
        "BeforeTravelSteps" => list(route_ferry_before_travel_step()),
        "Departure" => route_ferry_departure(),
        "Notices" => list(route_ferry_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "RouteName" => [String.t() | Atom.t()],
        "Spans" => list(route_ferry_span()),
        "Summary" => route_ferry_summary(),
        "TravelSteps" => list(route_ferry_travel_step())
      }

  """
  @type route_ferry_leg_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matching_options() :: %{
        "NameHint" => String.t() | Atom.t(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => String.t() | Atom.t()
      }

  """
  @type route_matching_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_exclusion_options() :: %{
        "Countries" => list(String.t() | Atom.t())
      }

  """
  @type route_matrix_exclusion_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_exclusion_options() :: %{
        "Countries" => list(String.t() | Atom.t())
      }

  """
  @type waypoint_optimization_exclusion_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_travel_mode_options() :: %{
        "Car" => route_car_options(),
        "Pedestrian" => route_pedestrian_options(),
        "Scooter" => route_scooter_options(),
        "Truck" => route_truck_options()
      }

  """
  @type route_travel_mode_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_scooter_options() :: %{
        "EngineType" => String.t() | Atom.t(),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type isoline_scooter_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_price_summary() :: %{
        "Currency" => String.t() | Atom.t(),
        "Estimate" => [boolean()],
        "Range" => [boolean()],
        "RangeValue" => route_toll_price_value_range(),
        "Value" => [float()]
      }

  """
  @type route_toll_price_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_connection() :: %{
        "FromPolygonIndex" => [integer()],
        "Geometry" => isoline_connection_geometry(),
        "ToPolygonIndex" => [integer()]
      }

  """
  @type isoline_connection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_travel_mode_options() :: %{
        "Pedestrian" => waypoint_optimization_pedestrian_options(),
        "Truck" => waypoint_optimization_truck_options()
      }

  """
  @type waypoint_optimization_travel_mode_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_area() :: %{
        "Except" => list(isoline_avoidance_area_geometry()),
        "Geometry" => isoline_avoidance_area_geometry()
      }

  """
  @type isoline_avoidance_area() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => [boolean()],
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "SideOfStreet" => route_side_of_street_options()
      }

  """
  @type route_origin_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_after_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_ferry_after_travel_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      corridor() :: %{
        "LineString" => list(list([float()]())()),
        "Radius" => [integer()]
      }

  """
  @type corridor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => String.t() | Atom.t()
      }

  """
  @type route_matrix_traffic_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_granularity_options() :: %{
        "MaxPoints" => [integer()],
        "MaxResolution" => float()
      }

  """
  @type isoline_granularity_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_trailer_options() :: %{
        "TrailerCount" => [integer()]
      }

  """
  @type route_matrix_trailer_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_pedestrian_travel_only_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_travel_only_summary() :: %{
        "Duration" => float()
      }

  """
  @type route_ferry_travel_only_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_departure() :: %{
        "Place" => route_pedestrian_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_pedestrian_departure() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_notice_detail() :: %{
        "Title" => [String.t() | Atom.t()],
        "ViolatedConstraints" => route_violated_constraints()
      }

  """
  @type route_vehicle_notice_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_truck_options() :: %{
        "AxleCount" => [integer()],
        "EngineType" => String.t() | Atom.t(),
        "GrossWeight" => float(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "Height" => float(),
        "HeightAboveFirstAxle" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()],
        "PayloadCapacity" => float(),
        "TireCount" => [integer()],
        "Trailer" => route_trailer_options(),
        "TruckType" => String.t() | Atom.t(),
        "TunnelRestrictionCode" => String.t() | Atom.t(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type route_truck_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_incident() :: %{
        "Description" => [String.t() | Atom.t()],
        "EndTime" => String.t() | Atom.t(),
        "Severity" => String.t() | Atom.t(),
        "StartTime" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_vehicle_incident() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_leg_details() :: %{
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
        "TruckRoadTypes" => list(String.t() | Atom.t()),
        "Zones" => list(route_zone())
      }

  """
  @type route_vehicle_leg_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_car_options() :: %{
        "EngineType" => String.t() | Atom.t(),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type route_car_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      localized_string() :: %{
        "Language" => String.t() | Atom.t(),
        "Value" => [String.t() | Atom.t()]
      }

  """
  @type localized_string() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_travel_step() :: %{
        "ContinueStepDetails" => route_continue_step_details(),
        "CurrentRoad" => route_road(),
        "Distance" => float(),
        "Duration" => float(),
        "ExitNumber" => list(localized_string()),
        "GeometryOffset" => [integer()],
        "Instruction" => [String.t() | Atom.t()],
        "KeepStepDetails" => route_keep_step_details(),
        "NextRoad" => route_road(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "Signpost" => route_signpost(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_pedestrian_travel_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_traffic_options() :: %{
        "FlowEventThresholdOverride" => float(),
        "Usage" => String.t() | Atom.t()
      }

  """
  @type isoline_traffic_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_span_speed_limit_details() :: %{
        "MaxSpeed" => float(),
        "Unlimited" => [boolean()]
      }

  """
  @type route_span_speed_limit_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_destination_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => route_matrix_matching_options(),
        "SideOfStreet" => route_matrix_side_of_street_options()
      }

  """
  @type route_matrix_destination_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route() :: %{
        "Legs" => list(route_leg()),
        "MajorRoadLabels" => list(route_major_road_label()),
        "Summary" => route_summary()
      }

  """
  @type route() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ramp_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_ramp_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_trailer_options() :: %{
        "AxleCount" => [integer()],
        "TrailerCount" => [integer()]
      }

  """
  @type route_trailer_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Corridor" => corridor(),
        "Polygon" => list(list(list([float()]())())()),
        "PolylineCorridor" => polyline_corridor(),
        "PolylinePolygon" => list(String.t() | Atom.t())
      }

  """
  @type isoline_avoidance_area_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      circle() :: %{
        "Center" => list([float()]()),
        "Radius" => [float()]
      }

  """
  @type circle() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]()),
        "Polygon" => list(list(list([float()]())())()),
        "PolylinePolygon" => list(String.t() | Atom.t())
      }

  """
  @type route_matrix_avoidance_area_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_signpost_label() :: %{
        "RouteNumber" => route_number(),
        "Text" => localized_string()
      }

  """
  @type route_signpost_label() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_matching_options() :: %{
        "NameHint" => String.t() | Atom.t(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => String.t() | Atom.t()
      }

  """
  @type isoline_matching_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll() :: %{
        "Country" => String.t() | Atom.t(),
        "PaymentSites" => list(route_toll_payment_site()),
        "Rates" => list(route_toll_rate()),
        "Systems" => list([integer()]())
      }

  """
  @type route_toll() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_trailer_options() :: %{
        "AxleCount" => [integer()],
        "TrailerCount" => [integer()]
      }

  """
  @type isoline_trailer_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_area_geometry() :: %{
        "BoundingBox" => list([float()]())
      }

  """
  @type waypoint_optimization_avoidance_area_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_thresholds() :: %{
        "Distance" => list(float()),
        "Time" => list(float())
      }

  """
  @type isoline_thresholds() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_options() :: %{
        "Areas" => list(isoline_avoidance_area()),
        "CarShuttleTrains" => [boolean()],
        "ControlledAccessHighways" => [boolean()],
        "DirtRoads" => [boolean()],
        "Ferries" => [boolean()],
        "SeasonalClosure" => [boolean()],
        "TollRoads" => [boolean()],
        "TollTransponders" => [boolean()],
        "TruckRoadTypes" => list(String.t() | Atom.t()),
        "Tunnels" => [boolean()],
        "UTurns" => [boolean()],
        "ZoneCategories" => list(isoline_avoidance_zone_category())
      }

  """
  @type isoline_avoidance_options() :: %{String.t() | Atom.t() => any()}

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
        "Instruction" => [String.t() | Atom.t()],
        "KeepStepDetails" => route_keep_step_details(),
        "NextRoad" => route_road(),
        "RampStepDetails" => route_ramp_step_details(),
        "RoundaboutEnterStepDetails" => route_roundabout_enter_step_details(),
        "RoundaboutExitStepDetails" => route_roundabout_exit_step_details(),
        "RoundaboutPassStepDetails" => route_roundabout_pass_step_details(),
        "Signpost" => route_signpost(),
        "TurnStepDetails" => route_turn_step_details(),
        "Type" => String.t() | Atom.t(),
        "UTurnStepDetails" => route_u_turn_step_details()
      }

  """
  @type route_vehicle_travel_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_pass_validity_period() :: %{
        "Period" => String.t() | Atom.t(),
        "PeriodCount" => [integer()]
      }

  """
  @type route_toll_pass_validity_period() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_destination_options() :: %{
        "AccessHours" => waypoint_optimization_access_hours(),
        "AppointmentTime" => String.t() | Atom.t(),
        "Heading" => float(),
        "Id" => String.t() | Atom.t(),
        "ServiceDuration" => float(),
        "SideOfStreet" => waypoint_optimization_side_of_street_options()
      }

  """
  @type waypoint_optimization_destination_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_traffic_options() :: %{
        "Usage" => String.t() | Atom.t()
      }

  """
  @type waypoint_optimization_traffic_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_leg_details() :: %{
        "Arrival" => route_pedestrian_arrival(),
        "Departure" => route_pedestrian_departure(),
        "Notices" => list(route_pedestrian_notice()),
        "PassThroughWaypoints" => list(route_pass_through_waypoint()),
        "Spans" => list(route_pedestrian_span()),
        "Summary" => route_pedestrian_summary(),
        "TravelSteps" => list(route_pedestrian_travel_step())
      }

  """
  @type route_pedestrian_leg_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_driver_options() :: %{
        "Schedule" => list(route_driver_schedule_interval())
      }

  """
  @type route_driver_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_truck_options() :: %{
        "AxleCount" => [integer()],
        "GrossWeight" => float(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "Height" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()],
        "PayloadCapacity" => float(),
        "Trailer" => route_matrix_trailer_options(),
        "TruckType" => String.t() | Atom.t(),
        "TunnelRestrictionCode" => String.t() | Atom.t(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type route_matrix_truck_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_road() :: %{
        "RoadName" => list(localized_string()),
        "RouteNumber" => list(route_number()),
        "Towards" => list(localized_string()),
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_road() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => String.t() | Atom.t()
      }

  """
  @type isoline_side_of_street_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_destination() :: %{
        "Options" => route_matrix_destination_options(),
        "Position" => list([float()]())
      }

  """
  @type route_matrix_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_roundabout_enter_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_roundabout_enter_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_matching_options() :: %{
        "NameHint" => String.t() | Atom.t(),
        "OnRoadThreshold" => float(),
        "Radius" => float(),
        "Strategy" => String.t() | Atom.t()
      }

  """
  @type route_matrix_matching_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_boundary() :: %{
        "Geometry" => route_matrix_boundary_geometry(),
        "Unbounded" => [boolean()]
      }

  """
  @type route_matrix_boundary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_travel_mode_options() :: %{
        "Car" => route_matrix_car_options(),
        "Scooter" => route_matrix_scooter_options(),
        "Truck" => route_matrix_truck_options()
      }

  """
  @type route_matrix_travel_mode_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_before_travel_step() :: %{
        "Duration" => float(),
        "Instruction" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_ferry_before_travel_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_travel_only_summary() :: %{
        "BestCaseDuration" => float(),
        "Duration" => float(),
        "TypicalDuration" => float()
      }

  """
  @type route_vehicle_travel_only_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_zone() :: %{
        "Category" => String.t() | Atom.t(),
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type route_zone() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_leg_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | Atom.t()
      }

  """
  @type route_leg_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_routes_request() :: %{
        optional("Allow") => route_allow_options(),
        optional("ArrivalTime") => String.t() | Atom.t(),
        optional("Avoid") => route_avoidance_options(),
        optional("DepartNow") => [boolean()],
        optional("DepartureTime") => String.t() | Atom.t(),
        optional("DestinationOptions") => route_destination_options(),
        optional("Driver") => route_driver_options(),
        optional("Exclude") => route_exclusion_options(),
        optional("InstructionsMeasurementSystem") => String.t() | Atom.t(),
        optional("Key") => String.t() | Atom.t(),
        optional("Languages") => list(String.t() | Atom.t()),
        optional("LegAdditionalFeatures") => list(String.t() | Atom.t()),
        optional("LegGeometryFormat") => String.t() | Atom.t(),
        optional("MaxAlternatives") => [integer()],
        optional("OptimizeRoutingFor") => String.t() | Atom.t(),
        optional("OriginOptions") => route_origin_options(),
        optional("SpanAdditionalFeatures") => list(String.t() | Atom.t()),
        optional("Tolls") => route_toll_options(),
        optional("Traffic") => route_traffic_options(),
        optional("TravelMode") => String.t() | Atom.t(),
        optional("TravelModeOptions") => route_travel_mode_options(),
        optional("TravelStepType") => String.t() | Atom.t(),
        optional("Waypoints") => list(route_waypoint()),
        required("Destination") => list([float()]()),
        required("Origin") => list([float()]())
      }

  """
  @type calculate_routes_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_number() :: %{
        "Direction" => String.t() | Atom.t(),
        "Language" => String.t() | Atom.t(),
        "Value" => [String.t() | Atom.t()]
      }

  """
  @type route_number() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_span_dynamic_speed_details() :: %{
        "BestCaseSpeed" => float(),
        "TurnDuration" => float(),
        "TypicalSpeed" => float()
      }

  """
  @type route_span_dynamic_speed_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_departure() :: %{
        "Place" => route_ferry_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_ferry_departure() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_scooter_options() :: %{
        "EngineType" => String.t() | Atom.t(),
        "LicensePlate" => route_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type route_scooter_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_continue_highway_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_continue_highway_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_leg() :: %{
        "FerryLegDetails" => route_ferry_leg_details(),
        "Geometry" => route_leg_geometry(),
        "Language" => String.t() | Atom.t(),
        "PedestrianLegDetails" => route_pedestrian_leg_details(),
        "TravelMode" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "VehicleLegDetails" => route_vehicle_leg_details()
      }

  """
  @type route_leg() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_trace_point() :: %{
        "Heading" => float(),
        "Position" => list([float()]()),
        "Speed" => float(),
        "Timestamp" => String.t() | Atom.t()
      }

  """
  @type road_snap_trace_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_travel_step() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Instruction" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type route_ferry_travel_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_travel_mode_options() :: %{
        "Truck" => road_snap_truck_options()
      }

  """
  @type road_snap_travel_mode_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_response() :: %{
        "ErrorCount" => [integer()],
        "PricingBucket" => [String.t() | Atom.t()],
        "RouteMatrix" => list(list(route_matrix_entry())()),
        "RoutingBoundary" => route_matrix_boundary()
      }

  """
  @type calculate_route_matrix_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_span() :: %{
        "BestCaseDuration" => float(),
        "Country" => String.t() | Atom.t(),
        "Distance" => float(),
        "Duration" => float(),
        "DynamicSpeed" => route_span_dynamic_speed_details(),
        "FunctionalClassification" => [integer()],
        "GeometryOffset" => [integer()],
        "Incidents" => list([integer()]()),
        "Names" => list(localized_string()),
        "PedestrianAccess" => list(String.t() | Atom.t()),
        "Region" => [String.t() | Atom.t()],
        "RoadAttributes" => list(String.t() | Atom.t()),
        "RouteNumbers" => list(route_number()),
        "SpeedLimit" => route_span_speed_limit_details(),
        "TypicalDuration" => float()
      }

  """
  @type route_pedestrian_span() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_optimized_waypoint() :: %{
        "ArrivalTime" => String.t() | Atom.t(),
        "ClusterIndex" => integer(),
        "DepartureTime" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Position" => list([float()]())
      }

  """
  @type waypoint_optimization_optimized_waypoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_avoidance_options() :: %{
        "Areas" => list(route_matrix_avoidance_area()),
        "CarShuttleTrains" => [boolean()],
        "ControlledAccessHighways" => [boolean()],
        "DirtRoads" => [boolean()],
        "Ferries" => [boolean()],
        "TollRoads" => [boolean()],
        "TollTransponders" => [boolean()],
        "TruckRoadTypes" => list(String.t() | Atom.t()),
        "Tunnels" => [boolean()],
        "UTurns" => [boolean()],
        "ZoneCategories" => list(route_matrix_avoidance_zone_category())
      }

  """
  @type route_matrix_avoidance_options() :: %{String.t() | Atom.t() => any()}

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
  @type weight_per_axle_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => route_matrix_matching_options(),
        "SideOfStreet" => route_matrix_side_of_street_options()
      }

  """
  @type route_matrix_origin_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => String.t() | Atom.t()
      }

  """
  @type waypoint_optimization_side_of_street_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | Atom.t()],
        "Reason" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_vehicle_license_plate() :: %{
        "LastCharacter" => [String.t() | Atom.t()]
      }

  """
  @type isoline_vehicle_license_plate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_snapped_trace_point() :: %{
        "Confidence" => [float()],
        "OriginalPosition" => list([float()]()),
        "SnappedPosition" => list([float()]())
      }

  """
  @type road_snap_snapped_trace_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_response_notice() :: %{
        "Code" => String.t() | Atom.t(),
        "Impact" => String.t() | Atom.t()
      }

  """
  @type route_response_notice() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_avoidance_area() :: %{
        "Except" => list(route_avoidance_area_geometry()),
        "Geometry" => route_avoidance_area_geometry()
      }

  """
  @type route_avoidance_area() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pedestrian_options() :: %{
        "Speed" => float()
      }

  """
  @type route_pedestrian_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_rest_cycle_durations() :: %{
        "RestDuration" => float(),
        "WorkDuration" => float()
      }

  """
  @type waypoint_optimization_rest_cycle_durations() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_notice() :: %{
        "Code" => String.t() | Atom.t(),
        "Details" => list(route_vehicle_notice_detail()),
        "Impact" => String.t() | Atom.t()
      }

  """
  @type route_vehicle_notice() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_waypoint() :: %{
        "AvoidActionsForDistance" => float(),
        "AvoidUTurns" => [boolean()],
        "Heading" => float(),
        "Matching" => route_matching_options(),
        "PassThrough" => [boolean()],
        "Position" => list([float()]()),
        "SideOfStreet" => route_side_of_street_options(),
        "StopDuration" => float()
      }

  """
  @type route_waypoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_arrival() :: %{
        "Place" => route_vehicle_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_vehicle_arrival() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_truck_options() :: %{
        "GrossWeight" => float(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "Height" => float(),
        "Length" => float(),
        "Trailer" => road_snap_trailer_options(),
        "TunnelRestrictionCode" => String.t() | Atom.t(),
        "Width" => float()
      }

  """
  @type road_snap_truck_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_place() :: %{
        "Name" => [String.t() | Atom.t()],
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "WaypointIndex" => [integer()]
      }

  """
  @type route_ferry_place() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_overview_summary() :: %{
        "Distance" => float(),
        "Duration" => float()
      }

  """
  @type route_ferry_overview_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_departure() :: %{
        "Place" => route_vehicle_place(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type route_vehicle_departure() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_pass_through_place() :: %{
        "OriginalPosition" => list([float()]()),
        "Position" => list([float()]()),
        "WaypointIndex" => [integer()]
      }

  """
  @type route_pass_through_place() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_origin_options() :: %{
        "AvoidActionsForDistance" => float(),
        "Heading" => float(),
        "Matching" => isoline_matching_options(),
        "SideOfStreet" => isoline_side_of_street_options()
      }

  """
  @type isoline_origin_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_overview_summary() :: %{
        "BestCaseDuration" => float(),
        "Distance" => float(),
        "Duration" => float(),
        "TypicalDuration" => float()
      }

  """
  @type route_vehicle_overview_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_snapped_geometry() :: %{
        "LineString" => list(list([float()]())()),
        "Polyline" => String.t() | Atom.t()
      }

  """
  @type road_snap_snapped_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_avoidance_options() :: %{
        "Areas" => list(waypoint_optimization_avoidance_area()),
        "CarShuttleTrains" => [boolean()],
        "ControlledAccessHighways" => [boolean()],
        "DirtRoads" => [boolean()],
        "Ferries" => [boolean()],
        "TollRoads" => [boolean()],
        "Tunnels" => [boolean()],
        "UTurns" => [boolean()]
      }

  """
  @type waypoint_optimization_avoidance_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_boundary_geometry() :: %{
        "AutoCircle" => route_matrix_auto_circle(),
        "BoundingBox" => list([float()]()),
        "Circle" => circle(),
        "Polygon" => list(list(list([float()]())())())
      }

  """
  @type route_matrix_boundary_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_vehicle_license_plate() :: %{
        "LastCharacter" => [String.t() | Atom.t()]
      }

  """
  @type route_matrix_vehicle_license_plate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_exclusion_options() :: %{
        "Countries" => list(String.t() | Atom.t())
      }

  """
  @type route_exclusion_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_avoidance_zone_category() :: %{
        "Category" => String.t() | Atom.t()
      }

  """
  @type isoline_avoidance_zone_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_continue_step_details() :: %{
        "Intersection" => list(localized_string())
      }

  """
  @type route_continue_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_failed_constraint() :: %{
        "Constraint" => String.t() | Atom.t(),
        "Reason" => [String.t() | Atom.t()]
      }

  """
  @type waypoint_optimization_failed_constraint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_turn_step_details() :: %{
        "Intersection" => list(localized_string()),
        "SteeringDirection" => String.t() | Atom.t(),
        "TurnAngle" => float(),
        "TurnIntensity" => String.t() | Atom.t()
      }

  """
  @type route_turn_step_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_allow_options() :: %{
        "Hot" => [boolean()],
        "Hov" => [boolean()]
      }

  """
  @type route_matrix_allow_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_pedestrian_options() :: %{
        "Speed" => float()
      }

  """
  @type waypoint_optimization_pedestrian_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_shape_geometry() :: %{
        "Polygon" => list(list(list([float()]())())()),
        "PolylinePolygon" => list(String.t() | Atom.t())
      }

  """
  @type isoline_shape_geometry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => String.t() | Atom.t()
      }

  """
  @type route_side_of_street_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_entry() :: %{
        "Distance" => float(),
        "Duration" => float(),
        "Error" => String.t() | Atom.t()
      }

  """
  @type route_matrix_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_allow_options() :: %{
        "Hot" => [boolean()],
        "Hov" => [boolean()]
      }

  """
  @type route_allow_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_time_breakdown() :: %{
        "RestDuration" => float(),
        "ServiceDuration" => float(),
        "TravelDuration" => float(),
        "WaitDuration" => float()
      }

  """
  @type waypoint_optimization_time_breakdown() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_ferry_span() :: %{
        "Country" => String.t() | Atom.t(),
        "Distance" => float(),
        "Duration" => float(),
        "GeometryOffset" => [integer()],
        "Names" => list(localized_string()),
        "Region" => [String.t() | Atom.t()]
      }

  """
  @type route_ferry_span() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_auto_circle() :: %{
        "Margin" => float(),
        "MaxRadius" => float()
      }

  """
  @type route_matrix_auto_circle() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_weight_constraint() :: %{
        "Type" => String.t() | Atom.t(),
        "Value" => float()
      }

  """
  @type route_weight_constraint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_isolines_response() :: %{
        "ArrivalTime" => String.t() | Atom.t(),
        "DepartureTime" => String.t() | Atom.t(),
        "IsolineGeometryFormat" => String.t() | Atom.t(),
        "Isolines" => list(isoline()),
        "PricingBucket" => [String.t() | Atom.t()],
        "SnappedDestination" => list([float()]()),
        "SnappedOrigin" => list([float()]())
      }

  """
  @type calculate_isolines_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_violated_constraints() :: %{
        "AllHazardsRestricted" => [boolean()],
        "AxleCount" => route_notice_detail_range(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "MaxHeight" => float(),
        "MaxKpraLength" => float(),
        "MaxLength" => float(),
        "MaxPayloadCapacity" => float(),
        "MaxWeight" => route_weight_constraint(),
        "MaxWeightPerAxle" => float(),
        "MaxWeightPerAxleGroup" => weight_per_axle_group(),
        "MaxWidth" => float(),
        "Occupancy" => route_notice_detail_range(),
        "RestrictedTimes" => [String.t() | Atom.t()],
        "TimeDependent" => [boolean()],
        "TrailerCount" => route_notice_detail_range(),
        "TravelMode" => [boolean()],
        "TruckRoadType" => [String.t() | Atom.t()],
        "TruckType" => String.t() | Atom.t(),
        "TunnelRestrictionCode" => String.t() | Atom.t()
      }

  """
  @type route_violated_constraints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_routes_response() :: %{
        "LegGeometryFormat" => String.t() | Atom.t(),
        "Notices" => list(route_response_notice()),
        "PricingBucket" => [String.t() | Atom.t()],
        "Routes" => list(route())
      }

  """
  @type calculate_routes_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waypoint_optimization_driving_distance_options() :: %{
        "DrivingDistance" => float()
      }

  """
  @type waypoint_optimization_driving_distance_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      isoline_truck_options() :: %{
        "AxleCount" => [integer()],
        "EngineType" => String.t() | Atom.t(),
        "GrossWeight" => float(),
        "HazardousCargos" => list(String.t() | Atom.t()),
        "Height" => float(),
        "HeightAboveFirstAxle" => float(),
        "KpraLength" => float(),
        "Length" => float(),
        "LicensePlate" => isoline_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()],
        "PayloadCapacity" => float(),
        "TireCount" => [integer()],
        "Trailer" => isoline_trailer_options(),
        "TruckType" => String.t() | Atom.t(),
        "TunnelRestrictionCode" => String.t() | Atom.t(),
        "WeightPerAxle" => float(),
        "WeightPerAxleGroup" => weight_per_axle_group(),
        "Width" => float()
      }

  """
  @type isoline_truck_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_side_of_street_options() :: %{
        "Position" => list([float()]()),
        "UseWith" => String.t() | Atom.t()
      }

  """
  @type route_matrix_side_of_street_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      road_snap_trailer_options() :: %{
        "TrailerCount" => [integer()]
      }

  """
  @type road_snap_trailer_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_emission_type() :: %{
        "Co2EmissionClass" => [String.t() | Atom.t()],
        "Type" => [String.t() | Atom.t()]
      }

  """
  @type route_emission_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_vehicle_summary() :: %{
        "Overview" => route_vehicle_overview_summary(),
        "TravelOnly" => route_vehicle_travel_only_summary()
      }

  """
  @type route_vehicle_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      calculate_route_matrix_request() :: %{
        optional("Allow") => route_matrix_allow_options(),
        optional("Avoid") => route_matrix_avoidance_options(),
        optional("DepartNow") => [boolean()],
        optional("DepartureTime") => String.t() | Atom.t(),
        optional("Exclude") => route_matrix_exclusion_options(),
        optional("Key") => String.t() | Atom.t(),
        optional("OptimizeRoutingFor") => String.t() | Atom.t(),
        optional("Traffic") => route_matrix_traffic_options(),
        optional("TravelMode") => String.t() | Atom.t(),
        optional("TravelModeOptions") => route_matrix_travel_mode_options(),
        required("Destinations") => list(route_matrix_destination()),
        required("Origins") => list(route_matrix_origin()),
        required("RoutingBoundary") => route_matrix_boundary()
      }

  """
  @type calculate_route_matrix_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_matrix_scooter_options() :: %{
        "LicensePlate" => route_matrix_vehicle_license_plate(),
        "MaxSpeed" => float(),
        "Occupancy" => [integer()]
      }

  """
  @type route_matrix_scooter_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_notice_detail_range() :: %{
        "Max" => [integer()],
        "Min" => [integer()]
      }

  """
  @type route_notice_detail_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_toll_price() :: %{
        "Currency" => String.t() | Atom.t(),
        "Estimate" => [boolean()],
        "PerDuration" => float(),
        "Range" => [boolean()],
        "RangeValue" => route_toll_price_value_range(),
        "Value" => [float()]
      }

  """
  @type route_toll_price() :: %{String.t() | Atom.t() => any()}

  @type calculate_isolines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type calculate_route_matrix_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type calculate_routes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type optimize_waypoints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type snap_to_roads_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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
  Use the `CalculateIsolines` action to find service areas that can be reached
  in a given threshold of time, distance.
  """
  @spec calculate_isolines(map(), calculate_isolines_request(), list()) ::
          {:ok, calculate_isolines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_isolines_errors()}
  def calculate_isolines(%Client{} = client, input, options \\ []) do
    url_path = "/isolines"
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

  Each row corresponds to one entry in Origins. Each entry in the row
  corresponds to the route from that entry in Origins to an entry in Destinations
  positions.
  """
  @spec calculate_route_matrix(map(), calculate_route_matrix_request(), list()) ::
          {:ok, calculate_route_matrix_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_route_matrix_errors()}
  def calculate_route_matrix(%Client{} = client, input, options \\ []) do
    url_path = "/route-matrix"
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
  """
  @spec calculate_routes(map(), calculate_routes_request(), list()) ::
          {:ok, calculate_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, calculate_routes_errors()}
  def calculate_routes(%Client{} = client, input, options \\ []) do
    url_path = "/routes"
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
  the journey,
  based on road network restrictions and the traffic pattern data.
  """
  @spec optimize_waypoints(map(), optimize_waypoints_request(), list()) ::
          {:ok, optimize_waypoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, optimize_waypoints_errors()}
  def optimize_waypoints(%Client{} = client, input, options \\ []) do
    url_path = "/optimize-waypoints"
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
  """
  @spec snap_to_roads(map(), snap_to_roads_request(), list()) ::
          {:ok, snap_to_roads_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, snap_to_roads_errors()}
  def snap_to_roads(%Client{} = client, input, options \\ []) do
    url_path = "/snap-to-roads"
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
