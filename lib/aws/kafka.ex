# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kafka do
  @moduledoc """
  The operations for managing an Amazon MSK cluster.
  """

  @doc """
  Associates one or more Scram Secrets with an Amazon MSK cluster.
  """
  def batch_associate_scram_secret(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates one or more Scram Secrets from an Amazon MSK cluster.
  """
  def batch_disassociate_scram_secret(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new MSK cluster.
  """
  def create_cluster(client, input, options \\ []) do
    path_ = "/v1/clusters"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new MSK configuration.
  """
  def create_configuration(client, input, options \\ []) do
    path_ = "/v1/configurations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the
  request.
  """
  def delete_cluster(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}"
    headers = []
    {query_, input} =
      [
        {"CurrentVersion", "currentVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the specified MSK configuration. The configuration must be in the
  ACTIVE or DELETE_FAILED state.
  """
  def delete_configuration(client, arn, input, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns a description of the MSK cluster whose Amazon Resource Name (ARN)
  is specified in the request.
  """
  def describe_cluster(client, cluster_arn, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a description of the cluster operation specified by the ARN.
  """
  def describe_cluster_operation(client, cluster_operation_arn, options \\ []) do
    path_ = "/v1/operations/#{URI.encode(cluster_operation_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a description of this MSK configuration.
  """
  def describe_configuration(client, arn, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a description of this revision of the configuration.
  """
  def describe_configuration_revision(client, arn, revision, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(arn)}/revisions/#{URI.encode(revision)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  A list of brokers that a client application can use to bootstrap.
  """
  def get_bootstrap_brokers(client, cluster_arn, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/bootstrap-brokers"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Apache Kafka versions to which you can update the MSK cluster.
  """
  def get_compatible_kafka_versions(client, cluster_arn \\ nil, options \\ []) do
    path_ = "/v1/compatible-kafka-versions"
    headers = []
    query_ = []
    query_ = if !is_nil(cluster_arn) do
      [{"clusterArn", cluster_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the operations that have been performed on the
  specified MSK cluster.
  """
  def list_cluster_operations(client, cluster_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/operations"
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
  Returns a list of all the MSK clusters in the current Region.
  """
  def list_clusters(client, cluster_name_filter \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/clusters"
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
    query_ = if !is_nil(cluster_name_filter) do
      [{"clusterNameFilter", cluster_name_filter} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the revisions of an MSK configuration.
  """
  def list_configuration_revisions(client, arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(arn)}/revisions"
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
  Returns a list of all the MSK configurations in this Region.
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
  Returns a list of Kafka versions.
  """
  def list_kafka_versions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/kafka-versions"
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
  Returns a list of the broker nodes in the cluster.
  """
  def list_nodes(client, cluster_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes"
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
  Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
  """
  def list_scram_secrets(client, cluster_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
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
  Returns a list of the tags associated with the specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Executes a reboot on a broker.
  """
  def reboot_broker(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/reboot-broker"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds tags to the specified MSK resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes the tags associated with the keys that are provided in the query.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
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
  Updates the number of broker nodes in the cluster. You can use this
  operation to increase the number of brokers in an existing cluster. You
  can't decrease the number of brokers.
  """
  def update_broker_count(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes/count"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the EBS storage associated with MSK brokers.
  """
  def update_broker_storage(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes/storage"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the cluster with the configuration that is specified in the request
  body.
  """
  def update_cluster_configuration(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the Apache Kafka version for the cluster.
  """
  def update_cluster_kafka_version(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/version"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing MSK configuration. The configuration must be in the
  Active state.
  """
  def update_configuration(client, arn, input, options \\ []) do
    path_ = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the monitoring settings for the cluster. You can use this operation
  to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon
  CloudWatch. You can also specify settings for open monitoring with
  Prometheus.
  """
  def update_monitoring(client, cluster_arn, input, options \\ []) do
    path_ = "/v1/clusters/#{URI.encode(cluster_arn)}/monitoring"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "kafka"}
    host = build_host("kafka", client)
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
