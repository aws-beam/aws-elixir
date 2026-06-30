# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfig do
  @moduledoc """
  AppConfig helps you safely change application behavior in production without
  redeploying code.

  Using feature flags and dynamic free-form configurations, you can control how
  your application runs in real time. This approach reduces risk, accelerates
  releases, and enables faster responses to issues. You can gradually roll out new
  features to specific users, monitor their impact, and expand availability with
  confidence. You can also update block lists, allow lists, throttling limits, and
  logging levels instantly, allowing you to mitigate issues and fine-tune
  performance without a deployment.

  AppConfig supports a broad spectrum of use cases:

    *

  **Feature flags and toggles** – Gradually release new capabilities to targeted
  users, monitor impact, and instantly roll back changes if issues occur.

    *

  **Application tuning** – Introduce changes safely in production, measure their
  effects, and refine behavior without redeploying code.

    *

  **Allow list or block list** – Control access to features or restrict specific
  users in real time, without modifying application code.

    *

  **Centralized configuration storage** – Manage configuration data consistently
  across workloads. AppConfig can deploy configuration from the AppConfig hosted
  configuration store, Secrets Manager, Systems Manager, Systems Manager Parameter
  Store, or Amazon S3.

  ## How AppConfig works

  This section provides a high-level description of how AppConfig works and how
  you get started.

  ## Definitions

  ### 1. Identify configuration data to manage in AppConfig

  Before creating a configuration profile, identify the configuration data in your
  code that you want to manage dynamically using AppConfig. Common examples
  include feature flags, allow and block lists, logging levels, service limits,
  and throttling rules. These values tend to change frequently and can cause
  issues if misconfigured.

  If your configuration data already exists in cloud services such as Systems
  Manager Parameter Store or Amazon S3, you can use AppConfig to validate, deploy,
  and manage that data more effectively.

  ### 2. Create a configuration profile in AppConfig

  A configuration profile defines how AppConfig locates and manages your
  configuration data. It includes a URI that points to the data source and a
  profile type.

  AppConfig supports two profile types

    

  **Feature flags** – Enable controlled feature releases, gradual rollouts, and
  testing in production.

    

  **Free-form configurations** – Store and retrieve configuration data from
  external sources and update it without redeploying code.

  Both profile types help decouple configuration from code, support continuous
  delivery, and reduce deployment risk.

  You can also add optional validators to ensure that configuration data is
  syntactically and semantically correct. During deployment, AppConfig evaluates
  these validators and automatically rolls back changes if validation fails.

  Each configuration profile is associated with an application, which acts as a
  logical container for your configuration resources. For more information about
  creating a configuration profile, see [Creating a configuration profile in AppConfig](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-profile.html)
  in the the *AppConfig User Guide*.

  ### 3. Deploy configuration data

  When you start a deployment, AppConfig:

    
  Retrieves configuration data from the source defined in the configuration
  profile

    
  Validates the data using the configured validators

    
  Delivers the validated configuration to AppConfig Agent

  The delivered configuration becomes the deployed version used by your
  application. For more information about deploying a configuration, see
  [Deploying feature flags and configuration data in AppConfig](http://docs.aws.amazon.com/appconfig/latest/userguide/deploying-feature-flags.html).

  ### 4. Retrieve configuration data

  Your application retrieves configuration data by calling a local endpoint
  exposed by AppConfig Agent, which caches the deployed configuration. Retrieving
  data is a metered event. AppConfig Agent supports a variety of use cases, as
  described in [How to use AppConfig Agent to retrieve configuration data](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-agent-how-to-use.html).

  If the agent is not suitable for your use case, your application can retrieve
  configuration data directly from AppConfig by calling the
  [StartConfigurationSession](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html) and
  [GetLatestConfiguration](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
  API actions.

  For more information about retrieving a configuration, see [Retrieving feature flags and configuration data in
  AppConfig](http://docs.aws.amazon.com/appconfig/latest/userguide/retrieving-feature-flags.html).

  This reference is intended to be used with the [AppConfig User Guide](http://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      parameter() :: %{
        "Description" => String.t() | atom(),
        "Dynamic" => boolean(),
        "Required" => boolean()
      }

  """
  @type parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_extension_association_request() :: %{}

  """
  @type get_extension_association_request() :: %{}

  @typedoc """

  ## Example:

      get_extension_request() :: %{
        optional("VersionNumber") => integer()
      }

  """
  @type get_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validator() :: %{
        "Content" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type validator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_experiment_definition_request() :: %{
        optional("AudienceDescription") => String.t() | atom(),
        optional("Hypothesis") => String.t() | atom(),
        optional("LaunchCriteria") => String.t() | atom(),
        optional("Tags") => map(),
        required("AudienceRule") => String.t() | atom(),
        required("ConfigurationProfileIdentifier") => String.t() | atom(),
        required("Control") => treatment_input(),
        required("EnvironmentIdentifier") => String.t() | atom(),
        required("FlagKey") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Treatments") => list(treatment_input())
      }

  """
  @type create_experiment_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_experiment_run_request() :: %{
        optional("DeploymentParameters") => deployment_parameters(),
        optional("Result") => experiment_run_result()
      }

  """
  @type stop_experiment_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extension_summary() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "VersionNumber" => integer()
      }

  """
  @type extension_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monitor() :: %{
        "AlarmArn" => String.t() | atom(),
        "AlarmRoleArn" => String.t() | atom()
      }

  """
  @type monitor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_extension_association_request() :: %{
        optional("Parameters") => map()
      }

  """
  @type update_extension_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_experiment_run_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_experiment_run_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vended_metrics_settings() :: %{
        "Enabled" => boolean()
      }

  """
  @type vended_metrics_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_extension_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("LatestVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("Actions") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_deployment_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("DynamicExtensionParameters") => map(),
        optional("KmsKeyIdentifier") => String.t() | atom(),
        optional("LatestDeploymentNumber") => integer(),
        optional("Tags") => map(),
        required("ConfigurationProfileId") => String.t() | atom(),
        required("ConfigurationVersion") => String.t() | atom(),
        required("DeploymentStrategyId") => String.t() | atom()
      }

  """
  @type start_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("AppliedExtensions") => list(applied_extension()),
        optional("CompletedAt") => non_neg_integer(),
        optional("ConfigurationLocationUri") => String.t() | atom(),
        optional("ConfigurationName") => String.t() | atom(),
        optional("ConfigurationProfileId") => String.t() | atom(),
        optional("ConfigurationVersion") => String.t() | atom(),
        optional("DeploymentDurationInMinutes") => integer(),
        optional("DeploymentNumber") => integer(),
        optional("DeploymentStrategyId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EnvironmentId") => String.t() | atom(),
        optional("EventLog") => list(deployment_event()),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("KmsKeyIdentifier") => String.t() | atom(),
        optional("PercentageComplete") => float(),
        optional("StartedAt") => non_neg_integer(),
        optional("State") => list(any()),
        optional("VersionLabel") => String.t() | atom()
      }

  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_settings_request() :: %{
        optional("DeletionProtection") => deletion_protection_settings(),
        optional("VendedMetrics") => vended_metrics_settings()
      }

  """
  @type update_account_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployment_strategies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_deployment_strategies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environments() :: %{
        optional("Items") => list(environment()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type environments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_runs() :: %{
        "Items" => list(experiment_run_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type experiment_runs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      treatment() :: %{
        "Description" => String.t() | atom(),
        "FlagValue" => flag_value(),
        "Key" => String.t() | atom(),
        "Weight" => float()
      }

  """
  @type treatment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extension_association() :: %{
        optional("Arn") => String.t() | atom(),
        optional("ExtensionArn") => String.t() | atom(),
        optional("ExtensionVersionNumber") => integer(),
        optional("Id") => String.t() | atom(),
        optional("Parameters") => map(),
        optional("ResourceArn") => String.t() | atom()
      }

  """
  @type extension_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_hosted_configuration_version_request() :: %{}

  """
  @type delete_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:

      experiment_definition_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "ConfigurationProfileId" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "EnvironmentId" => String.t() | atom(),
        "FlagKey" => String.t() | atom(),
        "Hypothesis" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type experiment_definition_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_parameters() :: %{
        "DynamicExtensionParameters" => map(),
        "Tags" => map()
      }

  """
  @type deployment_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_run_result() :: %{
        "ExecutiveSummary" => String.t() | atom(),
        "ReasonsNotToLaunch" => String.t() | atom(),
        "ReasonsToLaunch" => String.t() | atom()
      }

  """
  @type experiment_run_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_definition_snapshot() :: %{
        "ApplicationId" => String.t() | atom(),
        "AudienceDescription" => String.t() | atom(),
        "AudienceRule" => String.t() | atom(),
        "ConfigurationProfileId" => String.t() | atom(),
        "Control" => treatment(),
        "EnvironmentId" => String.t() | atom(),
        "FlagKey" => String.t() | atom(),
        "Hypothesis" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LaunchCriteria" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Treatments" => list(treatment())
      }

  """
  @type experiment_definition_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_configuration_detail() :: %{
        "Constraint" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "Reason" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type invalid_configuration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tags() :: %{
        optional("Tags") => map()
      }

  """
  @type resource_tags() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extension_associations() :: %{
        optional("Items") => list(extension_association_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type extension_associations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configuration_profile_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("KmsKeyIdentifier") => String.t() | atom(),
        optional("RetrievalRoleArn") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Type") => String.t() | atom(),
        optional("Validators") => list(validator()),
        required("LocationUri") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_configuration_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_request() :: %{
        optional("ClientConfigurationVersion") => String.t() | atom(),
        required("ClientId") => String.t() | atom()
      }

  """
  @type get_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      create_deployment_strategy_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthType") => list(any()),
        optional("ReplicateTo") => list(any()),
        optional("Tags") => map(),
        required("DeploymentDurationInMinutes") => integer(),
        required("GrowthFactor") => float(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_deployment_strategy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extension() :: %{
        optional("Actions") => map(),
        optional("Arn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }

  """
  @type extension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_invocation() :: %{
        "ActionName" => String.t() | atom(),
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ExtensionIdentifier" => String.t() | atom(),
        "InvocationId" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "Uri" => String.t() | atom()
      }

  """
  @type action_invocation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        optional("ConfigurationVersion") => String.t() | atom(),
        optional("Content") => binary(),
        optional("ContentType") => String.t() | atom()
      }

  """
  @type configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_configuration_version() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("ConfigurationProfileId") => String.t() | atom(),
        optional("Content") => binary(),
        optional("ContentType") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("VersionLabel") => String.t() | atom(),
        optional("VersionNumber") => integer()
      }

  """
  @type hosted_configuration_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        optional("DeletionProtection") => deletion_protection_settings(),
        optional("VendedMetrics") => vended_metrics_settings()
      }

  """
  @type account_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_extension_request() :: %{
        optional("VersionNumber") => integer()
      }

  """
  @type delete_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Monitors") => list(monitor()),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_run_summary() :: %{
        "Description" => String.t() | atom(),
        "EndedAt" => non_neg_integer(),
        "ExperimentDefinitionId" => String.t() | atom(),
        "Run" => integer(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type experiment_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_profile_request() :: %{}

  """
  @type get_configuration_profile_request() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      applications() :: %{
        optional("Items") => list(application()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type applications() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_event() :: %{
        "ActionInvocations" => list(action_invocation()),
        "Description" => String.t() | atom(),
        "EventType" => list(any()),
        "OccurredAt" => non_neg_integer(),
        "TriggeredBy" => list(any())
      }

  """
  @type deployment_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_profile_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "ValidatorTypes" => list(list(any())())
      }

  """
  @type configuration_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_deployment_request() :: %{
        optional("AllowRevert") => boolean()
      }

  """
  @type stop_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      deployments() :: %{
        optional("Items") => list(deployment_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type deployments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_profiles() :: %{
        optional("Items") => list(configuration_profile_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type configuration_profiles() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deletion_protection_settings() :: %{
        "Enabled" => boolean(),
        "ProtectionPeriodInMinutes" => integer()
      }

  """
  @type deletion_protection_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      environment() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("Monitors") => list(monitor()),
        optional("Name") => String.t() | atom(),
        optional("State") => list(any())
      }

  """
  @type environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hosted_configuration_version_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("LatestVersionNumber") => integer(),
        optional("VersionLabel") => String.t() | atom(),
        required("Content") => binary(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type create_hosted_configuration_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_experiment_runs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_experiment_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_definitions() :: %{
        "Items" => list(experiment_definition_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type experiment_definitions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      treatment_input() :: %{
        "Description" => String.t() | atom(),
        "FlagValue" => flag_value(),
        "Weight" => float()
      }

  """
  @type treatment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_deployment_strategy_request() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t() | atom(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any())
      }

  """
  @type update_deployment_strategy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_experiment_definitions_request() :: %{
        optional("ApplicationIdentifier") => String.t() | atom(),
        optional("ConfigurationProfileIdentifier") => String.t() | atom(),
        optional("EnvironmentIdentifier") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_experiment_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_extension_association_request() :: %{
        optional("ExtensionVersionNumber") => integer(),
        optional("Parameters") => map(),
        optional("Tags") => map(),
        required("ExtensionIdentifier") => String.t() | atom(),
        required("ResourceIdentifier") => String.t() | atom()
      }

  """
  @type create_extension_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_deployment_strategy_request() :: %{}

  """
  @type delete_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:

      application() :: %{
        optional("Description") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_experiment_definition_request() :: %{
        optional("AudienceDescription") => String.t() | atom(),
        optional("AudienceRule") => String.t() | atom(),
        optional("Control") => treatment_input(),
        optional("Hypothesis") => String.t() | atom(),
        optional("LaunchCriteria") => String.t() | atom(),
        optional("Treatments") => list(treatment_input())
      }

  """
  @type update_experiment_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extension_association_summary() :: %{
        "ExtensionArn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ResourceArn" => String.t() | atom()
      }

  """
  @type extension_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_experiment_run_request() :: %{}

  """
  @type get_experiment_run_request() :: %{}

  @typedoc """

  ## Example:

      update_experiment_run_request() :: %{
        optional("DeploymentParameters") => deployment_parameters(),
        optional("Description") => String.t() | atom(),
        optional("ExposurePercentage") => float(),
        optional("TreatmentOverrides") => list()
      }

  """
  @type update_experiment_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_configuration_version_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "ConfigurationProfileId" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom(),
        "VersionLabel" => String.t() | atom(),
        "VersionNumber" => integer()
      }

  """
  @type hosted_configuration_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flag_value() :: %{
        "AttributeValues" => map(),
        "Enabled" => boolean()
      }

  """
  @type flag_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_strategies() :: %{
        optional("Items") => list(deployment_strategy()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type deployment_strategies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_profile_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("KmsKeyIdentifier") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("RetrievalRoleArn") => String.t() | atom(),
        optional("Validators") => list(validator())
      }

  """
  @type update_configuration_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extensions() :: %{
        optional("Items") => list(extension_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type extensions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_experiment_run_request() :: %{
        optional("DeploymentParameters") => deployment_parameters(),
        optional("Description") => String.t() | atom(),
        optional("ExposurePercentage") => float(),
        optional("Tags") => map(),
        optional("TreatmentOverrides") => list()
      }

  """
  @type start_experiment_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_run_events() :: %{
        "Items" => list(experiment_run_event()),
        "NextToken" => String.t() | atom()
      }

  """
  @type experiment_run_events() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_extensions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_extensions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_profile() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("KmsKeyIdentifier") => String.t() | atom(),
        optional("LocationUri") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("RetrievalRoleArn") => String.t() | atom(),
        optional("Type") => String.t() | atom(),
        optional("Validators") => list(validator())
      }

  """
  @type configuration_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_extension_associations_request() :: %{
        optional("ExtensionIdentifier") => String.t() | atom(),
        optional("ExtensionVersionNumber") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceIdentifier") => String.t() | atom()
      }

  """
  @type list_extension_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{
        optional("DeletionProtectionCheck") => list(any())
      }

  """
  @type delete_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      experiment_run() :: %{
        "ApplicationId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EndedAt" => non_neg_integer(),
        "ExperimentDefinitionId" => String.t() | atom(),
        "ExperimentDefinitionSnapshot" => experiment_definition_snapshot(),
        "ExposurePercentage" => float(),
        "Result" => experiment_run_result(),
        "Run" => integer(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TreatmentOverrides" => list(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type experiment_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_experiment_definition_request() :: %{
        optional("DeleteType") => list(any())
      }

  """
  @type delete_experiment_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_configuration_version_request() :: %{}

  """
  @type get_hosted_configuration_version_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Details" => list(),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_extension_request() :: %{
        optional("Actions") => map(),
        optional("Description") => String.t() | atom(),
        optional("Parameters") => map(),
        optional("VersionNumber") => integer()
      }

  """
  @type update_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "Uri" => String.t() | atom()
      }

  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_strategy() :: %{
        optional("DeploymentDurationInMinutes") => integer(),
        optional("Description") => String.t() | atom(),
        optional("FinalBakeTimeInMinutes") => integer(),
        optional("GrowthFactor") => float(),
        optional("GrowthType") => list(any()),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ReplicateTo") => list(any())
      }

  """
  @type deployment_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      experiment_run_event() :: %{
        "AssociatedDeployment" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EventType" => list(any()),
        "ExposurePercentage" => float(),
        "OccurredAt" => non_neg_integer(),
        "TreatmentOverrides" => list(),
        "TriggeredBy" => list(any())
      }

  """
  @type experiment_run_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_configuration_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("VersionLabel") => String.t() | atom()
      }

  """
  @type list_hosted_configuration_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_summary() :: %{
        "CompletedAt" => non_neg_integer(),
        "ConfigurationName" => String.t() | atom(),
        "ConfigurationProfileId" => String.t() | atom(),
        "ConfigurationVersion" => String.t() | atom(),
        "DeploymentDurationInMinutes" => integer(),
        "DeploymentNumber" => integer(),
        "FinalBakeTimeInMinutes" => integer(),
        "GrowthFactor" => float(),
        "GrowthType" => list(any()),
        "PercentageComplete" => float(),
        "StartedAt" => non_neg_integer(),
        "State" => list(any()),
        "Type" => list(any()),
        "VersionLabel" => String.t() | atom()
      }

  """
  @type deployment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configuration_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => String.t() | atom()
      }

  """
  @type list_configuration_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_configuration_request() :: %{
        required("ConfigurationVersion") => String.t() | atom()
      }

  """
  @type validate_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configuration_profile_request() :: %{
        optional("DeletionProtectionCheck") => list(any())
      }

  """
  @type delete_configuration_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payload_too_large_exception() :: %{
        "Limit" => float(),
        "Measure" => list(any()),
        "Message" => String.t() | atom(),
        "Size" => float()
      }

  """
  @type payload_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_strategy_request() :: %{}

  """
  @type get_deployment_strategy_request() :: %{}

  @typedoc """

  ## Example:

      experiment_definition() :: %{
        "ApplicationId" => String.t() | atom(),
        "AudienceDescription" => String.t() | atom(),
        "AudienceRule" => String.t() | atom(),
        "ConfigurationProfileId" => String.t() | atom(),
        "Control" => treatment(),
        "CreatedAt" => non_neg_integer(),
        "EnvironmentId" => String.t() | atom(),
        "FlagKey" => String.t() | atom(),
        "Hypothesis" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "KmsKeyIdentifier" => String.t() | atom(),
        "LaunchCriteria" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Treatments" => list(treatment()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type experiment_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_extension_association_request() :: %{}

  """
  @type delete_extension_association_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_experiment_definition_request() :: %{}

  """
  @type get_experiment_definition_request() :: %{}

  @typedoc """

  ## Example:

      hosted_configuration_versions() :: %{
        optional("Items") => list(hosted_configuration_version_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type hosted_configuration_versions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Monitors") => list(monitor()),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      applied_extension() :: %{
        "ExtensionAssociationId" => String.t() | atom(),
        "ExtensionId" => String.t() | atom(),
        "Parameters" => map(),
        "VersionNumber" => integer()
      }

  """
  @type applied_extension() :: %{(String.t() | atom()) => any()}

  @type create_application_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | internal_server_exception()

  @type create_configuration_profile_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type create_deployment_strategy_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | internal_server_exception()

  @type create_environment_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type create_experiment_definition_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type create_extension_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | conflict_exception()
          | internal_server_exception()

  @type create_extension_association_errors() ::
          service_quota_exceeded_exception()
          | bad_request_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type create_hosted_configuration_version_errors() ::
          service_quota_exceeded_exception()
          | payload_too_large_exception()
          | bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type delete_application_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type delete_configuration_profile_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type delete_deployment_strategy_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type delete_environment_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type delete_experiment_definition_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type delete_extension_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type delete_extension_association_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type delete_hosted_configuration_version_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_account_settings_errors() :: bad_request_exception() | internal_server_exception()

  @type get_application_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_configuration_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_configuration_profile_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_deployment_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_deployment_strategy_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_environment_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_experiment_definition_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_experiment_run_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_extension_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_extension_association_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type get_hosted_configuration_version_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_applications_errors() :: bad_request_exception() | internal_server_exception()

  @type list_configuration_profiles_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_deployment_strategies_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_deployments_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_environments_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_experiment_definitions_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_experiment_run_events_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_experiment_runs_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_extension_associations_errors() ::
          bad_request_exception() | internal_server_exception()

  @type list_extensions_errors() :: bad_request_exception() | internal_server_exception()

  @type list_hosted_configuration_versions_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type start_deployment_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type start_experiment_run_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type stop_deployment_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type stop_experiment_run_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_account_settings_errors() :: bad_request_exception() | internal_server_exception()

  @type update_application_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_configuration_profile_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_deployment_strategy_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_environment_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_experiment_definition_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type update_experiment_run_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type update_extension_errors() ::
          bad_request_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type update_extension_association_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

  @type validate_configuration_errors() ::
          bad_request_exception() | resource_not_found_exception() | internal_server_exception()

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
          String.t() | atom(),
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
  @spec create_environment(map(), String.t() | atom(), create_environment_request(), list()) ::
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
  Creates an experiment definition in AppConfig.

  An experiment definition describes the purpose, scope, and operational
  configuration of an experiment, including the target audience, feature flag, and
  treatment configurations.
  """
  @spec create_experiment_definition(
          map(),
          String.t() | atom(),
          create_experiment_definition_request(),
          list()
        ) ::
          {:ok, experiment_definition(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_experiment_definition_errors()}
  def create_experiment_definition(
        %Client{} = client,
        application_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions"

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
  for feature flag data. For more information, see [Type reference for AWS.AppConfig.FeatureFlags](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-type-reference-feature-flags.html)
  in the
  *AppConfig User Guide*.
  """
  @spec create_hosted_configuration_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
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
  @spec delete_application(map(), String.t() | atom(), delete_application_request(), list()) ::
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
          String.t() | atom(),
          String.t() | atom(),
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
          String.t() | atom(),
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
  @spec delete_environment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_request(),
          list()
        ) ::
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
  Deletes an experiment definition.

  You can archive the definition to hide it from the active list while preserving
  it for future reference, or permanently delete it along with all associated run
  history.
  """
  @spec delete_experiment_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_experiment_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_experiment_definition_errors()}
  def delete_experiment_definition(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DeleteType", "delete_type"}
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
  Deletes an AppConfig extension.

  You must delete all associations to an
  extension before you delete the extension.
  """
  @spec delete_extension(map(), String.t() | atom(), delete_extension_request(), list()) ::
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
          String.t() | atom(),
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
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
  @spec get_application(map(), String.t() | atom(), list()) ::
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
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
  @spec get_configuration_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
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
  @spec get_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
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
  @spec get_deployment_strategy(map(), String.t() | atom(), list()) ::
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
  @spec get_environment(map(), String.t() | atom(), String.t() | atom(), list()) ::
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
  Retrieves information about an experiment definition.
  """
  @spec get_experiment_definition(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, experiment_definition(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_experiment_definition_errors()}
  def get_experiment_definition(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an experiment run, including its status, start time,
  and exposure settings.
  """
  @spec get_experiment_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, experiment_run(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_experiment_run_errors()}
  def get_experiment_run(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        run,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns/#{AWS.Util.encode_uri(run)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an AppConfig extension.
  """
  @spec get_extension(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
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
  @spec get_extension_association(map(), String.t() | atom(), list()) ::
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
  @spec get_hosted_configuration_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
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
  @spec list_applications(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  @spec list_deployment_strategies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  @spec list_environments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
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
  Lists the experiment definitions for an account.

  You can filter results by application, configuration profile, environment, or
  status.
  """
  @spec list_experiment_definitions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, experiment_definitions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_definitions_errors()}
  def list_experiment_definitions(
        %Client{} = client,
        application_identifier \\ nil,
        configuration_profile_identifier \\ nil,
        environment_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/experimentdefinitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      if !is_nil(environment_identifier) do
        [{"environment_identifier", environment_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(configuration_profile_identifier) do
        [{"configuration_profile_identifier", configuration_profile_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(application_identifier) do
        [{"application_identifier", application_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the events for a specified experiment run.

  Events provide a timeline of actions and state changes that occurred during the
  run.
  """
  @spec list_experiment_run_events(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, experiment_run_events(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_run_events_errors()}
  def list_experiment_run_events(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        run,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns/#{AWS.Util.encode_uri(run)}/events"

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
  Lists the experiment runs for a specified experiment definition.

  You can filter by status.
  """
  @spec list_experiment_runs(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, experiment_runs(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_runs_errors()}
  def list_experiment_runs(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists all AppConfig extension associations in the account.

  For more
  information about extensions and associations, see [Extending workflows](https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
  in the *AppConfig User Guide*.
  """
  @spec list_extension_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  @spec list_extensions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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

  AppConfig Agent supports deploying feature flag or free-form configuration data
  to specific segments or individual users during a gradual rollout. Entity-based
  gradual deployments ensure that once a user or segment receives a configuration
  version, they continue to receive that same version throughout the deployment
  period, regardless of which compute resource serves their requests. For more
  information, see [Using AppConfig Agent for user-based or entity-based gradual deployments](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-agent-how-to-use.html#appconfig-entity-based-gradual-deployments)
  """
  @spec start_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_deployment_request(),
          list()
        ) ::
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
  Starts an experiment run for the specified experiment definition.

  An experiment run delivers treatments to the target audience and collects
  metrics. You can start multiple experiment runs from the same experiment
  definition.
  """
  @spec start_experiment_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_experiment_run_request(),
          list()
        ) ::
          {:ok, experiment_run(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_experiment_run_errors()}
  def start_experiment_run(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns"

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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
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
  Stops a running experiment.

  Stopping an experiment run ends audience exposure and returns users to the
  currently deployed feature flag configuration.
  """
  @spec stop_experiment_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          stop_experiment_run_request(),
          list()
        ) ::
          {:ok, experiment_run(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_experiment_run_errors()}
  def stop_experiment_run(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        run,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns/#{AWS.Util.encode_uri(run)}/stop"

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
  Assigns metadata to an AppConfig resource.

  Tags help organize and categorize
  your AppConfig resources. Each tag consists of a key and an optional value, both
  of which you define. You can specify a maximum of 50 tags for a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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
  @spec update_application(map(), String.t() | atom(), update_application_request(), list()) ::
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
          String.t() | atom(),
          String.t() | atom(),
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
          String.t() | atom(),
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
  @spec update_environment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_environment_request(),
          list()
        ) ::
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
  Updates an experiment definition.

  You can update treatments, the control, audience rules, and other properties.
  You cannot update an experiment definition while an experiment run is active.
  """
  @spec update_experiment_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_experiment_definition_request(),
          list()
        ) ::
          {:ok, experiment_definition(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_experiment_definition_errors()}
  def update_experiment_definition(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}"

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
  Updates a running experiment.

  Use this operation to increase audience exposure, modify treatment assignment
  overrides, or update the description of an active experiment run. Audience
  exposure can only be increased, not decreased.
  """
  @spec update_experiment_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_experiment_run_request(),
          list()
        ) ::
          {:ok, experiment_run(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_experiment_run_errors()}
  def update_experiment_run(
        %Client{} = client,
        application_identifier,
        experiment_definition_identifier,
        run,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_identifier)}/experimentdefinitions/#{AWS.Util.encode_uri(experiment_definition_identifier)}/experimentruns/#{AWS.Util.encode_uri(run)}/update"

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
  @spec update_extension(map(), String.t() | atom(), update_extension_request(), list()) ::
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
          String.t() | atom(),
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
          String.t() | atom(),
          String.t() | atom(),
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
