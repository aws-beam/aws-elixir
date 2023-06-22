# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mq do
  @moduledoc """
  Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ
  that makes it easy to set up and operate message brokers in the cloud.

  A message broker allows software applications and components to communicate
  using various programming languages, operating systems, and formal messaging
  protocols.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mq",
      global?: false,
      protocol: "rest-json",
      service_id: "mq",
      signature_version: "v4",
      signing_name: "mq",
      target_prefix: nil
    }
  end

  @doc """
  Creates a broker.

  Note: This API is asynchronous.

  To create a broker, you must either use the AmazonMQFullAccess IAM policy or
  include the following EC2 permissions in your IAM policy.

    * ec2:CreateNetworkInterface

  This permission is required to allow Amazon MQ to create an elastic network
  interface (ENI) on behalf of your account.

    * ec2:CreateNetworkInterfacePermission

  This permission is required to attach the ENI to the broker instance.

    * ec2:DeleteNetworkInterface

    * ec2:DeleteNetworkInterfacePermission

    * ec2:DetachNetworkInterface

    * ec2:DescribeInternetGateways

    * ec2:DescribeNetworkInterfaces

    * ec2:DescribeNetworkInterfacePermissions

    * ec2:DescribeRouteTables

    * ec2:DescribeSecurityGroups

    * ec2:DescribeSubnets

    * ec2:DescribeVpcs

  For more information, see [Create an IAM User and Get Your Amazon Web Services Credentials](https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user)
  and [Never Modify or Delete the Amazon MQ Elastic Network Interface](https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface)
  in the *Amazon MQ Developer Guide*.
  """
  def create_broker(%Client{} = client, input, options \\ []) do
    url_path = "/v1/brokers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a new configuration for the specified configuration name.

  Amazon MQ uses the default configuration (the engine type and version).
  """
  def create_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Add a tag to a resource.
  """
  def create_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates an ActiveMQ user.

  Do not add personally identifiable information (PII) or other confidential or
  sensitive information in broker usernames. Broker usernames are accessible to
  other Amazon Web Services services, including CloudWatch Logs. Broker usernames
  are not intended to be used for private or sensitive data.
  """
  def create_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a broker.

  Note: This API is asynchronous.
  """
  def delete_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes a tag from a resource.
  """
  def delete_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an ActiveMQ user.
  """
  def delete_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns information about the specified broker.
  """
  def describe_broker(%Client{} = client, broker_id, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe available engine types and versions.
  """
  def describe_broker_engine_types(
        %Client{} = client,
        engine_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/broker-engine-types"
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
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe available broker instance options.
  """
  def describe_broker_instance_options(
        %Client{} = client,
        engine_type \\ nil,
        host_instance_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        storage_type \\ nil,
        options \\ []
      ) do
    url_path = "/v1/broker-instance-options"
    headers = []
    query_params = []

    query_params =
      if !is_nil(storage_type) do
        [{"storageType", storage_type} | query_params]
      else
        query_params
      end

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
      if !is_nil(host_instance_type) do
        [{"hostInstanceType", host_instance_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified configuration.
  """
  def describe_configuration(%Client{} = client, configuration_id, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the specified configuration revision for the specified configuration.
  """
  def describe_configuration_revision(
        %Client{} = client,
        configuration_id,
        configuration_revision,
        options \\ []
      ) do
    url_path =
      "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}/revisions/#{AWS.Util.encode_uri(configuration_revision)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an ActiveMQ user.
  """
  def describe_user(%Client{} = client, broker_id, username, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all brokers.
  """
  def list_brokers(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/brokers"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all revisions for the specified configuration.
  """
  def list_configuration_revisions(
        %Client{} = client,
        configuration_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}/revisions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all configurations.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.
  """
  def list_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all ActiveMQ users.
  """
  def list_users(
        %Client{} = client,
        broker_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Promotes a data replication replica broker to the primary broker role.
  """
  def promote(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/promote"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Reboots a broker.

  Note: This API is asynchronous.
  """
  def reboot_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/reboot"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds a pending configuration change to a broker.
  """
  def update_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified configuration.
  """
  def update_configuration(%Client{} = client, configuration_id, input, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the information for an ActiveMQ user.
  """
  def update_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
