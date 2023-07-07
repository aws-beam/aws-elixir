# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Location do
  @moduledoc """
  "Suite of geospatial services including Maps, Places, Routes, Tracking, and
  Geofencing"
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Deletes the position history of one or more devices from a tracker resource.
  """
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
  collection, or updates the geometry of an existing geofence if a geofence ID is
  included in the request.
  """
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
  given the following required parameters: `DeparturePosition` and
  `DestinationPosition`.

  Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day to travel with the best traffic conditions when calculating the route.

  Additional options include:

    * [Specifying a departure time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
  using either `DepartureTime` or `DepartNow`. This calculates a route based on
  predictive traffic data at the given time.

  You can't specify both `DepartureTime` and `DepartNow` in a single request.
  Specifying both parameters returns a validation error.

    * [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate the routes. This
  also lets you specify additional route preferences in `CarModeOptions` if
  traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.

  If you specify `walking` for the travel mode and your data provider is Esri, the
  start and destination must be within 40km.
  """
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
  given the following required parameters: `DeparturePositions` and
  `DestinationPositions`.

  `CalculateRouteMatrix` calculates routes and returns the travel time and travel
  distance from each departure position to each destination position in the
  request. For example, given departure positions A and B, and destination
  positions X and Y, `CalculateRouteMatrix` will return time and distance for
  routes from A to X, A to Y, B to X, and B to Y (in that order). The number of
  results returned (and routes calculated) will be the number of
  `DeparturePositions` times the number of `DestinationPositions`.

  Your account is charged for each route calculated, not the number of requests.

  Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

  By default, a request that doesn't specify a departure time uses the best time
  of day to travel with the best traffic conditions when calculating routes.

  Additional options include:

    * [ Specifying a departure time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
  using either `DepartureTime` or `DepartNow`. This calculates routes based on
  predictive traffic data at the given time.

  You can't specify both `DepartureTime` and `DepartNow` in a single request.
  Specifying both parameters returns a validation error.

    * [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
  using TravelMode sets the transportation mode used to calculate the routes. This
  also lets you specify additional route preferences in `CarModeOptions` if
  traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.
  """
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
  def create_geofence_collection(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/collections"
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
  Creates an API key resource in your Amazon Web Services account, which lets you
  grant actions for Amazon Location resources to the API key bearer.

  For more information, see [Using API keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).
  """
  def create_key(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/keys"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  tiles of different styles sourced from global location data providers.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  def create_map(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/maps"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

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

  Use a place index resource to geocode addresses and other text queries by using
  the `SearchPlaceIndexForText` operation, and reverse geocode coordinates by
  using the `SearchPlaceIndexForPosition` operation, and enable autosuggestions by
  using the `SearchPlaceIndexForSuggestions` operation.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  def create_place_index(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/indexes"
    headers = []
    query_params = []

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
  Creates a route calculator resource in your Amazon Web Services account.

  You can send requests to a route calculator resource to estimate travel time,
  distance, and get directions. A route calculator sources traffic and road
  network data from your chosen data provider.

  If your application is tracking or routing assets you use in your business, such
  as delivery vehicles or employees, you must not use Esri as your geolocation
  provider. See section 82 of the [Amazon Web Services service terms](http://aws.amazon.com/service-terms) for more details.
  """
  def create_route_calculator(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/calculators"
    headers = []
    query_params = []

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
  Creates a tracker resource in your Amazon Web Services account, which lets you
  retrieve current and historical location of devices.
  """
  def create_tracker(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/trackers"
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
  Deletes a geofence collection from your Amazon Web Services account.

  This operation deletes the resource permanently. If the geofence collection is
  the target of a tracker resource, the devices will no longer be monitored.
  """
  def delete_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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

  The API key must have been deactivated more than 90 days previously.
  """
  def delete_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  application, the map may not render.
  """
  def delete_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

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
  def delete_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

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
  def delete_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "routes.")

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
  use, you may encounter an error. Make sure that the target resource isn't a
  dependency for your applications.
  """
  def delete_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
  def describe_geofence_collection(%Client{} = client, collection_name, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the API key resource details.
  """
  def describe_key(%Client{} = client, key_name, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the map resource details.
  """
  def describe_map(%Client{} = client, map_name, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the place index resource details.
  """
  def describe_place_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the route calculator resource details.
  """
  def describe_route_calculator(%Client{} = client, calculator_name, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "routes.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the tracker resource details.
  """
  def describe_tracker(%Client{} = client, tracker_name, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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

  The sprite sheet is a PNG image paired with a JSON document describing the
  offsets of individual icons that will be displayed on a rendered map.
  """
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
  for the data. Style descriptors follow the Mapbox Style Specification.
  """
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

  Map tiles are used by clients to render a map. they're addressed using a grid
  arrangement with an X coordinate, Y coordinate, and Z (zoom) level.

  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1
  doubles both the X and Y dimensions, so a tile containing data for the entire
  world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0,
  1/1/1).
  """
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

  A `PlaceId` is returned by other search operations.

  A PlaceId is valid only if all of the following are the same in the original
  search request and the call to `GetPlace`.

     Customer Amazon Web Services account

     Amazon Web Services Region

     Data provider specified in the place index resource
  """
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
  def list_geofence_collections(%Client{} = client, input, options \\ []) do
    url_path = "/geofencing/v0/list-collections"
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
  Lists geofences stored in a given geofence collection.
  """
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
  def list_keys(%Client{} = client, input, options \\ []) do
    url_path = "/metadata/v0/list-keys"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  def list_maps(%Client{} = client, input, options \\ []) do
    url_path = "/maps/v0/list-maps"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

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
  def list_place_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/places/v0/list-indexes"
    headers = []
    query_params = []

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
  Lists route calculator resources in your Amazon Web Services account.
  """
  def list_route_calculators(%Client{} = client, input, options \\ []) do
    url_path = "/routes/v0/list-calculators"
    headers = []
    query_params = []

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
  Returns a list of tags that are applied to the specified Amazon Location
  resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists geofence collections currently associated to the given tracker resource.
  """
  def list_tracker_consumers(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}/list-consumers"
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
  Lists tracker resources in your Amazon Web Services account.
  """
  def list_trackers(%Client{} = client, input, options \\ []) do
    url_path = "/tracking/v0/list-trackers"
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
  Stores a geofence geometry in a given geofence collection, or updates the
  geometry of an existing geofence if a geofence ID is included in the request.
  """
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

  Allows you to search for Places or points of interest near a given position.
  """
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

  This operation is also known as autocomplete, autosuggest, or fuzzy matching.

  Optional parameters let you narrow your search results by bounding box or
  country, or bias your search toward a specific position on the globe.

  You can search for suggested place names near a specified position by using
  `BiasPosition`, or filter results within a bounding box by using `FilterBBox`.
  These parameters are mutually exclusive; using both `BiasPosition` and
  `FilterBBox` in the same command returns an error.
  """
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
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  def update_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{AWS.Util.encode_uri(collection_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "geofencing.")

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
  def update_key(%Client{} = client, key_name, input, options \\ []) do
    url_path = "/metadata/v0/keys/#{AWS.Util.encode_uri(key_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "metadata.")

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
  def update_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{AWS.Util.encode_uri(map_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "maps.")

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
  def update_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "places.")

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
  def update_route_calculator(%Client{} = client, calculator_name, input, options \\ []) do
    url_path = "/routes/v0/calculators/#{AWS.Util.encode_uri(calculator_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "routes.")

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
  def update_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{AWS.Util.encode_uri(tracker_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tracking.")

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
