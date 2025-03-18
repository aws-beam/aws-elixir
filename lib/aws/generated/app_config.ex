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

  @typedoc """

  ## Example:

      list_extensions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_extensions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      applications() :: %{
        optional("Items") => list(application()()),
        optional("NextToken") => String.t()
      }

  """
  @type applications() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_deployment_request() :: %{
        optional("AllowRevert") => boolean()
      }

  """
  @type stop_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extension() :: %{
        optional("Actions") => map(),
        optional("Arn") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }

  """
  @type extension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_summary() :: %{
        "CompletedAt" => non_neg_integer(),
        "ConfigurationName" => String.t(),
        "ConfigurationVersion" => String.t(),
        "DeploymentDurationInMinutes" => integer(),
        "DeploymentNumber" => integer(),
        "FinalBakeTimeInMinutes" => integer(),
        "GrowthFactor" => float(),
        "GrowthType" => list(any()),
        "PercentageComplete" => float(),
        "StartedAt" => non_neg_integer(),
        "State" => list(any()),
        "VersionLabel" => String.t()
      }

  """
  @type deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extension_associations() :: %{
        optional("Items") => list(extension_association_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type extension_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        optional("ApplicationId") => String.t(),
        optional("AppliedExtensions") => list(applied_extension()()),
        optional("CompletedAt") => non_neg_integer(),
        optional("ConfigurationLocationUri") => String.t(),
        optional("ConfigurationName") => String.t(),
        optional("ConfigurationProfileId") => String.t(),
        optional("ConfigurationVersion") => String.t(),
        optional("DeploymentDurationInMinutes") => integer(),
        optional("DeploymentNumber") => integer(),
        optional("DeploymentStrategyId") => String.t(),
        optional("Description") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("EventLog") => list(deployment_event()()),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("KmsKeyArn") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("PercentageComplete") => float(),
        optional("StartedAt") => non_neg_integer(),
        optional("State") => list(any()),
        optional("VersionLabel") => String.t()
      }

  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_configuration_detail() :: %{
        "Constraint" => String.t(),
        "Location" => String.t(),
        "Reason" => String.t(),
        "Type" => String.t(),
        "Value" => String.t()
      }

  """
  @type invalid_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_deployment_strategy_request() :: %{}

  """
  @type delete_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:

      get_configuration_request() :: %{
        optional("ClientConfigurationVersion") => String.t(),
        required("ClientId") => String.t()
      }

  """
  @type get_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_configuration_request() :: %{
        required("ConfigurationVersion") => String.t()
      }

  """
  @type validate_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_tags() :: %{
        optional("Tags") => map()
      }

  """
  @type resource_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_hosted_configuration_version_request() :: %{
        optional("Description") => String.t(),
        optional("LatestVersionNumber") => integer(),
        optional("VersionLabel") => String.t(),
        required("Content") => binary(),
        required("ContentType") => String.t()
      }

  """
  @type create_hosted_configuration_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      update_configuration_profile_request() :: %{
        optional("Description") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("Name") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Validators") => list(validator()())
      }

  """
  @type update_configuration_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_deployment_strategy_request() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any())
      }

  """
  @type update_deployment_strategy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_strategy() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("ReplicateTo") => list(any())
      }

  """
  @type deployment_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deletion_protection_settings() :: %{
        "Enabled" => boolean(),
        "ProtectionPeriodInMinutes" => integer()
      }

  """
  @type deletion_protection_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        optional("ConfigurationVersion") => String.t(),
        optional("Content") => binary(),
        optional("ContentType") => String.t()
      }

  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extension_association_summary() :: %{
        "ExtensionArn" => String.t(),
        "Id" => String.t(),
        "ResourceArn" => String.t()
      }

  """
  @type extension_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_configuration_versions() :: %{
        optional("Items") => list(hosted_configuration_version_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type hosted_configuration_versions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      applied_extension() :: %{
        "ExtensionAssociationId" => String.t(),
        "ExtensionId" => String.t(),
        "Parameters" => map(),
        "VersionNumber" => integer()
      }

  """
  @type applied_extension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor() :: %{
        "AlarmArn" => String.t(),
        "AlarmRoleArn" => String.t()
      }

  """
  @type monitor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extension_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "VersionNumber" => integer()
      }

  """
  @type extension_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_hosted_configuration_version_request() :: %{}

  """
  @type delete_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payload_too_large_exception() :: %{
        "Limit" => float(),
        "Measure" => list(any()),
        "Message" => String.t(),
        "Size" => float()
      }

  """
  @type payload_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        optional("ApplicationId") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Name") => String.t(),
        optional("State") => list(any())
      }

  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      delete_configuration_profile_request() :: %{
        optional("DeletionProtectionCheck") => list(any())
      }

  """
  @type delete_configuration_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application() :: %{
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_extension_association_request() :: %{
        optional("Parameters") => map()
      }

  """
  @type update_extension_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter() :: %{
        "Description" => String.t(),
        "Dynamic" => boolean(),
        "Required" => boolean()
      }

  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_strategy_request() :: %{
        optional("Description") => String.t(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthType") => list(any()),
        optional("ReplicateTo") => list(any()),
        optional("Tags") => map(),
        required("DeploymentDurationInMinutes") => integer(),
        required("GrowthFactor") => float(),
        required("Name") => String.t()
      }

  """
  @type create_deployment_strategy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_profile() :: %{
        optional("ApplicationId") => String.t(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("LocationUri") => String.t(),
        optional("Name") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Type") => String.t(),
        optional("Validators") => list(validator()())
      }

  """
  @type configuration_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_extension_request() :: %{
        optional("VersionNumber") => integer()
      }

  """
  @type get_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hosted_configuration_version_request() :: %{}

  """
  @type get_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:

      action_invocation() :: %{
        "ActionName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "ExtensionIdentifier" => String.t(),
        "InvocationId" => String.t(),
        "RoleArn" => String.t(),
        "Uri" => String.t()
      }

  """
  @type action_invocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_request() :: %{
        optional("DeletionProtection") => deletion_protection_settings()
      }

  """
  @type update_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environments() :: %{
        optional("Items") => list(environment()()),
        optional("NextToken") => String.t()
      }

  """
  @type environments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_profile_request() :: %{}

  """
  @type get_configuration_profile_request() :: %{}

  @typedoc """

  ## Example:

      get_deployment_strategy_request() :: %{}

  """
  @type get_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:

      deployment_strategies() :: %{
        optional("Items") => list(deployment_strategy()()),
        optional("NextToken") => String.t()
      }

  """
  @type deployment_strategies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_configuration_version_summary() :: %{
        "ApplicationId" => String.t(),
        "ConfigurationProfileId" => String.t(),
        "ContentType" => String.t(),
        "Description" => String.t(),
        "KmsKeyArn" => String.t(),
        "VersionLabel" => String.t(),
        "VersionNumber" => integer()
      }

  """
  @type hosted_configuration_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => String.t()
      }

  """
  @type list_configuration_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{
        optional("DeletionProtectionCheck") => list(any())
      }

  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_extension_association_request() :: %{
        optional("ExtensionVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("ExtensionIdentifier") => String.t(),
        required("ResourceIdentifier") => String.t()
      }

  """
  @type create_extension_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_profiles() :: %{
        optional("Items") => list(configuration_profile_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type configuration_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "Uri" => String.t()
      }

  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extensions() :: %{
        optional("Items") => list(extension_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type extensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        optional("DeletionProtection") => deletion_protection_settings()
      }

  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_profile_request() :: %{
        optional("Description") => String.t(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("RetrievalRoleArn") => String.t(),
        optional("Tags") => map(),
        optional("Type") => String.t(),
        optional("Validators") => list(validator()()),
        required("LocationUri") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_configuration_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_extension_associations_request() :: %{
        optional("ExtensionIdentifier") => String.t(),
        optional("ExtensionVersionNumber") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIdentifier") => String.t()
      }

  """
  @type list_extension_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_extension_association_request() :: %{}

  """
  @type get_extension_association_request() :: %{}

  @typedoc """

  ## Example:

      create_extension_request() :: %{
        optional("Description") => String.t(),
        optional("LatestVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("Actions") => map(),
        required("Name") => String.t()
      }

  """
  @type create_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployment_strategies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_deployment_strategies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_extension_association_request() :: %{}

  """
  @type delete_extension_association_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Details" => list(),
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hosted_configuration_version() :: %{
        optional("ApplicationId") => String.t(),
        optional("ConfigurationProfileId") => String.t(),
        optional("Content") => binary(),
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("VersionLabel") => String.t(),
        optional("VersionNumber") => integer()
      }

  """
  @type hosted_configuration_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validator() :: %{
        "Content" => String.t(),
        "Type" => list(any())
      }

  """
  @type validator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_extension_request() :: %{
        optional("Actions") => map(),
        optional("Description") => String.t(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }

  """
  @type update_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("Description") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_event() :: %{
        "ActionInvocations" => list(action_invocation()()),
        "Description" => String.t(),
        "EventType" => list(any()),
        "OccurredAt" => non_neg_integer(),
        "TriggeredBy" => list(any())
      }

  """
  @type deployment_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_request() :: %{
        optional("Description") => String.t(),
        optional("Monitors") => list(monitor()()),
        optional("Name") => String.t()
      }

  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_extension_request() :: %{
        optional("VersionNumber") => integer()
      }

  """
  @type delete_extension_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_profile_summary() :: %{
        "ApplicationId" => String.t(),
        "Id" => String.t(),
        "LocationUri" => String.t(),
        "Name" => String.t(),
        "Type" => String.t(),
        "ValidatorTypes" => list(list(any())())
      }

  """
  @type configuration_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployments() :: %{
        optional("Items") => list(deployment_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type deployments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      start_deployment_request() :: %{
        optional("Description") => String.t(),
        optional("DynamicExtensionParameters") => map(),
        optional("KmsKeyIdentifier") => String.t(),
        optional("Tags") => map(),
        required("ConfigurationProfileId") => String.t(),
        required("ConfigurationVersion") => String.t(),
        required("DeploymentStrategyId") => String.t()
      }

  """
  @type start_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hosted_configuration_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VersionLabel") => String.t()
      }

  """
  @type list_hosted_configuration_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extension_association() :: %{
        optional("Arn") => String.t(),
        optional("ExtensionArn") => String.t(),
        optional("ExtensionVersionNumber") => integer(),
        optional("Id") => String.t(),
        optional("Parameters") => map(),
        optional("ResourceArn") => String.t()
      }

  """
  @type extension_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @type create_application_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_configuration_profile_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_deployment_strategy_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_environment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_extension_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_extension_association_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_hosted_configuration_version_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | payload_too_large_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_configuration_profile_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_environment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_extension_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_hosted_configuration_version_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_account_settings_errors() :: bad_request_exception() | internal_server_exception()

  @type get_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_configuration_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_configuration_profile_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_deployment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_environment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_extension_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_hosted_configuration_version_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() :: bad_request_exception() | internal_server_exception()

  @type list_configuration_profiles_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_deployment_strategies_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_deployments_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_environments_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_extension_associations_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_extensions_errors() :: bad_request_exception() | internal_server_exception()

  @type list_hosted_configuration_versions_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_deployment_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_deployment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_account_settings_errors() :: bad_request_exception() | internal_server_exception()

  @type update_application_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_configuration_profile_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_deployment_strategy_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_environment_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_extension_errors() ::
          bad_request_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_extension_association_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type validate_configuration_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2019-10-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfig",
      global?: false,
      hostname: nil,
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
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec create_configuration_profile(
          map(),
          String.t(),
          create_configuration_profile_request(),
          list()
        ) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configuration_profile_errors()}
  def create_configuration_profile(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec create_deployment_strategy(map(), create_deployment_strategy_request(), list()) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_strategy_errors()}
  def create_deployment_strategy(%Client{} = client, input, options \\ []) do
    url_path = "/deploymentstrategies"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec create_environment(map(), String.t(), create_environment_request(), list()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/environments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec create_extension(map(), create_extension_request(), list()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_extension_errors()}
  def create_extension(%Client{} = client, input, options \\ []) do
    url_path = "/extensions"

    {headers, input} =
      [
        {"LatestVersionNumber", "Latest-Version-Number"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec create_extension_association(map(), create_extension_association_request(), list()) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_extension_association_errors()}
  def create_extension_association(%Client{} = client, input, options \\ []) do
    url_path = "/extensionassociations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new configuration in the AppConfig hosted configuration store.

  If
  you're creating a feature flag, we recommend you familiarize yourself with the
  JSON schema
  for feature flag data. For more information, see [Type reference for AWS.AppConfig.FeatureFlags](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile-feature-flags.html#appconfig-type-reference-feature-flags)
  in the
  *AppConfig User Guide*.
  """
  @spec create_hosted_configuration_version(
          map(),
          String.t(),
          String.t(),
          create_hosted_configuration_version_request(),
          list()
        ) ::
          {:ok, hosted_configuration_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hosted_configuration_version_errors()}
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

    custom_headers = []
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
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an application.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a configuration profile.

  To prevent users from unintentionally deleting actively-used configuration
  profiles,
  enable [deletion protection](https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html).
  """
  @spec delete_configuration_profile(
          map(),
          String.t(),
          String.t(),
          delete_configuration_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_profile_errors()}
  def delete_configuration_profile(
        %Client{} = client,
        application_id,
        configuration_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/configurationprofiles/#{AWS.Util.encode_uri(configuration_profile_id)}"

    {headers, input} =
      [
        {"DeletionProtectionCheck", "x-amzn-deletion-protection-check"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a deployment strategy.
  """
  @spec delete_deployment_strategy(
          map(),
          String.t(),
          delete_deployment_strategy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_strategy_errors()}
  def delete_deployment_strategy(%Client{} = client, deployment_strategy_id, input, options \\ []) do
    url_path = "/deployementstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an environment.

  To prevent users from unintentionally deleting actively-used environments,
  enable [deletion protection](https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html).
  """
  @spec delete_environment(map(), String.t(), String.t(), delete_environment_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

    {headers, input} =
      [
        {"DeletionProtectionCheck", "x-amzn-deletion-protection-check"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec delete_extension(map(), String.t(), delete_extension_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_extension_errors()}
  def delete_extension(%Client{} = client, extension_identifier, input, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
  @spec delete_extension_association(
          map(),
          String.t(),
          delete_extension_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_extension_association_errors()}
  def delete_extension_association(
        %Client{} = client,
        extension_association_id,
        input,
        options \\ []
      ) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a version of a configuration from the AppConfig hosted configuration
  store.
  """
  @spec delete_hosted_configuration_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_hosted_configuration_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hosted_configuration_version_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Returns information about the status of the `DeletionProtection`
  parameter.
  """
  @spec get_account_settings(map(), list()) ::
          {:ok, account_settings(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an application.
  """
  @spec get_application(map(), String.t(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
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
  @spec get_configuration(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_errors()}
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
  @spec get_configuration_profile(map(), String.t(), String.t(), list()) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_profile_errors()}
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
  @spec get_deployment(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
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
  @spec get_deployment_strategy(map(), String.t(), list()) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_strategy_errors()}
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
  @spec get_environment(map(), String.t(), String.t(), list()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
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
  @spec get_extension(map(), String.t(), String.t() | nil, list()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_extension_errors()}
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
  @spec get_extension_association(map(), String.t(), list()) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_extension_association_errors()}
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
  @spec get_hosted_configuration_version(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, hosted_configuration_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hosted_configuration_version_errors()}
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
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, applications(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
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
  @spec list_configuration_profiles(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, configuration_profiles(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_profiles_errors()}
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
  @spec list_deployment_strategies(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, deployment_strategies(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_strategies_errors()}
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
  @spec list_deployments(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, deployments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployments_errors()}
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
  @spec list_environments(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, environments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
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
  @spec list_extension_associations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, extension_associations(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_extension_associations_errors()}
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
  @spec list_extensions(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, extensions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_extensions_errors()}
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
  @spec list_hosted_configuration_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, hosted_configuration_versions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hosted_configuration_versions_errors()}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, resource_tags(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
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
  @spec start_deployment(map(), String.t(), String.t(), start_deployment_request(), list()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_deployment_errors()}
  def start_deployment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}/deployments"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Stops a deployment.

  This API action works only on deployments that have a status of
  `DEPLOYING`, unless an `AllowRevert` parameter is supplied. If the
  `AllowRevert` parameter is supplied, the status of an in-progress deployment
  will be `ROLLED_BACK`. The status of a completed deployment will be
  `REVERTED`. AppConfig only allows a revert within 72 hours of
  deployment completion.
  """
  @spec stop_deployment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          stop_deployment_request(),
          list()
        ) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_deployment_errors()}
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

    {headers, input} =
      [
        {"AllowRevert", "Allow-Revert"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a tag key and value from an AppConfig resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the value of the `DeletionProtection` parameter.
  """
  @spec update_account_settings(map(), update_account_settings_request(), list()) ::
          {:ok, account_settings(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an application.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configuration profile.
  """
  @spec update_configuration_profile(
          map(),
          String.t(),
          String.t(),
          update_configuration_profile_request(),
          list()
        ) ::
          {:ok, configuration_profile(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_profile_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a deployment strategy.
  """
  @spec update_deployment_strategy(
          map(),
          String.t(),
          update_deployment_strategy_request(),
          list()
        ) ::
          {:ok, deployment_strategy(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deployment_strategy_errors()}
  def update_deployment_strategy(%Client{} = client, deployment_strategy_id, input, options \\ []) do
    url_path = "/deploymentstrategies/#{AWS.Util.encode_uri(deployment_strategy_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an environment.
  """
  @spec update_environment(map(), String.t(), String.t(), update_environment_request(), list()) ::
          {:ok, environment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, application_id, environment_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environments/#{AWS.Util.encode_uri(environment_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec update_extension(map(), String.t(), update_extension_request(), list()) ::
          {:ok, extension(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_extension_errors()}
  def update_extension(%Client{} = client, extension_identifier, input, options \\ []) do
    url_path = "/extensions/#{AWS.Util.encode_uri(extension_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec update_extension_association(
          map(),
          String.t(),
          update_extension_association_request(),
          list()
        ) ::
          {:ok, extension_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_extension_association_errors()}
  def update_extension_association(
        %Client{} = client,
        extension_association_id,
        input,
        options \\ []
      ) do
    url_path = "/extensionassociations/#{AWS.Util.encode_uri(extension_association_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Uses the validators in a configuration profile to validate a configuration.
  """
  @spec validate_configuration(
          map(),
          String.t(),
          String.t(),
          validate_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_configuration_errors()}
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
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end
end
