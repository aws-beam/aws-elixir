# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Outposts do
  @moduledoc """
  Amazon S3 on Outposts provides access to S3 on Outposts operations.
  """

  @doc """
  S3 on Outposts access points simplify managing data access at scale for
  shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints to
  connect to Outposts buckets so that you can perform actions within your
  virtual private cloud (VPC).

  This action creates an endpoint and associates it with the specified
  Outpost.

  <p/> Related actions include:

  <ul> <li>
  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)

  </li> <li>
  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

  </li> </ul>
  """
  def create_endpoint(client, input, options \\ []) do
    path_ = "/S3Outposts/CreateEndpoint"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  S3 on Outposts access points simplify managing data access at scale for
  shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints to
  connect to Outposts buckets so that you can perform actions within your
  virtual private cloud (VPC).

  This action deletes an endpoint.

  <p/> Related actions include:

  <ul> <li>
  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

  </li> <li>
  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

  </li> </ul>
  """
  def delete_endpoint(client, input, options \\ []) do
    path_ = "/S3Outposts/DeleteEndpoint"
    headers = []
    {query_, input} =
      [
        {"EndpointId", "endpointId"},
        {"OutpostId", "outpostId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  S3 on Outposts access points simplify managing data access at scale for
  shared datasets in Amazon S3 on Outposts. S3 on Outposts uses endpoints to
  connect to Outposts buckets so that you can perform actions within your
  virtual private cloud (VPC).

  This action lists endpoints associated with the Outpost.

  <p/> Related actions include:

  <ul> <li>
  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

  </li> <li>
  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)

  </li> </ul>
  """
  def list_endpoints(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/S3Outposts/ListEndpoints"
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
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "s3-outposts"}
    host = build_host("s3-outposts", client)
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
