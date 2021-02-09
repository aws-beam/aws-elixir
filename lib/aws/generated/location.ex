# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Location do
  @moduledoc """
  Suite of geospatial services including Maps, Places, Tracking, and Geofencing
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
  """
  def associate_tracker_consumer(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}/consumers"
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

  This action deletes the resource permanently. You can't undo this action.
  """
  def batch_delete_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}/delete-geofences"
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
  Used in geofence monitoring.

  Evaluates device positions against the position of geofences in a given geofence
  collection.
  """
  def batch_evaluate_geofences(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}/positions"
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
  A batch request to retrieve device positions.

  The response will return the device positions from the last 24 hours.
  """
  def batch_get_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}/get-positions"
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
  A batch request for storing geofences into a given geofence collection.
  """
  def batch_put_geofence(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}/put-geofences"
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
  Uploads a position update for one or more devices to a tracker resource.

  The data is used for API queries requesting the device position and position
  history.

  Limitation — Location data is sampled at a fixed rate of 1 position per 30
  second interval, and retained for 1 year before it is deleted.
  """
  def batch_update_device_position(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}/positions"
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

  By using Maps, you agree that AWS may transmit your API queries to your selected
  third party provider for processing, which may be outside the AWS region you are
  currently using. For more information, see the [AWS Service Terms](https://aws.amazon.com/service-terms/) for Amazon Location Service.
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
  Creates a Place index resource in your AWS account, which supports Places
  functions with geospatial data sourced from your chosen data provider.

  By using Places, you agree that AWS may transmit your API queries to your
  selected third party provider for processing, which may be outside the AWS
  region you are currently using.

  Because of licensing limitations, you may not use HERE to store results for
  locations in Japan. For more information, see the [AWS Service Terms](https://aws.amazon.com/service-terms/) for Amazon Location Service.
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

  This action deletes the resource permanently. You can't undo this action. If the
  geofence collection is the target of a tracker resource, the devices will no
  longer be monitored.
  """
  def delete_geofence_collection(%Client{} = client, collection_name, input, options \\ []) do
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}"
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

  This action deletes the resource permanently. You cannot undo this action. If
  the map is being used in an application, the map may not render.
  """
  def delete_map(%Client{} = client, map_name, input, options \\ []) do
    url_path = "/maps/v0/maps/#{URI.encode(map_name)}"
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
  Deletes a Place index resource from your AWS account.

  This action deletes the resource permanently. You cannot undo this action.
  """
  def delete_place_index(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{URI.encode(index_name)}"
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

  This action deletes the resource permanently. You can't undo this action. If the
  tracker resource is in use, you may encounter an error. Make sure that the
  target resource is not a dependency for your applications.
  """
  def delete_tracker(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}"
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
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}"
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
    url_path = "/maps/v0/maps/#{URI.encode(map_name)}"
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
  Retrieves the Place index resource details.
  """
  def describe_place_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/places/v0/indexes/#{URI.encode(index_name)}"
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
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}"
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
  Removes the association bewteen a tracker resource and a geofence collection.

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
      "/tracking/v0/trackers/#{URI.encode(tracker_name)}/consumers/#{URI.encode(consumer_arn)}"

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
  Retrieves the latest device position.

  Limitation — Device positions are deleted after one year.
  """
  def get_device_position(%Client{} = client, device_id, tracker_name, options \\ []) do
    url_path =
      "/tracking/v0/trackers/#{URI.encode(tracker_name)}/devices/#{URI.encode(device_id)}/positions/latest"

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

  Limitation — Device positions are deleted after one year.
  """
  def get_device_position_history(
        %Client{} = client,
        device_id,
        tracker_name,
        input,
        options \\ []
      ) do
    url_path =
      "/tracking/v0/trackers/#{URI.encode(tracker_name)}/devices/#{URI.encode(device_id)}/list-positions"

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
      "/geofencing/v0/collections/#{URI.encode(collection_name)}/geofences/#{
        URI.encode(geofence_id)
      }"

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
      "/maps/v0/maps/#{URI.encode(map_name)}/glyphs/#{URI.encode(font_stack)}/#{
        URI.encode(font_unicode_range)
      }"

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
    url_path = "/maps/v0/maps/#{URI.encode(map_name)}/sprites/#{URI.encode(file_name)}"
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
    url_path = "/maps/v0/maps/#{URI.encode(map_name)}/style-descriptor"
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

  Map tiles are used by clients to render a map. They are addressed using a grid
  arrangement with an X coordinate, Y coordinate, and Z (zoom) level.

  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1
  doubles both the X and Y dimensions, so a tile containing data for the entire
  world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0,
  1/1/1).
  """
  def get_map_tile(%Client{} = client, map_name, x, y, z, options \\ []) do
    url_path =
      "/maps/v0/maps/#{URI.encode(map_name)}/tiles/#{URI.encode(z)}/#{URI.encode(x)}/#{
        URI.encode(y)
      }"

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
    url_path = "/geofencing/v0/collections/#{URI.encode(collection_name)}/list-geofences"
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
  Lists Place index resources in your AWS account.
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
  Lists geofence collections currently associated to the given tracker resource.
  """
  def list_tracker_consumers(%Client{} = client, tracker_name, input, options \\ []) do
    url_path = "/tracking/v0/trackers/#{URI.encode(tracker_name)}/list-consumers"
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
  Stores a geofence to a given geofence collection, or updates the geometry of an
  existing geofence if a geofence ID is included in the request.
  """
  def put_geofence(%Client{} = client, collection_name, geofence_id, input, options \\ []) do
    url_path =
      "/geofencing/v0/collections/#{URI.encode(collection_name)}/geofences/#{
        URI.encode(geofence_id)
      }"

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

  By using Places, you agree that AWS may transmit your API queries to your
  selected third party provider for processing, which may be outside the AWS
  region you are currently using.

  Because of licensing limitations, you may not use HERE to store results for
  locations in Japan. For more information, see the [AWS Service Terms](https://aws.amazon.com/service-terms/) for Amazon Location Service.
  """
  def search_place_index_for_position(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{URI.encode(index_name)}/search/position"
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

  Includes the option to apply additional parameters to narrow your list of
  results.

  You can search for places near a given position using `BiasPosition`, or filter
  results within a bounding box using `FilterBBox`. Providing both parameters
  simultaneously returns an error.

  By using Places, you agree that AWS may transmit your API queries to your
  selected third party provider for processing, which may be outside the AWS
  region you are currently using.

  Also, when using HERE as your data provider, you may not (a) use HERE Places for
  Asset Management, or (b) select the `Storage` option for the `IntendedUse`
  parameter when requesting Places in Japan. For more information, see the [AWS Service Terms](https://aws.amazon.com/service-terms/) for Amazon Location
  Service.
  """
  def search_place_index_for_text(%Client{} = client, index_name, input, options \\ []) do
    url_path = "/places/v0/indexes/#{URI.encode(index_name)}/search/text"
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
end