# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KafkaConnect do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-09-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kafkaconnect",
      global?: false,
      protocol: "rest-json",
      service_id: "KafkaConnect",
      signature_version: "v4",
      signing_name: "kafkaconnect",
      target_prefix: nil
    }
  end

  @doc """
  Creates a connector using the specified properties.
  """
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/v1/connectors"
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
  Creates a custom plugin using the specified properties.
  """
  def create_custom_plugin(%Client{} = client, input, options \\ []) do
    url_path = "/v1/custom-plugins"
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
  Creates a worker configuration using the specified properties.
  """
  def create_worker_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/worker-configurations"
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
  Deletes the specified connector.
  """
  def delete_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
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
  Deletes a custom plugin.
  """
  def delete_custom_plugin(%Client{} = client, custom_plugin_arn, input, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"
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
  Returns summary information about the connector.
  """
  def describe_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
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
  A summary description of the custom plugin.
  """
  def describe_custom_plugin(%Client{} = client, custom_plugin_arn, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"
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
  Returns information about a worker configuration.
  """
  def describe_worker_configuration(%Client{} = client, worker_configuration_arn, options \\ []) do
    url_path = "/v1/worker-configurations/#{AWS.Util.encode_uri(worker_configuration_arn)}"
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
  Returns a list of all the connectors in this account and Region.

  The list is limited to connectors whose name starts with the specified prefix.
  The response also includes a description of each of the listed connectors.
  """
  def list_connectors(
        %Client{} = client,
        connector_name_prefix \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/connectors"
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
      if !is_nil(connector_name_prefix) do
        [{"connectorNamePrefix", connector_name_prefix} | query_params]
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
  Returns a list of all of the custom plugins in this account and Region.
  """
  def list_custom_plugins(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/custom-plugins"
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
  Returns a list of all of the worker configurations in this account and Region.
  """
  def list_worker_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/worker-configurations"
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
  Updates the specified connector.
  """
  def update_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
      ]
      |> Request.build_params(input)

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
