# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStoreData do
  @moduledoc """
  An AWS Elemental MediaStore asset is an object, similar to an object in the
  Amazon S3 service.

  Objects are the fundamental entities that are stored in AWS Elemental
  MediaStore.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  def delete_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(path, true)}"
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
      nil
    )
  end

  @doc """
  Gets the headers for an object at the specified path.
  """
  def describe_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(path, true)}"
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

    Request.request_rest(
      client,
      metadata(),
      :head,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Downloads the object at the specified path.

  If the object’s upload availability is set to `streaming`, AWS Elemental
  MediaStore downloads the object even if it’s still uploading the object.
  """
  def get_object(%Client{} = client, path, range \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(path, true)}"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Provides a list of metadata entries about folders and objects in the specified
  folder.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Uploads an object to the specified path.

  Object sizes are limited to 25 MB for standard upload availability and 10 MB for
  streaming upload availability.
  """
  def put_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(path, true)}"

    {headers, input} =
      [
        {"CacheControl", "Cache-Control"},
        {"ContentType", "Content-Type"},
        {"StorageClass", "x-amz-storage-class"},
        {"UploadAvailability", "x-amz-upload-availability"}
      ]
      |> Request.build_params(input)

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
      nil
    )
  end
end