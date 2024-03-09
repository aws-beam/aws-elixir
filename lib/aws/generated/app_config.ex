# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfig do
  @moduledoc """
  AppConfig feature flags and dynamic configurations help software builders
  quickly and securely adjust application behavior in production environments
  without full
  code deployments.

  AppConfig speeds up software release frequency, improves
  application resiliency, and helps you address emergent issues more quickly. With
  feature
  flags, you can gradually release new capabilities to users and measure the
  impact of those
  changes before fully deploying the new capabilities to all users. With
  operational flags
  and dynamic configurations, you can update block lists, allow lists, throttling
  limits,
  logging verbosity, and perform other operational tuning to quickly respond to
  issues in
  production environments.

  AppConfig is a capability of Amazon Web Services Systems Manager.

  Despite the fact that application configuration content can vary greatly from
  application to application, AppConfig supports the following use cases, which
  cover a broad spectrum of customer needs:

    *

  **Feature flags and toggles** - Safely release new
  capabilities to your customers in a controlled environment. Instantly roll back
  changes if you experience a problem.

    *

  **Application tuning** - Carefully introduce
  application changes while testing the impact of those changes with users in
  production environments.

    *

  **Allow list or block list** - Control access to
  premium features or instantly block specific users without deploying new code.

    *

  **Centralized configuration storage** - Keep your
  configuration data organized and consistent across all of your workloads. You
  can use
  AppConfig to deploy configuration data stored in the AppConfig
  hosted configuration store, Secrets Manager, Systems Manager, Parameter
  Store, or Amazon S3.

  ## How AppConfig works

  This section provides a high-level description of how AppConfig works and how
  you get started.

  ## Definitions

  ### 1. Identify configuration values in code you want to manage in the cloud

  Before you start creating AppConfig artifacts, we recommend you
  identify configuration data in your code that you want to dynamically manage
  using
  AppConfig. Good examples include feature flags or toggles, allow and
  block lists, logging verbosity, service limits, and throttling rules, to name a
  few.

  If your configuration data already exists in the cloud, you can take advantage
  of AppConfig validation, deployment, and extension features to further
  streamline configuration data management.

  ### 2. Create an application namespace

  To create a namespace, you create an AppConfig artifact called an
  application. An application is simply an organizational construct like a
  folder.

  ### 3. Create environments

  For each AppConfig application, you define one or more environments.
  An environment is a logical grouping of targets, such as applications in a
  `Beta` or `Production` environment, Lambda functions,
  or containers. You can also define environments for application subcomponents,
  such as the `Web`, `Mobile`, and
  `Back-end`.

  You can configure Amazon CloudWatch alarms for each environment. The system
  monitors
  alarms during a configuration deployment. If an alarm is triggered, the system
  rolls back the configuration.

  ### 4. Create a configuration profile

  A configuration profile includes, among other things, a URI that enables
  AppConfig to locate your configuration data in its stored location
  and a profile type. AppConfig supports two configuration profile types:
  feature flags and freeform configurations. Feature flag configuration profiles
  store their data in the AppConfig hosted configuration store and the URI
  is simply `hosted`. For freeform configuration profiles, you can store
  your data in the AppConfig hosted configuration store or any Amazon Web Services
  service that integrates with AppConfig, as described in [Creating a free form configuration
  profile](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-free-form-configurations-creating.html)
  in the the *AppConfig User Guide*.

  A configuration profile can also include optional validators to ensure your
  configuration data is syntactically and semantically correct. AppConfig
  performs a check using the validators when you start a deployment. If any errors
  are detected, the deployment rolls back to the previous configuration data.

  ### 5. Deploy configuration data

  When you create a new deployment, you specify the following:

    
  An application ID

    
  A configuration profile ID

    
  A configuration version

    
  An environment ID where you want to deploy the configuration data

    
  A deployment strategy ID that defines how fast you want the changes to
  take effect

  When you call the
  [StartDeployment](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_StartDeployment.html) API action, AppConfig performs the following
  tasks:

    
  Retrieves the configuration data from the underlying data store by using
  the location URI in the configuration profile.

    
  Verifies the configuration data is syntactically and semantically correct
  by using the validators you specified when you created your configuration
  profile.

    
  Caches a copy of the data so it is ready to be retrieved by your
  application. This cached copy is called the *deployed
  data*.

  ### 6. Retrieve the configuration

  You can configure AppConfig Agent as a local host and have the agent
  poll AppConfig for configuration updates. The agent calls the
  [StartConfigurationSession](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html)
  and
  [GetLatestConfiguration](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html) API actions and caches your configuration data
  locally. To retrieve the data, your application makes an HTTP call to the
  localhost server. AppConfig Agent supports several use cases, as
  described in [Simplified
  retrieval
  methods](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-simplified-methods.html)
  in the the *AppConfig User
  Guide*.

  If AppConfig Agent isn't supported for your use case, you can
  configure your application to poll AppConfig for configuration updates
  by directly calling the
  [StartConfigurationSession](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html) and
  [GetLatestConfiguration](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
  API actions.

  This reference is intended to be used with the [AppConfig User Guide](http://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2019-10-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfig",
      global?: false,
      protocol: "rest-json",
      service_id: "AppConfig",
      signature_version: "v4",
      signing_name: "appconfig",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application.

  In AppConfig, an application is simply an
  organizational construct like a folder. This organizational construct has a
  relationship
  with some unit of executable code. For example, you could create an application
  called
  MyMobileApp to organize and manage configuration data for a mobile application
  installed by
  your users.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Creates a configuration profile, which is information that enables AppConfig
  to access the configuration source.

  Valid configuration sources include the
  following:

    *
  Configuration data in YAML, JSON, and other formats stored in the AppConfig
  hosted configuration store

    *
  Configuration data stored as objects in an Amazon Simple Storage Service (Amazon
  S3)
  bucket

    *
  Pipelines stored in CodePipeline

    *
  Secrets stored in Secrets Manager

    *
  Standard and secure string parameters stored in Amazon Web Services Systems
  Manager Parameter Store

    *
  Configuration data in SSM documents stored in the Systems Manager document store

  A configuration profile includes the following information:

    *
  The URI location of the configuration data.

    *
  The Identity and Access Management (IAM) role that provides access to the
  configuration data.

    *
  A validator for the configuration data. Available validators include either a
  JSON
  Schema or an Amazon Web Services Lambda function.

  For more information, see [Create a Configuration and a Configuration
  Profile](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html)
  in the *AppConfig
  User Guide*.
  """
  def create_configuration_profile(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles"
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
      201
    )
  end

  @doc """
  Creates a deployment strategy that defines important criteria for rolling out
  your
  configuration to the designated targets.

  A deployment strategy includes the overall
  duration required, a percentage of targets to receive the deployment during each
  interval,
  an algorithm that defines how percentage grows, and bake time.
  """
  def create_deployment_strategy(%Client{} = client, input, options \\ []) do
    url_path = "/deploymentstrategies"
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
      201
    )
  end

  @doc """
  Creates an environment.

  For each application, you define one or more environments. An
  environment is a deployment group of AppConfig targets, such as applications in
  a
  `Beta` or `Production` environment. You can also define
  environments for application subcomponents such as the `Web`,
  `Mobile` and `Back-end` components for your application. You can
  configure Amazon CloudWatch alarms for each environment. The system monitors
  alarms during a
  configuration deployment. If an alarm is triggered, the system rolls back the
  configuration.
  """
  def create_environment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/environments"
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
      201
    )
  end

  @doc """
  Creates an AppConfig extension.

  An extension augments your ability to inject
  logic or behavior at different points during the AppConfig workflow of creating
  or deploying a configuration.

  You can create your own extensions or use the Amazon Web Services authored
  extensions provided by
  AppConfig. For an AppConfig extension that uses Lambda, you must create a Lambda
  function to perform any computation and processing
  defined in the extension. If you plan to create custom versions of the Amazon
  Web Services
  authored notification extensions, you only need to specify an Amazon Resource
  Name (ARN) in
  the `Uri` field for the new extension version.

    *
  For a custom EventBridge notification extension, enter the ARN of the
  EventBridge
  default events in the `Uri` field.

    *
  For a custom Amazon SNS notification extension, enter the ARN of an Amazon SNS
  topic in the `Uri` field.

    *
  For a custom Amazon SQS notification extension, enter the ARN of an Amazon SQS
  message queue in the `Uri` field.

  For more information about extensions, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def create_extension(%Client{} = client, input, options \\ []) do
    url_path = "/extensions"

    {headers, input} =
      [
        {"LatestVersionNumber", "Latest-Version-Number"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  When you create an extension or configure an Amazon Web Services authored
  extension, you
  associate the extension with an AppConfig application, environment, or
  configuration profile.

  For example, you can choose to run the

  ```
  AppConfig
  deployment events to Amazon SNS
  ```

  Amazon Web Services authored extension and receive notifications on an Amazon
  SNS
  topic anytime a configuration deployment is started for a specific application.
  Defining
  which extension to associate with an AppConfig resource is called an
  *extension association*. An extension association is a specified
  relationship between an extension and an AppConfig resource, such as an
  application or a configuration profile. For more information about extensions
  and
  associations, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def create_extension_association(%Client{} = client, input, options \\ []) do
    url_path = "/extensionassociations"
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
      201
    )
  end

  @doc """
  Creates a new configuration in the AppConfig hosted configuration
  store.
  """
  def create_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions"

    {headers, input} =
      [
        {"ContentType", "Content-Type"},
        {"Description", "Description"},
        {"LatestVersionNumber", "Latest-Version-Number"},
        {"VersionLabel", "VersionLabel"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Application-Id", "ApplicationId"},
          {"Configuration-Profile-Id", "ConfigurationProfileId"},
          {"Content-Type", "ContentType"},
          {"Description", "Description"},
          {"KmsKeyArn", "KmsKeyArn"},
          {"VersionLabel", "VersionLabel"},
          {"Version-Number", "VersionNumber"}
        ]
      )

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
      201
    )
  end

  @doc """
  Deletes an application.

  Deleting an application does not delete a configuration from a
  host.
  """
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      204
    )
  end

  @doc """
  Deletes a configuration profile.

  Deleting a configuration profile does not delete a
  configuration from a host.
  """
  def delete_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

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
      204
    )
  end

  @doc """
  Deletes a deployment strategy.

  Deleting a deployment strategy does not delete a
  configuration from a host.
  """
  def delete_deployment_strategy(%Client{} = client, deployment_strategy_id, input, options \\ []) do
    url_path = "/deployementstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"
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
      204
    )
  end

  @doc """
  Deletes an environment.

  Deleting an environment does not delete a configuration from a
  host.
  """
  def delete_environment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

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
      204
    )
  end

  @doc """
  Deletes an AppConfig extension.

  You must delete all associations to an
  extension before you delete the extension.
  """
  def delete_extension(%Client{} = client, extension_identifier, input, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version"}
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
  Deletes an extension association.

  This action doesn't delete extensions defined in the
  association.
  """
  def delete_extension_association(
        %Client{} = client,
        extension_association_id,
        input,
        options \\ []
      ) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"
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
      204
    )
  end

  @doc """
  Deletes a version of a configuration from the AppConfig hosted configuration
  store.
  """
  def delete_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions/#{AWS.Util.encode_uri(version_number)}"

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
      204
    )
  end

  @doc """
  Retrieves information about an application.
  """
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  (Deprecated) Retrieves the latest deployed configuration.

  Note the following important information.

    
  This API action is deprecated. Calls to receive configuration data should use
  the
  [StartConfigurationSession](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html) and
  [GetLatestConfiguration](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
  APIs instead.

    

  `GetConfiguration` is a priced call. For more information, see
  [Pricing](https://aws.amazon.com/systems-manager/pricing/).
  """
  def get_configuration(
        %Client{} = client,
        application,
        configuration,
        environment,
        client_configuration_version \\ nil,
        client_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/environments/#{AWS.Util.encode_uri(environment)}/configurations/#{AWS.Util.encode_uri(configuration)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(client_id) do
        [{"client_id", client_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(client_configuration_version) do
        [{"client_configuration_version", client_configuration_version} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Configuration-Version", "ConfigurationVersion"},
          {"Content-Type", "ContentType"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a configuration profile.
  """
  def get_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a configuration deployment.
  """
  def get_deployment(
        %Client{} = client,
        application_id,
        deployment_number,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments/#{AWS.Util.encode_uri(deployment_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a deployment strategy.

  A deployment strategy defines
  important criteria for rolling out your configuration to the designated targets.
  A
  deployment strategy includes the overall duration required, a percentage of
  targets to
  receive the deployment during each interval, an algorithm that defines how
  percentage
  grows, and bake time.
  """
  def get_deployment_strategy(%Client{} = client, deployment_strategy_id, options \\ []) do
    url_path = "/deploymentstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an environment.

  An environment is a deployment group of
  AppConfig applications, such as applications in a `Production`
  environment or in an `EU_Region` environment. Each configuration deployment
  targets an environment. You can enable one or more Amazon CloudWatch alarms for
  an environment. If
  an alarm is triggered during a deployment, AppConfig roles back the
  configuration.
  """
  def get_environment(%Client{} = client, application_id, environment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an AppConfig extension.
  """
  def get_extension(
        %Client{} = client,
        extension_identifier,
        version_number \\ nil,
        options \\ []
      ) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version_number", version_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an AppConfig extension association.

  For more
  information about extensions and associations, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def get_extension_association(%Client{} = client, extension_association_id, options \\ []) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific configuration version.
  """
  def get_hosted_configuration_version(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        version_number,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Application-Id", "ApplicationId"},
          {"Configuration-Profile-Id", "ConfigurationProfileId"},
          {"Content-Type", "ContentType"},
          {"Description", "Description"},
          {"KmsKeyArn", "KmsKeyArn"},
          {"VersionLabel", "VersionLabel"},
          {"Version-Number", "VersionNumber"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all applications in your Amazon Web Services account.
  """
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the configuration profiles for an application.
  """
  def list_configuration_profiles(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists deployment strategies.
  """
  def list_deployment_strategies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/deploymentstrategies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the deployments for an environment in descending deployment number order.
  """
  def list_deployments(
        %Client{} = client,
        application_id,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the environments for an application.
  """
  def list_environments(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all AppConfig extension associations in the account.

  For more
  information about extensions and associations, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def list_extension_associations(
        %Client{} = client,
        extension_identifier \\ nil,
        extension_version_number \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resource_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/extensionassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_identifier) do
        [{"resource_identifier", resource_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(extension_version_number) do
        [{"extension_version_number", extension_version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(extension_identifier) do
        [{"extension_identifier", extension_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all custom and Amazon Web Services authored AppConfig extensions in the
  account.

  For more information about extensions, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def list_extensions(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/extensions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configurations stored in the AppConfig hosted configuration store by
  version.
  """
  def list_hosted_configuration_versions(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        version_label \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/hostedconfigurationversions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_label) do
        [{"version_label", version_label} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a deployment.
  """
  def start_deployment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments"

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
      201
    )
  end

  @doc """
  Stops a deployment.

  This API action works only on deployments that have a status of
  `DEPLOYING`. This action moves the deployment to a status of
  `ROLLED_BACK`.
  """
  def stop_deployment(
        %Client{} = client,
        application_id,
        deployment_number,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments/#{AWS.Util.encode_uri(deployment_number)}"

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
      202
    )
  end

  @doc """
  Assigns metadata to an AppConfig resource.

  Tags help organize and categorize
  your AppConfig resources. Each tag consists of a key and an optional value, both
  of which you define. You can specify a maximum of 50 tags for a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes a tag key and value from an AppConfig resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates an application.
  """
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates a configuration profile.
  """
  def update_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates a deployment strategy.
  """
  def update_deployment_strategy(%Client{} = client, deployment_strategy_id, input, options \\ []) do
    url_path = "/deploymentstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates an environment.
  """
  def update_environment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates an AppConfig extension.

  For more information about extensions, see
  [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def update_extension(%Client{} = client, extension_identifier, input, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates an association.

  For more information about extensions and associations, see
  [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  def update_extension_association(
        %Client{} = client,
        extension_association_id,
        input,
        options \\ []
      ) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Uses the validators in a configuration profile to validate a configuration.
  """
  def validate_configuration(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}/validators"

    headers = []

    {query_params, input} =
      [
        {"ConfigurationVersion", "configuration_version"}
      ]
      |> Request.build_params(input)

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
end
