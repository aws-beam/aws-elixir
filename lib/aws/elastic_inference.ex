# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticInference do
  @moduledoc """
  Elastic Inference public APIs.
  """

  @doc """
  Describes the locations in which a given accelerator type or set of types
  is present in a given region.
  """
  def describe_accelerator_offerings(client, input, options \\ []) do
    path_ = "/describe-accelerator-offerings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the accelerator types available in a given region, as well as
  their characteristics, such as memory and throughput.
  """
  def describe_accelerator_types(client, options \\ []) do
    path_ = "/describe-accelerator-types"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes information over a provided set of accelerators belonging to an
  account.
  """
  def describe_accelerators(client, input, options \\ []) do
    path_ = "/describe-accelerators"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns all tags of an Elastic Inference Accelerator.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Adds the specified tags to an Elastic Inference Accelerator.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from an Elastic Inference Accelerator.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "elastic-inference"}
    host = build_host("api.elastic-inference", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
