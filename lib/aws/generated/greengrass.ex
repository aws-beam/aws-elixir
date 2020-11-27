# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Greengrass do
  @moduledoc """
  AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act
  locally on the data they generate, while still using the cloud for management,
  analytics, and durable storage.

  AWS IoT Greengrass ensures your devices can respond quickly to local events and
  operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of
  transmitting data to the cloud by allowing you to author AWS Lambda functions
  that execute locally.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-06-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "greengrass",
      global?: false,
      protocol: "rest-json",
      service_id: "Greengrass",
      signature_version: "v4",
      signing_name: "greengrass",
      target_prefix: nil
    }
  end

  @doc """
  Associates a role with a group.

  Your Greengrass core will use the role to access AWS cloud services. The role's
  permissions should allow Greengrass core Lambda functions to perform actions
  against the cloud.
  """
  def associate_role_to_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/role"
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
  Associates a role with your account.

  AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT
  resources. This is necessary for deployments to succeed. The role must have at
  least minimum permissions in the policy
  ''AWSGreengrassResourceAccessRolePolicy''.
  """
  def associate_service_role_to_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
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
  Creates a connector definition.

  You may provide the initial version of the connector definition now or use
  ''CreateConnectorDefinitionVersion'' at a later time.
  """
  def create_connector_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/connectors"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a connector definition which has already been defined.
  """
  def create_connector_definition_version(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a core definition.

  You may provide the initial version of the core definition now or use
  ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each
  contain exactly one Greengrass core.
  """
  def create_core_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/cores"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a core definition that has already been defined.

  Greengrass groups must each contain exactly one Greengrass core.
  """
  def create_core_definition_version(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a deployment.

  ''CreateDeployment'' requests are idempotent with respect to the
  ''X-Amzn-Client-Token'' token and the request parameters.
  """
  def create_deployment(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/deployments"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a device definition.

  You may provide the initial version of the device definition now or use
  ''CreateDeviceDefinitionVersion'' at a later time.
  """
  def create_device_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/devices"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a device definition that has already been defined.
  """
  def create_device_definition_version(
        %Client{} = client,
        device_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a Lambda function definition which contains a list of Lambda functions
  and their configurations to be used in a group.

  You can create an initial version of the definition by providing a list of
  Lambda functions and their configurations now, or use
  ''CreateFunctionDefinitionVersion'' later.
  """
  def create_function_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/functions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a Lambda function definition that has already been defined.
  """
  def create_function_definition_version(
        %Client{} = client,
        function_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a group.

  You may provide the initial version of the group or use ''CreateGroupVersion''
  at a later time. Tip: You can use the ''gg_group_setup'' package
  (https://github.com/awslabs/aws-greengrass-group-setup) as a library or
  command-line application to create and deploy Greengrass groups.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/groups"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a CA for the group.

  If a CA already exists, it will rotate the existing CA.
  """
  def create_group_certificate_authority(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a group which has already been defined.
  """
  def create_group_version(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a logger definition.

  You may provide the initial version of the logger definition now or use
  ''CreateLoggerDefinitionVersion'' at a later time.
  """
  def create_logger_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/loggers"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a logger definition that has already been defined.
  """
  def create_logger_definition_version(
        %Client{} = client,
        logger_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a resource definition which contains a list of resources to be used in a
  group.

  You can create an initial version of the definition by providing a list of
  resources now, or use ''CreateResourceDefinitionVersion'' later.
  """
  def create_resource_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/resources"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a resource definition that has already been defined.
  """
  def create_resource_definition_version(
        %Client{} = client,
        resource_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a software update for a core or group of cores (specified as an IoT
  thing group.) Use this to update the OTA Agent as well as the Greengrass core
  software.

  It makes use of the IoT Jobs feature which provides additional commands to
  manage a Greengrass core software update job.
  """
  def create_software_update_job(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/updates"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a subscription definition.

  You may provide the initial version of the subscription definition now or use
  ''CreateSubscriptionDefinitionVersion'' at a later time.
  """
  def create_subscription_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/subscriptions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a version of a subscription definition which has already been defined.
  """
  def create_subscription_definition_version(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes a connector definition.
  """
  def delete_connector_definition(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
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
  Deletes a core definition.
  """
  def delete_core_definition(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
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
  Deletes a device definition.
  """
  def delete_device_definition(%Client{} = client, device_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
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
  Deletes a Lambda function definition.
  """
  def delete_function_definition(%Client{} = client, function_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
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
  Deletes a group.
  """
  def delete_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}"
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
  Deletes a logger definition.
  """
  def delete_logger_definition(%Client{} = client, logger_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
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
  Deletes a resource definition.
  """
  def delete_resource_definition(%Client{} = client, resource_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
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
  Deletes a subscription definition.
  """
  def delete_subscription_definition(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
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
  Disassociates the role from a group.
  """
  def disassociate_role_from_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/role"
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
  Disassociates the service role from your account.

  Without a service role, deployments will not work.
  """
  def disassociate_service_role_from_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
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
  Retrieves the role associated with a particular group.
  """
  def get_associated_role(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/role"
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
  Returns the status of a bulk deployment.
  """
  def get_bulk_deployment_status(%Client{} = client, bulk_deployment_id, options \\ []) do
    url_path = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/status"
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
  Retrieves the connectivity information for a core.
  """
  def get_connectivity_info(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{URI.encode(thing_name)}/connectivityInfo"
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
  Retrieves information about a connector definition.
  """
  def get_connector_definition(%Client{} = client, connector_definition_id, options \\ []) do
    url_path = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
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
  Retrieves information about a connector definition version, including the
  connectors that the version contains.

  Connectors are prebuilt modules that interact with local infrastructure, device
  protocols, AWS, and other cloud services.
  """
  def get_connector_definition_version(
        %Client{} = client,
        connector_definition_id,
        connector_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions/#{
        URI.encode(connector_definition_version_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Retrieves information about a core definition version.
  """
  def get_core_definition(%Client{} = client, core_definition_id, options \\ []) do
    url_path = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
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
  Retrieves information about a core definition version.
  """
  def get_core_definition_version(
        %Client{} = client,
        core_definition_id,
        core_definition_version_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions/#{
        URI.encode(core_definition_version_id)
      }"

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
  Returns the status of a deployment.
  """
  def get_deployment_status(%Client{} = client, deployment_id, group_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{URI.encode(group_id)}/deployments/#{URI.encode(deployment_id)}/status"

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
  Retrieves information about a device definition.
  """
  def get_device_definition(%Client{} = client, device_definition_id, options \\ []) do
    url_path = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
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
  Retrieves information about a device definition version.
  """
  def get_device_definition_version(
        %Client{} = client,
        device_definition_id,
        device_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions/#{
        URI.encode(device_definition_version_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Retrieves information about a Lambda function definition, including its creation
  time and latest version.
  """
  def get_function_definition(%Client{} = client, function_definition_id, options \\ []) do
    url_path = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
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
  Retrieves information about a Lambda function definition version, including
  which Lambda functions are included in the version and their configurations.
  """
  def get_function_definition_version(
        %Client{} = client,
        function_definition_id,
        function_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions/#{
        URI.encode(function_definition_version_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Retrieves information about a group.
  """
  def get_group(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}"
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
  Retreives the CA associated with a group.

  Returns the public key of the CA.
  """
  def get_group_certificate_authority(
        %Client{} = client,
        certificate_authority_id,
        group_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/#{
        URI.encode(certificate_authority_id)
      }"

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
  Retrieves the current configuration for the CA used by the group.
  """
  def get_group_certificate_configuration(%Client{} = client, group_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/configuration/expiry"

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
  Retrieves information about a group version.
  """
  def get_group_version(%Client{} = client, group_id, group_version_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{URI.encode(group_id)}/versions/#{URI.encode(group_version_id)}"

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
  Retrieves information about a logger definition.
  """
  def get_logger_definition(%Client{} = client, logger_definition_id, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
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
  Retrieves information about a logger definition version.
  """
  def get_logger_definition_version(
        %Client{} = client,
        logger_definition_id,
        logger_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions/#{
        URI.encode(logger_definition_version_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Retrieves information about a resource definition, including its creation time
  and latest version.
  """
  def get_resource_definition(%Client{} = client, resource_definition_id, options \\ []) do
    url_path = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
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
  Retrieves information about a resource definition version, including which
  resources are included in the version.
  """
  def get_resource_definition_version(
        %Client{} = client,
        resource_definition_id,
        resource_definition_version_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions/#{
        URI.encode(resource_definition_version_id)
      }"

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
  Retrieves the service role that is attached to your account.
  """
  def get_service_role_for_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"
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
  Retrieves information about a subscription definition.
  """
  def get_subscription_definition(%Client{} = client, subscription_definition_id, options \\ []) do
    url_path = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
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
  Retrieves information about a subscription definition version.
  """
  def get_subscription_definition_version(
        %Client{} = client,
        subscription_definition_id,
        subscription_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions/#{
        URI.encode(subscription_definition_version_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Get the runtime configuration of a thing.
  """
  def get_thing_runtime_configuration(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{URI.encode(thing_name)}/runtimeconfig"
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
  Gets a paginated list of the deployments that have been started in a bulk
  deployment operation, and their current deployment status.
  """
  def list_bulk_deployment_detailed_reports(
        %Client{} = client,
        bulk_deployment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/detailed-reports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Returns a list of bulk deployments.
  """
  def list_bulk_deployments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/bulk/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a connector definition, which are containers for
  connectors.

  Connectors run on the Greengrass core and contain built-in integration with
  local infrastructure, device protocols, AWS, and other cloud services.
  """
  def list_connector_definition_versions(
        %Client{} = client,
        connector_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of connector definitions.
  """
  def list_connector_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a core definition.
  """
  def list_core_definition_versions(
        %Client{} = client,
        core_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of core definitions.
  """
  def list_core_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/cores"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Returns a history of deployments for the group.
  """
  def list_deployments(
        %Client{} = client,
        group_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a device definition.
  """
  def list_device_definition_versions(
        %Client{} = client,
        device_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of device definitions.
  """
  def list_device_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a Lambda function definition.
  """
  def list_function_definition_versions(
        %Client{} = client,
        function_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of Lambda function definitions.
  """
  def list_function_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/functions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves the current CAs for a group.
  """
  def list_group_certificate_authorities(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities"
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
  Lists the versions of a group.
  """
  def list_group_versions(
        %Client{} = client,
        group_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of groups.
  """
  def list_groups(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/greengrass/groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a logger definition.
  """
  def list_logger_definition_versions(
        %Client{} = client,
        logger_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of logger definitions.
  """
  def list_logger_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/loggers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a resource definition.
  """
  def list_resource_definition_versions(
        %Client{} = client,
        resource_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of resource definitions.
  """
  def list_resource_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Lists the versions of a subscription definition.
  """
  def list_subscription_definition_versions(
        %Client{} = client,
        subscription_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of subscription definitions.
  """
  def list_subscription_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/subscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Retrieves a list of resource tags for a resource arn.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Resets a group's deployments.
  """
  def reset_deployments(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}/deployments/$reset"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deploys multiple groups in one operation.

  This action starts the bulk deployment of a specified set of group versions.
  Each group version deployment will be triggered with an adaptive rate that has a
  fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token''
  token in every ''StartBulkDeployment'' request. These requests are idempotent
  with respect to the token and the request parameters.
  """
  def start_bulk_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/bulk/deployments"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Stops the execution of a bulk deployment.

  This action returns a status of ''Stopping'' until the deployment is stopped.
  You cannot start a new bulk deployment while a previous deployment is in the
  ''Stopping'' state. This action doesn't rollback completed deployments or cancel
  pending deployments.
  """
  def stop_bulk_deployment(%Client{} = client, bulk_deployment_id, input, options \\ []) do
    url_path = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/$stop"
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
  Adds tags to a Greengrass resource.

  Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition',
  'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition',
  'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Remove resource tags from a Greengrass Resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Updates the connectivity information for the core.

  Any devices that belong to the group which has this core will receive this
  information in order to find the location of the core and connect to it.
  """
  def update_connectivity_info(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{URI.encode(thing_name)}/connectivityInfo"
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
  Updates a connector definition.
  """
  def update_connector_definition(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
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
  Updates a core definition.
  """
  def update_core_definition(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
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
  Updates a device definition.
  """
  def update_device_definition(%Client{} = client, device_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
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
  Updates a Lambda function definition.
  """
  def update_function_definition(%Client{} = client, function_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
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
  Updates a group.
  """
  def update_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{URI.encode(group_id)}"
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
  Updates the Certificate expiry time for a group.
  """
  def update_group_certificate_configuration(%Client{} = client, group_id, input, options \\ []) do
    url_path =
      "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/configuration/expiry"

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
  Updates a logger definition.
  """
  def update_logger_definition(%Client{} = client, logger_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
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
  Updates a resource definition.
  """
  def update_resource_definition(%Client{} = client, resource_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
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
  Updates a subscription definition.
  """
  def update_subscription_definition(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
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
  Updates the runtime configuration of a thing.
  """
  def update_thing_runtime_configuration(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{URI.encode(thing_name)}/runtimeconfig"
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