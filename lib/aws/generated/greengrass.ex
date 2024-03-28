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

  @typedoc """

  ## Example:

      function_definition_version() :: %{
        "DefaultConfig" => function_default_config(),
        "Functions" => list(greengrass_function()())
      }

  """
  @type function_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_definition_response() :: %{}

  """
  @type delete_connector_definition_response() :: %{}

  @typedoc """

  ## Example:

      update_device_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_device_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector() :: %{
        "ConnectorArn" => String.t(),
        "Id" => String.t(),
        "Parameters" => map()
      }

  """
  @type connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Resources") => list(resource()())
      }

  """
  @type create_resource_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_role_to_group_response() :: %{
        "AssociatedAt" => String.t()
      }

  """
  @type associate_role_to_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_execution_config() :: %{
        "IsolationMode" => list(any()),
        "RunAs" => function_run_as_config()
      }

  """
  @type function_execution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_volume_resource_data() :: %{
        "DestinationPath" => String.t(),
        "GroupOwnerSetting" => group_owner_setting(),
        "SourcePath" => String.t()
      }

  """
  @type local_volume_resource_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_service_role_from_account_response() :: %{
        "DisassociatedAt" => String.t()
      }

  """
  @type disassociate_service_role_from_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logger_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_logger_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connectivity_info_response() :: %{
        "Message" => String.t(),
        "Version" => String.t()
      }

  """
  @type update_connectivity_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_definition_request() :: %{}

  """
  @type delete_function_definition_request() :: %{}

  @typedoc """

  ## Example:

      delete_device_definition_response() :: %{}

  """
  @type delete_device_definition_response() :: %{}

  @typedoc """

  ## Example:

      get_subscription_definition_request() :: %{}

  """
  @type get_subscription_definition_request() :: %{}

  @typedoc """

  ## Example:

      delete_logger_definition_response() :: %{}

  """
  @type delete_logger_definition_response() :: %{}

  @typedoc """

  ## Example:

      list_logger_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_logger_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_resource_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version_information() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type version_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "CreatedAt" => String.t(),
        "DeploymentArn" => String.t(),
        "DeploymentId" => String.t(),
        "DeploymentType" => list(any()),
        "GroupArn" => String.t()
      }

  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logger_definition_request() :: %{}

  """
  @type get_logger_definition_request() :: %{}

  @typedoc """

  ## Example:

      secrets_manager_secret_resource_data() :: %{
        "ARN" => String.t(),
        "AdditionalStagingLabelsToDownload" => list(String.t()())
      }

  """
  @type secrets_manager_secret_resource_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_certificate_authority_response() :: %{
        "GroupCertificateAuthorityArn" => String.t(),
        "GroupCertificateAuthorityId" => String.t(),
        "PemEncodedCertificate" => String.t()
      }

  """
  @type get_group_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("ConnectorDefinitionVersionArn") => String.t(),
        optional("CoreDefinitionVersionArn") => String.t(),
        optional("DeviceDefinitionVersionArn") => String.t(),
        optional("FunctionDefinitionVersionArn") => String.t(),
        optional("LoggerDefinitionVersionArn") => String.t(),
        optional("ResourceDefinitionVersionArn") => String.t(),
        optional("SubscriptionDefinitionVersionArn") => String.t()
      }

  """
  @type create_group_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logger_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_logger_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_subscription_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_thing_runtime_configuration_request() :: %{
        optional("TelemetryConfiguration") => telemetry_configuration_update()
      }

  """
  @type update_thing_runtime_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => subscription_definition_version(),
        "Id" => String.t(),
        "NextToken" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_subscription_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_resource_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_deployment_detailed_reports_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_bulk_deployment_detailed_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => connector_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_connector_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_response() :: %{
        "Deployments" => list(deployment()()),
        "NextToken" => String.t()
      }

  """
  @type list_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_core_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_core_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_certificate_authorities_request() :: %{}

  """
  @type list_group_certificate_authorities_request() :: %{}

  @typedoc """

  ## Example:

      list_connector_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_connector_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("DefaultConfig") => function_default_config(),
        optional("Functions") => list(greengrass_function()())
      }

  """
  @type create_function_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_core_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => core_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_core_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_role_request() :: %{}

  """
  @type get_associated_role_request() :: %{}

  @typedoc """

  ## Example:

      resource_definition_version() :: %{
        "Resources" => list(resource()())
      }

  """
  @type resource_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logger_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_logger_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_default_config() :: %{
        "Execution" => function_default_execution_config()
      }

  """
  @type function_default_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => function_definition_version(),
        "Id" => String.t(),
        "NextToken" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_function_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_owner_setting() :: %{
        "AutoAddGroupOwner" => boolean(),
        "GroupOwner" => String.t()
      }

  """
  @type group_owner_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => device_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_device_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_configuration() :: %{
        "TelemetryConfiguration" => telemetry_configuration()
      }

  """
  @type runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_subscription_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("DeploymentId") => String.t(),
        optional("GroupVersionId") => String.t(),
        required("DeploymentType") => list(any())
      }

  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Devices") => list(device()())
      }

  """
  @type create_device_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_run_as_config() :: %{
        "Gid" => integer(),
        "Uid" => integer()
      }

  """
  @type function_run_as_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_configuration_update() :: %{
        "Telemetry" => list(any())
      }

  """
  @type telemetry_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_subscription_definition_request() :: %{}

  """
  @type delete_subscription_definition_request() :: %{}

  @typedoc """

  ## Example:

      list_bulk_deployments_response() :: %{
        "BulkDeployments" => list(bulk_deployment()()),
        "NextToken" => String.t()
      }

  """
  @type list_bulk_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => resource_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_resource_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_resource_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription_definition_version() :: %{
        "Subscriptions" => list(subscription()())
      }

  """
  @type subscription_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_certificate_configuration_request() :: %{
        optional("CertificateExpiryInMilliseconds") => String.t()
      }

  """
  @type update_group_certificate_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_definition_request() :: %{}

  """
  @type get_function_definition_request() :: %{}

  @typedoc """

  ## Example:

      create_software_update_job_response() :: %{
        "IotJobArn" => String.t(),
        "IotJobId" => String.t(),
        "PlatformSoftwareVersion" => String.t()
      }

  """
  @type create_software_update_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      definition_information() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type definition_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        "DeploymentArn" => String.t(),
        "DeploymentId" => String.t()
      }

  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_definition_version() :: %{
        "Connectors" => list(connector()())
      }

  """
  @type connector_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_configuration_environment() :: %{
        "AccessSysfs" => boolean(),
        "Execution" => function_execution_config(),
        "ResourceAccessPolicies" => list(resource_access_policy()()),
        "Variables" => map()
      }

  """
  @type function_configuration_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => device_definition_version(),
        "Id" => String.t(),
        "NextToken" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_device_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_definition_request() :: %{}

  """
  @type delete_resource_definition_request() :: %{}

  @typedoc """

  ## Example:

      get_service_role_for_account_request() :: %{}

  """
  @type get_service_role_for_account_request() :: %{}

  @typedoc """

  ## Example:

      update_group_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_function_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_definition_version() :: %{
        "Cores" => list(core()())
      }

  """
  @type core_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_role_response() :: %{
        "AssociatedAt" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type get_associated_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_definition_response() :: %{}

  """
  @type delete_function_definition_response() :: %{}

  @typedoc """

  ## Example:

      update_connectivity_info_request() :: %{
        optional("ConnectivityInfo") => list(connectivity_info()())
      }

  """
  @type update_connectivity_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_definition_request() :: %{}

  """
  @type delete_core_definition_request() :: %{}

  @typedoc """

  ## Example:

      delete_connector_definition_request() :: %{}

  """
  @type delete_connector_definition_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_role_from_group_response() :: %{
        "DisassociatedAt" => String.t()
      }

  """
  @type disassociate_role_from_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_core_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => resource_definition_version(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_resource_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_core_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_core_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_definition_request() :: %{}

  """
  @type get_connector_definition_request() :: %{}

  @typedoc """

  ## Example:

      telemetry_configuration() :: %{
        "ConfigurationSyncStatus" => list(any()),
        "Telemetry" => list(any())
      }

  """
  @type telemetry_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_download_owner_setting() :: %{
        "GroupOwner" => String.t(),
        "GroupPermission" => list(any())
      }

  """
  @type resource_download_owner_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_core_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_core_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_subscription_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_deployment_detailed_reports_response() :: %{
        "Deployments" => list(bulk_deployment_result()()),
        "NextToken" => String.t()
      }

  """
  @type list_bulk_deployment_detailed_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connectivity_info() :: %{
        "HostAddress" => String.t(),
        "Id" => String.t(),
        "Metadata" => String.t(),
        "PortNumber" => integer()
      }

  """
  @type connectivity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connectivity_info_response() :: %{
        "ConnectivityInfo" => list(connectivity_info()()),
        "Message" => String.t()
      }

  """
  @type get_connectivity_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_connector_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_definition_version() :: %{
        "Devices" => list(device()())
      }

  """
  @type device_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_function_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_bulk_deployment_request() :: %{}

  """
  @type stop_bulk_deployment_request() :: %{}

  @typedoc """

  ## Example:

      list_group_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_group_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_connector_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_subscription_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connector_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_connector_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logger_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_logger_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_certificate_authority_request() :: %{}

  """
  @type get_group_certificate_authority_request() :: %{}

  @typedoc """

  ## Example:

      resource_data_container() :: %{
        "LocalDeviceResourceData" => local_device_resource_data(),
        "LocalVolumeResourceData" => local_volume_resource_data(),
        "S3MachineLearningModelResourceData" => s3_machine_learning_model_resource_data(),
        "SageMakerMachineLearningModelResourceData" => sage_maker_machine_learning_model_resource_data(),
        "SecretsManagerSecretResourceData" => secrets_manager_secret_resource_data()
      }

  """
  @type resource_data_container() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_certificate_authority_response() :: %{
        "GroupCertificateAuthorityArn" => String.t()
      }

  """
  @type create_group_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_definition_response() :: %{}

  """
  @type update_function_definition_response() :: %{}

  @typedoc """

  ## Example:

      create_subscription_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_subscription_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_definition_request() :: %{}

  """
  @type delete_device_definition_request() :: %{}

  @typedoc """

  ## Example:

      update_subscription_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_subscription_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_certificate_authorities_response() :: %{
        "GroupCertificateAuthorities" => list(group_certificate_authority_properties()())
      }

  """
  @type list_group_certificate_authorities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_device_resource_data() :: %{
        "GroupOwnerSetting" => group_owner_setting(),
        "SourcePath" => String.t()
      }

  """
  @type local_device_resource_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_definition_version_request() :: %{}

  """
  @type get_core_definition_version_request() :: %{}

  @typedoc """

  ## Example:

      get_connector_definition_version_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_connector_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_deployments_response() :: %{
        "DeploymentArn" => String.t(),
        "DeploymentId" => String.t()
      }

  """
  @type reset_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_resource_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_status_response() :: %{
        "DeploymentStatus" => String.t(),
        "DeploymentType" => list(any()),
        "ErrorDetails" => list(error_detail()()),
        "ErrorMessage" => String.t(),
        "UpdatedAt" => String.t()
      }

  """
  @type get_deployment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_certificate_authority_properties() :: %{
        "GroupCertificateAuthorityArn" => String.t(),
        "GroupCertificateAuthorityId" => String.t()
      }

  """
  @type group_certificate_authority_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_core_definition_response() :: %{}

  """
  @type update_core_definition_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_information() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type group_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logger_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Loggers") => list(logger()())
      }

  """
  @type create_logger_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_definition_version_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_function_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_certificate_configuration_request() :: %{}

  """
  @type get_group_certificate_configuration_request() :: %{}

  @typedoc """

  ## Example:

      bulk_deployment() :: %{
        "BulkDeploymentArn" => String.t(),
        "BulkDeploymentId" => String.t(),
        "CreatedAt" => String.t()
      }

  """
  @type bulk_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connector_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_connector_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greengrass_function() :: %{
        "FunctionArn" => String.t(),
        "FunctionConfiguration" => function_configuration(),
        "Id" => String.t()
      }

  """
  @type greengrass_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => group_version(),
        optional("tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_role_from_group_request() :: %{}

  """
  @type disassociate_role_from_group_request() :: %{}

  @typedoc """

  ## Example:

      sage_maker_machine_learning_model_resource_data() :: %{
        "DestinationPath" => String.t(),
        "OwnerSetting" => resource_download_owner_setting(),
        "SageMakerJobArn" => String.t()
      }

  """
  @type sage_maker_machine_learning_model_resource_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_thing_runtime_configuration_response() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }

  """
  @type get_thing_runtime_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connectivity_info_request() :: %{}

  """
  @type get_connectivity_info_request() :: %{}

  @typedoc """

  ## Example:

      get_resource_definition_version_request() :: %{}

  """
  @type get_resource_definition_version_request() :: %{}

  @typedoc """

  ## Example:

      create_resource_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_resource_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_service_role_to_account_request() :: %{
        required("RoleArn") => String.t()
      }

  """
  @type associate_service_role_to_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_device_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_deployments_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Force") => boolean()
      }

  """
  @type reset_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bulk_deployments_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_bulk_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logger_definition_version_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_logger_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_certificate_configuration_response() :: %{
        "CertificateAuthorityExpiryInMilliseconds" => String.t(),
        "CertificateExpiryInMilliseconds" => String.t(),
        "GroupId" => String.t()
      }

  """
  @type update_group_certificate_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_device_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_device_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_function_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => group_version(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_group_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logger() :: %{
        "Component" => list(any()),
        "Id" => String.t(),
        "Level" => list(any()),
        "Space" => integer(),
        "Type" => list(any())
      }

  """
  @type logger() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logger_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_logger_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => function_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_function_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_version() :: %{
        "ConnectorDefinitionVersionArn" => String.t(),
        "CoreDefinitionVersionArn" => String.t(),
        "DeviceDefinitionVersionArn" => String.t(),
        "FunctionDefinitionVersionArn" => String.t(),
        "LoggerDefinitionVersionArn" => String.t(),
        "ResourceDefinitionVersionArn" => String.t(),
        "SubscriptionDefinitionVersionArn" => String.t()
      }

  """
  @type group_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "DetailedErrorCode" => String.t(),
        "DetailedErrorMessage" => String.t()
      }

  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_default_execution_config() :: %{
        "IsolationMode" => list(any()),
        "RunAs" => function_run_as_config()
      }

  """
  @type function_default_execution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logger_definition_version() :: %{
        "Loggers" => list(logger()())
      }

  """
  @type logger_definition_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_device_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_response() :: %{}

  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:

      core() :: %{
        "CertificateArn" => String.t(),
        "Id" => String.t(),
        "SyncShadow" => boolean(),
        "ThingArn" => String.t()
      }

  """
  @type core() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_status_request() :: %{}

  """
  @type get_deployment_status_request() :: %{}

  @typedoc """

  ## Example:

      create_logger_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_logger_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_function_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_resource_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_core_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Cores") => list(core()())
      }

  """
  @type create_core_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_definition_request() :: %{}

  """
  @type get_device_definition_request() :: %{}

  @typedoc """

  ## Example:

      create_subscription_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Subscriptions") => list(subscription()())
      }

  """
  @type create_subscription_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connector_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_connector_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logger_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_logger_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logger_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => logger_definition_version(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_logger_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_definition_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_function_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_group_certificate_configuration_response() :: %{
        "CertificateAuthorityExpiryInMilliseconds" => String.t(),
        "CertificateExpiryInMilliseconds" => String.t(),
        "GroupId" => String.t()
      }

  """
  @type get_group_certificate_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_configuration() :: %{
        "EncodingType" => list(any()),
        "Environment" => function_configuration_environment(),
        "ExecArgs" => String.t(),
        "Executable" => String.t(),
        "FunctionRuntimeOverride" => String.t(),
        "MemorySize" => integer(),
        "Pinned" => boolean(),
        "Timeout" => integer()
      }

  """
  @type function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bulk_deployment_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("tags") => map(),
        required("ExecutionRoleArn") => String.t(),
        required("InputFileUri") => String.t()
      }

  """
  @type start_bulk_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_certificate_authority_request() :: %{
        optional("AmznClientToken") => String.t()
      }

  """
  @type create_group_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bulk_deployment_status_request() :: %{}

  """
  @type get_bulk_deployment_status_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "ErrorDetails" => list(error_detail()()),
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bulk_deployment_response() :: %{
        "BulkDeploymentArn" => String.t(),
        "BulkDeploymentId" => String.t()
      }

  """
  @type start_bulk_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_version_request() :: %{}

  """
  @type get_group_version_request() :: %{}

  @typedoc """

  ## Example:

      list_function_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_function_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connector_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_connector_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription() :: %{
        "Id" => String.t(),
        "Source" => String.t(),
        "Subject" => String.t(),
        "Target" => String.t()
      }

  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_device_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_thing_runtime_configuration_response() :: %{}

  """
  @type update_thing_runtime_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_group_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_group_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_group_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "Version" => String.t()
      }

  """
  @type create_device_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{}

  """
  @type delete_group_request() :: %{}

  @typedoc """

  ## Example:

      get_resource_definition_request() :: %{}

  """
  @type get_resource_definition_request() :: %{}

  @typedoc """

  ## Example:

      bulk_deployment_result() :: %{
        "CreatedAt" => String.t(),
        "DeploymentArn" => String.t(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => String.t(),
        "DeploymentType" => list(any()),
        "ErrorDetails" => list(error_detail()()),
        "ErrorMessage" => String.t(),
        "GroupArn" => String.t()
      }

  """
  @type bulk_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_resource_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_core_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_core_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_definition_version_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_device_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bulk_deployment_metrics() :: %{
        "InvalidInputRecords" => integer(),
        "RecordsProcessed" => integer(),
        "RetryAttempts" => integer()
      }

  """
  @type bulk_deployment_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "ErrorDetails" => list(error_detail()()),
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_definition_response() :: %{}

  """
  @type delete_resource_definition_response() :: %{}

  @typedoc """

  ## Example:

      list_subscription_definitions_response() :: %{
        "Definitions" => list(definition_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_subscription_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => core_definition_version(),
        "Id" => String.t(),
        "NextToken" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_core_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_definition_version_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_subscription_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connector_definition_response() :: %{}

  """
  @type update_connector_definition_response() :: %{}

  @typedoc """

  ## Example:

      get_connector_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_connector_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device() :: %{
        "CertificateArn" => String.t(),
        "Id" => String.t(),
        "SyncShadow" => boolean(),
        "ThingArn" => String.t()
      }

  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_subscription_definition_response() :: %{}

  """
  @type delete_subscription_definition_response() :: %{}

  @typedoc """

  ## Example:

      create_core_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_core_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_bulk_deployment_response() :: %{}

  """
  @type stop_bulk_deployment_response() :: %{}

  @typedoc """

  ## Example:

      create_software_update_job_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("UpdateAgentLogLevel") => list(any()),
        required("S3UrlSignerRole") => String.t(),
        required("SoftwareToUpdate") => list(any()),
        required("UpdateTargets") => list(String.t()()),
        required("UpdateTargetsArchitecture") => list(any()),
        required("UpdateTargetsOperatingSystem") => list(any())
      }

  """
  @type create_software_update_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_definition_version_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("Connectors") => list(connector()())
      }

  """
  @type create_connector_definition_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_response() :: %{
        "Groups" => list(group_information()()),
        "NextToken" => String.t()
      }

  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{}

  """
  @type get_group_request() :: %{}

  @typedoc """

  ## Example:

      list_subscription_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_subscription_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_role_for_account_response() :: %{
        "AssociatedAt" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type get_service_role_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_core_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_core_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_definition_response() :: %{}

  """
  @type update_subscription_definition_response() :: %{}

  @typedoc """

  ## Example:

      list_function_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_function_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_core_definition_versions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_core_definition_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_thing_runtime_configuration_request() :: %{}

  """
  @type get_thing_runtime_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_definition_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(version_information()())
      }

  """
  @type list_function_definition_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_definition_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type get_resource_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bulk_deployment_status_response() :: %{
        "BulkDeploymentMetrics" => bulk_deployment_metrics(),
        "BulkDeploymentStatus" => list(any()),
        "CreatedAt" => String.t(),
        "ErrorDetails" => list(error_detail()()),
        "ErrorMessage" => String.t(),
        "tags" => map()
      }

  """
  @type get_bulk_deployment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logger_definition_response() :: %{}

  """
  @type update_logger_definition_response() :: %{}

  @typedoc """

  ## Example:

      update_group_response() :: %{}

  """
  @type update_group_response() :: %{}

  @typedoc """

  ## Example:

      associate_service_role_to_account_response() :: %{
        "AssociatedAt" => String.t()
      }

  """
  @type associate_service_role_to_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_access_policy() :: %{
        "Permission" => list(any()),
        "ResourceId" => String.t()
      }

  """
  @type resource_access_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => subscription_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_subscription_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_definition_response() :: %{}

  """
  @type delete_core_definition_response() :: %{}

  @typedoc """

  ## Example:

      s3_machine_learning_model_resource_data() :: %{
        "DestinationPath" => String.t(),
        "OwnerSetting" => resource_download_owner_setting(),
        "S3Uri" => String.t()
      }

  """
  @type s3_machine_learning_model_resource_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_definition_version_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Definition" => connector_definition_version(),
        "Id" => String.t(),
        "NextToken" => String.t(),
        "Version" => String.t()
      }

  """
  @type get_connector_definition_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_logger_definition_request() :: %{}

  """
  @type delete_logger_definition_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_service_role_from_account_request() :: %{}

  """
  @type disassociate_service_role_from_account_request() :: %{}

  @typedoc """

  ## Example:

      create_group_response() :: %{
        "Arn" => String.t(),
        "CreationTimestamp" => String.t(),
        "Id" => String.t(),
        "LastUpdatedTimestamp" => String.t(),
        "LatestVersion" => String.t(),
        "LatestVersionArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_definition_response() :: %{}

  """
  @type update_device_definition_response() :: %{}

  @typedoc """

  ## Example:

      associate_role_to_group_request() :: %{
        required("RoleArn") => String.t()
      }

  """
  @type associate_role_to_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_definition_response() :: %{}

  """
  @type update_resource_definition_response() :: %{}

  @typedoc """

  ## Example:

      list_device_definitions_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_device_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_definition_request() :: %{}

  """
  @type get_core_definition_request() :: %{}

  @typedoc """

  ## Example:

      create_logger_definition_request() :: %{
        optional("AmznClientToken") => String.t(),
        optional("InitialVersion") => logger_definition_version(),
        optional("Name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_logger_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "Id" => String.t(),
        "Name" => String.t(),
        "ResourceDataContainer" => resource_data_container()
      }

  """
  @type resource() :: %{String.t() => any()}

  @type associate_role_to_group_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type associate_service_role_to_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_connector_definition_errors() :: bad_request_exception()

  @type create_connector_definition_version_errors() :: bad_request_exception()

  @type create_core_definition_errors() :: bad_request_exception()

  @type create_core_definition_version_errors() :: bad_request_exception()

  @type create_deployment_errors() :: bad_request_exception()

  @type create_device_definition_errors() :: bad_request_exception()

  @type create_device_definition_version_errors() :: bad_request_exception()

  @type create_function_definition_errors() :: bad_request_exception()

  @type create_function_definition_version_errors() :: bad_request_exception()

  @type create_group_errors() :: bad_request_exception()

  @type create_group_certificate_authority_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_group_version_errors() :: bad_request_exception()

  @type create_logger_definition_errors() :: bad_request_exception()

  @type create_logger_definition_version_errors() :: bad_request_exception()

  @type create_resource_definition_errors() :: bad_request_exception()

  @type create_resource_definition_version_errors() :: bad_request_exception()

  @type create_software_update_job_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_subscription_definition_errors() :: bad_request_exception()

  @type create_subscription_definition_version_errors() :: bad_request_exception()

  @type delete_connector_definition_errors() :: bad_request_exception()

  @type delete_core_definition_errors() :: bad_request_exception()

  @type delete_device_definition_errors() :: bad_request_exception()

  @type delete_function_definition_errors() :: bad_request_exception()

  @type delete_group_errors() :: bad_request_exception()

  @type delete_logger_definition_errors() :: bad_request_exception()

  @type delete_resource_definition_errors() :: bad_request_exception()

  @type delete_subscription_definition_errors() :: bad_request_exception()

  @type disassociate_role_from_group_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type disassociate_service_role_from_account_errors() :: internal_server_error_exception()

  @type get_associated_role_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_bulk_deployment_status_errors() :: bad_request_exception()

  @type get_connectivity_info_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_connector_definition_errors() :: bad_request_exception()

  @type get_connector_definition_version_errors() :: bad_request_exception()

  @type get_core_definition_errors() :: bad_request_exception()

  @type get_core_definition_version_errors() :: bad_request_exception()

  @type get_deployment_status_errors() :: bad_request_exception()

  @type get_device_definition_errors() :: bad_request_exception()

  @type get_device_definition_version_errors() :: bad_request_exception()

  @type get_function_definition_errors() :: bad_request_exception()

  @type get_function_definition_version_errors() :: bad_request_exception()

  @type get_group_errors() :: bad_request_exception()

  @type get_group_certificate_authority_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_group_certificate_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_group_version_errors() :: bad_request_exception()

  @type get_logger_definition_errors() :: bad_request_exception()

  @type get_logger_definition_version_errors() :: bad_request_exception()

  @type get_resource_definition_errors() :: bad_request_exception()

  @type get_resource_definition_version_errors() :: bad_request_exception()

  @type get_service_role_for_account_errors() :: internal_server_error_exception()

  @type get_subscription_definition_errors() :: bad_request_exception()

  @type get_subscription_definition_version_errors() :: bad_request_exception()

  @type get_thing_runtime_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_bulk_deployment_detailed_reports_errors() :: bad_request_exception()

  @type list_bulk_deployments_errors() :: bad_request_exception()

  @type list_connector_definition_versions_errors() :: bad_request_exception()

  @type list_core_definition_versions_errors() :: bad_request_exception()

  @type list_deployments_errors() :: bad_request_exception()

  @type list_device_definition_versions_errors() :: bad_request_exception()

  @type list_function_definition_versions_errors() :: bad_request_exception()

  @type list_group_certificate_authorities_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_group_versions_errors() :: bad_request_exception()

  @type list_logger_definition_versions_errors() :: bad_request_exception()

  @type list_resource_definition_versions_errors() :: bad_request_exception()

  @type list_subscription_definition_versions_errors() :: bad_request_exception()

  @type list_tags_for_resource_errors() :: bad_request_exception()

  @type reset_deployments_errors() :: bad_request_exception()

  @type start_bulk_deployment_errors() :: bad_request_exception()

  @type stop_bulk_deployment_errors() :: bad_request_exception()

  @type tag_resource_errors() :: bad_request_exception()

  @type untag_resource_errors() :: bad_request_exception()

  @type update_connectivity_info_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_connector_definition_errors() :: bad_request_exception()

  @type update_core_definition_errors() :: bad_request_exception()

  @type update_device_definition_errors() :: bad_request_exception()

  @type update_function_definition_errors() :: bad_request_exception()

  @type update_group_errors() :: bad_request_exception()

  @type update_group_certificate_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_logger_definition_errors() :: bad_request_exception()

  @type update_resource_definition_errors() :: bad_request_exception()

  @type update_subscription_definition_errors() :: bad_request_exception()

  @type update_thing_runtime_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  def metadata do
    %{
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
  @spec associate_role_to_group(map(), String.t(), associate_role_to_group_request(), list()) ::
          {:ok, associate_role_to_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_role_to_group_errors()}
  def associate_role_to_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/role"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates a role with your account.

  AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT
  resources. This is necessary for deployments to succeed. The role must have at
  least minimum permissions in the policy
  ''AWSGreengrassResourceAccessRolePolicy''.
  """
  @spec associate_service_role_to_account(
          map(),
          associate_service_role_to_account_request(),
          list()
        ) ::
          {:ok, associate_service_role_to_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_service_role_to_account_errors()}
  def associate_service_role_to_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a connector definition.

  You may provide the initial version of the connector definition now or use
  ''CreateConnectorDefinitionVersion'' at a later time.
  """
  @spec create_connector_definition(map(), create_connector_definition_request(), list()) ::
          {:ok, create_connector_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_definition_errors()}
  def create_connector_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/connectors"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a connector definition which has already been defined.
  """
  @spec create_connector_definition_version(
          map(),
          String.t(),
          create_connector_definition_version_request(),
          list()
        ) ::
          {:ok, create_connector_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_definition_version_errors()}
  def create_connector_definition_version(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a core definition.

  You may provide the initial version of the core definition now or use
  ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each
  contain exactly one Greengrass core.
  """
  @spec create_core_definition(map(), create_core_definition_request(), list()) ::
          {:ok, create_core_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_core_definition_errors()}
  def create_core_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/cores"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a core definition that has already been defined.

  Greengrass groups must each contain exactly one Greengrass core.
  """
  @spec create_core_definition_version(
          map(),
          String.t(),
          create_core_definition_version_request(),
          list()
        ) ::
          {:ok, create_core_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_core_definition_version_errors()}
  def create_core_definition_version(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a deployment.

  ''CreateDeployment'' requests are idempotent with respect to the
  ''X-Amzn-Client-Token'' token and the request parameters.
  """
  @spec create_deployment(map(), String.t(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/deployments"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a device definition.

  You may provide the initial version of the device definition now or use
  ''CreateDeviceDefinitionVersion'' at a later time.
  """
  @spec create_device_definition(map(), create_device_definition_request(), list()) ::
          {:ok, create_device_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_definition_errors()}
  def create_device_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/devices"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a device definition that has already been defined.
  """
  @spec create_device_definition_version(
          map(),
          String.t(),
          create_device_definition_version_request(),
          list()
        ) ::
          {:ok, create_device_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_definition_version_errors()}
  def create_device_definition_version(
        %Client{} = client,
        device_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
  @spec create_function_definition(map(), create_function_definition_request(), list()) ::
          {:ok, create_function_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_definition_errors()}
  def create_function_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/functions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a Lambda function definition that has already been defined.
  """
  @spec create_function_definition_version(
          map(),
          String.t(),
          create_function_definition_version_request(),
          list()
        ) ::
          {:ok, create_function_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_definition_version_errors()}
  def create_function_definition_version(
        %Client{} = client,
        function_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/groups"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a CA for the group.

  If a CA already exists, it will rotate the existing CA.
  """
  @spec create_group_certificate_authority(
          map(),
          String.t(),
          create_group_certificate_authority_request(),
          list()
        ) ::
          {:ok, create_group_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_certificate_authority_errors()}
  def create_group_certificate_authority(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/certificateauthorities"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a group which has already been defined.
  """
  @spec create_group_version(map(), String.t(), create_group_version_request(), list()) ::
          {:ok, create_group_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_version_errors()}
  def create_group_version(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a logger definition.

  You may provide the initial version of the logger definition now or use
  ''CreateLoggerDefinitionVersion'' at a later time.
  """
  @spec create_logger_definition(map(), create_logger_definition_request(), list()) ::
          {:ok, create_logger_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logger_definition_errors()}
  def create_logger_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/loggers"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a logger definition that has already been defined.
  """
  @spec create_logger_definition_version(
          map(),
          String.t(),
          create_logger_definition_version_request(),
          list()
        ) ::
          {:ok, create_logger_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logger_definition_version_errors()}
  def create_logger_definition_version(
        %Client{} = client,
        logger_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a resource definition which contains a list of resources to be used in a
  group.

  You can create an initial version of the definition by providing a list of
  resources now, or use ''CreateResourceDefinitionVersion'' later.
  """
  @spec create_resource_definition(map(), create_resource_definition_request(), list()) ::
          {:ok, create_resource_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_definition_errors()}
  def create_resource_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/resources"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a resource definition that has already been defined.
  """
  @spec create_resource_definition_version(
          map(),
          String.t(),
          create_resource_definition_version_request(),
          list()
        ) ::
          {:ok, create_resource_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_definition_version_errors()}
  def create_resource_definition_version(
        %Client{} = client,
        resource_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
  @spec create_software_update_job(map(), create_software_update_job_request(), list()) ::
          {:ok, create_software_update_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_software_update_job_errors()}
  def create_software_update_job(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/updates"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a subscription definition.

  You may provide the initial version of the subscription definition now or use
  ''CreateSubscriptionDefinitionVersion'' at a later time.
  """
  @spec create_subscription_definition(map(), create_subscription_definition_request(), list()) ::
          {:ok, create_subscription_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_definition_errors()}
  def create_subscription_definition(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/definition/subscriptions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Creates a version of a subscription definition which has already been defined.
  """
  @spec create_subscription_definition_version(
          map(),
          String.t(),
          create_subscription_definition_version_request(),
          list()
        ) ::
          {:ok, create_subscription_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_definition_version_errors()}
  def create_subscription_definition_version(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}/versions"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
      200
    )
  end

  @doc """
  Deletes a connector definition.
  """
  @spec delete_connector_definition(
          map(),
          String.t(),
          delete_connector_definition_request(),
          list()
        ) ::
          {:ok, delete_connector_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connector_definition_errors()}
  def delete_connector_definition(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}"
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
  Deletes a core definition.
  """
  @spec delete_core_definition(map(), String.t(), delete_core_definition_request(), list()) ::
          {:ok, delete_core_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_core_definition_errors()}
  def delete_core_definition(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}"
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
  Deletes a device definition.
  """
  @spec delete_device_definition(map(), String.t(), delete_device_definition_request(), list()) ::
          {:ok, delete_device_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_definition_errors()}
  def delete_device_definition(%Client{} = client, device_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}"
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
  Deletes a Lambda function definition.
  """
  @spec delete_function_definition(
          map(),
          String.t(),
          delete_function_definition_request(),
          list()
        ) ::
          {:ok, delete_function_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_definition_errors()}
  def delete_function_definition(%Client{} = client, function_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}"
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
  Deletes a group.
  """
  @spec delete_group(map(), String.t(), delete_group_request(), list()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}"
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
  Deletes a logger definition.
  """
  @spec delete_logger_definition(map(), String.t(), delete_logger_definition_request(), list()) ::
          {:ok, delete_logger_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_logger_definition_errors()}
  def delete_logger_definition(%Client{} = client, logger_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}"
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
  Deletes a resource definition.
  """
  @spec delete_resource_definition(
          map(),
          String.t(),
          delete_resource_definition_request(),
          list()
        ) ::
          {:ok, delete_resource_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_definition_errors()}
  def delete_resource_definition(%Client{} = client, resource_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}"
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
  Deletes a subscription definition.
  """
  @spec delete_subscription_definition(
          map(),
          String.t(),
          delete_subscription_definition_request(),
          list()
        ) ::
          {:ok, delete_subscription_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_definition_errors()}
  def delete_subscription_definition(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}"

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
  Disassociates the role from a group.
  """
  @spec disassociate_role_from_group(
          map(),
          String.t(),
          disassociate_role_from_group_request(),
          list()
        ) ::
          {:ok, disassociate_role_from_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_role_from_group_errors()}
  def disassociate_role_from_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/role"
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
  Disassociates the service role from your account.

  Without a service role, deployments will not work.
  """
  @spec disassociate_service_role_from_account(
          map(),
          disassociate_service_role_from_account_request(),
          list()
        ) ::
          {:ok, disassociate_service_role_from_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_service_role_from_account_errors()}
  def disassociate_service_role_from_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
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
  Retrieves the role associated with a particular group.
  """
  @spec get_associated_role(map(), String.t(), list()) ::
          {:ok, get_associated_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_associated_role_errors()}
  def get_associated_role(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/role"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the status of a bulk deployment.
  """
  @spec get_bulk_deployment_status(map(), String.t(), list()) ::
          {:ok, get_bulk_deployment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bulk_deployment_status_errors()}
  def get_bulk_deployment_status(%Client{} = client, bulk_deployment_id, options \\ []) do
    url_path = "/greengrass/bulk/deployments/#{AWS.Util.encode_uri(bulk_deployment_id)}/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the connectivity information for a core.
  """
  @spec get_connectivity_info(map(), String.t(), list()) ::
          {:ok, get_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connectivity_info_errors()}
  def get_connectivity_info(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a connector definition.
  """
  @spec get_connector_definition(map(), String.t(), list()) ::
          {:ok, get_connector_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connector_definition_errors()}
  def get_connector_definition(%Client{} = client, connector_definition_id, options \\ []) do
    url_path = "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a connector definition version, including the
  connectors that the version contains.

  Connectors are prebuilt modules that interact with local infrastructure, device
  protocols, AWS, and other cloud services.
  """
  @spec get_connector_definition_version(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_connector_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connector_definition_version_errors()}
  def get_connector_definition_version(
        %Client{} = client,
        connector_definition_id,
        connector_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}/versions/#{AWS.Util.encode_uri(connector_definition_version_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a core definition version.
  """
  @spec get_core_definition(map(), String.t(), list()) ::
          {:ok, get_core_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_definition_errors()}
  def get_core_definition(%Client{} = client, core_definition_id, options \\ []) do
    url_path = "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a core definition version.
  """
  @spec get_core_definition_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_core_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_definition_version_errors()}
  def get_core_definition_version(
        %Client{} = client,
        core_definition_id,
        core_definition_version_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}/versions/#{AWS.Util.encode_uri(core_definition_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the status of a deployment.
  """
  @spec get_deployment_status(map(), String.t(), String.t(), list()) ::
          {:ok, get_deployment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_status_errors()}
  def get_deployment_status(%Client{} = client, deployment_id, group_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}/status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a device definition.
  """
  @spec get_device_definition(map(), String.t(), list()) ::
          {:ok, get_device_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_definition_errors()}
  def get_device_definition(%Client{} = client, device_definition_id, options \\ []) do
    url_path = "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a device definition version.
  """
  @spec get_device_definition_version(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_device_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_definition_version_errors()}
  def get_device_definition_version(
        %Client{} = client,
        device_definition_id,
        device_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}/versions/#{AWS.Util.encode_uri(device_definition_version_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Lambda function definition, including its creation
  time and latest version.
  """
  @spec get_function_definition(map(), String.t(), list()) ::
          {:ok, get_function_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_definition_errors()}
  def get_function_definition(%Client{} = client, function_definition_id, options \\ []) do
    url_path = "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Lambda function definition version, including
  which Lambda functions are included in the version and their configurations.
  """
  @spec get_function_definition_version(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_function_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_definition_version_errors()}
  def get_function_definition_version(
        %Client{} = client,
        function_definition_id,
        function_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}/versions/#{AWS.Util.encode_uri(function_definition_version_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a group.
  """
  @spec get_group(map(), String.t(), list()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retreives the CA associated with a group.

  Returns the public key of the CA.
  """
  @spec get_group_certificate_authority(map(), String.t(), String.t(), list()) ::
          {:ok, get_group_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_certificate_authority_errors()}
  def get_group_certificate_authority(
        %Client{} = client,
        certificate_authority_id,
        group_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/certificateauthorities/#{AWS.Util.encode_uri(certificate_authority_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current configuration for the CA used by the group.
  """
  @spec get_group_certificate_configuration(map(), String.t(), list()) ::
          {:ok, get_group_certificate_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_certificate_configuration_errors()}
  def get_group_certificate_configuration(%Client{} = client, group_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/certificateauthorities/configuration/expiry"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a group version.
  """
  @spec get_group_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_group_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_version_errors()}
  def get_group_version(%Client{} = client, group_id, group_version_id, options \\ []) do
    url_path =
      "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/versions/#{AWS.Util.encode_uri(group_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a logger definition.
  """
  @spec get_logger_definition(map(), String.t(), list()) ::
          {:ok, get_logger_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logger_definition_errors()}
  def get_logger_definition(%Client{} = client, logger_definition_id, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a logger definition version.
  """
  @spec get_logger_definition_version(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_logger_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logger_definition_version_errors()}
  def get_logger_definition_version(
        %Client{} = client,
        logger_definition_id,
        logger_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}/versions/#{AWS.Util.encode_uri(logger_definition_version_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource definition, including its creation time
  and latest version.
  """
  @spec get_resource_definition(map(), String.t(), list()) ::
          {:ok, get_resource_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_definition_errors()}
  def get_resource_definition(%Client{} = client, resource_definition_id, options \\ []) do
    url_path = "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource definition version, including which
  resources are included in the version.
  """
  @spec get_resource_definition_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_resource_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_definition_version_errors()}
  def get_resource_definition_version(
        %Client{} = client,
        resource_definition_id,
        resource_definition_version_id,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}/versions/#{AWS.Util.encode_uri(resource_definition_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the service role that is attached to your account.
  """
  @spec get_service_role_for_account(map(), list()) ::
          {:ok, get_service_role_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_role_for_account_errors()}
  def get_service_role_for_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a subscription definition.
  """
  @spec get_subscription_definition(map(), String.t(), list()) ::
          {:ok, get_subscription_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_definition_errors()}
  def get_subscription_definition(%Client{} = client, subscription_definition_id, options \\ []) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a subscription definition version.
  """
  @spec get_subscription_definition_version(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_subscription_definition_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_definition_version_errors()}
  def get_subscription_definition_version(
        %Client{} = client,
        subscription_definition_id,
        subscription_definition_version_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}/versions/#{AWS.Util.encode_uri(subscription_definition_version_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime configuration of a thing.
  """
  @spec get_thing_runtime_configuration(map(), String.t(), list()) ::
          {:ok, get_thing_runtime_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_thing_runtime_configuration_errors()}
  def get_thing_runtime_configuration(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/runtimeconfig"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a paginated list of the deployments that have been started in a bulk
  deployment operation, and their current deployment status.
  """
  @spec list_bulk_deployment_detailed_reports(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_bulk_deployment_detailed_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bulk_deployment_detailed_reports_errors()}
  def list_bulk_deployment_detailed_reports(
        %Client{} = client,
        bulk_deployment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/bulk/deployments/#{AWS.Util.encode_uri(bulk_deployment_id)}/detailed-reports"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of bulk deployments.
  """
  @spec list_bulk_deployments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_bulk_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bulk_deployments_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a connector definition, which are containers for
  connectors.

  Connectors run on the Greengrass core and contain built-in integration with
  local infrastructure, device protocols, AWS, and other cloud services.
  """
  @spec list_connector_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_connector_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connector_definition_versions_errors()}
  def list_connector_definition_versions(
        %Client{} = client,
        connector_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of connector definitions.
  """
  @spec list_connector_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_connector_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a core definition.
  """
  @spec list_core_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_core_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_core_definition_versions_errors()}
  def list_core_definition_versions(
        %Client{} = client,
        core_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}/versions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of core definitions.
  """
  @spec list_core_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_core_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a history of deployments for the group.
  """
  @spec list_deployments(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}
  def list_deployments(
        %Client{} = client,
        group_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/deployments"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a device definition.
  """
  @spec list_device_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_device_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_definition_versions_errors()}
  def list_device_definition_versions(
        %Client{} = client,
        device_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of device definitions.
  """
  @spec list_device_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_device_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a Lambda function definition.
  """
  @spec list_function_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_function_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_function_definition_versions_errors()}
  def list_function_definition_versions(
        %Client{} = client,
        function_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of Lambda function definitions.
  """
  @spec list_function_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_function_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current CAs for a group.
  """
  @spec list_group_certificate_authorities(map(), String.t(), list()) ::
          {:ok, list_group_certificate_authorities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_certificate_authorities_errors()}
  def list_group_certificate_authorities(%Client{} = client, group_id, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/certificateauthorities"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a group.
  """
  @spec list_group_versions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_group_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_versions_errors()}
  def list_group_versions(
        %Client{} = client,
        group_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/versions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of groups.
  """
  @spec list_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a logger definition.
  """
  @spec list_logger_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_logger_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_logger_definition_versions_errors()}
  def list_logger_definition_versions(
        %Client{} = client,
        logger_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of logger definitions.
  """
  @spec list_logger_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_logger_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a resource definition.
  """
  @spec list_resource_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_resource_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_definition_versions_errors()}
  def list_resource_definition_versions(
        %Client{} = client,
        resource_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of resource definitions.
  """
  @spec list_resource_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_resource_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of a subscription definition.
  """
  @spec list_subscription_definition_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_subscription_definition_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscription_definition_versions_errors()}
  def list_subscription_definition_versions(
        %Client{} = client,
        subscription_definition_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}/versions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of subscription definitions.
  """
  @spec list_subscription_definitions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_subscription_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of resource tags for a resource arn.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Resets a group's deployments.
  """
  @spec reset_deployments(map(), String.t(), reset_deployments_request(), list()) ::
          {:ok, reset_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_deployments_errors()}
  def reset_deployments(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/deployments/$reset"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
  @spec start_bulk_deployment(map(), start_bulk_deployment_request(), list()) ::
          {:ok, start_bulk_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_bulk_deployment_errors()}
  def start_bulk_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/bulk/deployments"

    {headers, input} =
      [
        {"AmznClientToken", "X-Amzn-Client-Token"}
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
  @spec stop_bulk_deployment(map(), String.t(), stop_bulk_deployment_request(), list()) ::
          {:ok, stop_bulk_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_bulk_deployment_errors()}
  def stop_bulk_deployment(%Client{} = client, bulk_deployment_id, input, options \\ []) do
    url_path = "/greengrass/bulk/deployments/#{AWS.Util.encode_uri(bulk_deployment_id)}/$stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds tags to a Greengrass resource.

  Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition',
  'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition',
  'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  Remove resource tags from a Greengrass Resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  Updates the connectivity information for the core.

  Any devices that belong to the group which has this core will receive this
  information in order to find the location of the core and connect to it.
  """
  @spec update_connectivity_info(map(), String.t(), update_connectivity_info_request(), list()) ::
          {:ok, update_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connectivity_info_errors()}
  def update_connectivity_info(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a connector definition.
  """
  @spec update_connector_definition(
          map(),
          String.t(),
          update_connector_definition_request(),
          list()
        ) ::
          {:ok, update_connector_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connector_definition_errors()}
  def update_connector_definition(
        %Client{} = client,
        connector_definition_id,
        input,
        options \\ []
      ) do
    url_path = "/greengrass/definition/connectors/#{AWS.Util.encode_uri(connector_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a core definition.
  """
  @spec update_core_definition(map(), String.t(), update_core_definition_request(), list()) ::
          {:ok, update_core_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_core_definition_errors()}
  def update_core_definition(%Client{} = client, core_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/cores/#{AWS.Util.encode_uri(core_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a device definition.
  """
  @spec update_device_definition(map(), String.t(), update_device_definition_request(), list()) ::
          {:ok, update_device_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_definition_errors()}
  def update_device_definition(%Client{} = client, device_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/devices/#{AWS.Util.encode_uri(device_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Lambda function definition.
  """
  @spec update_function_definition(
          map(),
          String.t(),
          update_function_definition_request(),
          list()
        ) ::
          {:ok, update_function_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_definition_errors()}
  def update_function_definition(%Client{} = client, function_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/functions/#{AWS.Util.encode_uri(function_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a group.
  """
  @spec update_group(map(), String.t(), update_group_request(), list()) ::
          {:ok, update_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, group_id, input, options \\ []) do
    url_path = "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the Certificate expiry time for a group.
  """
  @spec update_group_certificate_configuration(
          map(),
          String.t(),
          update_group_certificate_configuration_request(),
          list()
        ) ::
          {:ok, update_group_certificate_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_certificate_configuration_errors()}
  def update_group_certificate_configuration(%Client{} = client, group_id, input, options \\ []) do
    url_path =
      "/greengrass/groups/#{AWS.Util.encode_uri(group_id)}/certificateauthorities/configuration/expiry"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a logger definition.
  """
  @spec update_logger_definition(map(), String.t(), update_logger_definition_request(), list()) ::
          {:ok, update_logger_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_logger_definition_errors()}
  def update_logger_definition(%Client{} = client, logger_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/loggers/#{AWS.Util.encode_uri(logger_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a resource definition.
  """
  @spec update_resource_definition(
          map(),
          String.t(),
          update_resource_definition_request(),
          list()
        ) ::
          {:ok, update_resource_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_definition_errors()}
  def update_resource_definition(%Client{} = client, resource_definition_id, input, options \\ []) do
    url_path = "/greengrass/definition/resources/#{AWS.Util.encode_uri(resource_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a subscription definition.
  """
  @spec update_subscription_definition(
          map(),
          String.t(),
          update_subscription_definition_request(),
          list()
        ) ::
          {:ok, update_subscription_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_definition_errors()}
  def update_subscription_definition(
        %Client{} = client,
        subscription_definition_id,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/definition/subscriptions/#{AWS.Util.encode_uri(subscription_definition_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the runtime configuration of a thing.
  """
  @spec update_thing_runtime_configuration(
          map(),
          String.t(),
          update_thing_runtime_configuration_request(),
          list()
        ) ::
          {:ok, update_thing_runtime_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_thing_runtime_configuration_errors()}
  def update_thing_runtime_configuration(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/runtimeconfig"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
