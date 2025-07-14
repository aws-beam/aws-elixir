# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GeoMaps do
  @moduledoc """
  Integrate high-quality base map data into your applications using
  [MapLibre](https://maplibre.org).

  Capabilities include:

    *
  Access to comprehensive base map data, allowing you to tailor the map display to
  your specific needs.

    *
  Multiple pre-designed map styles suited for various application types, such as
  navigation, logistics, or data visualization.

    *
  Generation of static map images for scenarios where interactive maps aren't
  suitable, such as:

      *
  Embedding in emails or documents

      *
  Displaying in low-bandwidth environments

      *
  Creating printable maps

      *
  Enhancing application performance by reducing client-side rendering
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_glyphs_request() :: %{}

  """
  @type get_glyphs_request() :: %{}

  @typedoc """

  ## Example:

      get_glyphs_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()],
        "ETag" => [String.t()]
      }

  """
  @type get_glyphs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sprites_request() :: %{}

  """
  @type get_sprites_request() :: %{}

  @typedoc """

  ## Example:

      get_sprites_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()],
        "ETag" => [String.t()]
      }

  """
  @type get_sprites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_static_map_request() :: %{
        optional("BoundedPositions") => String.t(),
        optional("BoundingBox") => String.t(),
        optional("Center") => String.t(),
        optional("ColorScheme") => String.t(),
        optional("CompactOverlay") => String.t(),
        optional("CropLabels") => [boolean()],
        optional("GeoJsonOverlay") => String.t(),
        optional("Key") => String.t(),
        optional("LabelSize") => String.t(),
        optional("Language") => String.t(),
        optional("Padding") => [integer()],
        optional("PointsOfInterests") => String.t(),
        optional("PoliticalView") => String.t(),
        optional("Radius") => float(),
        optional("ScaleBarUnit") => String.t(),
        optional("Style") => String.t(),
        optional("Zoom") => [float()],
        required("Height") => [integer()],
        required("Width") => [integer()]
      }

  """
  @type get_static_map_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_static_map_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()],
        "ETag" => [String.t()],
        "PricingBucket" => [String.t()]
      }

  """
  @type get_static_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_style_descriptor_request() :: %{
        optional("ColorScheme") => String.t(),
        optional("Key") => String.t(),
        optional("PoliticalView") => String.t()
      }

  """
  @type get_style_descriptor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_style_descriptor_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()],
        "ETag" => [String.t()]
      }

  """
  @type get_style_descriptor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tile_request() :: %{
        optional("Key") => String.t()
      }

  """
  @type get_tile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tile_response() :: %{
        "Blob" => [binary()],
        "CacheControl" => [String.t()],
        "ContentType" => [String.t()],
        "ETag" => [String.t()],
        "PricingBucket" => [String.t()]
      }

  """
  @type get_tile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t()],
        "Reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type get_static_map_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_tile_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2020-11-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "geo-maps",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Geo Maps",
      signature_version: "v4",
      signing_name: "geo-maps",
      target_prefix: nil
    }
  end

  @doc """

  `GetGlyphs` returns the map's glyphs.
  """
  @spec get_glyphs(map(), String.t(), String.t(), list()) ::
          {:ok, get_glyphs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_glyphs(%Client{} = client, font_stack, font_unicode_range, options \\ []) do
    url_path =
      "/glyphs/#{AWS.Util.encode_uri(font_stack)}/#{AWS.Util.encode_uri(font_unicode_range)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  `GetSprites` returns the map's sprites.
  """
  @spec get_sprites(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_sprites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_sprites(%Client{} = client, color_scheme, file_name, style, variant, options \\ []) do
    url_path =
      "/styles/#{AWS.Util.encode_uri(style)}/#{AWS.Util.encode_uri(color_scheme)}/#{AWS.Util.encode_uri(variant)}/sprites/#{AWS.Util.encode_uri(file_name)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  `GetStaticMap` provides high-quality static map images with customizable
  options.

  You can modify the map's appearance and overlay additional information. It's an
  ideal solution for applications requiring tailored static map snapshots.
  """
  @spec get_static_map(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_static_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_static_map_errors()}
  def get_static_map(
        %Client{} = client,
        file_name,
        bounded_positions \\ nil,
        bounding_box \\ nil,
        center \\ nil,
        color_scheme \\ nil,
        compact_overlay \\ nil,
        crop_labels \\ nil,
        geo_json_overlay \\ nil,
        height,
        key \\ nil,
        label_size \\ nil,
        language \\ nil,
        padding \\ nil,
        points_of_interests \\ nil,
        political_view \\ nil,
        radius \\ nil,
        scale_bar_unit \\ nil,
        style \\ nil,
        width,
        zoom \\ nil,
        options \\ []
      ) do
    url_path = "/static/#{AWS.Util.encode_uri(file_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(zoom) do
        [{"zoom", zoom} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(width) do
        [{"width", width} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(style) do
        [{"style", style} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(scale_bar_unit) do
        [{"scale-unit", scale_bar_unit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(radius) do
        [{"radius", radius} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(political_view) do
        [{"political-view", political_view} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(points_of_interests) do
        [{"pois", points_of_interests} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(padding) do
        [{"padding", padding} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(language) do
        [{"lang", language} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(label_size) do
        [{"label-size", label_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(height) do
        [{"height", height} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(geo_json_overlay) do
        [{"geojson-overlay", geo_json_overlay} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(crop_labels) do
        [{"crop-labels", crop_labels} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compact_overlay) do
        [{"compact-overlay", compact_overlay} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(color_scheme) do
        [{"color-scheme", color_scheme} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(center) do
        [{"center", center} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(bounding_box) do
        [{"bounding-box", bounding_box} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(bounded_positions) do
        [{"bounded-positions", bounded_positions} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"x-amz-geo-pricing-bucket", "PricingBucket"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  `GetStyleDescriptor` returns information about the style.
  """
  @spec get_style_descriptor(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_style_descriptor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_style_descriptor(
        %Client{} = client,
        style,
        color_scheme \\ nil,
        key \\ nil,
        political_view \\ nil,
        options \\ []
      ) do
    url_path = "/styles/#{AWS.Util.encode_uri(style)}/descriptor"
    headers = []
    query_params = []

    query_params =
      if !is_nil(political_view) do
        [{"political-view", political_view} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(color_scheme) do
        [{"color-scheme", color_scheme} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  `GetTile` returns a tile.

  Map tiles are used by clients to render a map.
  they're addressed using a grid arrangement with an X coordinate, Y coordinate,
  and Z (zoom)
  level.
  """
  @spec get_tile(map(), String.t(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_tile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tile_errors()}
  def get_tile(%Client{} = client, tileset, x, y, z, key \\ nil, options \\ []) do
    url_path =
      "/tiles/#{AWS.Util.encode_uri(tileset)}/#{AWS.Util.encode_uri(z)}/#{AWS.Util.encode_uri(x)}/#{AWS.Util.encode_uri(y)}"

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
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"x-amz-geo-pricing-bucket", "PricingBucket"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
