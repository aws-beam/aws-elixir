# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Greengrass do
  @moduledoc """
  AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can
  act locally on the data they generate, while still using the cloud for
  management, analytics, and durable storage. AWS IoT Greengrass ensures your
  devices can respond quickly to local events and operate with intermittent
  connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to
  the cloud by allowing you to author AWS Lambda functions that execute
  locally.
  """

  @doc """
  Associates a role with a group. Your Greengrass core will use the role to
  access AWS cloud services. The role's permissions should allow Greengrass
  core Lambda functions to perform actions against the cloud.
  """
  def associate_role_to_group(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/role"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Associates a role with your account. AWS IoT Greengrass will use the role
  to access your Lambda functions and AWS IoT resources. This is necessary
  for deployments to succeed. The role must have at least minimum permissions
  in the policy ''AWSGreengrassResourceAccessRolePolicy''.
  """
  def associate_service_role_to_account(client, input, options \\ []) do
    path_ = "/greengrass/servicerole"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a connector definition. You may provide the initial version of the
  connector definition now or use ''CreateConnectorDefinitionVersion'' at a
  later time.
  """
  def create_connector_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/connectors"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a connector definition which has already been defined.
  """
  def create_connector_definition_version(client, connector_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a core definition. You may provide the initial version of the core
  definition now or use ''CreateCoreDefinitionVersion'' at a later time.
  Greengrass groups must each contain exactly one Greengrass core.
  """
  def create_core_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/cores"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a core definition that has already been defined.
  Greengrass groups must each contain exactly one Greengrass core.
  """
  def create_core_definition_version(client, core_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a deployment. ''CreateDeployment'' requests are idempotent with
  respect to the ''X-Amzn-Client-Token'' token and the request parameters.
  """
  def create_deployment(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/deployments"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a device definition. You may provide the initial version of the
  device definition now or use ''CreateDeviceDefinitionVersion'' at a later
  time.
  """
  def create_device_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/devices"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a device definition that has already been defined.
  """
  def create_device_definition_version(client, device_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a Lambda function definition which contains a list of Lambda
  functions and their configurations to be used in a group. You can create an
  initial version of the definition by providing a list of Lambda functions
  and their configurations now, or use ''CreateFunctionDefinitionVersion''
  later.
  """
  def create_function_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/functions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a Lambda function definition that has already been
  defined.
  """
  def create_function_definition_version(client, function_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a group. You may provide the initial version of the group or use
  ''CreateGroupVersion'' at a later time. Tip: You can use the
  ''gg_group_setup'' package
  (https://github.com/awslabs/aws-greengrass-group-setup) as a library or
  command-line application to create and deploy Greengrass groups.
  """
  def create_group(client, input, options \\ []) do
    path_ = "/greengrass/groups"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a CA for the group. If a CA already exists, it will rotate the
  existing CA.
  """
  def create_group_certificate_authority(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a group which has already been defined.
  """
  def create_group_version(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a logger definition. You may provide the initial version of the
  logger definition now or use ''CreateLoggerDefinitionVersion'' at a later
  time.
  """
  def create_logger_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/loggers"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a logger definition that has already been defined.
  """
  def create_logger_definition_version(client, logger_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a resource definition which contains a list of resources to be used
  in a group. You can create an initial version of the definition by
  providing a list of resources now, or use
  ''CreateResourceDefinitionVersion'' later.
  """
  def create_resource_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/resources"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a resource definition that has already been defined.
  """
  def create_resource_definition_version(client, resource_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a software update for a core or group of cores (specified as an IoT
  thing group.) Use this to update the OTA Agent as well as the Greengrass
  core software. It makes use of the IoT Jobs feature which provides
  additional commands to manage a Greengrass core software update job.
  """
  def create_software_update_job(client, input, options \\ []) do
    path_ = "/greengrass/updates"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a subscription definition. You may provide the initial version of
  the subscription definition now or use
  ''CreateSubscriptionDefinitionVersion'' at a later time.
  """
  def create_subscription_definition(client, input, options \\ []) do
    path_ = "/greengrass/definition/subscriptions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a version of a subscription definition which has already been
  defined.
  """
  def create_subscription_definition_version(client, subscription_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a connector definition.
  """
  def delete_connector_definition(client, connector_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a core definition.
  """
  def delete_core_definition(client, core_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a device definition.
  """
  def delete_device_definition(client, device_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a Lambda function definition.
  """
  def delete_function_definition(client, function_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a group.
  """
  def delete_group(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a logger definition.
  """
  def delete_logger_definition(client, logger_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a resource definition.
  """
  def delete_resource_definition(client, resource_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a subscription definition.
  """
  def delete_subscription_definition(client, subscription_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the role from a group.
  """
  def disassociate_role_from_group(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/role"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the service role from your account. Without a service role,
  deployments will not work.
  """
  def disassociate_service_role_from_account(client, input, options \\ []) do
    path_ = "/greengrass/servicerole"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the role associated with a particular group.
  """
  def get_associated_role(client, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/role"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the status of a bulk deployment.
  """
  def get_bulk_deployment_status(client, bulk_deployment_id, options \\ []) do
    path_ = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/status"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the connectivity information for a core.
  """
  def get_connectivity_info(client, thing_name, options \\ []) do
    path_ = "/greengrass/things/#{URI.encode(thing_name)}/connectivityInfo"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a connector definition.
  """
  def get_connector_definition(client, connector_definition_id, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a connector definition version, including the
  connectors that the version contains. Connectors are prebuilt modules that
  interact with local infrastructure, device protocols, AWS, and other cloud
  services.
  """
  def get_connector_definition_version(client, connector_definition_id, connector_definition_version_id, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions/#{URI.encode(connector_definition_version_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition(client, core_definition_id, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a core definition version.
  """
  def get_core_definition_version(client, core_definition_id, core_definition_version_id, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions/#{URI.encode(core_definition_version_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the status of a deployment.
  """
  def get_deployment_status(client, deployment_id, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/deployments/#{URI.encode(deployment_id)}/status"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a device definition.
  """
  def get_device_definition(client, device_definition_id, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a device definition version.
  """
  def get_device_definition_version(client, device_definition_id, device_definition_version_id, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions/#{URI.encode(device_definition_version_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Lambda function definition, including its
  creation time and latest version.
  """
  def get_function_definition(client, function_definition_id, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Lambda function definition version, including
  which Lambda functions are included in the version and their
  configurations.
  """
  def get_function_definition_version(client, function_definition_id, function_definition_version_id, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions/#{URI.encode(function_definition_version_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a group.
  """
  def get_group(client, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retreives the CA associated with a group. Returns the public key of the CA.
  """
  def get_group_certificate_authority(client, certificate_authority_id, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/#{URI.encode(certificate_authority_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current configuration for the CA used by the group.
  """
  def get_group_certificate_configuration(client, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/configuration/expiry"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a group version.
  """
  def get_group_version(client, group_id, group_version_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/versions/#{URI.encode(group_version_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a logger definition.
  """
  def get_logger_definition(client, logger_definition_id, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a logger definition version.
  """
  def get_logger_definition_version(client, logger_definition_id, logger_definition_version_id, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions/#{URI.encode(logger_definition_version_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource definition, including its creation
  time and latest version.
  """
  def get_resource_definition(client, resource_definition_id, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource definition version, including which
  resources are included in the version.
  """
  def get_resource_definition_version(client, resource_definition_id, resource_definition_version_id, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions/#{URI.encode(resource_definition_version_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the service role that is attached to your account.
  """
  def get_service_role_for_account(client, options \\ []) do
    path_ = "/greengrass/servicerole"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a subscription definition.
  """
  def get_subscription_definition(client, subscription_definition_id, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a subscription definition version.
  """
  def get_subscription_definition_version(client, subscription_definition_id, subscription_definition_version_id, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions/#{URI.encode(subscription_definition_version_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the runtime configuration of a thing.
  """
  def get_thing_runtime_configuration(client, thing_name, options \\ []) do
    path_ = "/greengrass/things/#{URI.encode(thing_name)}/runtimeconfig"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a paginated list of the deployments that have been started in a bulk
  deployment operation, and their current deployment status.
  """
  def list_bulk_deployment_detailed_reports(client, bulk_deployment_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/detailed-reports"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of bulk deployments.
  """
  def list_bulk_deployments(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/bulk/deployments"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a connector definition, which are containers for
  connectors. Connectors run on the Greengrass core and contain built-in
  integration with local infrastructure, device protocols, AWS, and other
  cloud services.
  """
  def list_connector_definition_versions(client, connector_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of connector definitions.
  """
  def list_connector_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/connectors"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a core definition.
  """
  def list_core_definition_versions(client, core_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of core definitions.
  """
  def list_core_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/cores"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a history of deployments for the group.
  """
  def list_deployments(client, group_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/deployments"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a device definition.
  """
  def list_device_definition_versions(client, device_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of device definitions.
  """
  def list_device_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/devices"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a Lambda function definition.
  """
  def list_function_definition_versions(client, function_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of Lambda function definitions.
  """
  def list_function_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/functions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current CAs for a group.
  """
  def list_group_certificate_authorities(client, group_id, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a group.
  """
  def list_group_versions(client, group_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of groups.
  """
  def list_groups(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/groups"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a logger definition.
  """
  def list_logger_definition_versions(client, logger_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of logger definitions.
  """
  def list_logger_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/loggers"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a resource definition.
  """
  def list_resource_definition_versions(client, resource_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of resource definitions.
  """
  def list_resource_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/resources"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a subscription definition.
  """
  def list_subscription_definition_versions(client, subscription_definition_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}/versions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of subscription definitions.
  """
  def list_subscription_definitions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/greengrass/definition/subscriptions"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of resource tags for a resource arn.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Resets a group's deployments.
  """
  def reset_deployments(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/deployments/$reset"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deploys multiple groups in one operation. This action starts the bulk
  deployment of a specified set of group versions. Each group version
  deployment will be triggered with an adaptive rate that has a fixed upper
  limit. We recommend that you include an ''X-Amzn-Client-Token'' token in
  every ''StartBulkDeployment'' request. These requests are idempotent with
  respect to the token and the request parameters.
  """
  def start_bulk_deployment(client, input, options \\ []) do
    path_ = "/greengrass/bulk/deployments"
    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Stops the execution of a bulk deployment. This action returns a status of
  ''Stopping'' until the deployment is stopped. You cannot start a new bulk
  deployment while a previous deployment is in the ''Stopping'' state. This
  action doesn't rollback completed deployments or cancel pending
  deployments.
  """
  def stop_bulk_deployment(client, bulk_deployment_id, input, options \\ []) do
    path_ = "/greengrass/bulk/deployments/#{URI.encode(bulk_deployment_id)}/$stop"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds tags to a Greengrass resource. Valid resources are 'Group',
  'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition',
  'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition',
  'ResourceDefinition', and 'BulkDeployment'.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Remove resource tags from a Greengrass Resource.
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
  Updates the connectivity information for the core. Any devices that belong
  to the group which has this core will receive this information in order to
  find the location of the core and connect to it.
  """
  def update_connectivity_info(client, thing_name, input, options \\ []) do
    path_ = "/greengrass/things/#{URI.encode(thing_name)}/connectivityInfo"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a connector definition.
  """
  def update_connector_definition(client, connector_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/connectors/#{URI.encode(connector_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a core definition.
  """
  def update_core_definition(client, core_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/cores/#{URI.encode(core_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a device definition.
  """
  def update_device_definition(client, device_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/devices/#{URI.encode(device_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a Lambda function definition.
  """
  def update_function_definition(client, function_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/functions/#{URI.encode(function_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a group.
  """
  def update_group(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the Certificate expiry time for a group.
  """
  def update_group_certificate_configuration(client, group_id, input, options \\ []) do
    path_ = "/greengrass/groups/#{URI.encode(group_id)}/certificateauthorities/configuration/expiry"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a logger definition.
  """
  def update_logger_definition(client, logger_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/loggers/#{URI.encode(logger_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a resource definition.
  """
  def update_resource_definition(client, resource_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/resources/#{URI.encode(resource_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a subscription definition.
  """
  def update_subscription_definition(client, subscription_definition_id, input, options \\ []) do
    path_ = "/greengrass/definition/subscriptions/#{URI.encode(subscription_definition_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the runtime configuration of a thing.
  """
  def update_thing_runtime_configuration(client, thing_name, input, options \\ []) do
    path_ = "/greengrass/things/#{URI.encode(thing_name)}/runtimeconfig"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "greengrass"}
    host = build_host("greengrass", client)
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
