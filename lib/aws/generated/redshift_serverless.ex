# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftServerless do
  @moduledoc """
  This is an interface reference for Amazon Redshift Serverless.

  It contains documentation for one of the programming or command line interfaces
  you can use to manage Amazon Redshift Serverless.

  Amazon Redshift Serverless automatically provisions data warehouse capacity and
  intelligently scales the
  underlying resources based on workload demands. Amazon Redshift Serverless
  adjusts capacity in seconds to deliver consistently high
  performance and simplified operations for even the most demanding and volatile
  workloads. Amazon Redshift Serverless lets you
  focus on using your data to acquire new insights for your business and
  customers.

  To learn more about Amazon Redshift Serverless, see [What is Amazon Redshift Serverless?](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_namespace_response() :: %{
        "namespace" => namespace()
      }
      
  """
  @type delete_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_restore_status() :: %{
        "message" => [String.t()],
        "namespaceName" => [String.t()],
        "newTableName" => [String.t()],
        "progressInMegaBytes" => [float()],
        "recoveryPointId" => [String.t()],
        "requestTime" => [non_neg_integer()],
        "snapshotName" => [String.t()],
        "sourceDatabaseName" => [String.t()],
        "sourceSchemaName" => [String.t()],
        "sourceTableName" => [String.t()],
        "status" => [String.t()],
        "tableRestoreRequestId" => [String.t()],
        "targetDatabaseName" => [String.t()],
        "targetSchemaName" => [String.t()],
        "totalDataInMegaBytes" => [float()],
        "workgroupName" => [String.t()]
      }
      
  """
  @type table_restore_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_track_response() :: %{
        "track" => serverless_track()
      }
      
  """
  @type get_track_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_access_request() :: %{
        optional("vpcSecurityGroupIds") => list(String.t()()),
        required("endpointName") => [String.t()]
      }
      
  """
  @type update_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_request() :: %{
        required("snapshotName") => [String.t()]
      }
      
  """
  @type delete_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_snapshot_copy_configuration_request() :: %{
        required("snapshotCopyConfigurationId") => [String.t()]
      }
      
  """
  @type delete_snapshot_copy_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_limit_response() :: %{
        "usageLimit" => usage_limit()
      }
      
  """
  @type get_usage_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_association() :: %{
        "namespaceName" => String.t(),
        "scheduledActionName" => String.t()
      }
      
  """
  @type scheduled_action_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_restore_status_request() :: %{
        required("tableRestoreRequestId") => [String.t()]
      }
      
  """
  @type get_table_restore_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_usage_limit_request() :: %{
        optional("amount") => [float()],
        optional("breachAction") => String.t(),
        required("usageLimitId") => [String.t()]
      }
      
  """
  @type update_usage_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_response() :: %{
        "scheduledAction" => scheduled_action_response()
      }
      
  """
  @type delete_scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_custom_domain_association_request() :: %{
        required("customDomainName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type get_custom_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_request() :: %{
        optional("retentionPeriod") => [integer()],
        required("snapshotName") => [String.t()]
      }
      
  """
  @type update_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_namespaces_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_namespaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_usage_limit_request() :: %{
        required("usageLimitId") => [String.t()]
      }
      
  """
  @type delete_usage_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ipv6_cidr_block_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type ipv6_cidr_block_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_workgroups_response() :: %{
        "managedWorkgroups" => list(managed_workgroup_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_managed_workgroups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_request() :: %{
        optional("retentionPeriod") => [integer()],
        optional("tags") => list(tag()()),
        required("namespaceName") => [String.t()],
        required("snapshotName") => [String.t()]
      }
      
  """
  @type create_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_copy_configuration_response() :: %{
        "snapshotCopyConfiguration" => snapshot_copy_configuration()
      }
      
  """
  @type delete_snapshot_copy_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_parameter() :: %{
        "parameterKey" => String.t(),
        "parameterValue" => String.t()
      }
      
  """
  @type config_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_recovery_point_response() :: %{
        "tableRestoreStatus" => table_restore_status()
      }
      
  """
  @type restore_table_from_recovery_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_snapshot_request() :: %{
        optional("adminPasswordSecretKmsKeyId") => String.t(),
        optional("manageAdminPassword") => [boolean()],
        optional("ownerAccount") => [String.t()],
        optional("snapshotArn") => [String.t()],
        optional("snapshotName") => [String.t()],
        required("namespaceName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type restore_from_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_response() :: %{
        "snapshot" => snapshot()
      }
      
  """
  @type create_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "availabilityZone" => [String.t()],
        "ipv6Address" => [String.t()],
        "networkInterfaceId" => [String.t()],
        "privateIpAddress" => [String.t()],
        "subnetId" => [String.t()]
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_snapshot_response() :: %{
        "snapshot" => snapshot()
      }
      
  """
  @type get_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_domain_association_request() :: %{
        required("customDomainName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type delete_custom_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workgroup_response() :: %{
        "workgroup" => workgroup()
      }
      
  """
  @type delete_workgroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_snapshot_response() :: %{
        "tableRestoreStatus" => table_restore_status()
      }
      
  """
  @type restore_table_from_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_snapshot_response() :: %{
        "namespace" => namespace(),
        "ownerAccount" => [String.t()],
        "snapshotName" => [String.t()]
      }
      
  """
  @type restore_from_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "resourcePolicy" => resource_policy()
      }
      
  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workgroup_request() :: %{
        required("workgroupName") => String.t()
      }
      
  """
  @type delete_workgroup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_limit_request() :: %{
        optional("breachAction") => String.t(),
        optional("period") => String.t(),
        required("amount") => [float()],
        required("resourceArn") => [String.t()],
        required("usageType") => String.t()
      }
      
  """
  @type create_usage_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_recovery_point_response() :: %{
        "namespace" => namespace(),
        "recoveryPointId" => [String.t()]
      }
      
  """
  @type restore_from_recovery_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_response() :: %{
        "endTime" => [non_neg_integer()],
        "namespaceName" => String.t(),
        "nextInvocations" => list([non_neg_integer()]()),
        "roleArn" => String.t(),
        "schedule" => list(),
        "scheduledActionDescription" => [String.t()],
        "scheduledActionName" => String.t(),
        "scheduledActionUuid" => [String.t()],
        "startTime" => [non_neg_integer()],
        "state" => String.t(),
        "targetAction" => list()
      }
      
  """
  @type scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_restore_status_response() :: %{
        "nextToken" => String.t(),
        "tableRestoreStatuses" => list(table_restore_status()())
      }
      
  """
  @type list_table_restore_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_usage_limit_response() :: %{
        "usageLimit" => usage_limit()
      }
      
  """
  @type update_usage_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_access_request() :: %{
        optional("ownerAccount") => String.t(),
        optional("vpcSecurityGroupIds") => list(String.t()()),
        required("endpointName") => [String.t()],
        required("subnetIds") => list(String.t()()),
        required("workgroupName") => [String.t()]
      }
      
  """
  @type create_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_custom_domain_association_request() :: %{
        required("customDomainCertificateArn") => String.t(),
        required("customDomainName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type update_custom_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type invalid_pagination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scheduled_action_response() :: %{
        "scheduledAction" => scheduled_action_response()
      }
      
  """
  @type update_scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_track_request() :: %{
        required("trackName") => String.t()
      }
      
  """
  @type get_track_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_recovery_point_request() :: %{
        optional("activateCaseSensitiveIdentifier") => [boolean()],
        optional("sourceSchemaName") => [String.t()],
        optional("targetDatabaseName") => [String.t()],
        optional("targetSchemaName") => [String.t()],
        required("namespaceName") => [String.t()],
        required("newTableName") => [String.t()],
        required("recoveryPointId") => [String.t()],
        required("sourceDatabaseName") => [String.t()],
        required("sourceTableName") => [String.t()],
        required("workgroupName") => [String.t()]
      }
      
  """
  @type restore_table_from_recovery_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recovery_point_response() :: %{
        "recoveryPoint" => recovery_point()
      }
      
  """
  @type get_recovery_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_capacity_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type insufficient_capacity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_action_response() :: %{
        "scheduledAction" => scheduled_action_response()
      }
      
  """
  @type create_scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_response() :: %{
        "namespace" => namespace()
      }
      
  """
  @type get_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recovery_point_request() :: %{
        required("recoveryPointId") => [String.t()]
      }
      
  """
  @type get_recovery_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_track() :: %{
        "trackName" => String.t(),
        "updateTargets" => list(update_target()()),
        "workgroupVersion" => [String.t()]
      }
      
  """
  @type serverless_track() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_actions_request() :: %{
        optional("maxResults") => [integer()],
        optional("namespaceName") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_scheduled_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workgroup_request() :: %{
        required("workgroupName") => String.t()
      }
      
  """
  @type get_workgroup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_limit_request() :: %{
        required("usageLimitId") => [String.t()]
      }
      
  """
  @type get_usage_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_endpoint_access_request() :: %{
        required("endpointName") => [String.t()]
      }
      
  """
  @type get_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_namespace_request() :: %{
        optional("adminPasswordSecretKmsKeyId") => String.t(),
        optional("adminUserPassword") => String.t(),
        optional("adminUsername") => String.t(),
        optional("dbName") => [String.t()],
        optional("defaultIamRoleArn") => [String.t()],
        optional("iamRoles") => list(String.t()()),
        optional("kmsKeyId") => [String.t()],
        optional("logExports") => list(String.t()()),
        optional("manageAdminPassword") => [boolean()],
        optional("redshiftIdcApplicationArn") => String.t(),
        optional("tags") => list(tag()()),
        required("namespaceName") => String.t()
      }
      
  """
  @type create_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tracks_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_tracks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scheduled_action_request() :: %{
        optional("enabled") => [boolean()],
        optional("endTime") => [non_neg_integer()],
        optional("roleArn") => String.t(),
        optional("schedule") => list(),
        optional("scheduledActionDescription") => [String.t()],
        optional("startTime") => [non_neg_integer()],
        optional("targetAction") => list(),
        required("scheduledActionName") => String.t()
      }
      
  """
  @type update_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoint_access_response() :: %{
        "endpoints" => list(endpoint_access()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceName" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workgroup() :: %{
        "baseCapacity" => [integer()],
        "configParameters" => list(config_parameter()()),
        "creationDate" => [non_neg_integer()],
        "crossAccountVpcs" => list([String.t()]()),
        "customDomainCertificateArn" => String.t(),
        "customDomainCertificateExpiryTime" => [non_neg_integer()],
        "customDomainName" => String.t(),
        "endpoint" => endpoint(),
        "enhancedVpcRouting" => [boolean()],
        "ipAddressType" => String.t(),
        "maxCapacity" => [integer()],
        "namespaceName" => [String.t()],
        "patchVersion" => [String.t()],
        "pendingTrackName" => String.t(),
        "port" => [integer()],
        "pricePerformanceTarget" => performance_target(),
        "publiclyAccessible" => [boolean()],
        "securityGroupIds" => list(String.t()()),
        "status" => String.t(),
        "subnetIds" => list(String.t()()),
        "trackName" => String.t(),
        "workgroupArn" => [String.t()],
        "workgroupId" => [String.t()],
        "workgroupName" => String.t(),
        "workgroupVersion" => [String.t()]
      }
      
  """
  @type workgroup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_usage_limits_response() :: %{
        "nextToken" => String.t(),
        "usageLimits" => list(usage_limit()())
      }
      
  """
  @type list_usage_limits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_snapshots_response() :: %{
        "nextToken" => [String.t()],
        "snapshots" => list(snapshot()())
      }
      
  """
  @type list_snapshots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      convert_recovery_point_to_snapshot_request() :: %{
        optional("retentionPeriod") => [integer()],
        optional("tags") => list(tag()()),
        required("recoveryPointId") => [String.t()],
        required("snapshotName") => [String.t()]
      }
      
  """
  @type convert_recovery_point_to_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_workgroups_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("sourceArn") => String.t()
      }
      
  """
  @type list_managed_workgroups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_configuration() :: %{
        "destinationKmsKeyId" => String.t(),
        "destinationRegion" => [String.t()],
        "namespaceName" => String.t(),
        "snapshotCopyConfigurationArn" => [String.t()],
        "snapshotCopyConfigurationId" => [String.t()],
        "snapshotRetentionPeriod" => [integer()]
      }
      
  """
  @type snapshot_copy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_response() :: %{
        "nextToken" => [String.t()],
        "recoveryPoints" => list(recovery_point()())
      }
      
  """
  @type list_recovery_points_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_actions_response() :: %{
        "nextToken" => String.t(),
        "scheduledActions" => list(scheduled_action_association()())
      }
      
  """
  @type list_scheduled_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_restore_status_response() :: %{
        "tableRestoreStatus" => table_restore_status()
      }
      
  """
  @type get_table_restore_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_access_response() :: %{
        "endpoint" => endpoint_access()
      }
      
  """
  @type delete_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_snapshot_request() :: %{
        optional("activateCaseSensitiveIdentifier") => [boolean()],
        optional("sourceSchemaName") => [String.t()],
        optional("targetDatabaseName") => [String.t()],
        optional("targetSchemaName") => [String.t()],
        required("namespaceName") => [String.t()],
        required("newTableName") => [String.t()],
        required("snapshotName") => [String.t()],
        required("sourceDatabaseName") => [String.t()],
        required("sourceTableName") => [String.t()],
        required("workgroupName") => [String.t()]
      }
      
  """
  @type restore_table_from_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association() :: %{
        "customDomainCertificateArn" => String.t(),
        "customDomainCertificateExpiryTime" => [non_neg_integer()],
        "customDomainName" => String.t(),
        "workgroupName" => String.t()
      }
      
  """
  @type association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_schedule_action_parameters() :: %{
        "namespaceName" => String.t(),
        "retentionPeriod" => [integer()],
        "snapshotNamePrefix" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type create_snapshot_schedule_action_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_restore_status_request() :: %{
        optional("maxResults") => [integer()],
        optional("namespaceName") => [String.t()],
        optional("nextToken") => String.t(),
        optional("workgroupName") => [String.t()]
      }
      
  """
  @type list_table_restore_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_access_request() :: %{
        required("endpointName") => [String.t()]
      }
      
  """
  @type delete_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint() :: %{
        "networkInterfaces" => list(network_interface()()),
        "vpcEndpointId" => [String.t()],
        "vpcId" => [String.t()]
      }
      
  """
  @type vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_copy_configuration_request() :: %{
        optional("destinationKmsKeyId") => String.t(),
        optional("snapshotRetentionPeriod") => [integer()],
        required("destinationRegion") => [String.t()],
        required("namespaceName") => String.t()
      }
      
  """
  @type create_snapshot_copy_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_snapshots_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("maxResults") => [integer()],
        optional("namespaceArn") => [String.t()],
        optional("namespaceName") => [String.t()],
        optional("nextToken") => [String.t()],
        optional("ownerAccount") => [String.t()],
        optional("startTime") => [non_neg_integer()]
      }
      
  """
  @type list_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("resourceArn") => [String.t()]
      }
      
  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workgroup_response() :: %{
        "workgroup" => workgroup()
      }
      
  """
  @type create_workgroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_action_request() :: %{
        optional("enabled") => [boolean()],
        optional("endTime") => [non_neg_integer()],
        optional("scheduledActionDescription") => [String.t()],
        optional("startTime") => [non_neg_integer()],
        required("namespaceName") => String.t(),
        required("roleArn") => String.t(),
        required("schedule") => list(),
        required("scheduledActionName") => String.t(),
        required("targetAction") => list()
      }
      
  """
  @type create_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workgroup_request() :: %{
        optional("baseCapacity") => [integer()],
        optional("configParameters") => list(config_parameter()()),
        optional("enhancedVpcRouting") => [boolean()],
        optional("ipAddressType") => String.t(),
        optional("maxCapacity") => [integer()],
        optional("port") => [integer()],
        optional("pricePerformanceTarget") => performance_target(),
        optional("publiclyAccessible") => [boolean()],
        optional("securityGroupIds") => list(String.t()()),
        optional("subnetIds") => list(String.t()()),
        optional("tags") => list(tag()()),
        optional("trackName") => String.t(),
        required("namespaceName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type create_workgroup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      convert_recovery_point_to_snapshot_response() :: %{
        "snapshot" => snapshot()
      }
      
  """
  @type convert_recovery_point_to_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_recovery_point_request() :: %{
        required("namespaceName") => String.t(),
        required("recoveryPointId") => [String.t()],
        required("workgroupName") => String.t()
      }
      
  """
  @type restore_from_recovery_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_access_response() :: %{
        "endpoint" => endpoint_access()
      }
      
  """
  @type update_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_usage_limits_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("resourceArn") => [String.t()],
        optional("usageType") => String.t()
      }
      
  """
  @type list_usage_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_domain_association_response() :: %{
        "customDomainCertificateArn" => String.t(),
        "customDomainCertificateExpiryTime" => [non_neg_integer()],
        "customDomainName" => String.t(),
        "workgroupName" => String.t()
      }
      
  """
  @type create_custom_domain_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "address" => [String.t()],
        "port" => [integer()],
        "vpcEndpoints" => list(vpc_endpoint()())
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_custom_domain_association_response() :: %{
        "customDomainCertificateArn" => String.t(),
        "customDomainCertificateExpiryTime" => [non_neg_integer()],
        "customDomainName" => String.t(),
        "workgroupName" => String.t()
      }
      
  """
  @type update_custom_domain_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy() :: %{
        "policy" => [String.t()],
        "resourceArn" => [String.t()]
      }
      
  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scheduled_action_response() :: %{
        "scheduledAction" => scheduled_action_response()
      }
      
  """
  @type get_scheduled_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_domain_association_response() :: %{}
      
  """
  @type delete_custom_domain_association_response() :: %{}

  @typedoc """

  ## Example:
      
      get_credentials_request() :: %{
        optional("customDomainName") => String.t(),
        optional("dbName") => String.t(),
        optional("durationSeconds") => [integer()],
        optional("workgroupName") => String.t()
      }
      
  """
  @type get_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "accountsWithProvisionedRestoreAccess" => list([String.t()]()),
        "accountsWithRestoreAccess" => list([String.t()]()),
        "actualIncrementalBackupSizeInMegaBytes" => [float()],
        "adminPasswordSecretArn" => [String.t()],
        "adminPasswordSecretKmsKeyId" => String.t(),
        "adminUsername" => [String.t()],
        "backupProgressInMegaBytes" => [float()],
        "currentBackupRateInMegaBytesPerSecond" => [float()],
        "elapsedTimeInSeconds" => [float()],
        "estimatedSecondsToCompletion" => [float()],
        "kmsKeyId" => String.t(),
        "namespaceArn" => [String.t()],
        "namespaceName" => [String.t()],
        "ownerAccount" => [String.t()],
        "snapshotArn" => [String.t()],
        "snapshotCreateTime" => [non_neg_integer()],
        "snapshotName" => [String.t()],
        "snapshotRemainingDays" => [integer()],
        "snapshotRetentionPeriod" => [integer()],
        "snapshotRetentionStartTime" => [non_neg_integer()],
        "status" => String.t(),
        "totalBackupSizeInMegaBytes" => [float()]
      }
      
  """
  @type snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_domain_associations_response() :: %{
        "associations" => list(association()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_custom_domain_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_workgroup_list_item() :: %{
        "creationDate" => [non_neg_integer()],
        "managedWorkgroupId" => [String.t()],
        "managedWorkgroupName" => String.t(),
        "sourceArn" => String.t(),
        "status" => list(any())
      }
      
  """
  @type managed_workgroup_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        required("policy") => [String.t()],
        required("resourceArn") => [String.t()]
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_copy_configuration_response() :: %{
        "snapshotCopyConfiguration" => snapshot_copy_configuration()
      }
      
  """
  @type create_snapshot_copy_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_domain_association_response() :: %{
        "customDomainCertificateArn" => String.t(),
        "customDomainCertificateExpiryTime" => [non_neg_integer()],
        "customDomainName" => String.t(),
        "workgroupName" => String.t()
      }
      
  """
  @type get_custom_domain_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recovery_points_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("maxResults") => [integer()],
        optional("namespaceArn") => [String.t()],
        optional("namespaceName") => String.t(),
        optional("nextToken") => [String.t()],
        optional("startTime") => [non_neg_integer()]
      }
      
  """
  @type list_recovery_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_domain_associations_request() :: %{
        optional("customDomainCertificateArn") => String.t(),
        optional("customDomainName") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_custom_domain_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_workgroup_response() :: %{
        "workgroup" => workgroup()
      }
      
  """
  @type update_workgroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_namespace_response() :: %{
        "namespace" => namespace()
      }
      
  """
  @type create_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_limit() :: %{
        "amount" => [float()],
        "breachAction" => String.t(),
        "period" => String.t(),
        "resourceArn" => [String.t()],
        "usageLimitArn" => [String.t()],
        "usageLimitId" => [String.t()],
        "usageType" => String.t()
      }
      
  """
  @type usage_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_snapshot_request() :: %{
        optional("ownerAccount") => [String.t()],
        optional("snapshotArn") => [String.t()],
        optional("snapshotName") => [String.t()]
      }
      
  """
  @type get_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_credentials_response() :: %{
        "dbPassword" => String.t(),
        "dbUser" => String.t(),
        "expiration" => [non_neg_integer()],
        "nextRefreshTime" => [non_neg_integer()]
      }
      
  """
  @type get_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scheduled_action_request() :: %{
        required("scheduledActionName") => String.t()
      }
      
  """
  @type get_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_target() :: %{
        "trackName" => String.t(),
        "workgroupVersion" => [String.t()]
      }
      
  """
  @type update_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_domain_association_request() :: %{
        required("customDomainCertificateArn") => String.t(),
        required("customDomainName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type create_custom_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_namespaces_response() :: %{
        "namespaces" => list(namespace()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_namespaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_endpoint_access_response() :: %{
        "endpoint" => endpoint_access()
      }
      
  """
  @type get_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_request() :: %{
        optional("finalSnapshotName") => [String.t()],
        optional("finalSnapshotRetentionPeriod") => [integer()],
        required("namespaceName") => String.t()
      }
      
  """
  @type delete_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_namespace_request() :: %{
        optional("adminPasswordSecretKmsKeyId") => String.t(),
        optional("adminUserPassword") => String.t(),
        optional("adminUsername") => String.t(),
        optional("defaultIamRoleArn") => [String.t()],
        optional("iamRoles") => list(String.t()()),
        optional("kmsKeyId") => [String.t()],
        optional("logExports") => list(String.t()()),
        optional("manageAdminPassword") => [boolean()],
        required("namespaceName") => String.t()
      }
      
  """
  @type update_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_copy_configuration_response() :: %{
        "snapshotCopyConfiguration" => snapshot_copy_configuration()
      }
      
  """
  @type update_snapshot_copy_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_snapshot_copy_configurations_request() :: %{
        optional("maxResults") => [integer()],
        optional("namespaceName") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_snapshot_copy_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_access_response() :: %{
        "endpoint" => endpoint_access()
      }
      
  """
  @type create_endpoint_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_snapshot_copy_configurations_response() :: %{
        "nextToken" => String.t(),
        "snapshotCopyConfigurations" => list(snapshot_copy_configuration()())
      }
      
  """
  @type list_snapshot_copy_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_response() :: %{
        "snapshot" => snapshot()
      }
      
  """
  @type update_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "resourcePolicy" => resource_policy()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_usage_limit_response() :: %{
        "usageLimit" => usage_limit()
      }
      
  """
  @type delete_usage_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_request() :: %{
        required("scheduledActionName") => String.t()
      }
      
  """
  @type delete_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workgroup_request() :: %{
        optional("baseCapacity") => [integer()],
        optional("configParameters") => list(config_parameter()()),
        optional("enhancedVpcRouting") => [boolean()],
        optional("ipAddressType") => String.t(),
        optional("maxCapacity") => [integer()],
        optional("port") => [integer()],
        optional("pricePerformanceTarget") => performance_target(),
        optional("publiclyAccessible") => [boolean()],
        optional("securityGroupIds") => list(String.t()()),
        optional("subnetIds") => list(String.t()()),
        optional("trackName") => String.t(),
        required("workgroupName") => String.t()
      }
      
  """
  @type update_workgroup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("resourceArn") => [String.t()]
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_namespace_response() :: %{
        "namespace" => namespace()
      }
      
  """
  @type update_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_access() :: %{
        "address" => [String.t()],
        "endpointArn" => [String.t()],
        "endpointCreateTime" => [non_neg_integer()],
        "endpointName" => [String.t()],
        "endpointStatus" => [String.t()],
        "port" => [integer()],
        "subnetIds" => list(String.t()()),
        "vpcEndpoint" => vpc_endpoint(),
        "vpcSecurityGroups" => list(vpc_security_group_membership()()),
        "workgroupName" => [String.t()]
      }
      
  """
  @type endpoint_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_limit_response() :: %{
        "usageLimit" => usage_limit()
      }
      
  """
  @type create_usage_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_target() :: %{
        "level" => [integer()],
        "status" => String.t()
      }
      
  """
  @type performance_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tracks_response() :: %{
        "nextToken" => String.t(),
        "tracks" => list(serverless_track()())
      }
      
  """
  @type list_tracks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace() :: %{
        "adminPasswordSecretArn" => [String.t()],
        "adminPasswordSecretKmsKeyId" => String.t(),
        "adminUsername" => String.t(),
        "creationDate" => [non_neg_integer()],
        "dbName" => [String.t()],
        "defaultIamRoleArn" => [String.t()],
        "iamRoles" => list(String.t()()),
        "kmsKeyId" => [String.t()],
        "logExports" => list(String.t()()),
        "namespaceArn" => [String.t()],
        "namespaceId" => [String.t()],
        "namespaceName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type namespace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_security_group_membership() :: %{
        "status" => [String.t()],
        "vpcSecurityGroupId" => String.t()
      }
      
  """
  @type vpc_security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoint_access_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("ownerAccount") => String.t(),
        optional("vpcId") => [String.t()],
        optional("workgroupName") => [String.t()]
      }
      
  """
  @type list_endpoint_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_copy_configuration_request() :: %{
        optional("snapshotRetentionPeriod") => [integer()],
        required("snapshotCopyConfigurationId") => [String.t()]
      }
      
  """
  @type update_snapshot_copy_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workgroups_response() :: %{
        "nextToken" => [String.t()],
        "workgroups" => list(workgroup()())
      }
      
  """
  @type list_workgroups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workgroup_response() :: %{
        "workgroup" => workgroup()
      }
      
  """
  @type get_workgroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workgroups_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("ownerAccount") => String.t()
      }
      
  """
  @type list_workgroups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => [String.t()],
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_request() :: %{
        required("namespaceName") => String.t()
      }
      
  """
  @type get_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_point() :: %{
        "namespaceArn" => [String.t()],
        "namespaceName" => String.t(),
        "recoveryPointCreateTime" => [non_neg_integer()],
        "recoveryPointId" => [String.t()],
        "totalSizeInMegaBytes" => [float()],
        "workgroupName" => String.t()
      }
      
  """
  @type recovery_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_response() :: %{
        "snapshot" => snapshot()
      }
      
  """
  @type delete_snapshot_response() :: %{String.t() => any()}

  @type convert_recovery_point_to_snapshot_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_custom_domain_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_endpoint_access_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_namespace_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_scheduled_action_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_snapshot_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_snapshot_copy_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_usage_limit_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workgroup_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | insufficient_capacity_exception()
          | ipv6_cidr_block_not_found_exception()

  @type delete_custom_domain_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_endpoint_access_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_namespace_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_scheduled_action_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_snapshot_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_snapshot_copy_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_usage_limit_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workgroup_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_credentials_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_custom_domain_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_endpoint_access_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_namespace_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_recovery_point_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_resource_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_scheduled_action_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_snapshot_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_table_restore_status_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_track_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_usage_limit_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_workgroup_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_custom_domain_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_pagination_exception()

  @type list_endpoint_access_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_managed_workgroups_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_namespaces_errors() :: validation_exception() | internal_server_exception()

  @type list_recovery_points_errors() :: validation_exception() | internal_server_exception()

  @type list_scheduled_actions_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_pagination_exception()

  @type list_snapshot_copy_configurations_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_pagination_exception()

  @type list_snapshots_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_table_restore_status_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_pagination_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tracks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_pagination_exception()

  @type list_usage_limits_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_pagination_exception()

  @type list_workgroups_errors() :: validation_exception() | internal_server_exception()

  @type put_resource_policy_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_from_recovery_point_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_from_snapshot_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_table_from_recovery_point_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_table_from_snapshot_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_custom_domain_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_endpoint_access_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_namespace_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_scheduled_action_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_snapshot_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_snapshot_copy_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_usage_limit_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workgroup_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | insufficient_capacity_exception()
          | ipv6_cidr_block_not_found_exception()

  def metadata do
    %{
      api_version: "2021-04-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "redshift-serverless",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Redshift Serverless",
      signature_version: "v4",
      signing_name: "redshift-serverless",
      target_prefix: "RedshiftServerless"
    }
  end

  @doc """
  Converts a recovery point to a snapshot.

  For more information about recovery points and snapshots,
  see [Working with snapshots and recovery points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).
  """
  @spec convert_recovery_point_to_snapshot(
          map(),
          convert_recovery_point_to_snapshot_request(),
          list()
        ) ::
          {:ok, convert_recovery_point_to_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, convert_recovery_point_to_snapshot_errors()}
  def convert_recovery_point_to_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConvertRecoveryPointToSnapshot", input, options)
  end

  @doc """
  Creates a custom domain association for Amazon Redshift Serverless.
  """
  @spec create_custom_domain_association(
          map(),
          create_custom_domain_association_request(),
          list()
        ) ::
          {:ok, create_custom_domain_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_domain_association_errors()}
  def create_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomDomainAssociation", input, options)
  end

  @doc """
  Creates an Amazon Redshift Serverless managed VPC endpoint.
  """
  @spec create_endpoint_access(map(), create_endpoint_access_request(), list()) ::
          {:ok, create_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_access_errors()}
  def create_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpointAccess", input, options)
  end

  @doc """
  Creates a namespace in Amazon Redshift Serverless.
  """
  @spec create_namespace(map(), create_namespace_request(), list()) ::
          {:ok, create_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_namespace_errors()}
  def create_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNamespace", input, options)
  end

  @doc """
  Creates a scheduled action.

  A scheduled action contains a schedule and an Amazon Redshift API action.
  For example, you can create a schedule of when to run the `CreateSnapshot` API
  operation.
  """
  @spec create_scheduled_action(map(), create_scheduled_action_request(), list()) ::
          {:ok, create_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_scheduled_action_errors()}
  def create_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScheduledAction", input, options)
  end

  @doc """
  Creates a snapshot of all databases in a namespace.

  For more information about snapshots, see
  [
  Working with snapshots and recovery
  points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).
  """
  @spec create_snapshot(map(), create_snapshot_request(), list()) ::
          {:ok, create_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Creates a snapshot copy configuration that lets you copy snapshots to another
  Amazon Web Services Region.
  """
  @spec create_snapshot_copy_configuration(
          map(),
          create_snapshot_copy_configuration_request(),
          list()
        ) ::
          {:ok, create_snapshot_copy_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_snapshot_copy_configuration_errors()}
  def create_snapshot_copy_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshotCopyConfiguration", input, options)
  end

  @doc """
  Creates a usage limit for a specified Amazon Redshift Serverless usage type.

  The usage limit is identified by the returned usage limit identifier.
  """
  @spec create_usage_limit(map(), create_usage_limit_request(), list()) ::
          {:ok, create_usage_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_usage_limit_errors()}
  def create_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUsageLimit", input, options)
  end

  @doc """
  Creates an workgroup in Amazon Redshift Serverless.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a workgroup is in an account with
  VPC BPA
  turned on, the following capabilities are blocked:

    *
  Creating a public access workgroup

    *
  Modifying a private workgroup to public

    *
  Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is
  public

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.
  """
  @spec create_workgroup(map(), create_workgroup_request(), list()) ::
          {:ok, create_workgroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workgroup_errors()}
  def create_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkgroup", input, options)
  end

  @doc """
  Deletes a custom domain association for Amazon Redshift Serverless.
  """
  @spec delete_custom_domain_association(
          map(),
          delete_custom_domain_association_request(),
          list()
        ) ::
          {:ok, delete_custom_domain_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_domain_association_errors()}
  def delete_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomDomainAssociation", input, options)
  end

  @doc """
  Deletes an Amazon Redshift Serverless managed VPC endpoint.
  """
  @spec delete_endpoint_access(map(), delete_endpoint_access_request(), list()) ::
          {:ok, delete_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_endpoint_access_errors()}
  def delete_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpointAccess", input, options)
  end

  @doc """
  Deletes a namespace from Amazon Redshift Serverless.

  Before you delete the namespace, you can create a final snapshot that has all of
  the data within the namespace.
  """
  @spec delete_namespace(map(), delete_namespace_request(), list()) ::
          {:ok, delete_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes the specified resource policy.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a scheduled action.
  """
  @spec delete_scheduled_action(map(), delete_scheduled_action_request(), list()) ::
          {:ok, delete_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scheduled_action_errors()}
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes a snapshot from Amazon Redshift Serverless.
  """
  @spec delete_snapshot(map(), delete_snapshot_request(), list()) ::
          {:ok, delete_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_snapshot_errors()}
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes a snapshot copy configuration
  """
  @spec delete_snapshot_copy_configuration(
          map(),
          delete_snapshot_copy_configuration_request(),
          list()
        ) ::
          {:ok, delete_snapshot_copy_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_snapshot_copy_configuration_errors()}
  def delete_snapshot_copy_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshotCopyConfiguration", input, options)
  end

  @doc """
  Deletes a usage limit from Amazon Redshift Serverless.
  """
  @spec delete_usage_limit(map(), delete_usage_limit_request(), list()) ::
          {:ok, delete_usage_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_usage_limit_errors()}
  def delete_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUsageLimit", input, options)
  end

  @doc """
  Deletes a workgroup.
  """
  @spec delete_workgroup(map(), delete_workgroup_request(), list()) ::
          {:ok, delete_workgroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workgroup_errors()}
  def delete_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkgroup", input, options)
  end

  @doc """
  Returns a database user name and temporary password with
  temporary authorization to log in to Amazon Redshift Serverless.

  By default, the temporary credentials expire in 900 seconds.
  You can optionally specify a duration between 900 seconds (15 minutes) and 3600
  seconds (60 minutes).

  The Identity and Access Management (IAM) user or role that runs
  GetCredentials must have an IAM policy attached that allows access to all
  necessary actions and resources.

  If the `DbName` parameter is specified, the IAM policy must
  allow access to the resource dbname for the specified database name.
  """
  @spec get_credentials(map(), get_credentials_request(), list()) ::
          {:ok, get_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_credentials_errors()}
  def get_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCredentials", input, options)
  end

  @doc """
  Gets information about a specific custom domain association.
  """
  @spec get_custom_domain_association(map(), get_custom_domain_association_request(), list()) ::
          {:ok, get_custom_domain_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_domain_association_errors()}
  def get_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomDomainAssociation", input, options)
  end

  @doc """
  Returns information, such as the name, about a VPC endpoint.
  """
  @spec get_endpoint_access(map(), get_endpoint_access_request(), list()) ::
          {:ok, get_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_endpoint_access_errors()}
  def get_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEndpointAccess", input, options)
  end

  @doc """
  Returns information about a namespace in Amazon Redshift Serverless.
  """
  @spec get_namespace(map(), get_namespace_request(), list()) ::
          {:ok, get_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_namespace_errors()}
  def get_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNamespace", input, options)
  end

  @doc """
  Returns information about a recovery point.
  """
  @spec get_recovery_point(map(), get_recovery_point_request(), list()) ::
          {:ok, get_recovery_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recovery_point_errors()}
  def get_recovery_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecoveryPoint", input, options)
  end

  @doc """
  Returns a resource policy.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Returns information about a scheduled action.
  """
  @spec get_scheduled_action(map(), get_scheduled_action_request(), list()) ::
          {:ok, get_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_scheduled_action_errors()}
  def get_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetScheduledAction", input, options)
  end

  @doc """
  Returns information about a specific snapshot.
  """
  @spec get_snapshot(map(), get_snapshot_request(), list()) ::
          {:ok, get_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_snapshot_errors()}
  def get_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnapshot", input, options)
  end

  @doc """
  Returns information about a `TableRestoreStatus` object.
  """
  @spec get_table_restore_status(map(), get_table_restore_status_request(), list()) ::
          {:ok, get_table_restore_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_table_restore_status_errors()}
  def get_table_restore_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableRestoreStatus", input, options)
  end

  @doc """
  Get the Redshift Serverless version for a specified track.
  """
  @spec get_track(map(), get_track_request(), list()) ::
          {:ok, get_track_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_track_errors()}
  def get_track(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrack", input, options)
  end

  @doc """
  Returns information about a usage limit.
  """
  @spec get_usage_limit(map(), get_usage_limit_request(), list()) ::
          {:ok, get_usage_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_limit_errors()}
  def get_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUsageLimit", input, options)
  end

  @doc """
  Returns information about a specific workgroup.
  """
  @spec get_workgroup(map(), get_workgroup_request(), list()) ::
          {:ok, get_workgroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workgroup_errors()}
  def get_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkgroup", input, options)
  end

  @doc """
  Lists custom domain associations for Amazon Redshift Serverless.
  """
  @spec list_custom_domain_associations(map(), list_custom_domain_associations_request(), list()) ::
          {:ok, list_custom_domain_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_domain_associations_errors()}
  def list_custom_domain_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomDomainAssociations", input, options)
  end

  @doc """
  Returns an array of `EndpointAccess` objects and relevant information.
  """
  @spec list_endpoint_access(map(), list_endpoint_access_request(), list()) ::
          {:ok, list_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_endpoint_access_errors()}
  def list_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpointAccess", input, options)
  end

  @doc """
  Returns information about a list of specified managed workgroups in your
  account.
  """
  @spec list_managed_workgroups(map(), list_managed_workgroups_request(), list()) ::
          {:ok, list_managed_workgroups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_managed_workgroups_errors()}
  def list_managed_workgroups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListManagedWorkgroups", input, options)
  end

  @doc """
  Returns information about a list of specified namespaces.
  """
  @spec list_namespaces(map(), list_namespaces_request(), list()) ::
          {:ok, list_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_namespaces_errors()}
  def list_namespaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNamespaces", input, options)
  end

  @doc """
  Returns an array of recovery points.
  """
  @spec list_recovery_points(map(), list_recovery_points_request(), list()) ::
          {:ok, list_recovery_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recovery_points_errors()}
  def list_recovery_points(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecoveryPoints", input, options)
  end

  @doc """
  Returns a list of scheduled actions.

  You can use the flags to filter the list of returned scheduled actions.
  """
  @spec list_scheduled_actions(map(), list_scheduled_actions_request(), list()) ::
          {:ok, list_scheduled_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scheduled_actions_errors()}
  def list_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScheduledActions", input, options)
  end

  @doc """
  Returns a list of snapshot copy configurations.
  """
  @spec list_snapshot_copy_configurations(
          map(),
          list_snapshot_copy_configurations_request(),
          list()
        ) ::
          {:ok, list_snapshot_copy_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_snapshot_copy_configurations_errors()}
  def list_snapshot_copy_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSnapshotCopyConfigurations", input, options)
  end

  @doc """
  Returns a list of snapshots.
  """
  @spec list_snapshots(map(), list_snapshots_request(), list()) ::
          {:ok, list_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_snapshots_errors()}
  def list_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSnapshots", input, options)
  end

  @doc """
  Returns information about an array of `TableRestoreStatus` objects.
  """
  @spec list_table_restore_status(map(), list_table_restore_status_request(), list()) ::
          {:ok, list_table_restore_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_table_restore_status_errors()}
  def list_table_restore_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTableRestoreStatus", input, options)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  List the Amazon Redshift Serverless versions.
  """
  @spec list_tracks(map(), list_tracks_request(), list()) ::
          {:ok, list_tracks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tracks_errors()}
  def list_tracks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTracks", input, options)
  end

  @doc """
  Lists all usage limits within Amazon Redshift Serverless.
  """
  @spec list_usage_limits(map(), list_usage_limits_request(), list()) ::
          {:ok, list_usage_limits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_usage_limits_errors()}
  def list_usage_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsageLimits", input, options)
  end

  @doc """
  Returns information about a list of specified workgroups.
  """
  @spec list_workgroups(map(), list_workgroups_request(), list()) ::
          {:ok, list_workgroups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workgroups_errors()}
  def list_workgroups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkgroups", input, options)
  end

  @doc """
  Creates or updates a resource policy.

  Currently, you can use policies to share snapshots across Amazon Web Services
  accounts.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Restore the data from a recovery point.
  """
  @spec restore_from_recovery_point(map(), restore_from_recovery_point_request(), list()) ::
          {:ok, restore_from_recovery_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_from_recovery_point_errors()}
  def restore_from_recovery_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreFromRecoveryPoint", input, options)
  end

  @doc """
  Restores a namespace from a snapshot.
  """
  @spec restore_from_snapshot(map(), restore_from_snapshot_request(), list()) ::
          {:ok, restore_from_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_from_snapshot_errors()}
  def restore_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Restores a table from a recovery point to your Amazon Redshift Serverless
  instance.

  You can't use this operation to restore tables with interleaved sort keys.
  """
  @spec restore_table_from_recovery_point(
          map(),
          restore_table_from_recovery_point_request(),
          list()
        ) ::
          {:ok, restore_table_from_recovery_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_table_from_recovery_point_errors()}
  def restore_table_from_recovery_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTableFromRecoveryPoint", input, options)
  end

  @doc """
  Restores a table from a snapshot to your Amazon Redshift Serverless instance.

  You can't use this operation to
  restore tables with [interleaved sort keys](https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).
  """
  @spec restore_table_from_snapshot(map(), restore_table_from_snapshot_request(), list()) ::
          {:ok, restore_table_from_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_table_from_snapshot_errors()}
  def restore_table_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTableFromSnapshot", input, options)
  end

  @doc """
  Assigns one or more tags to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag or set of tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an Amazon Redshift Serverless certificate associated with a custom
  domain.
  """
  @spec update_custom_domain_association(
          map(),
          update_custom_domain_association_request(),
          list()
        ) ::
          {:ok, update_custom_domain_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_custom_domain_association_errors()}
  def update_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomDomainAssociation", input, options)
  end

  @doc """
  Updates an Amazon Redshift Serverless managed endpoint.
  """
  @spec update_endpoint_access(map(), update_endpoint_access_request(), list()) ::
          {:ok, update_endpoint_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoint_access_errors()}
  def update_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpointAccess", input, options)
  end

  @doc """
  Updates a namespace with the specified settings.

  Unless required, you can't update multiple parameters in one request. For
  example,
  you must specify both `adminUsername` and `adminUserPassword` to update either
  field, but you can't update both `kmsKeyId`
  and `logExports` in a single request.
  """
  @spec update_namespace(map(), update_namespace_request(), list()) ::
          {:ok, update_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_namespace_errors()}
  def update_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNamespace", input, options)
  end

  @doc """
  Updates a scheduled action.
  """
  @spec update_scheduled_action(map(), update_scheduled_action_request(), list()) ::
          {:ok, update_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_scheduled_action_errors()}
  def update_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScheduledAction", input, options)
  end

  @doc """
  Updates a snapshot.
  """
  @spec update_snapshot(map(), update_snapshot_request(), list()) ::
          {:ok, update_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_snapshot_errors()}
  def update_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSnapshot", input, options)
  end

  @doc """
  Updates a snapshot copy configuration.
  """
  @spec update_snapshot_copy_configuration(
          map(),
          update_snapshot_copy_configuration_request(),
          list()
        ) ::
          {:ok, update_snapshot_copy_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_snapshot_copy_configuration_errors()}
  def update_snapshot_copy_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSnapshotCopyConfiguration", input, options)
  end

  @doc """
  Update a usage limit in Amazon Redshift Serverless.

  You can't update the usage type or period of a usage limit.
  """
  @spec update_usage_limit(map(), update_usage_limit_request(), list()) ::
          {:ok, update_usage_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_usage_limit_errors()}
  def update_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUsageLimit", input, options)
  end

  @doc """
  Updates a workgroup with the specified configuration settings.

  You can't update multiple parameters in one request. For example,
  you can update `baseCapacity` or `port` in a single request, but you can't
  update both in the same request.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a workgroup is in an account with
  VPC BPA
  turned on, the following capabilities are blocked:

    *
  Creating a public access workgroup

    *
  Modifying a private workgroup to public

    *
  Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is
  public

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.
  """
  @spec update_workgroup(map(), update_workgroup_request(), list()) ::
          {:ok, update_workgroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workgroup_errors()}
  def update_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkgroup", input, options)
  end
end
