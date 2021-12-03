# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Location do
  @moduledoc """
  Suite of geospatial services including Maps, Places, Routes, Tracking, and
  Geofencing
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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

  This allows the tracker resource to communicate location data to the linked
  geofence collection.

  You can associate up to five geofence collections to each tracker resource.

  Currently not supported — Cross-account configurations, such as creating
  associations between a tracker resource in one account and a geofence collection
  in another account.
  """
  def associate_tracker_consumer(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/consumers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def batch_delete_device_position_history(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/delete-positions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def batch_delete_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/delete-geofences"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  asynchronously evaluated. The evaluation determines if the device has entered or
  exited a geofenced area, and then publishes one of the following events to
  Amazon EventBridge:

    * `ENTER` if Amazon Location determines that the tracked device has
  entered a geofenced area.

    * `EXIT` if Amazon Location determines that the tracked device has
  exited a geofenced area.

  The last geofence that a device was observed within is tracked for 30 days after
  the most recent device position update.
  """
  def batch_evaluate_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/positions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def batch_get_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/get-positions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  collection, or updates the geometry of an existing geofence if a geofence ID is
  included in the request.
  """
  def batch_put_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/put-geofences"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Uploads position update data for one or more devices to a tracker resource.

  Amazon Location uses the data when it reports the last known device position and
  position history. Amazon Location retains location data for 30 days.

  Position updates are handled based on the `PositionFiltering` property of the
  tracker. When `PositionFiltering` is set to `TimeBased`, updates are evaluated
  against linked geofence collections, and location data is stored at a maximum of
  one position per 30 second interval. If your update frequency is more often than
  every 30 seconds, only one update per 30 seconds is stored for each unique
  device ID. When `PositionFiltering` is set to `DistanceBased` filtering,
  location data is stored and evaluated against linked geofence collections only
  if the device has moved more than 30 m (98.4 ft).
  """
  def batch_update_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/positions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  given the following required parameters: `DeparturePostiton` and
  `DestinationPosition`.

  Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day to travel with the best traffic conditions when calculating the route.

  Additional options include:

    * [Specifying a departure time](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html#departure-time)
  using either `DepartureTime` or `DepartureNow`. This calculates a route based on
  predictive traffic data at the given time.

  You can't specify both `DepartureTime` and `DepartureNow` in a single request.
  Specifying both parameters returns a validation error.

    * [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html#travel-mode)
  using TravelMode. This lets you specify an additional route preference such as
  `CarModeOptions` if traveling by `Car`, or `TruckModeOptions` if traveling by
  `Truck`.
  """
  def calculate_route(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}/calculate/route"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def create_geofence_collection(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/collections"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a map resource in your AWS account, which provides map tiles of
  different styles sourced from global location data providers.
  """
  def create_map(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/maps"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a place index resource in your AWS account.

  Use a place index resource to geocode addresses and other text queries by using
  the `SearchPlaceIndexForText` operation, and reverse geocode coordinates by
  using the `SearchPlaceIndexForPosition` operation.
  """
  def create_place_index(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/indexes"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a route calculator resource in your AWS account.

  You can send requests to a route calculator resource to estimate travel time,
  distance, and get directions. A route calculator sources traffic and road
  network data from your chosen data provider.
  """
  def create_route_calculator(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/calculators"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a tracker resource in your AWS account, which lets you retrieve current
  and historical location of devices.
  """
  def create_tracker(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/trackers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a geofence collection from your AWS account.

  This operation deletes the resource permanently. If the geofence collection is
  the target of a tracker resource, the devices will no longer be monitored.
  """
  def delete_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a map resource from your AWS account.

  This operation deletes the resource permanently. If the map is being used in an
  application, the map may not render.
  """
  def delete_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a place index resource from your AWS account.

  This operation deletes the resource permanently.
  """
  def delete_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a route calculator resource from your AWS account.

  This operation deletes the resource permanently.
  """
  def delete_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a tracker resource from your AWS account.

  This operation deletes the resource permanently. If the tracker resource is in
  use, you may encounter an error. Make sure that the target resource isn't a
  dependency for your applications.
  """
  def delete_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def describe_geofence_collection(%Client{} = client, collection_name, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the map resource details.
  """
  def describe_map(%Client{} = client, map_name, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the place index resource details.
  """
  def describe_place_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the route calculator resource details.
  """
  def describe_route_calculator(%Client{} = client, calculator_name, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the tracker resource details.
  """
  def describe_tracker(%Client{} = client, tracker_name, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Removes the association between a tracker resource and a geofence collection.

  Once you unlink a tracker resource from a geofence collection, the tracker
  positions will no longer be automatically evaluated against geofences.
  """
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

    Request.request_rest(
      client,
      metadata(),
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
  def get_device_position(%Client{} = client, device_id, tracker_name, options \\ []) do
    url_path =
      "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/devices/#{AWS.Util.encode_uri(device_id)}/positions/latest"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the device position history from a tracker resource within a specified
  range of time.

  Device positions are deleted after 30 days.
  """
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

    Request.request_rest(
      client,
      metadata(),
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
  def get_geofence(%Client{} = client, collection_name, geofence_id, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/geofences/#{AWS.Util.encode_uri(geofence_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves glyphs used to display labels on a map.
  """
  def get_map_glyphs(%Client{} = client, font_stack, font_unicode_range, map_name, options \\ []) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/glyphs/#{AWS.Util.encode_uri(font_stack)}/#{AWS.Util.encode_uri(font_unicode_range)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the sprite sheet corresponding to a map resource.

  The sprite sheet is a PNG image paired with a JSON document describing the
  offsets of individual icons that will be displayed on a rendered map.
  """
  def get_map_sprites(%Client{} = client, file_name, map_name, options \\ []) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/sprites/#{AWS.Util.encode_uri(file_name)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the map style descriptor from a map resource.

  The style descriptor contains speciﬁcations on how features render on a map. For
  example, what data to display, what order to display the data in, and the style
  for the data. Style descriptors follow the Mapbox Style Specification.
  """
  def get_map_style_descriptor(%Client{} = client, map_name, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/style-descriptor"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a vector data tile from the map resource.

  Map tiles are used by clients to render a map. they're addressed using a grid
  arrangement with an X coordinate, Y coordinate, and Z (zoom) level.

  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1
  doubles both the X and Y dimensions, so a tile containing data for the entire
  world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0,
  1/1/1).
  """
  def get_map_tile(%Client{} = client, map_name, x, y, z, options \\ []) do
    url_path =
      "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}/tiles/#{AWS.Util.encode_uri(z)}/#{AWS.Util.encode_uri(x)}/#{AWS.Util.encode_uri(y)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  A batch request to retrieve all device positions.
  """
  def list_device_positions(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-positions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists geofence collections in your AWS account.
  """
  def list_geofence_collections(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/list-collections"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def list_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/list-geofences"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists map resources in your AWS account.
  """
  def list_maps(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/list-maps"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists place index resources in your AWS account.
  """
  def list_place_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/list-indexes"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists route calculator resources in your AWS account.
  """
  def list_route_calculators(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/list-calculators"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists geofence collections currently associated to the given tracker resource.
  """
  def list_tracker_consumers(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-consumers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists tracker resources in your AWS account.
  """
  def list_trackers(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/list-trackers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  geometry of an existing geofence if a geofence ID is included in the request.
  """
  def put_geofence(%Client{} = client, collection_name, geofence_id, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}/geofences/#{AWS.Util.encode_uri(geofence_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Reverse geocodes a given coordinate and returns a legible address.

  Allows you to search for Places or points of interest near a given position.
  """
  def search_place_index_for_position(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/position"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  to search for Places or points of interest.

  Optional parameters let you narrow your search results by bounding box or
  country, or bias your search toward a specific position on the globe.

  You can search for places near a given position using `BiasPosition`, or filter
  results within a bounding box using `FilterBBox`. Providing both parameters
  simultaneously returns an error.

  Search results are returned in order of highest to lowest relevance.
  """
  def search_place_index_for_text(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}/search/text"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Service resource.

  ` Tags can help you organize and categorize your resources. You can also use
  them to scope user permissions, by granting a user permission to access or
  change only resources with certain tag values.

  You can use the `TagResource` operation with an Amazon Location Service resource
  that already has tags. If you specify a new tag key for the resource, this tag
  is appended to the tags already associated with the resource. If you specify a
  tag key that's already associated with the resource, the new tag value that you
  specify replaces the previous value for that tag.

  You can associate up to 50 tags with a resource.

  `
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  def update_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def update_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def update_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def update_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def update_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
