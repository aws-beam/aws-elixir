# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DLM do
  @moduledoc """
  Amazon Data Lifecycle Manager

  With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
  AWS resources. You create lifecycle policies, which are used to automate
  operations on the specified resources.

  Amazon DLM supports Amazon EBS volumes and snapshots. For information about
  using Amazon DLM with Amazon EBS, see [Automating the Amazon EBS Snapshot
  Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
  in the *Amazon EC2 User Guide*.
  """

  @doc """
  Creates a policy to manage the lifecycle of the specified AWS resources.
  You can create up to 100 lifecycle policies.
  """
  def create_lifecycle_policy(client, input, options \\ []) do
    path_ = "/policies"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified lifecycle policy and halts the automated operations
  that the policy specified.
  """
  def delete_lifecycle_policy(client, policy_id, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_id)}/"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets summary information about all or the specified data lifecycle
  policies.

  To get complete information about a policy, use `GetLifecyclePolicy`.
  """
  def get_lifecycle_policies(client, policy_ids \\ nil, resource_types \\ nil, state \\ nil, tags_to_add \\ nil, target_tags \\ nil, options \\ []) do
    path_ = "/policies"
    headers = []
    query_ = []
    query_ = if !is_nil(target_tags) do
      [{"targetTags", target_tags} | query_]
    else
      query_
    end
    query_ = if !is_nil(tags_to_add) do
      [{"tagsToAdd", tags_to_add} | query_]
    else
      query_
    end
    query_ = if !is_nil(state) do
      [{"state", state} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_types) do
      [{"resourceTypes", resource_types} | query_]
    else
      query_
    end
    query_ = if !is_nil(policy_ids) do
      [{"policyIds", policy_ids} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets detailed information about the specified lifecycle policy.
  """
  def get_lifecycle_policy(client, policy_id, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_id)}/"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the specified lifecycle policy.
  """
  def update_lifecycle_policy(client, policy_id, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "dlm"}
    host = build_host("dlm", client)
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

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

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
