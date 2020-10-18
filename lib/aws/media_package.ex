# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackage do
  @moduledoc """
  AWS Elemental MediaPackage
  """

  @doc """
  Changes the Channel's properities to configure log subscription
  """
  def configure_logs(client, id, input, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}/configure_logs"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new Channel.
  """
  def create_channel(client, input, options \\ []) do
    path_ = "/channels"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new HarvestJob record.
  """
  def create_harvest_job(client, input, options \\ []) do
    path_ = "/harvest_jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new OriginEndpoint record.
  """
  def create_origin_endpoint(client, input, options \\ []) do
    path_ = "/origin_endpoints"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing Channel.
  """
  def delete_channel(client, id, input, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes an existing OriginEndpoint.
  """
  def delete_origin_endpoint(client, id, input, options \\ []) do
    path_ = "/origin_endpoints/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Gets details about a Channel.
  """
  def describe_channel(client, id, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets details about an existing HarvestJob.
  """
  def describe_harvest_job(client, id, options \\ []) do
    path_ = "/harvest_jobs/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets details about an existing OriginEndpoint.
  """
  def describe_origin_endpoint(client, id, options \\ []) do
    path_ = "/origin_endpoints/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of Channels.
  """
  def list_channels(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/channels"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of HarvestJob records.
  """
  def list_harvest_jobs(client, include_channel_id \\ nil, include_status \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/harvest_jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_status) do
      [{"includeStatus", include_status} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_channel_id) do
      [{"includeChannelId", include_channel_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of OriginEndpoint records.
  """
  def list_origin_endpoints(client, channel_id \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/origin_endpoints"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(channel_id) do
      [{"channelId", channel_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """

  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Changes the Channel's first IngestEndpoint's username and password. WARNING
  - This API is deprecated. Please use RotateIngestEndpointCredentials
  instead
  """
  def rotate_channel_credentials(client, id, input, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}/credentials"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Rotate the IngestEndpoint's username and password, as specified by the
  IngestEndpoint's id.
  """
  def rotate_ingest_endpoint_credentials(client, id, ingest_endpoint_id, input, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}/ingest_endpoints/#{URI.encode(ingest_endpoint_id)}/credentials"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """

  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """

  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates an existing Channel.
  """
  def update_channel(client, id, input, options \\ []) do
    path_ = "/channels/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing OriginEndpoint.
  """
  def update_origin_endpoint(client, id, input, options \\ []) do
    path_ = "/origin_endpoints/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mediapackage"}
    host = build_host("mediapackage", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end