# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFrontKeyValueStore do
  @moduledoc """
  Amazon CloudFront KeyValueStore Service to View and Update Data in a KVS
  Resource
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
