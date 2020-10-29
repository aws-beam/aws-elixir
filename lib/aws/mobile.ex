# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mobile do
  @moduledoc """
  AWS Mobile Service provides mobile app and website developers with
  capabilities required to configure AWS resources and bootstrap their
  developer desktop projects with the necessary SDKs, constants, tools and
  samples to make use of those resources.
  """

  @doc """
  Creates an AWS Mobile Hub project.
  """
  def create_project(client, input, options \\ []) do
    path_ = "/projects"
    headers = []
    {query_, input} =
      [
        {"name", "name"},
        {"region", "region"},
        {"snapshotId", "snapshotId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delets a project in AWS Mobile Hub.
  """
  def delete_project(client, project_id, input, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Get the bundle details for the requested bundle id.
  """
  def describe_bundle(client, bundle_id, options \\ []) do
    path_ = "/bundles/#{URI.encode(bundle_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets details about a project in AWS Mobile Hub.
  """
  def describe_project(client, project_id, sync_from_resources \\ nil, options \\ []) do
    path_ = "/project"
    headers = []
    query_ = []
    query_ = if !is_nil(sync_from_resources) do
      [{"syncFromResources", sync_from_resources} | query_]
    else
      query_
    end
    query_ = if !is_nil(project_id) do
      [{"projectId", project_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Generates customized software development kit (SDK) and or tool packages
  used to integrate mobile web or mobile app clients with backend AWS
  resources.
  """
  def export_bundle(client, bundle_id, input, options \\ []) do
    path_ = "/bundles/#{URI.encode(bundle_id)}"
    headers = []
    {query_, input} =
      [
        {"platform", "platform"},
        {"projectId", "projectId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Exports project configuration to a snapshot which can be downloaded and
  shared. Note that mobile app push credentials are encrypted in exported
  projects, so they can only be shared successfully within the same AWS
  account.
  """
  def export_project(client, project_id, input, options \\ []) do
    path_ = "/exports/#{URI.encode(project_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  List all available bundles.
  """
  def list_bundles(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/bundles"
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

  @doc """
  Lists projects in AWS Mobile Hub.
  """
  def list_projects(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/projects"
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

  @doc """
  Update an existing project.
  """
  def update_project(client, input, options \\ []) do
    path_ = "/update"
    headers = []
    {query_, input} =
      [
        {"projectId", "projectId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "AWSMobileHubService"}
    host = build_host("mobile", client)
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
