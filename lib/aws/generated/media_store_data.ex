# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStoreData do
  @moduledoc """
  An AWS Elemental MediaStore asset is an object, similar to an object in the
  Amazon S3
  service.

  Objects are the fundamental entities that are stored in AWS Elemental
  MediaStore.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  container_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type container_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_object_request() :: %{

  }
  """
  @type delete_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_object_response() :: %{

  }
  """
  @type delete_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_object_request() :: %{

  }
  """
  @type describe_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_object_response() :: %{
    "CacheControl" => String.t(),
    "ContentLength" => float(),
    "ContentType" => String.t(),
    "ETag" => String.t(),
    "LastModified" => non_neg_integer()
  }
  """
  @type describe_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_request() :: %{
    optional("Range") => String.t()
  }
  """
  @type get_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_response() :: %{
    "Body" => binary(),
    "CacheControl" => String.t(),
    "ContentLength" => float(),
    "ContentRange" => String.t(),
    "ContentType" => String.t(),
    "ETag" => String.t(),
    "LastModified" => non_neg_integer(),
    "StatusCode" => integer()
  }
  """
  @type get_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_error() :: %{
    "Message" => String.t()
  }
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  item() :: %{
    "ContentLength" => float(),
    "ContentType" => String.t(),
    "ETag" => String.t(),
    "LastModified" => non_neg_integer(),
    "Name" => String.t(),
    "Type" => list(any())
  }
  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_items_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("Path") => String.t()
  }
  """
  @type list_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_items_response() :: %{
    "Items" => list(item()()),
    "NextToken" => String.t()
  }
  """
  @type list_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type object_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_object_request() :: %{
    optional("CacheControl") => String.t(),
    optional("ContentType") => String.t(),
    optional("StorageClass") => list(any()),
    optional("UploadAvailability") => list(any()),
    required("Body") => binary()
  }
  """
  @type put_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_object_response() :: %{
    "ContentSHA256" => String.t(),
    "ETag" => String.t(),
    "StorageClass" => list(any())
  }
  """
  @type put_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  requested_range_not_satisfiable_exception() :: %{
    "Message" => String.t()
  }
  """
  @type requested_range_not_satisfiable_exception() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.mediastore",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaStore Data",
      signature_version: "v4",
      signing_name: "mediastore",
      target_prefix: nil
    }
  end

  @doc """
  Deletes an object at the specified path.
  """
  @spec delete_object(map(), String.t(), delete_object_request(), list()) ::
          {:ok, delete_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, container_not_found_exception()}
          | {:error, internal_server_error()}
          | {:error, object_not_found_exception()}
  def delete_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"
    headers = []
    query_params = []

    meta = metadata()

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
  Gets the headers for an object at the specified path.
  """
  @spec describe_object(map(), String.t(), describe_object_request(), list()) ::
          {:ok, describe_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, container_not_found_exception()}
          | {:error, internal_server_error()}
          | {:error, object_not_found_exception()}
  def describe_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Length", "ContentLength"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
      )

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :head,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Downloads the object at the specified path.

  If the object’s upload availability is set to `streaming`, AWS Elemental
  MediaStore downloads the object even if it’s still uploading the object.
  """
  @spec get_object(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, container_not_found_exception()}
          | {:error, internal_server_error()}
          | {:error, object_not_found_exception()}
          | {:error, requested_range_not_satisfiable_exception()}
  def get_object(%Client{} = client, path, range \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"
    headers = []

    headers =
      if !is_nil(range) do
        [{"Range", range} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Length", "ContentLength"},
          {"Content-Range", "ContentRange"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of metadata entries about folders and objects in the specified
  folder.
  """
  @spec list_items(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, container_not_found_exception()}
          | {:error, internal_server_error()}
  def list_items(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        path \\ nil,
        options \\ []
      ) do
    url_path = "/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(path) do
        [{"Path", path} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Uploads an object to the specified path.

  Object sizes are limited to 25 MB for standard upload availability and 10 MB for
  streaming upload availability.
  """
  @spec put_object(map(), String.t(), put_object_request(), list()) ::
          {:ok, put_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, container_not_found_exception()}
          | {:error, internal_server_error()}
  def put_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"

    {headers, input} =
      [
        {"CacheControl", "Cache-Control"},
        {"ContentType", "Content-Type"},
        {"StorageClass", "x-amz-storage-class"},
        {"UploadAvailability", "x-amz-upload-availability"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
