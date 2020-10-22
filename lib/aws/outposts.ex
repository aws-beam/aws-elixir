# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Outposts do
  @moduledoc """
  AWS Outposts is a fully-managed service that extends AWS infrastructure,
  APIs, and tools to customer premises. By providing local access to
  AWS-managed infrastructure, AWS Outposts enables customers to build and run
  applications on premises using the same programming interfaces as in AWS
  Regions, while using local compute and storage resources for lower latency
  and local data processing needs.
  """

  @doc """
  Creates an Outpost.
  """
  def create_outpost(client, input, options \\ []) do
    path_ = "/outposts"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the Outpost.
  """
  def delete_outpost(client, outpost_id, input, options \\ []) do
    path_ = "/outposts/#{URI.encode(outpost_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the site.
  """
  def delete_site(client, site_id, input, options \\ []) do
    path_ = "/sites/#{URI.encode(site_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets information about the specified Outpost.
  """
  def get_outpost(client, outpost_id, options \\ []) do
    path_ = "/outposts/#{URI.encode(outpost_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the instance types for the specified Outpost.
  """
  def get_outpost_instance_types(client, outpost_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/outposts/#{URI.encode(outpost_id)}/instanceTypes"
    headers = []
    query_ = []
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
  List the Outposts for your AWS account.
  """
  def list_outposts(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/outposts"
    headers = []
    query_ = []
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
  Lists the sites for the specified AWS account.
  """
  def list_sites(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/sites"
    headers = []
    query_ = []
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

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "outposts"}
    host = build_host("outposts", client)
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
