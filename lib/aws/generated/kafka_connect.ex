# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KafkaConnect do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_summary() :: %{
        "creationTime" => non_neg_integer(),
        "customPluginArn" => String.t() | Atom.t(),
        "customPluginState" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "latestRevision" => custom_plugin_revision_summary(),
        "name" => String.t() | Atom.t()
      }

  """
  @type custom_plugin_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_client_authentication() :: %{
        "authenticationType" => String.t() | Atom.t()
      }

  """
  @type kafka_cluster_client_authentication() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_client_authentication_description() :: %{
        "authenticationType" => String.t() | Atom.t()
      }

  """
  @type kafka_cluster_client_authentication_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_worker_configuration_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("description") => String.t() | Atom.t(),
        optional("latestRevision") => worker_configuration_revision_description(),
        optional("name") => String.t() | Atom.t(),
        optional("workerConfigurationArn") => String.t() | Atom.t(),
        optional("workerConfigurationState") => String.t() | Atom.t()
      }

  """
  @type describe_worker_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_response() :: %{
        optional("connectors") => list(connector_summary()),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_connectors_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      plugin() :: %{
        "customPlugin" => custom_plugin()
      }

  """
  @type plugin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      capacity_description() :: %{
        "autoScaling" => auto_scaling_description(),
        "provisionedCapacity" => provisioned_capacity_description()
      }

  """
  @type capacity_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_plugin_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("customPluginArn") => String.t() | Atom.t(),
        optional("customPluginState") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("latestRevision") => custom_plugin_revision_summary(),
        optional("name") => String.t() | Atom.t(),
        optional("stateDescription") => state_description()
      }

  """
  @type describe_custom_plugin_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      worker_configuration_description() :: %{
        "revision" => float(),
        "workerConfigurationArn" => String.t() | Atom.t()
      }

  """
  @type worker_configuration_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc() :: %{
        "securityGroups" => list(String.t() | Atom.t()),
        "subnets" => list(String.t() | Atom.t())
      }

  """
  @type vpc() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_response() :: %{
        optional("capacity") => capacity_description(),
        optional("connectorArn") => String.t() | Atom.t(),
        optional("connectorConfiguration") => map(),
        optional("connectorDescription") => String.t() | Atom.t(),
        optional("connectorName") => String.t() | Atom.t(),
        optional("connectorState") => String.t() | Atom.t(),
        optional("creationTime") => non_neg_integer(),
        optional("currentVersion") => String.t() | Atom.t(),
        optional("kafkaCluster") => kafka_cluster_description(),
        optional("kafkaClusterClientAuthentication") => kafka_cluster_client_authentication_description(),
        optional("kafkaClusterEncryptionInTransit") => kafka_cluster_encryption_in_transit_description(),
        optional("kafkaConnectVersion") => String.t() | Atom.t(),
        optional("logDelivery") => log_delivery_description(),
        optional("plugins") => list(plugin_description()),
        optional("serviceExecutionRoleArn") => String.t() | Atom.t(),
        optional("stateDescription") => state_description(),
        optional("workerConfiguration") => worker_configuration_description()
      }

  """
  @type describe_connector_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type forbidden_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_connector_request() :: %{
        optional("capacity") => capacity_update(),
        optional("connectorConfiguration") => map(),
        required("currentVersion") => String.t() | Atom.t()
      }

  """
  @type update_connector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration() :: %{
        "revision" => float(),
        "workerConfigurationArn" => String.t() | Atom.t()
      }

  """
  @type worker_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_summary() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "latestRevision" => worker_configuration_revision_summary(),
        "name" => String.t() | Atom.t(),
        "workerConfigurationArn" => String.t() | Atom.t(),
        "workerConfigurationState" => String.t() | Atom.t()
      }

  """
  @type worker_configuration_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy_description() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_setting() :: %{
        "capacity" => capacity_description()
      }

  """
  @type worker_setting() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_plugin_response() :: %{
        optional("customPluginArn") => String.t() | Atom.t(),
        optional("customPluginState") => String.t() | Atom.t()
      }

  """
  @type delete_custom_plugin_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_request() :: %{
        optional("connectorNamePrefix") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_connectors_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      capacity() :: %{
        "autoScaling" => auto_scaling(),
        "provisionedCapacity" => provisioned_capacity()
      }

  """
  @type capacity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling_update() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy_update(),
        "scaleOutPolicy" => scale_out_policy_update()
      }

  """
  @type auto_scaling_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster() :: %{
        "apacheKafkaCluster" => apache_kafka_cluster()
      }

  """
  @type kafka_cluster() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_operation_step() :: %{
        "stepState" => String.t() | Atom.t(),
        "stepType" => String.t() | Atom.t()
      }

  """
  @type connector_operation_step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_connector_operations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_connector_operations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_worker_configurations_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("workerConfigurations") => list(worker_configuration_summary())
      }

  """
  @type list_worker_configurations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_encryption_in_transit_description() :: %{
        "encryptionType" => String.t() | Atom.t()
      }

  """
  @type kafka_cluster_encryption_in_transit_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      provisioned_capacity_description() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_encryption_in_transit() :: %{
        "encryptionType" => String.t() | Atom.t()
      }

  """
  @type kafka_cluster_encryption_in_transit() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy_description() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc_description() :: %{
        "securityGroups" => list(String.t() | Atom.t()),
        "subnets" => list(String.t() | Atom.t())
      }

  """
  @type vpc_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_custom_plugins_response() :: %{
        optional("customPlugins") => list(custom_plugin_summary()),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_custom_plugins_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling_description() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy_description(),
        "scaleOutPolicy" => scale_out_policy_description()
      }

  """
  @type auto_scaling_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_delivery_description() :: %{
        "enabled" => boolean(),
        "logGroup" => String.t() | Atom.t()
      }

  """
  @type cloud_watch_logs_log_delivery_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      apache_kafka_cluster() :: %{
        "bootstrapServers" => String.t() | Atom.t(),
        "vpc" => vpc()
      }

  """
  @type apache_kafka_cluster() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy_update() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_delivery_description() :: %{
        "deliveryStream" => String.t() | Atom.t(),
        "enabled" => boolean()
      }

  """
  @type firehose_log_delivery_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      provisioned_capacity() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      state_description() :: %{
        "code" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t()
      }

  """
  @type state_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_connector_response() :: %{
        optional("connectorArn") => String.t() | Atom.t(),
        optional("connectorName") => String.t() | Atom.t(),
        optional("connectorState") => String.t() | Atom.t()
      }

  """
  @type create_connector_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      capacity_update() :: %{
        "autoScaling" => auto_scaling_update(),
        "provisionedCapacity" => provisioned_capacity_update()
      }

  """
  @type capacity_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_revision_description() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "propertiesFileContent" => String.t() | Atom.t(),
        "revision" => float()
      }

  """
  @type worker_configuration_revision_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucketArn" => String.t() | Atom.t(),
        "fileKey" => String.t() | Atom.t(),
        "objectVersion" => String.t() | Atom.t()
      }

  """
  @type s3_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      log_delivery_description() :: %{
        "workerLogDelivery" => worker_log_delivery_description()
      }

  """
  @type log_delivery_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_request() :: %{}

  """
  @type describe_connector_request() :: %{}

  @typedoc """

  ## Example:

      custom_plugin_description() :: %{
        "customPluginArn" => String.t() | Atom.t(),
        "revision" => float()
      }

  """
  @type custom_plugin_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling() :: %{
        "maxWorkerCount" => integer(),
        "mcuCount" => integer(),
        "minWorkerCount" => integer(),
        "scaleInPolicy" => scale_in_policy(),
        "scaleOutPolicy" => scale_out_policy()
      }

  """
  @type auto_scaling() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_plugin_request() :: %{}

  """
  @type delete_custom_plugin_request() :: %{}

  @typedoc """

  ## Example:

      provisioned_capacity_update() :: %{
        "mcuCount" => integer(),
        "workerCount" => integer()
      }

  """
  @type provisioned_capacity_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_operation_summary() :: %{
        "connectorOperationArn" => String.t() | Atom.t(),
        "connectorOperationState" => String.t() | Atom.t(),
        "connectorOperationType" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer()
      }

  """
  @type connector_operation_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_in_policy_update() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_in_policy_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_operation_response() :: %{
        "connectorArn" => String.t() | Atom.t(),
        "connectorOperationArn" => String.t() | Atom.t(),
        "connectorOperationState" => String.t() | Atom.t(),
        "connectorOperationType" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "errorInfo" => state_description(),
        "operationSteps" => list(connector_operation_step()),
        "originConnectorConfiguration" => map(),
        "originWorkerSetting" => worker_setting(),
        "targetConnectorConfiguration" => map(),
        "targetWorkerSetting" => worker_setting()
      }

  """
  @type describe_connector_operation_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_log_delivery() :: %{
        "bucket" => String.t() | Atom.t(),
        "enabled" => boolean(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type s3_log_delivery() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_configuration_revision_summary() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "revision" => float()
      }

  """
  @type worker_configuration_revision_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_connector_request() :: %{
        optional("connectorDescription") => String.t() | Atom.t(),
        optional("logDelivery") => log_delivery(),
        optional("tags") => map(),
        optional("workerConfiguration") => worker_configuration(),
        required("capacity") => capacity(),
        required("connectorConfiguration") => map(),
        required("connectorName") => String.t() | Atom.t(),
        required("kafkaCluster") => kafka_cluster(),
        required("kafkaClusterClientAuthentication") => kafka_cluster_client_authentication(),
        required("kafkaClusterEncryptionInTransit") => kafka_cluster_encryption_in_transit(),
        required("kafkaConnectVersion") => String.t() | Atom.t(),
        required("plugins") => list(plugin()),
        required("serviceExecutionRoleArn") => String.t() | Atom.t()
      }

  """
  @type create_connector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_configuration_response() :: %{
        optional("workerConfigurationArn") => String.t() | Atom.t(),
        optional("workerConfigurationState") => String.t() | Atom.t()
      }

  """
  @type delete_worker_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      worker_log_delivery() :: %{
        "cloudWatchLogs" => cloud_watch_logs_log_delivery(),
        "firehose" => firehose_log_delivery(),
        "s3" => s3_log_delivery()
      }

  """
  @type worker_log_delivery() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      plugin_description() :: %{
        "customPlugin" => custom_plugin_description()
      }

  """
  @type plugin_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_connector_response() :: %{
        optional("connectorArn") => String.t() | Atom.t(),
        optional("connectorState") => String.t() | Atom.t()
      }

  """
  @type delete_connector_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "capacity" => capacity_description(),
        "connectorArn" => String.t() | Atom.t(),
        "connectorDescription" => String.t() | Atom.t(),
        "connectorName" => String.t() | Atom.t(),
        "connectorState" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "currentVersion" => String.t() | Atom.t(),
        "kafkaCluster" => kafka_cluster_description(),
        "kafkaClusterClientAuthentication" => kafka_cluster_client_authentication_description(),
        "kafkaClusterEncryptionInTransit" => kafka_cluster_encryption_in_transit_description(),
        "kafkaConnectVersion" => String.t() | Atom.t(),
        "logDelivery" => log_delivery_description(),
        "plugins" => list(plugin_description()),
        "serviceExecutionRoleArn" => String.t() | Atom.t(),
        "workerConfiguration" => worker_configuration_description()
      }

  """
  @type connector_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_delivery() :: %{
        "enabled" => boolean(),
        "logGroup" => String.t() | Atom.t()
      }

  """
  @type cloud_watch_logs_log_delivery() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      worker_log_delivery_description() :: %{
        "cloudWatchLogs" => cloud_watch_logs_log_delivery_description(),
        "firehose" => firehose_log_delivery_description(),
        "s3" => s3_log_delivery_description()
      }

  """
  @type worker_log_delivery_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      log_delivery() :: %{
        "workerLogDelivery" => worker_log_delivery()
      }

  """
  @type log_delivery() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_connector_response() :: %{
        optional("connectorArn") => String.t() | Atom.t(),
        optional("connectorOperationArn") => String.t() | Atom.t(),
        optional("connectorState") => String.t() | Atom.t()
      }

  """
  @type update_connector_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_plugin_request() :: %{}

  """
  @type describe_custom_plugin_request() :: %{}

  @typedoc """

  ## Example:

      create_worker_configuration_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t(),
        required("propertiesFileContent") => String.t() | Atom.t()
      }

  """
  @type create_worker_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      kafka_cluster_description() :: %{
        "apacheKafkaCluster" => apache_kafka_cluster_description()
      }

  """
  @type kafka_cluster_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_custom_plugin_response() :: %{
        optional("customPluginArn") => String.t() | Atom.t(),
        optional("customPluginState") => String.t() | Atom.t(),
        optional("name") => String.t() | Atom.t(),
        optional("revision") => float()
      }

  """
  @type create_custom_plugin_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_location_description() :: %{
        "s3Location" => s3_location_description()
      }

  """
  @type custom_plugin_location_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin() :: %{
        "customPluginArn" => String.t() | Atom.t(),
        "revision" => float()
      }

  """
  @type custom_plugin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_request() :: %{
        optional("currentVersion") => String.t() | Atom.t()
      }

  """
  @type delete_connector_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_delivery() :: %{
        "deliveryStream" => String.t() | Atom.t(),
        "enabled" => boolean()
      }

  """
  @type firehose_log_delivery() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_worker_configuration_response() :: %{
        optional("creationTime") => non_neg_integer(),
        optional("latestRevision") => worker_configuration_revision_summary(),
        optional("name") => String.t() | Atom.t(),
        optional("workerConfigurationArn") => String.t() | Atom.t(),
        optional("workerConfigurationState") => String.t() | Atom.t()
      }

  """
  @type create_worker_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_configuration_request() :: %{}

  """
  @type delete_worker_configuration_request() :: %{}

  @typedoc """

  ## Example:

      s3_log_delivery_description() :: %{
        "bucket" => String.t() | Atom.t(),
        "enabled" => boolean(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type s3_log_delivery_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_custom_plugins_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefix") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_custom_plugins_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      apache_kafka_cluster_description() :: %{
        "bootstrapServers" => String.t() | Atom.t(),
        "vpc" => vpc_description()
      }

  """
  @type apache_kafka_cluster_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_location_description() :: %{
        "bucketArn" => String.t() | Atom.t(),
        "fileKey" => String.t() | Atom.t(),
        "objectVersion" => String.t() | Atom.t()
      }

  """
  @type s3_location_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_worker_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefix") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_worker_configurations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_location() :: %{
        "s3Location" => s3_location()
      }

  """
  @type custom_plugin_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_connector_operations_response() :: %{
        "connectorOperations" => list(connector_operation_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_connector_operations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scale_out_policy() :: %{
        "cpuUtilizationPercentage" => integer()
      }

  """
  @type scale_out_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_file_description() :: %{
        "fileMd5" => String.t() | Atom.t(),
        "fileSize" => float()
      }

  """
  @type custom_plugin_file_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_custom_plugin_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("contentType") => String.t() | Atom.t(),
        required("location") => custom_plugin_location(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type create_custom_plugin_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_connector_operation_request() :: %{}

  """
  @type describe_connector_operation_request() :: %{}

  @typedoc """

  ## Example:

      describe_worker_configuration_request() :: %{}

  """
  @type describe_worker_configuration_request() :: %{}

  @typedoc """

  ## Example:

      custom_plugin_revision_summary() :: %{
        "contentType" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "fileDescription" => custom_plugin_file_description(),
        "location" => custom_plugin_location_description(),
        "revision" => float()
      }

  """
  @type custom_plugin_revision_summary() :: %{String.t() | Atom.t() => any()}

  @type create_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_connector_operation_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_custom_plugin_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_worker_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_connector_operations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_connectors_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_custom_plugins_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_worker_configurations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_connector_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2021-09-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kafkaconnect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "KafkaConnect",
      signature_version: "v4",
      signing_name: "kafkaconnect",
      target_prefix: nil
    }
  end

  @doc """
  Creates a connector using the specified properties.
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, create_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connector_errors()}
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/v1/connectors"
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
  Creates a custom plugin using the specified properties.
  """
  @spec create_custom_plugin(map(), create_custom_plugin_request(), list()) ::
          {:ok, create_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_plugin_errors()}
  def create_custom_plugin(%Client{} = client, input, options \\ []) do
    url_path = "/v1/custom-plugins"
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
  Creates a worker configuration using the specified properties.
  """
  @spec create_worker_configuration(map(), create_worker_configuration_request(), list()) ::
          {:ok, create_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_worker_configuration_errors()}
  def create_worker_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/worker-configurations"
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
  Deletes the specified connector.
  """
  @spec delete_connector(map(), String.t() | Atom.t(), delete_connector_request(), list()) ::
          {:ok, delete_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connector_errors()}
  def delete_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
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
  Deletes a custom plugin.
  """
  @spec delete_custom_plugin(map(), String.t() | Atom.t(), delete_custom_plugin_request(), list()) ::
          {:ok, delete_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_plugin_errors()}
  def delete_custom_plugin(%Client{} = client, custom_plugin_arn, input, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"
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
  Deletes the specified worker configuration.
  """
  @spec delete_worker_configuration(
          map(),
          String.t() | Atom.t(),
          delete_worker_configuration_request(),
          list()
        ) ::
          {:ok, delete_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_worker_configuration_errors()}
  def delete_worker_configuration(
        %Client{} = client,
        worker_configuration_arn,
        input,
        options \\ []
      ) do
    url_path = "/v1/worker-configurations/#{AWS.Util.encode_uri(worker_configuration_arn)}"
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
  Returns summary information about the connector.
  """
  @spec describe_connector(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connector_errors()}
  def describe_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified connector's operations.
  """
  @spec describe_connector_operation(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_connector_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connector_operation_errors()}
  def describe_connector_operation(%Client{} = client, connector_operation_arn, options \\ []) do
    url_path = "/v1/connectorOperations/#{AWS.Util.encode_uri(connector_operation_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A summary description of the custom plugin.
  """
  @spec describe_custom_plugin(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_custom_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_plugin_errors()}
  def describe_custom_plugin(%Client{} = client, custom_plugin_arn, options \\ []) do
    url_path = "/v1/custom-plugins/#{AWS.Util.encode_uri(custom_plugin_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a worker configuration.
  """
  @spec describe_worker_configuration(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_worker_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_worker_configuration_errors()}
  def describe_worker_configuration(%Client{} = client, worker_configuration_arn, options \\ []) do
    url_path = "/v1/worker-configurations/#{AWS.Util.encode_uri(worker_configuration_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about a connector's operation(s).
  """
  @spec list_connector_operations(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_connector_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connector_operations_errors()}
  def list_connector_operations(
        %Client{} = client,
        connector_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}/operations"
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
  Returns a list of all the connectors in this account and Region.

  The list is limited to
  connectors whose name starts with the specified prefix. The response also
  includes a
  description of each of the listed connectors.
  """
  @spec list_connectors(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connectors_errors()}
  def list_connectors(
        %Client{} = client,
        connector_name_prefix \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/connectors"
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
      if !is_nil(connector_name_prefix) do
        [{"connectorNamePrefix", connector_name_prefix} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the custom plugins in this account and Region.
  """
  @spec list_custom_plugins(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_custom_plugins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_plugins_errors()}
  def list_custom_plugins(
        %Client{} = client,
        max_results \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/custom-plugins"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix) do
        [{"namePrefix", name_prefix} | query_params]
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
  Lists all the tags attached to the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the worker configurations in this account and Region.
  """
  @spec list_worker_configurations(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_worker_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_worker_configurations_errors()}
  def list_worker_configurations(
        %Client{} = client,
        max_results \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/worker-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix) do
        [{"namePrefix", name_prefix} | query_params]
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
  Attaches tags to the specified resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
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
      200
    )
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Updates the specified connector.
  """
  @spec update_connector(map(), String.t() | Atom.t(), update_connector_request(), list()) ::
          {:ok, update_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connector_errors()}
  def update_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/v1/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"currentVersion", "currentVersion"}
      ]
      |> Request.build_params(input)

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
