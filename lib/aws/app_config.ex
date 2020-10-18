# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfig do
  @moduledoc """
  AWS AppConfig

  Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage,
  and quickly deploy application configurations. AppConfig supports
  controlled deployments to applications of any size and includes built-in
  validation checks and monitoring. You can use AppConfig with applications
  hosted on Amazon EC2 instances, AWS Lambda, containers, mobile
  applications, or IoT devices.

  To prevent errors when deploying application configurations, especially for
  production systems where a simple typo could cause an unexpected outage,
  AppConfig includes validators. A validator provides a syntactic or semantic
  check to ensure that the configuration you want to deploy works as
  intended. To validate your application configuration data, you provide a
  schema or a Lambda function that runs against the configuration. The
  configuration deployment or update can only proceed when the configuration
  data is valid.

  During a configuration deployment, AppConfig monitors the application to
  ensure that the deployment is successful. If the system encounters an
  error, AppConfig rolls back the change to minimize impact for your
  application users. You can configure a deployment strategy for each
  application or environment that includes deployment criteria, including
  velocity, bake time, and alarms to monitor. Similar to error monitoring, if
  a deployment triggers an alarm, AppConfig automatically rolls back to the
  previous version.

  AppConfig supports multiple use cases. Here are some examples.

  <ul> <li> **Application tuning**: Use AppConfig to carefully introduce
  changes to your application that can only be tested with production
  traffic.

  </li> <li> **Feature toggle**: Use AppConfig to turn on new features that
  require a timely deployment, such as a product launch or announcement.

  </li> <li> **Allow list**: Use AppConfig to allow premium subscribers to
  access paid content.

  </li> <li> **Operational issues**: Use AppConfig to reduce stress on your
  application when a dependency or other external factor impacts the system.

  </li> </ul> This reference is intended to be used with the [AWS AppConfig
  User
  Guide](http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html).
  """

  @doc """
  An application in AppConfig is a logical unit of code that provides
  capabilities for your customers. For example, an application can be a
  microservice that runs on Amazon EC2 instances, a mobile application
  installed by your users, a serverless application using Amazon API Gateway
  and AWS Lambda, or any system you run on behalf of others.
  """
  def create_application(client, input, options \\ []) do
    path_ = "/applications"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Information that enables AppConfig to access the configuration source.
  Valid configuration sources include Systems Manager (SSM) documents, SSM
  Parameter Store parameters, and Amazon S3 objects. A configuration profile
  includes the following information.

  <ul> <li> The Uri location of the configuration data.

  </li> <li> The AWS Identity and Access Management (IAM) role that provides
  access to the configuration data.

  </li> <li> A validator for the configuration data. Available validators
  include either a JSON Schema or an AWS Lambda function.

  </li> </ul> For more information, see [Create a Configuration and a
  Configuration
  Profile](http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig-creating-configuration-and-profile.html)
  in the *AWS AppConfig User Guide*.
  """
  def create_configuration_profile(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  A deployment strategy defines important criteria for rolling out your
  configuration to the designated targets. A deployment strategy includes:
  the overall duration required, a percentage of targets to receive the
  deployment during each interval, an algorithm that defines how percentage
  grows, and bake time.
  """
  def create_deployment_strategy(client, input, options \\ []) do
    path_ = "/deploymentstrategies"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  For each application, you define one or more environments. An environment
  is a logical deployment group of AppConfig targets, such as applications in
  a `Beta` or `Production` environment. You can also define environments for
  application subcomponents such as the `Web`, `Mobile` and `Back-end`
  components for your application. You can configure Amazon CloudWatch alarms
  for each environment. The system monitors alarms during a configuration
  deployment. If an alarm is triggered, the system rolls back the
  configuration.
  """
  def create_environment(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create a new configuration in the AppConfig configuration store.
  """
  def create_hosted_configuration_version(client, application_id, configuration_profile_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}/hostedconfigurationversions"
    {headers, input} =
      [
        {"ContentType", "Content-Type"},
        {"Description", "Description"},
        {"LatestVersionNumber", "Latest-Version-Number"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, 201) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Application-Id", "ApplicationId"},
            {"Configuration-Profile-Id", "ConfigurationProfileId"},
            {"Content-Type", "ContentType"},
            {"Description", "Description"},
            {"Version-Number", "VersionNumber"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Delete an application. Deleting an application does not delete a
  configuration from a host.
  """
  def delete_application(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete a configuration profile. Deleting a configuration profile does not
  delete a configuration from a host.
  """
  def delete_configuration_profile(client, application_id, configuration_profile_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete a deployment strategy. Deleting a deployment strategy does not
  delete a configuration from a host.
  """
  def delete_deployment_strategy(client, deployment_strategy_id, input, options \\ []) do
    path_ = "/deployementstrategies/#{URI.encode(deployment_strategy_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete an environment. Deleting an environment does not delete a
  configuration from a host.
  """
  def delete_environment(client, application_id, environment_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete a version of a configuration from the AppConfig configuration store.
  """
  def delete_hosted_configuration_version(client, application_id, configuration_profile_id, version_number, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}/hostedconfigurationversions/#{URI.encode(version_number)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Retrieve information about an application.
  """
  def get_application(client, application_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Receive information about a configuration.

  <important> AWS AppConfig uses the value of the
  `ClientConfigurationVersion` parameter to identify the configuration
  version on your clients. If you don’t send `ClientConfigurationVersion`
  with each call to `GetConfiguration`, your clients receive the current
  configuration. You are charged each time your clients receive a
  configuration.

  To avoid excess charges, we recommend that you include the
  `ClientConfigurationVersion` value with every call to `GetConfiguration`.
  This value must be saved on your client. Subsequent calls to
  `GetConfiguration` must pass this value by using the
  `ClientConfigurationVersion` parameter.

  </important>
  """
  def get_configuration(client, application, configuration, environment, client_configuration_version \\ nil, client_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application)}/environments/#{URI.encode(environment)}/configurations/#{URI.encode(configuration)}"
    headers = []
    query_ = []
    query_ = if !is_nil(client_id) do
      [{"client_id", client_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(client_configuration_version) do
      [{"client_configuration_version", client_configuration_version} | query_]
    else
      query_
    end
    case request(client, :get, path_, query_, headers, nil, options, 200) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Configuration-Version", "ConfigurationVersion"},
            {"Content-Type", "ContentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Retrieve information about a configuration profile.
  """
  def get_configuration_profile(client, application_id, configuration_profile_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve information about a configuration deployment.
  """
  def get_deployment(client, application_id, deployment_number, environment_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}/deployments/#{URI.encode(deployment_number)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve information about a deployment strategy. A deployment strategy
  defines important criteria for rolling out your configuration to the
  designated targets. A deployment strategy includes: the overall duration
  required, a percentage of targets to receive the deployment during each
  interval, an algorithm that defines how percentage grows, and bake time.
  """
  def get_deployment_strategy(client, deployment_strategy_id, options \\ []) do
    path_ = "/deploymentstrategies/#{URI.encode(deployment_strategy_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve information about an environment. An environment is a logical
  deployment group of AppConfig applications, such as applications in a
  `Production` environment or in an `EU_Region` environment. Each
  configuration deployment targets an environment. You can enable one or more
  Amazon CloudWatch alarms for an environment. If an alarm is triggered
  during a deployment, AppConfig roles back the configuration.
  """
  def get_environment(client, application_id, environment_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get information about a specific configuration version.
  """
  def get_hosted_configuration_version(client, application_id, configuration_profile_id, version_number, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}/hostedconfigurationversions/#{URI.encode(version_number)}"
    headers = []
    query_ = []
    case request(client, :get, path_, query_, headers, nil, options, 200) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Application-Id", "ApplicationId"},
            {"Configuration-Profile-Id", "ConfigurationProfileId"},
            {"Content-Type", "ContentType"},
            {"Description", "Description"},
            {"Version-Number", "VersionNumber"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  List all applications in your AWS account.
  """
  def list_applications(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the configuration profiles for an application.
  """
  def list_configuration_profiles(client, application_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List deployment strategies.
  """
  def list_deployment_strategies(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/deploymentstrategies"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the deployments for an environment.
  """
  def list_deployments(client, application_id, environment_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}/deployments"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the environments for an application.
  """
  def list_environments(client, application_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  View a list of configurations stored in the AppConfig configuration store
  by version.
  """
  def list_hosted_configuration_versions(client, application_id, configuration_profile_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}/hostedconfigurationversions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Starts a deployment.
  """
  def start_deployment(client, application_id, environment_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}/deployments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Stops a deployment. This API action works only on deployments that have a
  status of `DEPLOYING`. This action moves the deployment to a status of
  `ROLLED_BACK`.
  """
  def stop_deployment(client, application_id, deployment_number, environment_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}/deployments/#{URI.encode(deployment_number)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Metadata to assign to an AppConfig resource. Tags help organize and
  categorize your AppConfig resources. Each tag consists of a key and an
  optional value, both of which you define. You can specify a maximum of 50
  tags for a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a tag key and value from an AppConfig resource.
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
  Updates an application.
  """
  def update_application(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a configuration profile.
  """
  def update_configuration_profile(client, application_id, configuration_profile_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a deployment strategy.
  """
  def update_deployment_strategy(client, deployment_strategy_id, input, options \\ []) do
    path_ = "/deploymentstrategies/#{URI.encode(deployment_strategy_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an environment.
  """
  def update_environment(client, application_id, environment_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/environments/#{URI.encode(environment_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Uses the validators in a configuration profile to validate a configuration.
  """
  def validate_configuration(client, application_id, configuration_profile_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/configurationprofiles/#{URI.encode(configuration_profile_id)}/validators"
    headers = []
    {query_, input} =
      [
        {"ConfigurationVersion", "configuration_version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "appconfig"}
    host = build_host("appconfig", client)
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
