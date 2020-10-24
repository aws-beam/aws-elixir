# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataExchange do
  @moduledoc """
  This is the API reference for AWS Data Exchange.
  """

  @doc """
  This operation cancels a job. Jobs can be cancelled only when they are in
  the WAITING state.
  """
  def cancel_job(client, job_id, input, options \\ []) do
    path_ = "/v1/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  This operation creates a data set.
  """
  def create_data_set(client, input, options \\ []) do
    path_ = "/v1/data-sets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  This operation creates a job.
  """
  def create_job(client, input, options \\ []) do
    path_ = "/v1/jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  This operation creates a revision for a data set.
  """
  def create_revision(client, data_set_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  This operation deletes an asset.
  """
  def delete_asset(client, asset_id, data_set_id, revision_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  This operation deletes a data set.
  """
  def delete_data_set(client, data_set_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  This operation deletes a revision.
  """
  def delete_revision(client, data_set_id, revision_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  This operation returns information about an asset.
  """
  def get_asset(client, asset_id, data_set_id, revision_id, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation returns information about a data set.
  """
  def get_data_set(client, data_set_id, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation returns information about a job.
  """
  def get_job(client, job_id, options \\ []) do
    path_ = "/v1/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation returns information about a revision.
  """
  def get_revision(client, data_set_id, revision_id, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation lists a data set's revisions sorted by CreatedAt in
  descending order.
  """
  def list_data_set_revisions(client, data_set_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions"
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
  This operation lists your data sets. When listing by origin OWNED, results
  are sorted by CreatedAt in descending order. When listing by origin
  ENTITLED, there is no order and the maxResults parameter is ignored.
  """
  def list_data_sets(client, max_results \\ nil, next_token \\ nil, origin \\ nil, options \\ []) do
    path_ = "/v1/data-sets"
    headers = []
    query_ = []
    query_ = if !is_nil(origin) do
      [{"origin", origin} | query_]
    else
      query_
    end
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
  This operation lists your jobs sorted by CreatedAt in descending order.
  """
  def list_jobs(client, data_set_id \\ nil, max_results \\ nil, next_token \\ nil, revision_id \\ nil, options \\ []) do
    path_ = "/v1/jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(revision_id) do
      [{"revisionId", revision_id} | query_]
    else
      query_
    end
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
    query_ = if !is_nil(data_set_id) do
      [{"dataSetId", data_set_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation lists a revision's assets sorted alphabetically in
  descending order.
  """
  def list_revision_assets(client, data_set_id, revision_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets"
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
  This operation lists the tags on the resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  This operation starts a job.
  """
  def start_job(client, job_id, input, options \\ []) do
    path_ = "/v1/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 202)
  end

  @doc """
  This operation tags a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  This operation removes one or more tags from a resource.
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
  This operation updates an asset.
  """
  def update_asset(client, asset_id, data_set_id, revision_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  This operation updates a data set.
  """
  def update_data_set(client, data_set_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  This operation updates a revision.
  """
  def update_revision(client, data_set_id, revision_id, input, options \\ []) do
    path_ = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "dataexchange"}
    host = build_host("dataexchange", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
