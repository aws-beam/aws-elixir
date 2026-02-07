# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTManagedIntegrations do
  @moduledoc """
  Managed integrations is a feature of AWS IoT Device Management that enables
  developers to quickly build innovative IoT solutions.

  Customers can use managed integrations to automate device setup workflows and
  support interoperability across many devices, regardless of device vendor or
  connectivity protocol. This allows developers to use a single user-interface to
  control, manage, and operate a range of devices.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      managed_thing_association() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "ManagedThingAssociationStatus" => list(any()),
        "ManagedThingId" => String.t() | atom()
      }

  """
  @type managed_thing_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capability_action() :: %{
        "actionTraceId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "parameters" => any(),
        "ref" => String.t() | atom()
      }

  """
  @type capability_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_destinations_response() :: %{
        "DestinationList" => list(destination_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_destinations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type put_default_encryption_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matter_cluster() :: %{
        "attributes" => any(),
        "commands" => map(),
        "events" => map(),
        "id" => String.t() | atom()
      }

  """
  @type matter_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wi_fi_simple_setup_configuration() :: %{
        "EnableAsProvisionee" => boolean(),
        "EnableAsProvisioner" => boolean(),
        "TimeoutInMinutes" => integer()
      }

  """
  @type wi_fi_simple_setup_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hub_configuration_response() :: %{
        "HubTokenTimerExpirySettingInSeconds" => float(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_hub_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_device_discoveries_response() :: %{
        "Items" => list(device_discovery_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_device_discoveries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_profile_response() :: %{
        "Arn" => String.t() | atom(),
        "ClaimCertificate" => String.t() | atom(),
        "ClaimCertificatePrivateKey" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProvisioningType" => list(any())
      }

  """
  @type create_provisioning_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ota_task_executions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_ota_task_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auth_material() :: %{
        "AuthMaterialName" => String.t() | atom(),
        "SecretsManager" => secrets_manager()
      }

  """
  @type auth_material() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_managed_thing_command_request() :: %{
        optional("AccountAssociationId") => String.t() | atom(),
        optional("ConnectorAssociationId") => String.t() | atom(),
        required("Endpoints") => list(command_endpoint())
      }

  """
  @type send_managed_thing_command_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_runtime_log_configuration_request() :: %{
        required("RuntimeLogConfigurations") => runtime_log_configurations()
      }

  """
  @type put_runtime_log_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auth_config_update() :: %{
        "GeneralAuthorizationUpdate" => general_authorization_update(),
        "oAuthUpdate" => o_auth_update()
      }

  """
  @type auth_config_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schema_version_list_item() :: %{
        "Description" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "SchemaId" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "Type" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type schema_version_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_destination_response() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type create_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_capabilities_request() :: %{}

  """
  @type get_managed_thing_capabilities_request() :: %{}

  @typedoc """

  ## Example:

      proactive_refresh_token_renewal() :: %{
        "DaysBeforeRenewal" => [integer()],
        "enabled" => [boolean()]
      }

  """
  @type proactive_refresh_token_renewal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_thing_account_associations_request() :: %{
        optional("AccountAssociationId") => String.t() | atom(),
        optional("ManagedThingId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_managed_thing_account_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_config() :: %{
        "authUrl" => String.t() | atom(),
        "oAuthCompleteRedirectUrl" => [String.t() | atom()],
        "proactiveRefreshTokenRenewal" => proactive_refresh_token_renewal(),
        "scope" => [String.t() | atom()],
        "tokenEndpointAuthenticationScheme" => list(any()),
        "tokenUrl" => String.t() | atom()
      }

  """
  @type o_auth_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connector_destination_response() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type create_connector_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_destination_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("DeliveryDestinationArn") => String.t() | atom(),
        required("DeliveryDestinationType") => list(any()),
        required("Name") => String.t() | atom(),
        required("RoleArn") => String.t() | atom()
      }

  """
  @type create_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_task_request() :: %{}

  """
  @type get_ota_task_request() :: %{}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_cloud_connector_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_cloud_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_task_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("OtaMechanism") => list(any()),
        optional("OtaSchedulingConfig") => ota_task_scheduling_config(),
        optional("OtaTargetQueryString") => String.t() | atom(),
        optional("OtaTaskExecutionRetryConfig") => ota_task_execution_retry_config(),
        optional("Protocol") => list(any()),
        optional("Tags") => map(),
        optional("Target") => list([String.t() | atom()]()),
        optional("TaskConfigurationId") => String.t() | atom(),
        required("OtaType") => list(any()),
        required("S3Url") => String.t() | atom()
      }

  """
  @type create_ota_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_config_criteria() :: %{
        "FailureType" => list(any()),
        "MinNumberOfRetries" => integer()
      }

  """
  @type retry_config_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matter_capability_report_cluster() :: %{
        "attributes" => list(matter_capability_report_attribute()),
        "commands" => list(String.t() | atom()),
        "events" => list(String.t() | atom()),
        "fabricIndex" => integer(),
        "featureMap" => float(),
        "generatedCommands" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "publicId" => String.t() | atom(),
        "revision" => integer(),
        "specVersion" => String.t() | atom()
      }

  """
  @type matter_capability_report_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secrets_manager() :: %{
        "arn" => String.t() | atom(),
        "versionId" => String.t() | atom()
      }

  """
  @type secrets_manager() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_task_configuration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PushConfig" => push_config(),
        "TaskConfigurationId" => String.t() | atom()
      }

  """
  @type get_ota_task_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_ota_task_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("TaskConfigurationId") => String.t() | atom()
      }

  """
  @type update_ota_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      ota_task_execution_retry_config() :: %{
        "RetryConfigCriteria" => list(retry_config_criteria())
      }

  """
  @type ota_task_execution_retry_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_account_association_refresh_request() :: %{}

  """
  @type start_account_association_refresh_request() :: %{}

  @typedoc """

  ## Example:

      event_log_configuration_summary() :: %{
        "EventLogLevel" => list(any()),
        "Id" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type event_log_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_destination_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeliveryDestinationArn" => String.t() | atom(),
        "DeliveryDestinationType" => list(any()),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rollout_rate_increase_criteria() :: %{
        "numberOfNotifiedThings" => integer(),
        "numberOfSucceededThings" => integer()
      }

  """
  @type rollout_rate_increase_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovered_device_summary() :: %{
        "AuthenticationMaterial" => String.t() | atom(),
        "Brand" => String.t() | atom(),
        "ConnectorDeviceId" => String.t() | atom(),
        "ConnectorDeviceName" => String.t() | atom(),
        "DeviceTypes" => list(String.t() | atom()),
        "DiscoveredAt" => non_neg_integer(),
        "ManagedThingId" => String.t() | atom(),
        "Model" => String.t() | atom(),
        "Modification" => list(any())
      }

  """
  @type discovered_device_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_request() :: %{}

  """
  @type get_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      register_custom_endpoint_request() :: %{}

  """
  @type register_custom_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      list_schema_versions_response() :: %{
        "Items" => list(schema_version_list_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_schema_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_execution_summary() :: %{
        "ExecutionNumber" => float(),
        "LastUpdatedAt" => non_neg_integer(),
        "QueuedAt" => non_neg_integer(),
        "RetryAttempt" => integer(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }

  """
  @type ota_task_execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_task_configuration_request() :: %{}

  """
  @type get_ota_task_configuration_request() :: %{}

  @typedoc """

  ## Example:

      matter_capability_report_attribute() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "value" => any()
      }

  """
  @type matter_capability_report_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ota_task_request() :: %{}

  """
  @type delete_ota_task_request() :: %{}

  @typedoc """

  ## Example:

      start_device_discovery_response() :: %{
        "Id" => String.t() | atom(),
        "StartedAt" => non_neg_integer()
      }

  """
  @type start_device_discovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_hub_configuration_request() :: %{
        required("HubTokenTimerExpirySettingInSeconds") => float()
      }

  """
  @type put_hub_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cloud_connectors_response() :: %{
        "Items" => list(connector_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_cloud_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_profile_request() :: %{
        optional("CaCertificate") => String.t() | atom(),
        optional("ClaimCertificate") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Tags") => map(),
        required("ProvisioningType") => list(any())
      }

  """
  @type create_provisioning_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_connectivity_data_response() :: %{
        "Connected" => boolean(),
        "DisconnectReason" => list(any()),
        "ManagedThingId" => String.t() | atom(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type get_managed_thing_connectivity_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      state_endpoint() :: %{
        "capabilities" => list(state_capability()),
        "endpointId" => String.t() | atom()
      }

  """
  @type state_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exponential_rollout_rate() :: %{
        "BaseRatePerMinute" => integer(),
        "IncrementFactor" => float(),
        "RateIncreaseCriteria" => rollout_rate_increase_criteria()
      }

  """
  @type exponential_rollout_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_update() :: %{
        "oAuthCompleteRedirectUrl" => [String.t() | atom()],
        "proactiveRefreshTokenRenewal" => proactive_refresh_token_renewal()
      }

  """
  @type o_auth_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_discovery_summary() :: %{
        "DiscoveryType" => list(any()),
        "Id" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type device_discovery_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_credential_lockers_response() :: %{
        "Items" => list(credential_locker_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_credential_lockers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_runtime_log_configuration_request() :: %{}

  """
  @type reset_runtime_log_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_credential_locker_request() :: %{}

  """
  @type get_credential_locker_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      push_config() :: %{
        "AbortConfig" => ota_task_abort_config(),
        "RolloutConfig" => ota_task_execution_rollout_config(),
        "TimeoutConfig" => ota_task_timeout_config()
      }

  """
  @type push_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ota_task_configuration_request() :: %{}

  """
  @type delete_ota_task_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_notification_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_discovery_request() :: %{}

  """
  @type get_device_discovery_request() :: %{}

  @typedoc """

  ## Example:

      get_connector_destination_response() :: %{
        "AuthConfig" => auth_config(),
        "AuthType" => list(any()),
        "CloudConnectorId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OAuthCompleteRedirectUrl" => String.t() | atom(),
        "SecretsManager" => secrets_manager()
      }

  """
  @type get_connector_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_configuration_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "TaskConfigurationId" => String.t() | atom()
      }

  """
  @type ota_task_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_status() :: %{
        "error" => configuration_error(),
        "state" => list(any())
      }

  """
  @type configuration_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DestinationName" => String.t() | atom(),
        "EventType" => list(any()),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_credential_locker_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type create_credential_locker_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hub_configuration_request() :: %{}

  """
  @type get_hub_configuration_request() :: %{}

  @typedoc """

  ## Example:

      ota_task_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "LastUpdatedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TaskArn" => String.t() | atom(),
        "TaskConfigurationId" => String.t() | atom(),
        "TaskId" => String.t() | atom()
      }

  """
  @type ota_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ota_task_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_ota_task_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_custom_endpoint_request() :: %{}

  """
  @type get_custom_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      capability_report_endpoint() :: %{
        "capabilities" => list(capability_report_capability()),
        "deviceTypes" => list(String.t() | atom()),
        "id" => String.t() | atom()
      }

  """
  @type capability_report_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_thing_account_associations_response() :: %{
        "Items" => list(managed_thing_association()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_managed_thing_account_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matter_endpoint() :: %{
        "clusters" => list(matter_cluster()),
        "id" => String.t() | atom()
      }

  """
  @type matter_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_maintenance_window() :: %{
        "DurationInMinutes" => integer(),
        "StartTime" => String.t() | atom()
      }

  """
  @type schedule_maintenance_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_capability() :: %{
        "actions" => list(capability_action()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type command_capability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cloud_connector_response() :: %{
        "Description" => String.t() | atom(),
        "EndpointConfig" => endpoint_config(),
        "EndpointType" => list(any()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type get_cloud_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cloud_connector_request() :: %{}

  """
  @type delete_cloud_connector_request() :: %{}

  @typedoc """

  ## Example:

      list_ota_tasks_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tasks" => list(ota_task_summary())
      }

  """
  @type list_ota_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_managed_thing_response() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom()
      }

  """
  @type create_managed_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_scheduling_config() :: %{
        "EndBehavior" => list(any()),
        "EndTime" => String.t() | atom(),
        "MaintenanceWindows" => list(schedule_maintenance_window()),
        "StartTime" => String.t() | atom()
      }

  """
  @type ota_task_scheduling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_request() :: %{}

  """
  @type get_managed_thing_request() :: %{}

  @typedoc """

  ## Example:

      credential_locker_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type credential_locker_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_hub_configuration_response() :: %{
        "HubTokenTimerExpirySettingInSeconds" => float()
      }

  """
  @type put_hub_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_notification_configuration_request() :: %{}

  """
  @type delete_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_configurations_response() :: %{
        "NextToken" => String.t() | atom(),
        "NotificationConfigurationList" => list(notification_configuration_summary())
      }

  """
  @type list_notification_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_log_configurations_response() :: %{
        "EventLogConfigurationList" => list(event_log_configuration_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_event_log_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_connector_event_request() :: %{
        optional("ConnectorDeviceId") => String.t() | atom(),
        optional("DeviceDiscoveryId") => String.t() | atom(),
        optional("Devices") => list(device()),
        optional("MatterEndpoint") => matter_endpoint(),
        optional("Message") => String.t() | atom(),
        optional("OperationVersion") => String.t() | atom(),
        optional("StatusCode") => integer(),
        optional("TraceId") => String.t() | atom(),
        optional("UserId") => String.t() | atom(),
        required("Operation") => list(any())
      }

  """
  @type send_connector_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_account_association_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("GeneralAuthorization") => general_authorization_name(),
        optional("Name") => String.t() | atom(),
        optional("Tags") => map(),
        required("ConnectorDestinationId") => String.t() | atom()
      }

  """
  @type create_account_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_custom_endpoint_response() :: %{
        "EndpointAddress" => String.t() | atom()
      }

  """
  @type get_custom_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_log_configuration_response() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type create_event_log_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_default_encryption_configuration_response() :: %{
        "configurationStatus" => configuration_status(),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type get_default_encryption_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_log_configuration_request() :: %{}

  """
  @type get_event_log_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_provisioning_profile_request() :: %{}

  """
  @type delete_provisioning_profile_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_state_request() :: %{}

  """
  @type get_managed_thing_state_request() :: %{}

  @typedoc """

  ## Example:

      ota_task_abort_config() :: %{
        "AbortConfigCriteriaList" => list(abort_config_criteria())
      }

  """
  @type ota_task_abort_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_association_item() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociationState" => list(any()),
        "ConnectorDestinationId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type account_association_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_execution_summaries() :: %{
        "ManagedThingId" => String.t() | atom(),
        "TaskExecutionSummary" => ota_task_execution_summary()
      }

  """
  @type ota_task_execution_summaries() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_summary() :: %{
        "DeliveryDestinationArn" => String.t() | atom(),
        "DeliveryDestinationType" => list(any()),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RoleArn" => String.t() | atom()
      }

  """
  @type destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capability_schema_item() :: %{
        "CapabilityId" => String.t() | atom(),
        "ExtrinsicId" => String.t() | atom(),
        "ExtrinsicVersion" => integer(),
        "Format" => list(any()),
        "Schema" => any()
      }

  """
  @type capability_schema_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => map(),
        required("DestinationName") => String.t() | atom(),
        required("EventType") => list(any())
      }

  """
  @type create_notification_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_log_configuration_request() :: %{}

  """
  @type get_runtime_log_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_default_encryption_configuration_request() :: %{}

  """
  @type get_default_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_cloud_connector_response() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type create_cloud_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_meta_data_request() :: %{}

  """
  @type get_managed_thing_meta_data_request() :: %{}

  @typedoc """

  ## Example:

      list_destinations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_destinations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_managed_thing_command_response() :: %{
        "TraceId" => String.t() | atom()
      }

  """
  @type send_managed_thing_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notification_configuration_request() :: %{
        required("DestinationName") => String.t() | atom()
      }

  """
  @type update_notification_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connector_destination_request() :: %{
        optional("AuthType") => list(any()),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("SecretsManager") => secrets_manager(),
        required("AuthConfig") => auth_config(),
        required("CloudConnectorId") => String.t() | atom()
      }

  """
  @type create_connector_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_state_response() :: %{
        "Endpoints" => list(state_endpoint())
      }

  """
  @type get_managed_thing_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_response() :: %{
        "EventType" => list(any())
      }

  """
  @type create_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_certificate_response() :: %{
        "CertificatePem" => String.t() | atom(),
        "ManagedThingId" => String.t() | atom()
      }

  """
  @type get_managed_thing_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_destination_request() :: %{}

  """
  @type delete_destination_request() :: %{}

  @typedoc """

  ## Example:

      create_event_log_configuration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("ResourceId") => String.t() | atom(),
        required("EventLogLevel") => list(any()),
        required("ResourceType") => String.t() | atom()
      }

  """
  @type create_event_log_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_managed_thing_request() :: %{
        optional("Brand") => String.t() | atom(),
        optional("Capabilities") => String.t() | atom(),
        optional("CapabilityReport") => capability_report(),
        optional("CapabilitySchemas") => list(capability_schema_item()),
        optional("Classification") => String.t() | atom(),
        optional("CredentialLockerId") => String.t() | atom(),
        optional("HubNetworkMode") => list(any()),
        optional("MetaData") => map(),
        optional("Model") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Owner") => String.t() | atom(),
        optional("SerialNumber") => String.t() | atom(),
        optional("WiFiSimpleSetupConfiguration") => wi_fi_simple_setup_configuration()
      }

  """
  @type update_managed_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_task_configuration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("PushConfig") => push_config()
      }

  """
  @type create_ota_task_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_credential_locker_response() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_credential_locker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_log_configuration_response() :: %{
        "ManagedThingId" => String.t() | atom(),
        "RuntimeLogConfigurations" => runtime_log_configurations()
      }

  """
  @type get_runtime_log_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_associations_response() :: %{
        "Items" => list(account_association_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_account_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ota_tasks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_ota_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_meta_data_response() :: %{
        "ManagedThingId" => String.t() | atom(),
        "MetaData" => map()
      }

  """
  @type get_managed_thing_meta_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connector_destinations_response() :: %{
        "ConnectorDestinationList" => list(connector_destination_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_connector_destinations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_log_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_event_log_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_config() :: %{
        "lambda" => lambda_config()
      }

  """
  @type endpoint_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_item() :: %{
        "Description" => String.t() | atom(),
        "EndpointConfig" => endpoint_config(),
        "EndpointType" => list(any()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type connector_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_task_response() :: %{
        "Description" => String.t() | atom(),
        "TaskArn" => String.t() | atom(),
        "TaskId" => String.t() | atom()
      }

  """
  @type create_ota_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovered_devices_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_discovered_devices_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_processing_details() :: %{
        "NumberOfCanceledThings" => [integer()],
        "NumberOfFailedThings" => [integer()],
        "NumberOfInProgressThings" => [integer()],
        "numberOfQueuedThings" => [integer()],
        "numberOfRejectedThings" => [integer()],
        "numberOfRemovedThings" => [integer()],
        "numberOfSucceededThings" => [integer()],
        "numberOfTimedOutThings" => [integer()],
        "processingTargets" => list([String.t() | atom()]())
      }

  """
  @type task_processing_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioning_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_provisioning_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_destination_request() :: %{
        optional("DeliveryDestinationArn") => String.t() | atom(),
        optional("DeliveryDestinationType") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("RoleArn") => String.t() | atom()
      }

  """
  @type update_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schema_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Namespace") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("SchemaId") => String.t() | atom(),
        optional("SemanticVersion") => String.t() | atom(),
        optional("Visibility") => list(any())
      }

  """
  @type list_schema_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_account_association_refresh_response() :: %{
        "OAuthAuthorizationUrl" => String.t() | atom()
      }

  """
  @type start_account_association_refresh_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_device_discoveries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StatusFilter") => list(any()),
        optional("TypeFilter") => list(any())
      }

  """
  @type list_device_discoveries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_log_configuration_request() :: %{}

  """
  @type delete_event_log_configuration_request() :: %{}

  @typedoc """

  ## Example:

      start_device_discovery_request() :: %{
        optional("AccountAssociationId") => String.t() | atom(),
        optional("AuthenticationMaterial") => String.t() | atom(),
        optional("AuthenticationMaterialType") => list(any()),
        optional("ClientToken") => String.t() | atom(),
        optional("ConnectorAssociationIdentifier") => String.t() | atom(),
        optional("ConnectorDeviceIdList") => list(String.t() | atom()),
        optional("ControllerIdentifier") => String.t() | atom(),
        optional("CustomProtocolDetail") => map(),
        optional("EndDeviceIdentifier") => String.t() | atom(),
        optional("Protocol") => list(any()),
        optional("Tags") => map(),
        required("DiscoveryType") => list(any())
      }

  """
  @type start_device_discovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_thing_schemas_response() :: %{
        "Items" => list(managed_thing_schema_list_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_managed_thing_schemas_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioning_profile_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProvisioningType" => list(any())
      }

  """
  @type provisioning_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_discovery_response() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ConnectorAssociationId" => String.t() | atom(),
        "ControllerId" => String.t() | atom(),
        "DiscoveryType" => list(any()),
        "FinishedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_device_discovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_thing_summary() :: %{
        "ActivatedAt" => non_neg_integer(),
        "AdvertisedProductId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "Brand" => String.t() | atom(),
        "Classification" => String.t() | atom(),
        "ConnectorDestinationId" => String.t() | atom(),
        "ConnectorDeviceId" => String.t() | atom(),
        "ConnectorPolicyId" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "CredentialLockerId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Model" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ParentControllerId" => String.t() | atom(),
        "ProvisioningStatus" => list(any()),
        "Role" => list(any()),
        "SerialNumber" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type managed_thing_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioning_profiles_response() :: %{
        "Items" => list(provisioning_profile_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_provisioning_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_account_association_response() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "DeviceDiscoveryId" => String.t() | atom(),
        "ManagedThingId" => String.t() | atom()
      }

  """
  @type register_account_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_account_association_request() :: %{}

  """
  @type delete_account_association_request() :: %{}

  @typedoc """

  ## Example:

      list_ota_task_executions_response() :: %{
        "ExecutionSummaries" => list(ota_task_execution_summaries()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_ota_task_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_schema_version_request() :: %{
        optional("Format") => list(any())
      }

  """
  @type get_schema_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_association_request() :: %{}

  """
  @type get_account_association_request() :: %{}

  @typedoc """

  ## Example:

      get_cloud_connector_request() :: %{}

  """
  @type get_cloud_connector_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_capabilities_response() :: %{
        "Capabilities" => String.t() | atom(),
        "CapabilityReport" => capability_report(),
        "ManagedThingId" => String.t() | atom()
      }

  """
  @type get_managed_thing_capabilities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_connector_destination_request() :: %{}

  """
  @type get_connector_destination_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      runtime_log_configurations() :: %{
        "DeleteLocalStoreAfterUpload" => boolean(),
        "LocalStoreFileRotationMaxBytes" => integer(),
        "LocalStoreFileRotationMaxFiles" => integer(),
        "LocalStoreLocation" => String.t() | atom(),
        "LogFlushLevel" => list(any()),
        "LogLevel" => list(any()),
        "UploadLog" => boolean(),
        "UploadPeriodMinutes" => integer()
      }

  """
  @type runtime_log_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_destination_request() :: %{}

  """
  @type get_destination_request() :: %{}

  @typedoc """

  ## Example:

      list_managed_things_request() :: %{
        optional("ConnectorDestinationIdFilter") => String.t() | atom(),
        optional("ConnectorDeviceIdFilter") => String.t() | atom(),
        optional("ConnectorPolicyIdFilter") => String.t() | atom(),
        optional("CredentialLockerFilter") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OwnerFilter") => String.t() | atom(),
        optional("ParentControllerIdentifierFilter") => String.t() | atom(),
        optional("ProvisioningStatusFilter") => list(any()),
        optional("RoleFilter") => list(any()),
        optional("SerialNumberFilter") => String.t() | atom()
      }

  """
  @type list_managed_things_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cloud_connector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EndpointType") => list(any()),
        required("EndpointConfig") => endpoint_config(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_cloud_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matter_capability_report() :: %{
        "endpoints" => list(matter_capability_report_endpoint()),
        "nodeId" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type matter_capability_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_destination_summary() :: %{
        "CloudConnectorId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type connector_destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_credential_locker_request() :: %{}

  """
  @type delete_credential_locker_request() :: %{}

  @typedoc """

  ## Example:

      auth_config() :: %{
        "GeneralAuthorization" => list(auth_material()),
        "oAuth" => o_auth_config()
      }

  """
  @type auth_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_credential_lockers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_credential_lockers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_endpoint() :: %{
        "capabilities" => list(command_capability()),
        "endpointId" => String.t() | atom()
      }

  """
  @type command_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_thing_schemas_request() :: %{
        optional("CapabilityIdFilter") => String.t() | atom(),
        optional("EndpointIdFilter") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_managed_thing_schemas_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      capability_report_capability() :: %{
        "actions" => list(String.t() | atom()),
        "events" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "properties" => list(String.t() | atom()),
        "version" => String.t() | atom()
      }

  """
  @type capability_report_capability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_task_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "OtaMechanism" => list(any()),
        "OtaSchedulingConfig" => ota_task_scheduling_config(),
        "OtaTargetQueryString" => String.t() | atom(),
        "OtaTaskExecutionRetryConfig" => ota_task_execution_retry_config(),
        "OtaType" => list(any()),
        "Protocol" => list(any()),
        "S3Url" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map(),
        "Target" => list([String.t() | atom()]()),
        "TaskArn" => String.t() | atom(),
        "TaskConfigurationId" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskProcessingDetails" => task_processing_details()
      }

  """
  @type get_ota_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_config() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type lambda_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_account_association_request() :: %{
        required("AccountAssociationId") => String.t() | atom(),
        required("DeviceDiscoveryId") => String.t() | atom(),
        required("ManagedThingId") => String.t() | atom()
      }

  """
  @type register_account_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_things_response() :: %{
        "Items" => list(managed_thing_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_managed_things_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_log_configuration_response() :: %{
        "EventLogLevel" => list(any()),
        "Id" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type get_event_log_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_connector_destination_request() :: %{
        optional("AuthConfig") => auth_config_update(),
        optional("AuthType") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("SecretsManager") => secrets_manager()
      }

  """
  @type update_connector_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_association_response() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociationState" => list(any()),
        "ConnectorDestinationId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "GeneralAuthorization" => general_authorization_name(),
        "Name" => String.t() | atom(),
        "OAuthAuthorizationUrl" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_account_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_log_configuration_request() :: %{
        required("EventLogLevel") => list(any())
      }

  """
  @type update_event_log_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      general_authorization_name() :: %{
        "AuthMaterialName" => String.t() | atom()
      }

  """
  @type general_authorization_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_timeout_config() :: %{
        "InProgressTimeoutInMinutes" => float()
      }

  """
  @type ota_task_timeout_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_association_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_account_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovered_devices_response() :: %{
        "Items" => list(discovered_device_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_discovered_devices_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_provisioning_profile_request() :: %{}

  """
  @type get_provisioning_profile_request() :: %{}

  @typedoc """

  ## Example:

      create_credential_locker_response() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom()
      }

  """
  @type create_credential_locker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      general_authorization_update() :: %{
        "AuthMaterialsToAdd" => list(auth_material()),
        "AuthMaterialsToUpdate" => list(auth_material())
      }

  """
  @type general_authorization_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cloud_connectors_request() :: %{
        optional("LambdaArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type list_cloud_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capability_report() :: %{
        "endpoints" => list(capability_report_endpoint()),
        "nodeId" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type capability_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device() :: %{
        "CapabilityReport" => matter_capability_report(),
        "CapabilitySchemas" => list(capability_schema_item()),
        "ConnectorDeviceId" => String.t() | atom(),
        "ConnectorDeviceName" => String.t() | atom(),
        "DeviceMetadata" => any()
      }

  """
  @type device() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_response() :: %{
        "ActivatedAt" => non_neg_integer(),
        "AdvertisedProductId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "Brand" => String.t() | atom(),
        "Classification" => String.t() | atom(),
        "ConnectorDestinationId" => String.t() | atom(),
        "ConnectorDeviceId" => String.t() | atom(),
        "ConnectorPolicyId" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "CredentialLockerId" => String.t() | atom(),
        "DeviceSpecificKey" => String.t() | atom(),
        "HubNetworkMode" => list(any()),
        "Id" => String.t() | atom(),
        "InternationalArticleNumber" => String.t() | atom(),
        "MacAddress" => String.t() | atom(),
        "MetaData" => map(),
        "Model" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ParentControllerId" => String.t() | atom(),
        "ProvisioningStatus" => list(any()),
        "Role" => list(any()),
        "SerialNumber" => String.t() | atom(),
        "Tags" => map(),
        "UniversalProductCode" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer(),
        "WiFiSimpleSetupConfiguration" => wi_fi_simple_setup_configuration()
      }

  """
  @type get_managed_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_managed_thing_request() :: %{
        optional("Force") => [boolean()]
      }

  """
  @type delete_managed_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ota_task_configurations_response() :: %{
        "Items" => list(ota_task_configuration_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_ota_task_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      state_capability() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "properties" => any(),
        "version" => String.t() | atom()
      }

  """
  @type state_capability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_config_criteria() :: %{
        "Action" => list(any()),
        "FailureType" => list(any()),
        "MinNumberOfExecutedThings" => integer(),
        "ThresholdPercentage" => float()
      }

  """
  @type abort_config_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_configuration_summary() :: %{
        "DestinationName" => String.t() | atom(),
        "EventType" => list(any())
      }

  """
  @type notification_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_thing_connectivity_data_request() :: %{}

  """
  @type get_managed_thing_connectivity_data_request() :: %{}

  @typedoc """

  ## Example:

      get_schema_version_response() :: %{
        "Description" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Schema" => any(),
        "SchemaId" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "Type" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type get_schema_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_associations_request() :: %{
        optional("ConnectorDestinationId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_account_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_custom_endpoint_response() :: %{
        "EndpointAddress" => String.t() | atom()
      }

  """
  @type register_custom_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_error() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type configuration_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_account_association_request() :: %{
        required("AccountAssociationId") => String.t() | atom(),
        required("ManagedThingId") => String.t() | atom()
      }

  """
  @type deregister_account_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_default_encryption_configuration_request() :: %{
        optional("kmsKeyArn") => String.t() | atom(),
        required("encryptionType") => list(any())
      }

  """
  @type put_default_encryption_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_managed_thing_request() :: %{
        optional("Brand") => String.t() | atom(),
        optional("Capabilities") => String.t() | atom(),
        optional("CapabilityReport") => capability_report(),
        optional("CapabilitySchemas") => list(capability_schema_item()),
        optional("Classification") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("CredentialLockerId") => String.t() | atom(),
        optional("MetaData") => map(),
        optional("Model") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Owner") => String.t() | atom(),
        optional("SerialNumber") => String.t() | atom(),
        optional("Tags") => map(),
        optional("WiFiSimpleSetupConfiguration") => wi_fi_simple_setup_configuration(),
        required("AuthenticationMaterial") => String.t() | atom(),
        required("AuthenticationMaterialType") => list(any()),
        required("Role") => list(any())
      }

  """
  @type create_managed_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matter_capability_report_endpoint() :: %{
        "clientClusters" => list(String.t() | atom()),
        "clusters" => list(matter_capability_report_cluster()),
        "deviceTypes" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "parts" => list(String.t() | atom()),
        "semanticTags" => list(String.t() | atom())
      }

  """
  @type matter_capability_report_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_account_association_response() :: %{
        "AccountAssociationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociationState" => list(any()),
        "OAuthAuthorizationUrl" => String.t() | atom()
      }

  """
  @type create_account_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connector_destination_request() :: %{}

  """
  @type delete_connector_destination_request() :: %{}

  @typedoc """

  ## Example:

      get_managed_thing_certificate_request() :: %{}

  """
  @type get_managed_thing_certificate_request() :: %{}

  @typedoc """

  ## Example:

      managed_thing_schema_list_item() :: %{
        "CapabilityId" => String.t() | atom(),
        "EndpointId" => String.t() | atom(),
        "Schema" => any()
      }

  """
  @type managed_thing_schema_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_connector_event_response() :: %{
        "ConnectorId" => String.t() | atom()
      }

  """
  @type send_connector_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_provisioning_profile_response() :: %{
        "Arn" => String.t() | atom(),
        "ClaimCertificate" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProvisioningType" => list(any()),
        "Tags" => map()
      }

  """
  @type get_provisioning_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connector_destinations_request() :: %{
        optional("CloudConnectorId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_connector_destinations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_task_configuration_response() :: %{
        "TaskConfigurationId" => String.t() | atom()
      }

  """
  @type create_ota_task_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_task_execution_rollout_config() :: %{
        "ExponentialRolloutRate" => exponential_rollout_rate(),
        "MaximumPerMinute" => integer()
      }

  """
  @type ota_task_execution_rollout_config() :: %{(String.t() | atom()) => any()}

  @type create_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_cloud_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_connector_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_credential_locker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_event_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_managed_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_ota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_ota_task_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_provisioning_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type delete_cloud_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_connector_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_credential_locker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type delete_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_event_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_managed_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_ota_task_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_ota_task_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_provisioning_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type deregister_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_cloud_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connector_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_credential_locker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_custom_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_default_encryption_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_device_discovery_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_event_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_hub_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_managed_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_managed_thing_capabilities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_managed_thing_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_managed_thing_connectivity_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_managed_thing_meta_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_managed_thing_state_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ota_task_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_provisioning_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_runtime_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_account_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()

  @type list_cloud_connectors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_connector_destinations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_credential_lockers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()

  @type list_destinations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_device_discoveries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | unauthorized_exception()

  @type list_discovered_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_event_log_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_thing_account_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_thing_schemas_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_managed_things_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | unauthorized_exception()

  @type list_notification_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ota_task_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ota_task_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_ota_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_provisioning_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | unauthorized_exception()

  @type list_schema_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type put_default_encryption_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type put_hub_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type put_runtime_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type register_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type register_custom_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type reset_runtime_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type send_connector_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type send_managed_thing_command_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type start_account_association_refresh_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_device_discovery_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_account_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_cloud_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_connector_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_log_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_managed_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_ota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2025-03-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotmanagedintegrations",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT Managed Integrations",
      signature_version: "v4",
      signing_name: "iotmanagedintegrations",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new account association via the destination id.
  """
  @spec create_account_association(map(), create_account_association_request(), list()) ::
          {:ok, create_account_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_account_association_errors()}
  def create_account_association(%Client{} = client, input, options \\ []) do
    url_path = "/account-associations"
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
  Creates a C2C (cloud-to-cloud) connector.
  """
  @spec create_cloud_connector(map(), create_cloud_connector_request(), list()) ::
          {:ok, create_cloud_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_connector_errors()}
  def create_cloud_connector(%Client{} = client, input, options \\ []) do
    url_path = "/cloud-connectors"
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
  Create a connector destination for connecting a cloud-to-cloud (C2C) connector
  to the customer's Amazon Web Services account.
  """
  @spec create_connector_destination(map(), create_connector_destination_request(), list()) ::
          {:ok, create_connector_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connector_destination_errors()}
  def create_connector_destination(%Client{} = client, input, options \\ []) do
    url_path = "/connector-destinations"
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
  Create a credential locker.

  This operation will not trigger the creation of all the manufacturing resources.
  """
  @spec create_credential_locker(map(), create_credential_locker_request(), list()) ::
          {:ok, create_credential_locker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_credential_locker_errors()}
  def create_credential_locker(%Client{} = client, input, options \\ []) do
    url_path = "/credential-lockers"
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
  Create a notification destination such as Kinesis Data Streams that receive
  events and notifications from Managed integrations.

  Managed integrations uses the destination to determine where to deliver
  notifications.
  """
  @spec create_destination(map(), create_destination_request(), list()) ::
          {:ok, create_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_destination_errors()}
  def create_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
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
  Set the event log configuration for the account, resource type, or specific
  resource.
  """
  @spec create_event_log_configuration(map(), create_event_log_configuration_request(), list()) ::
          {:ok, create_event_log_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_log_configuration_errors()}
  def create_event_log_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/event-log-configurations"
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
  Creates a managed thing.

  A managed thing contains the device identifier, protocol supported, and
  capabilities of the device in a data model format defined by Managed
  integrations.
  """
  @spec create_managed_thing(map(), create_managed_thing_request(), list()) ::
          {:ok, create_managed_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_managed_thing_errors()}
  def create_managed_thing(%Client{} = client, input, options \\ []) do
    url_path = "/managed-things"
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
  Creates a notification configuration.

  A configuration is a connection between an event type and a destination that you
  have already created.
  """
  @spec create_notification_configuration(
          map(),
          create_notification_configuration_request(),
          list()
        ) ::
          {:ok, create_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notification_configuration_errors()}
  def create_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/notification-configurations"
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
  Create an over-the-air (OTA) task to target a device.
  """
  @spec create_ota_task(map(), create_ota_task_request(), list()) ::
          {:ok, create_ota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ota_task_errors()}
  def create_ota_task(%Client{} = client, input, options \\ []) do
    url_path = "/ota-tasks"
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
  Create a configuraiton for the over-the-air (OTA) task.
  """
  @spec create_ota_task_configuration(map(), create_ota_task_configuration_request(), list()) ::
          {:ok, create_ota_task_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ota_task_configuration_errors()}
  def create_ota_task_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ota-task-configurations"
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
  Create a provisioning profile for a device to execute the provisioning flows
  using a provisioning template.

  The provisioning template is a document that defines the set of resources and
  policies applied to a device during the provisioning process.
  """
  @spec create_provisioning_profile(map(), create_provisioning_profile_request(), list()) ::
          {:ok, create_provisioning_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_provisioning_profile_errors()}
  def create_provisioning_profile(%Client{} = client, input, options \\ []) do
    url_path = "/provisioning-profiles"
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
  Remove a third-party account association for an end user.

  You must first call the `DeregisterAccountAssociation` to remove the connection
  between the managed thing and the third-party account before calling the
  `DeleteAccountAssociation` API.
  """
  @spec delete_account_association(
          map(),
          String.t() | atom(),
          delete_account_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_association_errors()}
  def delete_account_association(%Client{} = client, account_association_id, input, options \\ []) do
    url_path = "/account-associations/#{AWS.Util.encode_uri(account_association_id)}"
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
      200
    )
  end

  @doc """
  Delete a cloud connector.
  """
  @spec delete_cloud_connector(
          map(),
          String.t() | atom(),
          delete_cloud_connector_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cloud_connector_errors()}
  def delete_cloud_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/cloud-connectors/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Delete a connector destination linked to a cloud-to-cloud (C2C) connector.

  Deletion can't be done if the account association has used this connector
  destination.
  """
  @spec delete_connector_destination(
          map(),
          String.t() | atom(),
          delete_connector_destination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connector_destination_errors()}
  def delete_connector_destination(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/connector-destinations/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Delete a credential locker.

  This operation can't be undone and any existing device won't be able to use IoT
  managed integrations.
  """
  @spec delete_credential_locker(
          map(),
          String.t() | atom(),
          delete_credential_locker_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_credential_locker_errors()}
  def delete_credential_locker(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/credential-lockers/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Deletes a notification destination specified by name.
  """
  @spec delete_destination(map(), String.t() | atom(), delete_destination_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_destination_errors()}
  def delete_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Delete an event log configuration.
  """
  @spec delete_event_log_configuration(
          map(),
          String.t() | atom(),
          delete_event_log_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_log_configuration_errors()}
  def delete_event_log_configuration(%Client{} = client, id, input, options \\ []) do
    url_path = "/event-log-configurations/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Delete a managed thing.

  For direct-connected and hub-connected devices connecting with Managed
  integrations via a controller, all of the devices connected to it will have
  their status changed to `PENDING`. It is not possible to remove a cloud-to-cloud
  device.
  """
  @spec delete_managed_thing(map(), String.t() | atom(), delete_managed_thing_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_managed_thing_errors()}
  def delete_managed_thing(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/managed-things/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Force", "Force"}
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
  Deletes a notification configuration.
  """
  @spec delete_notification_configuration(
          map(),
          String.t() | atom(),
          delete_notification_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notification_configuration_errors()}
  def delete_notification_configuration(%Client{} = client, event_type, input, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(event_type)}"
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
      200
    )
  end

  @doc """
  Delete the over-the-air (OTA) task.
  """
  @spec delete_ota_task(map(), String.t() | atom(), delete_ota_task_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ota_task_errors()}
  def delete_ota_task(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/ota-tasks/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Delete the over-the-air (OTA) task configuration.
  """
  @spec delete_ota_task_configuration(
          map(),
          String.t() | atom(),
          delete_ota_task_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ota_task_configuration_errors()}
  def delete_ota_task_configuration(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/ota-task-configurations/#{AWS.Util.encode_uri(identifier)}"
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
  Delete a provisioning profile.
  """
  @spec delete_provisioning_profile(
          map(),
          String.t() | atom(),
          delete_provisioning_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_provisioning_profile_errors()}
  def delete_provisioning_profile(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/provisioning-profiles/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Deregister an account association from a managed thing.
  """
  @spec deregister_account_association(map(), deregister_account_association_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_account_association_errors()}
  def deregister_account_association(%Client{} = client, input, options \\ []) do
    url_path = "/managed-thing-associations/deregister"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get an account association for an Amazon Web Services account linked to a
  customer-managed destination.
  """
  @spec get_account_association(map(), String.t() | atom(), list()) ::
          {:ok, get_account_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_association_errors()}
  def get_account_association(%Client{} = client, account_association_id, options \\ []) do
    url_path = "/account-associations/#{AWS.Util.encode_uri(account_association_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get configuration details for a cloud connector.
  """
  @spec get_cloud_connector(map(), String.t() | atom(), list()) ::
          {:ok, get_cloud_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_connector_errors()}
  def get_cloud_connector(%Client{} = client, identifier, options \\ []) do
    url_path = "/cloud-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get connector destination details linked to a cloud-to-cloud (C2C) connector.
  """
  @spec get_connector_destination(map(), String.t() | atom(), list()) ::
          {:ok, get_connector_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connector_destination_errors()}
  def get_connector_destination(%Client{} = client, identifier, options \\ []) do
    url_path = "/connector-destinations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information on an existing credential locker
  """
  @spec get_credential_locker(map(), String.t() | atom(), list()) ::
          {:ok, get_credential_locker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_credential_locker_errors()}
  def get_credential_locker(%Client{} = client, identifier, options \\ []) do
    url_path = "/credential-lockers/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the IoT managed integrations custom endpoint.
  """
  @spec get_custom_endpoint(map(), list()) ::
          {:ok, get_custom_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_custom_endpoint_errors()}
  def get_custom_endpoint(%Client{} = client, options \\ []) do
    url_path = "/custom-endpoint"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the default encryption configuration for the Amazon
  Web Services account in the default or specified region.

  For more information, see [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  @spec get_default_encryption_configuration(map(), list()) ::
          {:ok, get_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_default_encryption_configuration_errors()}
  def get_default_encryption_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a destination by name.
  """
  @spec get_destination(map(), String.t() | atom(), list()) ::
          {:ok, get_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_destination_errors()}
  def get_destination(%Client{} = client, name, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the current state of a device discovery.
  """
  @spec get_device_discovery(map(), String.t() | atom(), list()) ::
          {:ok, get_device_discovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_device_discovery_errors()}
  def get_device_discovery(%Client{} = client, identifier, options \\ []) do
    url_path = "/device-discoveries/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an event log configuration.
  """
  @spec get_event_log_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_event_log_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_log_configuration_errors()}
  def get_event_log_configuration(%Client{} = client, id, options \\ []) do
    url_path = "/event-log-configurations/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a hub configuration.
  """
  @spec get_hub_configuration(map(), list()) ::
          {:ok, get_hub_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hub_configuration_errors()}
  def get_hub_configuration(%Client{} = client, options \\ []) do
    url_path = "/hub-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details of a managed thing including its attributes and capabilities.
  """
  @spec get_managed_thing(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_errors()}
  def get_managed_thing(%Client{} = client, identifier, options \\ []) do
    url_path = "/managed-things/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the capabilities for a managed thing using the device ID.
  """
  @spec get_managed_thing_capabilities(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_thing_capabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_capabilities_errors()}
  def get_managed_thing_capabilities(%Client{} = client, identifier, options \\ []) do
    url_path = "/managed-things-capabilities/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the certificate PEM for a managed IoT thing.
  """
  @spec get_managed_thing_certificate(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_thing_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_certificate_errors()}
  def get_managed_thing_certificate(%Client{} = client, identifier, options \\ []) do
    url_path = "/managed-things-certificate/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the connectivity status of a managed thing.
  """
  @spec get_managed_thing_connectivity_data(
          map(),
          String.t() | atom(),
          get_managed_thing_connectivity_data_request(),
          list()
        ) ::
          {:ok, get_managed_thing_connectivity_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_connectivity_data_errors()}
  def get_managed_thing_connectivity_data(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/managed-things-connectivity-data/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Get the metadata information for a managed thing.

  The `managedThing` `metadata` parameter is used for associating attributes with
  a `managedThing` that can be used for grouping over-the-air (OTA) tasks. Name
  value pairs in `metadata` can be used in the `OtaTargetQueryString` parameter
  for the `CreateOtaTask` API operation.
  """
  @spec get_managed_thing_meta_data(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_thing_meta_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_meta_data_errors()}
  def get_managed_thing_meta_data(%Client{} = client, identifier, options \\ []) do
    url_path = "/managed-things-metadata/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the managed thing state for the given device Id.
  """
  @spec get_managed_thing_state(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_thing_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_thing_state_errors()}
  def get_managed_thing_state(%Client{} = client, managed_thing_id, options \\ []) do
    url_path = "/managed-thing-states/#{AWS.Util.encode_uri(managed_thing_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a notification configuration for a specified event type.
  """
  @spec get_notification_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notification_configuration_errors()}
  def get_notification_configuration(%Client{} = client, event_type, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(event_type)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details of the over-the-air (OTA) task by its task id.
  """
  @spec get_ota_task(map(), String.t() | atom(), list()) ::
          {:ok, get_ota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ota_task_errors()}
  def get_ota_task(%Client{} = client, identifier, options \\ []) do
    url_path = "/ota-tasks/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a configuraiton for the over-the-air (OTA) task.
  """
  @spec get_ota_task_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_ota_task_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ota_task_configuration_errors()}
  def get_ota_task_configuration(%Client{} = client, identifier, options \\ []) do
    url_path = "/ota-task-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a provisioning profile by template name.
  """
  @spec get_provisioning_profile(map(), String.t() | atom(), list()) ::
          {:ok, get_provisioning_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_provisioning_profile_errors()}
  def get_provisioning_profile(%Client{} = client, identifier, options \\ []) do
    url_path = "/provisioning-profiles/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime log configuration for a specific managed thing.
  """
  @spec get_runtime_log_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_runtime_log_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_runtime_log_configuration_errors()}
  def get_runtime_log_configuration(%Client{} = client, managed_thing_id, options \\ []) do
    url_path = "/runtime-log-configurations/#{AWS.Util.encode_uri(managed_thing_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a schema version with the provided information.
  """
  @spec get_schema_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_schema_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_version_errors()}
  def get_schema_version(
        %Client{} = client,
        schema_versioned_id,
        type,
        format \\ nil,
        options \\ []
      ) do
    url_path =
      "/schema-versions/#{AWS.Util.encode_uri(type)}/#{AWS.Util.encode_uri(schema_versioned_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(format) do
        [{"Format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all account associations, with optional filtering by connector destination
  ID.
  """
  @spec list_account_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_account_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_associations_errors()}
  def list_account_associations(
        %Client{} = client,
        connector_destination_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/account-associations"
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

    query_params =
      if !is_nil(connector_destination_id) do
        [{"ConnectorDestinationId", connector_destination_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of connectors filtered by its Lambda Amazon Resource Name (ARN)
  and `type`.
  """
  @spec list_cloud_connectors(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_cloud_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cloud_connectors_errors()}
  def list_cloud_connectors(
        %Client{} = client,
        lambda_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/cloud-connectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

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

    query_params =
      if !is_nil(lambda_arn) do
        [{"LambdaArn", lambda_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all connector destinations, with optional filtering by cloud connector ID.
  """
  @spec list_connector_destinations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_connector_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connector_destinations_errors()}
  def list_connector_destinations(
        %Client{} = client,
        cloud_connector_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/connector-destinations"
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

    query_params =
      if !is_nil(cloud_connector_id) do
        [{"CloudConnectorId", cloud_connector_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List information on an existing credential locker.
  """
  @spec list_credential_lockers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_credential_lockers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_credential_lockers_errors()}
  def list_credential_lockers(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/credential-lockers"
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
  List all notification destinations.
  """
  @spec list_destinations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_destinations_errors()}
  def list_destinations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/destinations"
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
  Lists all device discovery tasks, with optional filtering by type and status.
  """
  @spec list_device_discoveries(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_device_discoveries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_device_discoveries_errors()}
  def list_device_discoveries(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        type_filter \\ nil,
        options \\ []
      ) do
    url_path = "/device-discoveries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type_filter) do
        [{"TypeFilter", type_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status_filter) do
        [{"StatusFilter", status_filter} | query_params]
      else
        query_params
      end

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
  Lists all devices discovered during a specific device discovery task.
  """
  @spec list_discovered_devices(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_discovered_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_discovered_devices_errors()}
  def list_discovered_devices(
        %Client{} = client,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/device-discoveries/#{AWS.Util.encode_uri(identifier)}/devices"
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
  List all event log configurations for an account.
  """
  @spec list_event_log_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_log_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_log_configurations_errors()}
  def list_event_log_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/event-log-configurations"
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
  Lists all account associations for a specific managed thing.
  """
  @spec list_managed_thing_account_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_thing_account_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_thing_account_associations_errors()}
  def list_managed_thing_account_associations(
        %Client{} = client,
        account_association_id \\ nil,
        managed_thing_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/managed-thing-associations"
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

    query_params =
      if !is_nil(managed_thing_id) do
        [{"ManagedThingId", managed_thing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_association_id) do
        [{"AccountAssociationId", account_association_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List schemas associated with a managed thing.
  """
  @spec list_managed_thing_schemas(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_thing_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_thing_schemas_errors()}
  def list_managed_thing_schemas(
        %Client{} = client,
        identifier,
        capability_id_filter \\ nil,
        endpoint_id_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/managed-thing-schemas/#{AWS.Util.encode_uri(identifier)}"
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

    query_params =
      if !is_nil(endpoint_id_filter) do
        [{"EndpointIdFilter", endpoint_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(capability_id_filter) do
        [{"CapabilityIdFilter", capability_id_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Listing all managed things with provision for filters.
  """
  @spec list_managed_things(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_things_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_things_errors()}
  def list_managed_things(
        %Client{} = client,
        connector_destination_id_filter \\ nil,
        connector_device_id_filter \\ nil,
        connector_policy_id_filter \\ nil,
        credential_locker_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owner_filter \\ nil,
        parent_controller_identifier_filter \\ nil,
        provisioning_status_filter \\ nil,
        role_filter \\ nil,
        serial_number_filter \\ nil,
        options \\ []
      ) do
    url_path = "/managed-things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(serial_number_filter) do
        [{"SerialNumberFilter", serial_number_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(role_filter) do
        [{"RoleFilter", role_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provisioning_status_filter) do
        [{"ProvisioningStatusFilter", provisioning_status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(parent_controller_identifier_filter) do
        [{"ParentControllerIdentifierFilter", parent_controller_identifier_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owner_filter) do
        [{"OwnerFilter", owner_filter} | query_params]
      else
        query_params
      end

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

    query_params =
      if !is_nil(credential_locker_filter) do
        [{"CredentialLockerFilter", credential_locker_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connector_policy_id_filter) do
        [{"ConnectorPolicyIdFilter", connector_policy_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connector_device_id_filter) do
        [{"ConnectorDeviceIdFilter", connector_device_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connector_destination_id_filter) do
        [{"ConnectorDestinationIdFilter", connector_destination_id_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all notification configurations.
  """
  @spec list_notification_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_notification_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notification_configurations_errors()}
  def list_notification_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/notification-configurations"
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
  List all of the over-the-air (OTA) task configurations.
  """
  @spec list_ota_task_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ota_task_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ota_task_configurations_errors()}
  def list_ota_task_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ota-task-configurations"
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
  List all of the over-the-air (OTA) task executions.
  """
  @spec list_ota_task_executions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ota_task_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ota_task_executions_errors()}
  def list_ota_task_executions(
        %Client{} = client,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ota-tasks/#{AWS.Util.encode_uri(identifier)}/devices"
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
  List all of the over-the-air (OTA) tasks.
  """
  @spec list_ota_tasks(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_ota_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ota_tasks_errors()}
  def list_ota_tasks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/ota-tasks"
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
  List the provisioning profiles within the Amazon Web Services account.
  """
  @spec list_provisioning_profiles(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_provisioning_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_provisioning_profiles_errors()}
  def list_provisioning_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/provisioning-profiles"
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
  Lists schema versions with the provided information.
  """
  @spec list_schema_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schema_versions_errors()}
  def list_schema_versions(
        %Client{} = client,
        type,
        max_results \\ nil,
        namespace \\ nil,
        next_token \\ nil,
        schema_id \\ nil,
        semantic_version \\ nil,
        visibility \\ nil,
        options \\ []
      ) do
    url_path = "/schema-versions/#{AWS.Util.encode_uri(type)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(visibility) do
        [{"VisibilityFilter", visibility} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(semantic_version) do
        [{"SemanticVersionFilter", semantic_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(schema_id) do
        [{"SchemaIdFilter", schema_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"NamespaceFilter", namespace} | query_params]
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
  Lists the tags for a specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
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
  Sets the default encryption configuration for the Amazon Web Services account.

  For more information, see [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the AWS IoT SiteWise User Guide.
  """
  @spec put_default_encryption_configuration(
          map(),
          put_default_encryption_configuration_request(),
          list()
        ) ::
          {:ok, put_default_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_default_encryption_configuration_errors()}
  def put_default_encryption_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/encryption"
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
  Update a hub configuration.
  """
  @spec put_hub_configuration(map(), put_hub_configuration_request(), list()) ::
          {:ok, put_hub_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_hub_configuration_errors()}
  def put_hub_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/hub-configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Set the runtime log configuration for a specific managed thing.
  """
  @spec put_runtime_log_configuration(
          map(),
          String.t() | atom(),
          put_runtime_log_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_runtime_log_configuration_errors()}
  def put_runtime_log_configuration(%Client{} = client, managed_thing_id, input, options \\ []) do
    url_path = "/runtime-log-configurations/#{AWS.Util.encode_uri(managed_thing_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Registers an account association with a managed thing, establishing a connection
  between a device and a third-party account.
  """
  @spec register_account_association(map(), register_account_association_request(), list()) ::
          {:ok, register_account_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_account_association_errors()}
  def register_account_association(%Client{} = client, input, options \\ []) do
    url_path = "/managed-thing-associations/register"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Customers can request IoT managed integrations to manage the server trust for
  them or bring their own external server trusts for the custom domain.

  Returns an IoT managed integrations endpoint.
  """
  @spec register_custom_endpoint(map(), register_custom_endpoint_request(), list()) ::
          {:ok, register_custom_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_custom_endpoint_errors()}
  def register_custom_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/custom-endpoint"
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
  Reset a runtime log configuration for a specific managed thing.
  """
  @spec reset_runtime_log_configuration(
          map(),
          String.t() | atom(),
          reset_runtime_log_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_runtime_log_configuration_errors()}
  def reset_runtime_log_configuration(%Client{} = client, managed_thing_id, input, options \\ []) do
    url_path = "/runtime-log-configurations/#{AWS.Util.encode_uri(managed_thing_id)}"
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
      200
    )
  end

  @doc """
  Relays third-party device events for a connector such as a new device or a
  device state change event.
  """
  @spec send_connector_event(map(), String.t() | atom(), send_connector_event_request(), list()) ::
          {:ok, send_connector_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_connector_event_errors()}
  def send_connector_event(%Client{} = client, connector_id, input, options \\ []) do
    url_path = "/connector-event/#{AWS.Util.encode_uri(connector_id)}"
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
      202
    )
  end

  @doc """
  Send the command to the device represented by the managed thing.
  """
  @spec send_managed_thing_command(
          map(),
          String.t() | atom(),
          send_managed_thing_command_request(),
          list()
        ) ::
          {:ok, send_managed_thing_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_managed_thing_command_errors()}
  def send_managed_thing_command(%Client{} = client, managed_thing_id, input, options \\ []) do
    url_path = "/managed-things-command/#{AWS.Util.encode_uri(managed_thing_id)}"
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
      202
    )
  end

  @doc """
  Initiates a refresh of an existing account association to update its
  authorization and connection status.
  """
  @spec start_account_association_refresh(
          map(),
          String.t() | atom(),
          start_account_association_refresh_request(),
          list()
        ) ::
          {:ok, start_account_association_refresh_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_account_association_refresh_errors()}
  def start_account_association_refresh(
        %Client{} = client,
        account_association_id,
        input,
        options \\ []
      ) do
    url_path = "/account-associations/#{AWS.Util.encode_uri(account_association_id)}/refresh"
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
      200
    )
  end

  @doc """
  This API is used to start device discovery for hub-connected and
  third-party-connected devices.

  The authentication material (install code) is delivered as a message to the
  controller instructing it to start the discovery.
  """
  @spec start_device_discovery(map(), start_device_discovery_request(), list()) ::
          {:ok, start_device_discovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_device_discovery_errors()}
  def start_device_discovery(%Client{} = client, input, options \\ []) do
    url_path = "/device-discoveries"
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
  Adds tags to a specified resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
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
      200
    )
  end

  @doc """
  Removes tags from a specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
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
      200
    )
  end

  @doc """
  Updates the properties of an existing account association.
  """
  @spec update_account_association(
          map(),
          String.t() | atom(),
          update_account_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_association_errors()}
  def update_account_association(%Client{} = client, account_association_id, input, options \\ []) do
    url_path = "/account-associations/#{AWS.Util.encode_uri(account_association_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update an existing cloud connector.
  """
  @spec update_cloud_connector(
          map(),
          String.t() | atom(),
          update_cloud_connector_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cloud_connector_errors()}
  def update_cloud_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/cloud-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the properties of an existing connector destination.
  """
  @spec update_connector_destination(
          map(),
          String.t() | atom(),
          update_connector_destination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connector_destination_errors()}
  def update_connector_destination(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/connector-destinations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update a destination specified by name.
  """
  @spec update_destination(map(), String.t() | atom(), update_destination_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_destination_errors()}
  def update_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Update an event log configuration by log configuration ID.
  """
  @spec update_event_log_configuration(
          map(),
          String.t() | atom(),
          update_event_log_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_log_configuration_errors()}
  def update_event_log_configuration(%Client{} = client, id, input, options \\ []) do
    url_path = "/event-log-configurations/#{AWS.Util.encode_uri(id)}"
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
  Update the attributes and capabilities associated with a managed thing.
  """
  @spec update_managed_thing(map(), String.t() | atom(), update_managed_thing_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_managed_thing_errors()}
  def update_managed_thing(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/managed-things/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update a notification configuration.
  """
  @spec update_notification_configuration(
          map(),
          String.t() | atom(),
          update_notification_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notification_configuration_errors()}
  def update_notification_configuration(%Client{} = client, event_type, input, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(event_type)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Update an over-the-air (OTA) task.
  """
  @spec update_ota_task(map(), String.t() | atom(), update_ota_task_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ota_task_errors()}
  def update_ota_task(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/ota-tasks/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end
end
