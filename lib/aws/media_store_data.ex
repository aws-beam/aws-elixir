# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStoreData do
  @moduledoc """
  An AWS Elemental MediaStore asset is an object, similar to an object in the
  Amazon S3 service. Objects are the fundamental entities that are stored in
  AWS Elemental MediaStore.
  """

  @doc """
  Deletes an object at the specified path.
  """
  def delete_object(client, path, input, options \\ []) do
    path_ = "/#{AWS.Util.encode_uri(path, true)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the headers for an object at the specified path.
  """
  def describe_object(client, path, input, options \\ []) do
    path_ = "/#{AWS.Util.encode_uri(path, true)}"
    headers = []
    query_ = []
    case request(client, :head, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Cache-Control", "CacheControl"},
            {"Content-Length", "ContentLength"},
            {"Content-Type", "ContentType"},
            {"ETag", "ETag"},
            {"Last-Modified", "LastModified"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Downloads the object at the specified path. If the object’s upload
  availability is set to `streaming`, AWS Elemental MediaStore downloads the
  object even if it’s still uploading the object.
  """
  def get_object(client, path, range \\ nil, options \\ []) do
    path_ = "/#{AWS.Util.encode_uri(path, true)}"
    headers = []
    headers = if !is_nil(range) do
      [{"Range", range} | headers]
    else
      headers
    end
    query_ = []
    case request(client, :get, path_, query_, headers, nil, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Cache-Control", "CacheControl"},
            {"Content-Length", "ContentLength"},
            {"Content-Range", "ContentRange"},
            {"Content-Type", "ContentType"},
            {"ETag", "ETag"},
            {"Last-Modified", "LastModified"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Provides a list of metadata entries about folders and objects in the
  specified folder.
  """
  def list_items(client, max_results \\ nil, next_token \\ nil, path \\ nil, options \\ []) do
    path_ = "/"
    headers = []
    query_ = []
    query_ = if !is_nil(path) do
      [{"Path", path} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Uploads an object to the specified path. Object sizes are limited to 25 MB
  for standard upload availability and 10 MB for streaming upload
  availability.
  """
  def put_object(client, path, input, options \\ []) do
    path_ = "/#{AWS.Util.encode_uri(path, true)}"
    {headers, input} =
      [
        {"CacheControl", "Cache-Control"},
        {"ContentType", "Content-Type"},
        {"StorageClass", "x-amz-storage-class"},
        {"UploadAvailability", "x-amz-upload-availability"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mediastore"}
    host = build_host("data.mediastore", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
