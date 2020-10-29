# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mq do
  @moduledoc """
  Amazon MQ is a managed message broker service for Apache ActiveMQ that
  makes it easy to set up and operate message brokers in the cloud. A message
  broker allows software applications and components to communicate using
  various programming languages, operating systems, and formal messaging
  protocols.
  """

  @doc """
  Creates a broker. Note: This API is asynchronous.
  """
  def create_broker(client, input, options \\ []) do
    path_ = "/v1/brokers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new configuration for the specified configuration name. Amazon MQ
  uses the default configuration (the engine type and version).
  """
  def create_configuration(client, input, options \\ []) do
    path_ = "/v1/configurations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Add a tag to a resource.
  """
  def create_tags(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Creates an ActiveMQ user.
  """
  def create_user(client, broker_id, username, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/users/#{URI.encode(username)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a broker. Note: This API is asynchronous.
  """
  def delete_broker(client, broker_id, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes a tag from a resource.
  """
  def delete_tags(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an ActiveMQ user.
  """
  def delete_user(client, broker_id, username, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/users/#{URI.encode(username)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns information about the specified broker.
  """
  def describe_broker(client, broker_id, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describe available engine types and versions.
  """
  def describe_broker_engine_types(client, engine_type \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/broker-engine-types"
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
    query_ = if !is_nil(engine_type) do
      [{"engineType", engine_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describe available broker instance options.
  """
  def describe_broker_instance_options(client, engine_type \\ nil, host_instance_type \\ nil, max_results \\ nil, next_token \\ nil, storage_type \\ nil, options \\ []) do
    path_ = "/v1/broker-instance-options"
    headers = []
    query_ = []
    query_ = if !is_nil(storage_type) do
      [{"storageType", storage_type} | query_]
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
    query_ = if !is_nil(host_instance_type) do
      [{"hostInstanceType", host_instance_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(engine_type) do
      [{"engineType", engine_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified configuration.
  """
  def describe_configuration(client, configuration_id, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(configuration_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the specified configuration revision for the specified
  configuration.
  """
  def describe_configuration_revision(client, configuration_id, configuration_revision, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(configuration_id)}/revisions/#{URI.encode(configuration_revision)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about an ActiveMQ user.
  """
  def describe_user(client, broker_id, username, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/users/#{URI.encode(username)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all brokers.
  """
  def list_brokers(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/brokers"
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
  Returns a list of all revisions for the specified configuration.
  """
  def list_configuration_revisions(client, configuration_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(configuration_id)}/revisions"
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
  Returns a list of all configurations.
  """
  def list_configurations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/configurations"
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
  Lists tags for a resource.
  """
  def list_tags(client, resource_arn, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all ActiveMQ users.
  """
  def list_users(client, broker_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/users"
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
  Reboots a broker. Note: This API is asynchronous.
  """
  def reboot_broker(client, broker_id, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/reboot"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds a pending configuration change to a broker.
  """
  def update_broker(client, broker_id, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the specified configuration.
  """
  def update_configuration(client, configuration_id, input, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(configuration_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the information for an ActiveMQ user.
  """
  def update_user(client, broker_id, username, input, options \\ []) do
    path_ = "/v1/brokers/#{URI.encode(broker_id)}/users/#{URI.encode(username)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mq"}
    host = build_host("mq", client)
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
