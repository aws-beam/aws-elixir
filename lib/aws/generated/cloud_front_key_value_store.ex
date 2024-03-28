# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFrontKeyValueStore do
  @moduledoc """
  Amazon CloudFront KeyValueStore Service to View and Update Data in a KVS
  Resource
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

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_request_list_item() :: %{
        "Key" => String.t()
      }

  """
  @type delete_key_request_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_response() :: %{
        "ETag" => String.t(),
        "ItemCount" => [integer()],
        "TotalSizeInBytes" => [float()]
      }

  """
  @type delete_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_value_store_request() :: %{}

  """
  @type describe_key_value_store_request() :: %{}

  @typedoc """

  ## Example:

      describe_key_value_store_response() :: %{
        "Created" => [non_neg_integer()],
        "ETag" => String.t(),
        "FailureReason" => [String.t()],
        "ItemCount" => [integer()],
        "KvsARN" => String.t(),
        "LastModified" => [non_neg_integer()],
        "Status" => [String.t()],
        "TotalSizeInBytes" => [float()]
      }

  """
  @type describe_key_value_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_key_request() :: %{}

  """
  @type get_key_request() :: %{}

  @typedoc """

  ## Example:

      get_key_response() :: %{
        "ItemCount" => [integer()],
        "Key" => String.t(),
        "TotalSizeInBytes" => [float()],
        "Value" => String.t()
      }

  """
  @type get_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keys_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keys_response() :: %{
        "Items" => list(list_keys_response_list_item()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keys_response_list_item() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type list_keys_response_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_key_request() :: %{
        required("IfMatch") => String.t(),
        required("Value") => String.t()
      }

  """
  @type put_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_key_request_list_item() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type put_key_request_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_key_response() :: %{
        "ETag" => String.t(),
        "ItemCount" => [integer()],
        "TotalSizeInBytes" => [float()]
      }

  """
  @type put_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_keys_request() :: %{
        optional("Deletes") => list(delete_key_request_list_item()()),
        optional("Puts") => list(put_key_request_list_item()()),
        required("IfMatch") => String.t()
      }

  """
  @type update_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_keys_response() :: %{
        "ETag" => String.t(),
        "ItemCount" => [integer()],
        "TotalSizeInBytes" => [float()]
      }

  """
  @type update_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type delete_key_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type describe_key_value_store_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_key_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type list_keys_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type put_key_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_keys_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudfront-keyvaluestore",
      global?: false,
      protocol: "rest-json",
      service_id: "CloudFront KeyValueStore",
      signature_version: "v4",
      signing_name: "cloudfront-keyvaluestore",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the key value pair specified by the key.
  """
  @spec delete_key(map(), String.t(), String.t(), delete_key_request(), list()) ::
          {:ok, delete_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_key_errors()}
  def delete_key(%Client{} = client, key, kvs_arn, input, options \\ []) do
    url_path =
      "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}/keys/#{AWS.Util.encode_uri(key)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Returns metadata information about Key Value Store.
  """
  @spec describe_key_value_store(map(), String.t(), list()) ::
          {:ok, describe_key_value_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_key_value_store_errors()}
  def describe_key_value_store(%Client{} = client, kvs_arn, options \\ []) do
    url_path = "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a key value pair.
  """
  @spec get_key(map(), String.t(), String.t(), list()) ::
          {:ok, get_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_key_errors()}
  def get_key(%Client{} = client, key, kvs_arn, options \\ []) do
    url_path =
      "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}/keys/#{AWS.Util.encode_uri(key)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of key value pairs.
  """
  @spec list_keys(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keys_errors()}
  def list_keys(%Client{} = client, kvs_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}/keys"
    headers = []
    query_params = []

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
  Creates a new key value pair or replaces the value of an existing key.
  """
  @spec put_key(map(), String.t(), String.t(), put_key_request(), list()) ::
          {:ok, put_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_key_errors()}
  def put_key(%Client{} = client, key, kvs_arn, input, options \\ []) do
    url_path =
      "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}/keys/#{AWS.Util.encode_uri(key)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Puts or Deletes multiple key value pairs in a single, all-or-nothing operation.
  """
  @spec update_keys(map(), String.t(), update_keys_request(), list()) ::
          {:ok, update_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_keys_errors()}
  def update_keys(%Client{} = client, kvs_arn, input, options \\ []) do
    url_path = "/key-value-stores/#{AWS.Util.encode_uri(kvs_arn)}/keys"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

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
end
