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

  @typedoc """

  ## Example:

      user_pending_changes() :: %{
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t() | atom()),
        "PendingChange" => list(any())
      }

  """
  @type user_pending_changes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sanitization_warning() :: %{
        "AttributeName" => String.t() | atom(),
        "ElementName" => String.t() | atom(),
        "Reason" => list(any())
      }

  """
  @type sanitization_warning() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_summary() :: %{
        "PendingChange" => list(any()),
        "Username" => String.t() | atom()
      }

  """
  @type user_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_broker_response() :: %{
        "PendingSecurityGroups" => list(String.t() | atom()),
        "Tags" => map(),
        "AuthenticationStrategy" => list(any()),
        "BrokerName" => String.t() | atom(),
        "PendingLdapServerMetadata" => ldap_server_metadata_output(),
        "Configurations" => configurations(),
        "Logs" => logs_summary(),
        "LdapServerMetadata" => ldap_server_metadata_output(),
        "BrokerArn" => String.t() | atom(),
        "EngineType" => list(any()),
        "Created" => non_neg_integer(),
        "ActionsRequired" => list(action_required()),
        "AutoMinorVersionUpgrade" => boolean(),
        "PendingHostInstanceType" => String.t() | atom(),
        "DataReplicationMode" => list(any()),
        "EncryptionOptions" => encryption_options(),
        "MaintenanceWindowStartTime" => weekly_start_time(),
        "HostInstanceType" => String.t() | atom(),
        "Users" => list(user_summary()),
        "DeploymentMode" => list(any()),
        "PendingEngineVersion" => String.t() | atom(),
        "BrokerId" => String.t() | atom(),
        "BrokerInstances" => list(broker_instance()),
        "PendingAuthenticationStrategy" => list(any()),
        "SubnetIds" => list(String.t() | atom()),
        "StorageType" => list(any()),
        "PendingDataReplicationMetadata" => data_replication_metadata_output(),
        "BrokerState" => list(any()),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t() | atom(),
        "PendingDataReplicationMode" => list(any()),
        "DataReplicationMetadata" => data_replication_metadata_output(),
        "SecurityGroups" => list(String.t() | atom())
      }

  """
  @type describe_broker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      promote_response() :: %{
        "BrokerId" => String.t() | atom()
      }

  """
  @type promote_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_tags_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type delete_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      availability_zone() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_broker_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("Configuration") => configuration_id(),
        optional("CreatorRequestId") => String.t() | atom(),
        optional("DataReplicationMode") => list(any()),
        optional("DataReplicationPrimaryBrokerArn") => String.t() | atom(),
        optional("EncryptionOptions") => encryption_options(),
        optional("EngineVersion") => String.t() | atom(),
        optional("LdapServerMetadata") => ldap_server_metadata_input(),
        optional("Logs") => logs(),
        optional("MaintenanceWindowStartTime") => weekly_start_time(),
        optional("SecurityGroups") => list(String.t() | atom()),
        optional("StorageType") => list(any()),
        optional("SubnetIds") => list(String.t() | atom()),
        optional("Tags") => map(),
        optional("Users") => list(user()),
        required("BrokerName") => String.t() | atom(),
        required("DeploymentMode") => list(any()),
        required("EngineType") => list(any()),
        required("HostInstanceType") => String.t() | atom(),
        required("PubliclyAccessible") => boolean()
      }

  """
  @type create_broker_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_request() :: %{
        optional("Description") => String.t() | atom(),
        required("Data") => String.t() | atom()
      }

  """
  @type update_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_broker_engine_types_response() :: %{
        "BrokerEngineTypes" => list(broker_engine_type()),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_broker_engine_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_broker_response() :: %{
        "BrokerArn" => String.t() | atom(),
        "BrokerId" => String.t() | atom()
      }

  """
  @type create_broker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{}

  """
  @type update_user_response() :: %{}

  @typedoc """

  ## Example:

      engine_version() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type engine_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configurations_response() :: %{
        "Configurations" => list(configuration()),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reboot_broker_response() :: %{}

  """
  @type reboot_broker_response() :: %{}

  @typedoc """

  ## Example:

      data_replication_metadata_output() :: %{
        "DataReplicationCounterpart" => data_replication_counterpart(),
        "DataReplicationRole" => String.t() | atom()
      }

  """
  @type data_replication_metadata_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_broker_response() :: %{
        "BrokerId" => String.t() | atom()
      }

  """
  @type delete_broker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "Arn" => String.t() | atom(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EngineType" => list(any()),
        "EngineVersion" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }

  """
  @type logs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_options() :: %{
        "KmsKeyId" => String.t() | atom(),
        "UseAwsOwnedKey" => boolean()
      }

  """
  @type encryption_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configuration_response() :: %{
        "ConfigurationId" => String.t() | atom()
      }

  """
  @type delete_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_tags_request() :: %{
        optional("Tags") => map()
      }

  """
  @type create_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pending_logs() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }

  """
  @type pending_logs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brokers_response() :: %{
        "BrokerSummaries" => list(broker_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_brokers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configuration_request() :: %{}

  """
  @type delete_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_broker_engine_types_request() :: %{
        optional("EngineType") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_broker_engine_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      promote_request() :: %{
        required("Mode") => list(any())
      }

  """
  @type promote_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reboot_broker_request() :: %{}

  """
  @type reboot_broker_request() :: %{}

  @typedoc """

  ## Example:

      describe_configuration_revision_request() :: %{}

  """
  @type describe_configuration_revision_request() :: %{}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "BrokerId" => String.t() | atom(),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom(),
        "Users" => list(user_summary())
      }

  """
  @type list_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      broker_summary() :: %{
        "BrokerArn" => String.t() | atom(),
        "BrokerId" => String.t() | atom(),
        "BrokerName" => String.t() | atom(),
        "BrokerState" => list(any()),
        "Created" => non_neg_integer(),
        "DeploymentMode" => list(any()),
        "EngineType" => list(any()),
        "HostInstanceType" => String.t() | atom()
      }

  """
  @type broker_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configuration_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("EngineVersion") => String.t() | atom(),
        optional("Tags") => map(),
        required("EngineType") => list(any()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configuration_revisions_response() :: %{
        "ConfigurationId" => String.t() | atom(),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom(),
        "Revisions" => list(configuration_revision())
      }

  """
  @type list_configuration_revisions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{}

  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:

      create_configuration_response() :: %{
        "Arn" => String.t() | atom(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t() | atom()
      }

  """
  @type create_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ldap_server_metadata_input() :: %{
        "Hosts" => list(String.t() | atom()),
        "RoleBase" => String.t() | atom(),
        "RoleName" => String.t() | atom(),
        "RoleSearchMatching" => String.t() | atom(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountPassword" => String.t() | atom(),
        "ServiceAccountUsername" => String.t() | atom(),
        "UserBase" => String.t() | atom(),
        "UserRoleName" => String.t() | atom(),
        "UserSearchMatching" => String.t() | atom(),
        "UserSearchSubtree" => boolean()
      }

  """
  @type ldap_server_metadata_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_broker_request() :: %{}

  """
  @type delete_broker_request() :: %{}

  @typedoc """

  ## Example:

      delete_user_response() :: %{}

  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:

      describe_broker_instance_options_request() :: %{
        optional("EngineType") => String.t() | atom(),
        optional("HostInstanceType") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StorageType") => String.t() | atom()
      }

  """
  @type describe_broker_instance_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_response() :: %{
        "Arn" => String.t() | atom(),
        "Created" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t() | atom(),
        "Warnings" => list(sanitization_warning())
      }

  """
  @type update_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      broker_engine_type() :: %{
        "EngineType" => list(any()),
        "EngineVersions" => list(engine_version())
      }

  """
  @type broker_engine_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_configuration_revision_response() :: %{
        "ConfigurationId" => String.t() | atom(),
        "Created" => non_neg_integer(),
        "Data" => String.t() | atom(),
        "Description" => String.t() | atom()
      }

  """
  @type describe_configuration_revision_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_response() :: %{
        "BrokerId" => String.t() | atom(),
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t() | atom()),
        "Pending" => user_pending_changes(),
        "ReplicationUser" => boolean(),
        "Username" => String.t() | atom()
      }

  """
  @type describe_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ldap_server_metadata_output() :: %{
        "Hosts" => list(String.t() | atom()),
        "RoleBase" => String.t() | atom(),
        "RoleName" => String.t() | atom(),
        "RoleSearchMatching" => String.t() | atom(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountUsername" => String.t() | atom(),
        "UserBase" => String.t() | atom(),
        "UserRoleName" => String.t() | atom(),
        "UserSearchMatching" => String.t() | atom(),
        "UserSearchSubtree" => boolean()
      }

  """
  @type ldap_server_metadata_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      broker_instance() :: %{
        "ConsoleURL" => String.t() | atom(),
        "Endpoints" => list(String.t() | atom()),
        "IpAddress" => String.t() | atom()
      }

  """
  @type broker_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_configuration_response() :: %{
        "Arn" => String.t() | atom(),
        "AuthenticationStrategy" => list(any()),
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EngineType" => list(any()),
        "EngineVersion" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type describe_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      weekly_start_time() :: %{
        "DayOfWeek" => list(any()),
        "TimeOfDay" => String.t() | atom(),
        "TimeZone" => String.t() | atom()
      }

  """
  @type weekly_start_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_request() :: %{}

  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("ConsoleAccess") => boolean(),
        optional("Groups") => list(String.t() | atom()),
        optional("Password") => String.t() | atom(),
        optional("ReplicationUser") => boolean()
      }

  """
  @type update_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "ConsoleAccess" => boolean(),
        "Groups" => list(String.t() | atom()),
        "Password" => String.t() | atom(),
        "ReplicationUser" => boolean(),
        "Username" => String.t() | atom()
      }

  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs_summary() :: %{
        "Audit" => boolean(),
        "AuditLogGroup" => String.t() | atom(),
        "General" => boolean(),
        "GeneralLogGroup" => String.t() | atom(),
        "Pending" => pending_logs()
      }

  """
  @type logs_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_broker_request() :: %{}

  """
  @type describe_broker_request() :: %{}

  @typedoc """

  ## Example:

      broker_instance_option() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "EngineType" => list(any()),
        "HostInstanceType" => String.t() | atom(),
        "StorageType" => list(any()),
        "SupportedDeploymentModes" => list(list(any())()),
        "SupportedEngineVersions" => list(String.t() | atom())
      }

  """
  @type broker_instance_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_configuration_request() :: %{}

  """
  @type describe_configuration_request() :: %{}

  @typedoc """

  ## Example:

      configuration_id() :: %{
        "Id" => String.t() | atom(),
        "Revision" => integer()
      }

  """
  @type configuration_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "ErrorAttribute" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_broker_response() :: %{
        "AuthenticationStrategy" => list(any()),
        "AutoMinorVersionUpgrade" => boolean(),
        "BrokerId" => String.t() | atom(),
        "Configuration" => configuration_id(),
        "DataReplicationMetadata" => data_replication_metadata_output(),
        "DataReplicationMode" => list(any()),
        "EngineVersion" => String.t() | atom(),
        "HostInstanceType" => String.t() | atom(),
        "LdapServerMetadata" => ldap_server_metadata_output(),
        "Logs" => logs(),
        "MaintenanceWindowStartTime" => weekly_start_time(),
        "PendingDataReplicationMetadata" => data_replication_metadata_output(),
        "PendingDataReplicationMode" => list(any()),
        "SecurityGroups" => list(String.t() | atom())
      }

  """
  @type update_broker_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_counterpart() :: %{
        "BrokerId" => String.t() | atom(),
        "Region" => String.t() | atom()
      }

  """
  @type data_replication_counterpart() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configurations() :: %{
        "Current" => configuration_id(),
        "History" => list(configuration_id()),
        "Pending" => configuration_id()
      }

  """
  @type configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_revision() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Revision" => integer()
      }

  """
  @type configuration_revision() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{}

  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:

      describe_broker_instance_options_response() :: %{
        "BrokerInstanceOptions" => list(broker_instance_option()),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_broker_instance_options_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_broker_request() :: %{
        optional("AuthenticationStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("Configuration") => configuration_id(),
        optional("DataReplicationMode") => list(any()),
        optional("EngineVersion") => String.t() | atom(),
        optional("HostInstanceType") => String.t() | atom(),
        optional("LdapServerMetadata") => ldap_server_metadata_input(),
        optional("Logs") => logs(),
        optional("MaintenanceWindowStartTime") => weekly_start_time(),
        optional("SecurityGroups") => list(String.t() | atom())
      }

  """
  @type update_broker_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{}

  """
  @type create_user_response() :: %{}

  @typedoc """

  ## Example:

      action_required() :: %{
        "ActionRequiredCode" => String.t() | atom(),
        "ActionRequiredInfo" => String.t() | atom()
      }

  """
  @type action_required() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configuration_revisions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_configuration_revisions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brokers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_brokers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("ConsoleAccess") => boolean(),
        optional("Groups") => list(String.t() | atom()),
        optional("ReplicationUser") => boolean(),
        required("Password") => String.t() | atom()
      }

  """
  @type create_user_request() :: %{(String.t() | atom()) => any()}

  @type create_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | forbidden_exception()

  @type create_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type create_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type delete_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type delete_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_broker_engine_types_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type describe_broker_instance_options_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type describe_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_configuration_revision_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_brokers_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type list_configuration_revisions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_configurations_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type list_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_users_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type promote_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type reboot_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type update_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type update_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  @type update_user_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mq",
      global?: false,
      hostname: nil,
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
  @spec create_broker(map(), create_broker_request(), list()) ::
          {:ok, create_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_broker_errors()}
  def create_broker(%Client{} = client, input, options \\ []) do
    url_path = "/v1/brokers"
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
  Creates a new configuration for the specified configuration name.

  Amazon MQ uses the default configuration (the engine type and version).
  """
  @spec create_configuration(map(), create_configuration_request(), list()) ::
          {:ok, create_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configuration_errors()}
  def create_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/configurations"
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
  Add a tag to a resource.
  """
  @spec create_tags(map(), String.t() | atom(), create_tags_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Creates an ActiveMQ user.

  Do not add personally identifiable information (PII) or other confidential or
  sensitive information in broker usernames. Broker usernames are accessible to
  other Amazon Web Services services, including CloudWatch Logs. Broker usernames
  are not intended to be used for private or sensitive data.
  """
  @spec create_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_user_request(),
          list()
        ) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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
  Deletes a broker.

  Note: This API is asynchronous.
  """
  @spec delete_broker(map(), String.t() | atom(), delete_broker_request(), list()) ::
          {:ok, delete_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_broker_errors()}
  def delete_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"
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
  Deletes the specified configuration.
  """
  @spec delete_configuration(map(), String.t() | atom(), delete_configuration_request(), list()) ::
          {:ok, delete_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_errors()}
  def delete_configuration(%Client{} = client, configuration_id, input, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"
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
  Removes a tag from a resource.
  """
  @spec delete_tags(map(), String.t() | atom(), delete_tags_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes an ActiveMQ user.
  """
  @spec delete_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_user_request(),
          list()
        ) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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
  Returns information about the specified broker.
  """
  @spec describe_broker(map(), String.t() | atom(), list()) ::
          {:ok, describe_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_broker_errors()}
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
  @spec describe_broker_engine_types(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_broker_engine_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_broker_engine_types_errors()}
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
  @spec describe_broker_instance_options(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_broker_instance_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_broker_instance_options_errors()}
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
  @spec describe_configuration(map(), String.t() | atom(), list()) ::
          {:ok, describe_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_errors()}
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
  @spec describe_configuration_revision(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_configuration_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_revision_errors()}
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
  @spec describe_user(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_errors()}
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
  @spec list_brokers(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_brokers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_brokers_errors()}
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
  @spec list_configuration_revisions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_configuration_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_revisions_errors()}
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
  @spec list_configurations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configurations_errors()}
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
  @spec list_tags(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
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
  @spec list_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
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
  @spec promote(map(), String.t() | atom(), promote_request(), list()) ::
          {:ok, promote_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, promote_errors()}
  def promote(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/promote"
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
  Reboots a broker.

  Note: This API is asynchronous.
  """
  @spec reboot_broker(map(), String.t() | atom(), reboot_broker_request(), list()) ::
          {:ok, reboot_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_broker_errors()}
  def reboot_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/reboot"
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
  Adds a pending configuration change to a broker.
  """
  @spec update_broker(map(), String.t() | atom(), update_broker_request(), list()) ::
          {:ok, update_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_broker_errors()}
  def update_broker(%Client{} = client, broker_id, input, options \\ []) do
    url_path = "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}"
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
  Updates the specified configuration.
  """
  @spec update_configuration(map(), String.t() | atom(), update_configuration_request(), list()) ::
          {:ok, update_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_errors()}
  def update_configuration(%Client{} = client, configuration_id, input, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(configuration_id)}"
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
  Updates the information for an ActiveMQ user.
  """
  @spec update_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_request(),
          list()
        ) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, broker_id, username, input, options \\ []) do
    url_path =
      "/v1/brokers/#{AWS.Util.encode_uri(broker_id)}/users/#{AWS.Util.encode_uri(username)}"

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
end
