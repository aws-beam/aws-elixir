# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kafka do
  @moduledoc """
  The operations for managing an Amazon MSK cluster.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-11-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kafka",
      global?: false,
      protocol: "rest-json",
      service_id: "Kafka",
      signature_version: "v4",
      signing_name: "kafka",
      target_prefix: nil
    }
  end

  @doc """
  Associates one or more Scram Secrets with an Amazon MSK cluster.
  """
  def batch_associate_scram_secret(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates one or more Scram Secrets from an Amazon MSK cluster.
  """
  def batch_disassociate_scram_secret(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new MSK cluster.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/v1/clusters"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new MSK configuration.
  """
  def create_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/configurations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the
  request.
  """
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}"
    headers = []

    {query_params, input} =
      [
        {"CurrentVersion", "currentVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Deletes the specified MSK configuration.

  The configuration must be in the ACTIVE or DELETE_FAILED state.
  """
  def delete_configuration(%Client{} = client, arn, input, options \\ []) do
    url_path = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is
  specified in the request.
  """
  def describe_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a description of the cluster operation specified by the ARN.
  """
  def describe_cluster_operation(%Client{} = client, cluster_operation_arn, options \\ []) do
    url_path = "/v1/operations/#{URI.encode(cluster_operation_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a description of this MSK configuration.
  """
  def describe_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a description of this revision of the configuration.
  """
  def describe_configuration_revision(%Client{} = client, arn, revision, options \\ []) do
    url_path = "/v1/configurations/#{URI.encode(arn)}/revisions/#{URI.encode(revision)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  A list of brokers that a client application can use to bootstrap.
  """
  def get_bootstrap_brokers(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/bootstrap-brokers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the Apache Kafka versions to which you can update the MSK cluster.
  """
  def get_compatible_kafka_versions(%Client{} = client, cluster_arn \\ nil, options \\ []) do
    url_path = "/v1/compatible-kafka-versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(cluster_arn) do
        [{"clusterArn", cluster_arn} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of all the operations that have been performed on the specified
  MSK cluster.
  """
  def list_cluster_operations(
        %Client{} = client,
        cluster_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/operations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of all the MSK clusters in the current Region.
  """
  def list_clusters(
        %Client{} = client,
        cluster_name_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/clusters"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(cluster_name_filter) do
        [{"clusterNameFilter", cluster_name_filter} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of all the revisions of an MSK configuration.
  """
  def list_configuration_revisions(
        %Client{} = client,
        arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/configurations/#{URI.encode(arn)}/revisions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of all the MSK configurations in this Region.
  """
  def list_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of Kafka versions.
  """
  def list_kafka_versions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/kafka-versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of the broker nodes in the cluster.
  """
  def list_nodes(
        %Client{} = client,
        cluster_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
  """
  def list_scram_secrets(
        %Client{} = client,
        cluster_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/scram-secrets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of the tags associated with the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Executes a reboot on a broker.
  """
  def reboot_broker(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/reboot-broker"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds tags to the specified MSK resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the tags associated with the keys that are provided in the query.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the number of broker nodes in the cluster.

  You can use this operation to increase the number of brokers in an existing
  cluster. You can't decrease the number of brokers.
  """
  def update_broker_count(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes/count"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the EBS storage associated with MSK brokers.
  """
  def update_broker_storage(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/nodes/storage"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the cluster with the configuration that is specified in the request
  body.
  """
  def update_cluster_configuration(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/configuration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Apache Kafka version for the cluster.
  """
  def update_cluster_kafka_version(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/version"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing MSK configuration.

  The configuration must be in the Active state.
  """
  def update_configuration(%Client{} = client, arn, input, options \\ []) do
    url_path = "/v1/configurations/#{URI.encode(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the monitoring settings for the cluster.

  You can use this operation to specify which Apache Kafka metrics you want Amazon
  MSK to send to Amazon CloudWatch. You can also specify settings for open
  monitoring with Prometheus.
  """
  def update_monitoring(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/v1/clusters/#{URI.encode(cluster_arn)}/monitoring"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end