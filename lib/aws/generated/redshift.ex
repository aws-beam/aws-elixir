# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Redshift do
  @moduledoc """
  Amazon Redshift

  ## Overview

  This is an interface reference for Amazon Redshift.

  It contains documentation for one of
  the programming or command line interfaces you can use to manage Amazon Redshift
  clusters.
  Note that Amazon Redshift is asynchronous, which means that some interfaces may
  require
  techniques, such as polling or asynchronous callback handlers, to determine when
  a
  command has been applied. In this reference, the parameter descriptions indicate
  whether
  a change is applied immediately, on the next instance reboot, or during the next
  maintenance window. For a summary of the Amazon Redshift cluster management
  interfaces, go to
  [Using the Amazon Redshift Management
  Interfaces](https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).

  Amazon Redshift manages all the work of setting up, operating, and scaling a
  data
  warehouse: provisioning capacity, monitoring and backing up the cluster, and
  applying
  patches and upgrades to the Amazon Redshift engine. You can focus on using your
  data to
  acquire new insights for your business and customers.

  If you are a first-time user of Amazon Redshift, we recommend that you begin by
  reading
  the [Amazon Redshift Getting Started Guide](https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).

  If you are a database developer, the [Amazon Redshift Database Developer Guide](https://docs.aws.amazon.com/redshift/latest/dg/welcome.html) explains how
  to design,
  build, query, and maintain the databases that make up your data warehouse.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      endpoint_authorization_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_authorization_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_source_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_source_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_message() :: %{
        optional("Active") => boolean(),
        optional("EndTime") => non_neg_integer(),
        optional("Filters") => list(scheduled_action_filter()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ScheduledActionName") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("TargetActionType") => list(any())
      }
      
  """
  @type describe_scheduled_actions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type delete_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscriptions_message() :: %{
        "EventSubscriptionsList" => list(event_subscription()),
        "Marker" => String.t()
      }
      
  """
  @type event_subscriptions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_subnet_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_subnet_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_restore_status() :: %{
        "ClusterIdentifier" => String.t(),
        "Message" => String.t(),
        "NewTableName" => String.t(),
        "ProgressInMegaBytes" => float(),
        "RequestTime" => non_neg_integer(),
        "SnapshotIdentifier" => String.t(),
        "SourceDatabaseName" => String.t(),
        "SourceSchemaName" => String.t(),
        "SourceTableName" => String.t(),
        "Status" => list(any()),
        "TableRestoreRequestId" => String.t(),
        "TargetDatabaseName" => String.t(),
        "TargetSchemaName" => String.t(),
        "TotalDataInMegaBytes" => float()
      }
      
  """
  @type table_restore_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_for_producer_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ProducerArn") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type describe_data_shares_for_producer_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_target_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_target_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommended_action() :: %{
        "Command" => String.t(),
        "Database" => String.t(),
        "Text" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type recommended_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_on_latest_revision_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_on_latest_revision_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_definition_type_unsupported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type schedule_definition_type_unsupported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_snapshot_copy_grant_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_snapshot_copy_grant_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_access_list() :: %{
        optional("EndpointAccessList") => list(endpoint_access()),
        optional("Marker") => String.t()
      }
      
  """
  @type endpoint_access_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_already_in_use() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_already_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_db_revision_message() :: %{
        required("ClusterIdentifier") => String.t(),
        required("RevisionTarget") => String.t()
      }
      
  """
  @type modify_cluster_db_revision_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_associated_to_schedule() :: %{
        "ClusterIdentifier" => String.t(),
        "ScheduleAssociationState" => list(any())
      }
      
  """
  @type cluster_associated_to_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_configuration_option() :: %{
        "SourceReservedNode" => reserved_node(),
        "TargetReservedNodeCount" => integer(),
        "TargetReservedNodeOffering" => reserved_node_offering()
      }
      
  """
  @type reserved_node_configuration_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_result() :: %{
        "Marker" => String.t(),
        "Recommendations" => list(recommendation())
      }
      
  """
  @type list_recommendations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_categories_map() :: %{
        "Events" => list(event_info_map()),
        "SourceType" => String.t()
      }
      
  """
  @type event_categories_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedules_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ScheduleIdentifier") => String.t(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_snapshot_schedules_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_data_share_message() :: %{
        optional("AllowWrites") => boolean(),
        required("ConsumerIdentifier") => String.t(),
        required("DataShareArn") => String.t()
      }
      
  """
  @type authorize_data_share_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resize_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type describe_resize_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_schedule_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_schedule_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_snapshot_copy_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type disable_snapshot_copy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_parameter_groups_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ParameterGroupName") => String.t(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_cluster_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type modify_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_snapshot_message() :: %{
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("Tags") => list(tag()),
        required("ClusterIdentifier") => String.t(),
        required("SnapshotIdentifier") => String.t()
      }
      
  """
  @type create_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_severity_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_severity_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reserved_node_exchange_offerings_output_message() :: %{
        "Marker" => String.t(),
        "ReservedNodeOfferings" => list(reserved_node_offering())
      }
      
  """
  @type get_reserved_node_exchange_offerings_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_copy_grant_message() :: %{
        required("SnapshotCopyGrantName") => String.t()
      }
      
  """
  @type delete_snapshot_copy_grant_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_maintenance_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_cluster_maintenance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inbound_integration() :: %{
        "CreateTime" => non_neg_integer(),
        "Errors" => list(integration_error()),
        "IntegrationArn" => String.t(),
        "SourceArn" => String.t(),
        "Status" => list(any()),
        "TargetArn" => String.t()
      }
      
  """
  @type inbound_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t(),
        "SupportedPlatforms" => list(supported_platform())
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_limit_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type usage_limit_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_security_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_subnet_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_parameter_group_message() :: %{
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type delete_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_security_groups_message() :: %{
        optional("ClusterSecurityGroupName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_cluster_security_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_copy_grants_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SnapshotCopyGrantName") => String.t(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_snapshot_copy_grants_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_schedule_message() :: %{
        optional("DryRun") => boolean(),
        optional("NextInvocations") => integer(),
        optional("ScheduleDefinitions") => list(String.t()),
        optional("ScheduleDescription") => String.t(),
        optional("ScheduleIdentifier") => String.t(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_snapshot_schedule_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_authentication_profile_result() :: %{
        "AuthenticationProfileContent" => String.t(),
        "AuthenticationProfileName" => String.t()
      }
      
  """
  @type create_authentication_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_authentication_profile_result() :: %{
        "AuthenticationProfileContent" => String.t(),
        "AuthenticationProfileName" => String.t()
      }
      
  """
  @type modify_authentication_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_value_target() :: %{
        "AttributeValue" => String.t()
      }
      
  """
  @type attribute_value_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_db_revisions_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cluster_db_revisions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration() :: %{
        optional("AdditionalEncryptionContext") => map(),
        optional("CreateTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("Errors") => list(integration_error()),
        optional("IntegrationArn") => String.t(),
        optional("IntegrationName") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("SourceArn") => String.t(),
        optional("Status") => list(any()),
        optional("Tags") => list(tag()),
        optional("TargetArn") => String.t()
      }
      
  """
  @type integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_message() :: %{
        required("ResourceName") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type create_tags_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t())
      }
      
  """
  @type describe_integrations_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t()),
        optional("Severity") => String.t(),
        optional("SnsTopicArn") => String.t(),
        optional("SourceIds") => list(String.t()),
        optional("SourceType") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type modify_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_default_cluster_parameters_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("ParameterGroupFamily") => String.t()
      }
      
  """
  @type describe_default_cluster_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_configuration() :: %{
        "Description" => String.t(),
        "HsmConfigurationIdentifier" => String.t(),
        "HsmIpAddress" => String.t(),
        "HsmPartitionName" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type hsm_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pause_cluster_message() :: %{
        "ClusterIdentifier" => String.t()
      }
      
  """
  @type pause_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t())
      }
      
  """
  @type scheduled_action_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_bucket_name_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_bucket_name_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_subnet_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_redshift_idc_application_message() :: %{
        optional("AuthorizedTokenIssuerList") => list(authorized_token_issuer()),
        optional("IamRoleArn") => String.t(),
        optional("IdcDisplayName") => String.t(),
        optional("IdentityNamespace") => String.t(),
        optional("ServiceIntegrations") => list(list()),
        required("RedshiftIdcApplicationArn") => String.t()
      }
      
  """
  @type modify_redshift_idc_application_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_node_offering_result() :: %{
        "ReservedNode" => reserved_node()
      }
      
  """
  @type purchase_reserved_node_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_result() :: %{
        "ResourcePolicy" => resource_policy()
      }
      
  """
  @type put_resource_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_data_share_message() :: %{
        required("DataShareArn") => String.t()
      }
      
  """
  @type reject_data_share_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_grant_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_grant_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_usage_limit_message() :: %{
        required("UsageLimitId") => String.t()
      }
      
  """
  @type delete_usage_limit_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_group() :: %{
        "ClusterSubnetGroupName" => String.t(),
        "Description" => String.t(),
        "SubnetGroupStatus" => String.t(),
        "Subnets" => list(subnet()),
        "SupportedClusterIpAddressTypes" => list(String.t()),
        "Tags" => list(tag()),
        "VpcId" => String.t()
      }
      
  """
  @type cluster_subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_copy_grant_result() :: %{
        "SnapshotCopyGrant" => snapshot_copy_grant()
      }
      
  """
  @type create_snapshot_copy_grant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscription() :: %{
        "CustSubscriptionId" => String.t(),
        "CustomerAwsId" => String.t(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t()),
        "Severity" => String.t(),
        "SnsTopicArn" => String.t(),
        "SourceIdsList" => list(String.t()),
        "SourceType" => String.t(),
        "Status" => String.t(),
        "SubscriptionCreationTime" => non_neg_integer(),
        "Tags" => list(tag())
      }
      
  """
  @type event_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_security_group() :: %{
        "EC2SecurityGroupName" => String.t(),
        "EC2SecurityGroupOwnerId" => String.t(),
        "Status" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type ec2_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_snapshot_access_message() :: %{
        optional("SnapshotArn") => String.t(),
        optional("SnapshotClusterIdentifier") => String.t(),
        optional("SnapshotIdentifier") => String.t(),
        required("AccountWithRestoreAccess") => String.t()
      }
      
  """
  @type authorize_snapshot_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resize_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resize_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recurring_charge() :: %{
        "RecurringChargeAmount" => float(),
        "RecurringChargeFrequency" => String.t()
      }
      
  """
  @type recurring_charge() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_restore_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_restore_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_scheduled_action_message() :: %{
        optional("Enable") => boolean(),
        optional("EndTime") => non_neg_integer(),
        optional("IamRole") => String.t(),
        optional("Schedule") => String.t(),
        optional("ScheduledActionDescription") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("TargetAction") => scheduled_action_type(),
        required("ScheduledActionName") => String.t()
      }
      
  """
  @type modify_scheduled_action_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_endpoint_access_message() :: %{
        optional("VpcSecurityGroupIds") => list(String.t()),
        required("EndpointName") => String.t()
      }
      
  """
  @type modify_endpoint_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_modify_cluster_snapshots_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type batch_modify_cluster_snapshots_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_cluster_security_group_ingress_message() :: %{
        optional("CIDRIP") => String.t(),
        optional("EC2SecurityGroupName") => String.t(),
        optional("EC2SecurityGroupOwnerId") => String.t(),
        required("ClusterSecurityGroupName") => String.t()
      }
      
  """
  @type authorize_cluster_security_group_ingress_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "AvailabilityZone" => String.t(),
        "Ipv6Address" => String.t(),
        "NetworkInterfaceId" => String.t(),
        "PrivateIpAddress" => String.t(),
        "SubnetId" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_snapshot_copy_retention_period_message() :: %{
        optional("Manual") => boolean(),
        required("ClusterIdentifier") => String.t(),
        required("RetentionPeriod") => integer()
      }
      
  """
  @type modify_snapshot_copy_retention_period_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type integration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_message() :: %{
        required("ResourceName") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type delete_tags_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => availability_zone(),
        "SubnetIdentifier" => String.t(),
        "SubnetStatus" => String.t()
      }
      
  """
  @type subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_idc_application_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type redshift_idc_application_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_primary_compute_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type failover_primary_compute_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_iam_roles_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_cluster_iam_roles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_iam_roles_message() :: %{
        optional("AddIamRoles") => list(String.t()),
        optional("DefaultIamRoleArn") => String.t(),
        optional("RemoveIamRoles") => list(String.t()),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type modify_cluster_iam_roles_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_nodes_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ReservedNodeId") => String.t()
      }
      
  """
  @type describe_reserved_nodes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_data_share_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_data_share_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_configuration_option() :: %{
        "EstimatedDiskUtilizationPercent" => float(),
        "Mode" => list(any()),
        "NodeType" => String.t(),
        "NumberOfNodes" => integer()
      }
      
  """
  @type node_configuration_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inbound_integrations_message() :: %{
        optional("IntegrationArn") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TargetArn") => String.t()
      }
      
  """
  @type describe_inbound_integrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_already_disabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_already_disabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependent_service_request_throttling_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type dependent_service_request_throttling_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_snapshot_message() :: %{
        optional("Force") => boolean(),
        optional("ManualSnapshotRetentionPeriod") => integer(),
        required("SnapshotIdentifier") => String.t()
      }
      
  """
  @type modify_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_parameter_group_message() :: %{
        optional("Tags") => list(tag()),
        required("Description") => String.t(),
        required("ParameterGroupFamily") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type create_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_name_message() :: %{
        "ParameterGroupName" => String.t(),
        "ParameterGroupStatus" => String.t()
      }
      
  """
  @type cluster_parameter_group_name_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_message() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_policy_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_for_consumer_result() :: %{
        "DataShares" => list(data_share()),
        "Marker" => String.t()
      }
      
  """
  @type describe_data_shares_for_consumer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile() :: %{
        "AuthenticationProfileContent" => String.t(),
        "AuthenticationProfileName" => String.t()
      }
      
  """
  @type authentication_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_already_exist_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_already_exist_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_snapshot_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_snapshot_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_configuration_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_configuration_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_result() :: %{
        "DataShares" => list(data_share()),
        "Marker" => String.t()
      }
      
  """
  @type describe_data_shares_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pause_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type pause_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_authorization() :: %{
        "AllowedAllVPCs" => boolean(),
        "AllowedVPCs" => list(String.t()),
        "AuthorizeTime" => non_neg_integer(),
        "ClusterIdentifier" => String.t(),
        "ClusterStatus" => String.t(),
        "EndpointCount" => integer(),
        "Grantee" => String.t(),
        "Grantor" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type endpoint_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_track_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_track_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_parameter_group_result() :: %{
        "ClusterParameterGroup" => cluster_parameter_group()
      }
      
  """
  @type create_cluster_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_cluster_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type reboot_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_client_certificate_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_client_certificate_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_transfer_progress() :: %{
        "CurrentRateInMegaBytesPerSecond" => float(),
        "DataTransferredInMegaBytes" => float(),
        "ElapsedTimeInSeconds" => float(),
        "EstimatedTimeToCompletionInSeconds" => float(),
        "Status" => String.t(),
        "TotalDataInMegaBytes" => float()
      }
      
  """
  @type data_transfer_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_event_id_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_event_id_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partner_integration_input_message() :: %{
        required("AccountId") => String.t(),
        required("ClusterIdentifier") => String.t(),
        required("DatabaseName") => String.t(),
        required("PartnerName") => String.t()
      }
      
  """
  @type partner_integration_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_parameter_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_parameter_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_association() :: %{
        "ClusterIdentifier" => String.t(),
        "CustomDomainName" => String.t()
      }
      
  """
  @type certificate_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_security_group_message() :: %{
        optional("Tags") => list(tag()),
        required("ClusterSecurityGroupName") => String.t(),
        required("Description") => String.t()
      }
      
  """
  @type create_cluster_security_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_grant_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_grant_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_configurations_message() :: %{
        optional("HsmConfigurationIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_hsm_configurations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_namespace_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_namespace_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_domain_association_message() :: %{
        required("ClusterIdentifier") => String.t(),
        required("CustomDomainName") => String.t()
      }
      
  """
  @type delete_custom_domain_association_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_reserved_node_exchange_input_message() :: %{
        required("ReservedNodeId") => String.t(),
        required("TargetReservedNodeOfferingId") => String.t()
      }
      
  """
  @type accept_reserved_node_exchange_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_version() :: %{
        "ClusterParameterGroupFamily" => String.t(),
        "ClusterVersion" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type cluster_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reserved_node_exchange_offerings_input_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("ReservedNodeId") => String.t()
      }
      
  """
  @type get_reserved_node_exchange_offerings_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_type_unsupported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type scheduled_action_type_unsupported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_snapshot_copy_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type disable_snapshot_copy_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoints_per_authorization_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoints_per_authorization_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_nodes_message() :: %{
        "Marker" => String.t(),
        "ReservedNodes" => list(reserved_node())
      }
      
  """
  @type reserved_nodes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_credentials() :: %{
        "DbPassword" => String.t(),
        "DbUser" => String.t(),
        "Expiration" => non_neg_integer()
      }
      
  """
  @type cluster_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_snapshot_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_snapshot_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_subnet_groups_message() :: %{
        optional("ClusterSubnetGroupName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_cluster_subnet_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_offering() :: %{
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "NodeType" => String.t(),
        "OfferingType" => String.t(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservedNodeOfferingId" => String.t(),
        "ReservedNodeOfferingType" => list(any()),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_node_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_already_migrated_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_already_migrated_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_snapshot_schedule_message() :: %{
        required("ScheduleDefinitions") => list(String.t()),
        required("ScheduleIdentifier") => String.t()
      }
      
  """
  @type modify_snapshot_schedule_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_identifier() :: %{
        "NamespaceIdentifier" => String.t(),
        "WorkgroupIdentifier" => String.t()
      }
      
  """
  @type serverless_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_namespace_output_message() :: %{
        "Status" => list(any())
      }
      
  """
  @type deregister_namespace_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_endpoint_access_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("VpcIds") => list(String.t()),
        required("Account") => String.t()
      }
      
  """
  @type authorize_endpoint_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_message() :: %{
        optional("AttributeNames") => list(String.t())
      }
      
  """
  @type describe_account_attributes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authentication_profile_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_cluster_snapshot_message() :: %{
        optional("EnableCaseSensitiveIdentifier") => boolean(),
        optional("SourceSchemaName") => String.t(),
        optional("TargetDatabaseName") => String.t(),
        optional("TargetSchemaName") => String.t(),
        required("ClusterIdentifier") => String.t(),
        required("NewTableName") => String.t(),
        required("SnapshotIdentifier") => String.t(),
        required("SourceDatabaseName") => String.t(),
        required("SourceTableName") => String.t()
      }
      
  """
  @type restore_table_from_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_authentication_profile_request_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_authentication_profile_request_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_operation() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_message() :: %{
        required("ScheduledActionName") => String.t()
      }
      
  """
  @type delete_scheduled_action_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_redshift_idc_application_result() :: %{
        "RedshiftIdcApplication" => redshift_idc_application()
      }
      
  """
  @type create_redshift_idc_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_restore_status_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TableRestoreRequestId") => String.t()
      }
      
  """
  @type describe_table_restore_status_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_security_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_schedule_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_schedule_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_elastic_ip_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_elastic_ip_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t()),
        optional("Severity") => String.t(),
        optional("SourceIds") => list(String.t()),
        optional("SourceType") => String.t(),
        optional("Tags") => list(tag()),
        required("SnsTopicArn") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type create_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_type() :: %{
        "PauseCluster" => pause_cluster_message(),
        "ResizeCluster" => resize_cluster_message(),
        "ResumeCluster" => resume_cluster_message()
      }
      
  """
  @type scheduled_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_copy_grant_message() :: %{
        optional("KmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("SnapshotCopyGrantName") => String.t()
      }
      
  """
  @type create_snapshot_copy_grant_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cluster_credentials_with_iam_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("CustomDomainName") => String.t(),
        optional("DbName") => String.t(),
        optional("DurationSeconds") => integer()
      }
      
  """
  @type get_cluster_credentials_with_iam_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_authorization_list() :: %{
        optional("EndpointAuthorizationList") => list(endpoint_authorization()),
        optional("Marker") => String.t()
      }
      
  """
  @type endpoint_authorization_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type bucket_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_conflict_operation_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_conflict_operation_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_cluster_options_message() :: %{
        "Marker" => String.t(),
        "OrderableClusterOptions" => list(orderable_cluster_option())
      }
      
  """
  @type orderable_cluster_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_subscriptions_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SubscriptionName") => String.t(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_event_subscriptions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_status() :: %{
        "ClusterParameterStatusList" => list(cluster_parameter_status()),
        "ParameterApplyStatus" => String.t(),
        "ParameterGroupName" => String.t()
      }
      
  """
  @type cluster_parameter_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      in_progress_table_restore_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type in_progress_table_restore_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hsm_configuration_message() :: %{
        required("HsmConfigurationIdentifier") => String.t()
      }
      
  """
  @type delete_hsm_configuration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_namespace_input_message() :: %{
        required("ConsumerIdentifiers") => list(String.t()),
        required("NamespaceIdentifier") => list()
      }
      
  """
  @type register_namespace_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_integration_message() :: %{
        required("IntegrationArn") => String.t()
      }
      
  """
  @type delete_integration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("NamespaceArn") => String.t()
      }
      
  """
  @type list_recommendations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_authorizations_per_cluster_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_authorizations_per_cluster_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_grant_message() :: %{
        "Marker" => String.t(),
        "SnapshotCopyGrants" => list(snapshot_copy_grant())
      }
      
  """
  @type snapshot_copy_grant_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_modified_values() :: %{
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "ClusterIdentifier" => String.t(),
        "ClusterType" => String.t(),
        "ClusterVersion" => String.t(),
        "EncryptionType" => String.t(),
        "EnhancedVpcRouting" => boolean(),
        "MaintenanceTrackName" => String.t(),
        "MasterUserPassword" => String.t(),
        "NodeType" => String.t(),
        "NumberOfNodes" => integer(),
        "PubliclyAccessible" => boolean()
      }
      
  """
  @type pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_resize_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type cancel_resize_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ResourceName") => String.t(),
        optional("ResourceType") => String.t(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_tags_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_already_enabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_already_enabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_cluster_snapshot_message() :: %{
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("SourceSnapshotClusterIdentifier") => String.t(),
        required("SourceSnapshotIdentifier") => String.t(),
        required("TargetSnapshotIdentifier") => String.t()
      }
      
  """
  @type copy_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependent_service_access_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type dependent_service_access_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_cluster_option() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "ClusterType" => String.t(),
        "ClusterVersion" => String.t(),
        "NodeType" => String.t()
      }
      
  """
  @type orderable_cluster_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_hsm_configuration_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_hsm_configuration_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_info_map() :: %{
        "EventCategories" => list(String.t()),
        "EventDescription" => String.t(),
        "EventId" => String.t(),
        "Severity" => String.t()
      }
      
  """
  @type event_info_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_modify_cluster_snapshots_output_message() :: %{
        "Errors" => list(snapshot_error_message()),
        "Resources" => list(String.t())
      }
      
  """
  @type batch_modify_cluster_snapshots_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_db_revisions_message() :: %{
        "ClusterDbRevisions" => list(cluster_db_revision()),
        "Marker" => String.t()
      }
      
  """
  @type cluster_db_revisions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_data_share_consumer_message() :: %{
        optional("AllowWrites") => boolean(),
        optional("AssociateEntireAccount") => boolean(),
        optional("ConsumerArn") => String.t(),
        optional("ConsumerRegion") => String.t(),
        required("DataShareArn") => String.t()
      }
      
  """
  @type associate_data_share_consumer_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_node() :: %{
        "NodeRole" => String.t(),
        "PrivateIPAddress" => String.t(),
        "PublicIPAddress" => String.t()
      }
      
  """
  @type cluster_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_subnet_group_message() :: %{
        optional("Description") => String.t(),
        required("ClusterSubnetGroupName") => String.t(),
        required("SubnetIds") => list(String.t())
      }
      
  """
  @type modify_cluster_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_subnet_group_result() :: %{
        "ClusterSubnetGroup" => cluster_subnet_group()
      }
      
  """
  @type create_cluster_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_limit_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_usage_limit_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_redshift_idc_application_message() :: %{
        required("RedshiftIdcApplicationArn") => String.t()
      }
      
  """
  @type delete_redshift_idc_application_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deferred_maintenance_window() :: %{
        "DeferMaintenanceEndTime" => non_neg_integer(),
        "DeferMaintenanceIdentifier" => String.t(),
        "DeferMaintenanceStartTime" => non_neg_integer()
      }
      
  """
  @type deferred_maintenance_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_node_offering_message() :: %{
        optional("NodeCount") => integer(),
        required("ReservedNodeOfferingId") => String.t()
      }
      
  """
  @type purchase_reserved_node_offering_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_groups_message() :: %{
        "Marker" => String.t(),
        "ParameterGroups" => list(cluster_parameter_group())
      }
      
  """
  @type cluster_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_parameter_group_message() :: %{
        required("ParameterGroupName") => String.t(),
        required("Parameters") => list(parameter())
      }
      
  """
  @type modify_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type create_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "DBName" => String.t(),
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "DefaultIamRoleArn" => String.t(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()),
        "Tags" => list(tag()),
        "Encrypted" => boolean(),
        "PendingActions" => list(String.t()),
        "CustomDomainName" => String.t(),
        "MultiAZ" => String.t(),
        "IpAddressType" => String.t(),
        "EnhancedVpcRouting" => boolean(),
        "PreferredMaintenanceWindow" => String.t(),
        "ClusterAvailabilityStatus" => String.t(),
        "ClusterRevisionNumber" => String.t(),
        "ClusterNamespaceArn" => String.t(),
        "RestoreStatus" => restore_status(),
        "PendingModifiedValues" => pending_modified_values(),
        "KmsKeyId" => String.t(),
        "VpcId" => String.t(),
        "ClusterSecurityGroups" => list(cluster_security_group_membership()),
        "AvailabilityZone" => String.t(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "CustomDomainCertificateExpiryDate" => non_neg_integer(),
        "SnapshotScheduleState" => list(any()),
        "ExpectedNextSnapshotScheduleTimeStatus" => String.t(),
        "CustomDomainCertificateArn" => String.t(),
        "ResizeInfo" => resize_info(),
        "ClusterCreateTime" => non_neg_integer(),
        "AquaConfiguration" => aqua_configuration(),
        "TotalStorageCapacityInMegaBytes" => float(),
        "AllowVersionUpgrade" => boolean(),
        "ClusterSnapshotCopyStatus" => cluster_snapshot_copy_status(),
        "NodeType" => String.t(),
        "HsmStatus" => hsm_status(),
        "MaintenanceTrackName" => String.t(),
        "ClusterSubnetGroupName" => String.t(),
        "ClusterNodes" => list(cluster_node()),
        "ClusterStatus" => String.t(),
        "MasterUsername" => String.t(),
        "MultiAZSecondary" => secondary_cluster_info(),
        "ClusterVersion" => String.t(),
        "ClusterIdentifier" => String.t(),
        "ClusterPublicKey" => String.t(),
        "NumberOfNodes" => integer(),
        "DataTransferProgress" => data_transfer_progress(),
        "MasterPasswordSecretArn" => String.t(),
        "IamRoles" => list(cluster_iam_role()),
        "NextMaintenanceWindowStartTime" => non_neg_integer(),
        "PubliclyAccessible" => boolean(),
        "MasterPasswordSecretKmsKeyId" => String.t(),
        "ElasticResizeNumberOfNodeOptions" => String.t(),
        "ModifyStatus" => String.t(),
        "Endpoint" => endpoint(),
        "AvailabilityZoneRelocationStatus" => String.t(),
        "SnapshotScheduleIdentifier" => String.t(),
        "ElasticIpStatus" => elastic_ip_status(),
        "DeferredMaintenanceWindows" => list(deferred_maintenance_window()),
        "ClusterParameterGroups" => list(cluster_parameter_group_status()),
        "ExpectedNextSnapshotScheduleTime" => non_neg_integer(),
        "ReservedNodeExchangeStatus" => reserved_node_exchange_status()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_cluster_parameter_group_message() :: %{
        optional("Parameters") => list(parameter()),
        optional("ResetAllParameters") => boolean(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type reset_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_message() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inbound_integrations_message() :: %{
        "InboundIntegrations" => list(inbound_integration()),
        "Marker" => String.t()
      }
      
  """
  @type inbound_integrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoints_per_cluster_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoints_per_cluster_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_reserved_node_exchange_output_message() :: %{
        "ExchangedReservedNode" => reserved_node()
      }
      
  """
  @type accept_reserved_node_exchange_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "ClusterIdentifier" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ImpactRanking" => list(any()),
        "NamespaceArn" => String.t(),
        "Observation" => String.t(),
        "RecommendationText" => String.t(),
        "RecommendationType" => String.t(),
        "RecommendedActions" => list(recommended_action()),
        "ReferenceLinks" => list(reference_link()),
        "Title" => String.t()
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_authentication_profile_message() :: %{
        required("AuthenticationProfileContent") => String.t(),
        required("AuthenticationProfileName") => String.t()
      }
      
  """
  @type create_authentication_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_sorting_entity() :: %{
        "Attribute" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type snapshot_sorting_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_authentication_profile_message() :: %{
        required("AuthenticationProfileName") => String.t()
      }
      
  """
  @type delete_authentication_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_cluster_message() :: %{
        "ClusterIdentifier" => String.t()
      }
      
  """
  @type resume_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group_membership() :: %{
        "ClusterSecurityGroupName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type cluster_security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_range() :: %{
        "CIDRIP" => String.t(),
        "Status" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type ip_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action() :: %{
        "EndTime" => non_neg_integer(),
        "IamRole" => String.t(),
        "NextInvocations" => list(non_neg_integer()),
        "Schedule" => String.t(),
        "ScheduledActionDescription" => String.t(),
        "ScheduledActionName" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "TargetAction" => scheduled_action_type()
      }
      
  """
  @type scheduled_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_authentication_profiles_result() :: %{
        "AuthenticationProfiles" => list(authentication_profile())
      }
      
  """
  @type describe_authentication_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_authorization_message() :: %{
        optional("Account") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("Grantee") => boolean(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_endpoint_authorization_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type source_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_s3_bucket_policy_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_s3_bucket_policy_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_result() :: %{
        "ResourcePolicy" => resource_policy()
      }
      
  """
  @type get_resource_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_configuration_options_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t())
      }
      
  """
  @type node_configuration_options_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_idc_application_not_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type redshift_idc_application_not_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_hsm_client_certificate_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_hsm_client_certificate_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t(),
        "ApplyType" => list(any()),
        "DataType" => String.t(),
        "Description" => String.t(),
        "IsModifiable" => boolean(),
        "MinimumEngineVersion" => String.t(),
        "ParameterName" => String.t(),
        "ParameterValue" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_idc_application() :: %{
        "AuthorizedTokenIssuerList" => list(authorized_token_issuer()),
        "IamRoleArn" => String.t(),
        "IdcDisplayName" => String.t(),
        "IdcInstanceArn" => String.t(),
        "IdcManagedApplicationArn" => String.t(),
        "IdcOnboardStatus" => String.t(),
        "IdentityNamespace" => String.t(),
        "RedshiftIdcApplicationArn" => String.t(),
        "RedshiftIdcApplicationName" => String.t(),
        "ServiceIntegrations" => list(list())
      }
      
  """
  @type redshift_idc_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association() :: %{
        "CertificateAssociations" => list(certificate_association()),
        "CustomDomainCertificateArn" => String.t(),
        "CustomDomainCertificateExpiryDate" => non_neg_integer()
      }
      
  """
  @type association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_extended_credentials() :: %{
        optional("DbPassword") => String.t(),
        optional("DbUser") => String.t(),
        optional("Expiration") => non_neg_integer(),
        optional("NextRefreshTime") => non_neg_integer()
      }
      
  """
  @type cluster_extended_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_custom_domain_association_result() :: %{
        "ClusterIdentifier" => String.t(),
        "CustomDomainCertExpiryTime" => String.t(),
        "CustomDomainCertificateArn" => String.t(),
        "CustomDomainName" => String.t()
      }
      
  """
  @type modify_custom_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_actions_message() :: %{
        "Marker" => String.t(),
        "ScheduledActions" => list(scheduled_action())
      }
      
  """
  @type scheduled_actions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_write_access() :: %{
        "Authorization" => list(any())
      }
      
  """
  @type read_write_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_usage_limit_message() :: %{
        optional("Amount") => float(),
        optional("BreachAction") => list(any()),
        required("UsageLimitId") => String.t()
      }
      
  """
  @type modify_usage_limit_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_reserved_node_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_reserved_node_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_client_certificate() :: %{
        "HsmClientCertificateIdentifier" => String.t(),
        "HsmClientCertificatePublicKey" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type hsm_client_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_cluster_snapshots_request() :: %{
        required("Identifiers") => list(delete_cluster_snapshot_message())
      }
      
  """
  @type batch_delete_cluster_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authentication_profile_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_snapshot_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_snapshot_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node() :: %{
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "NodeCount" => integer(),
        "NodeType" => String.t(),
        "OfferingType" => String.t(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservedNodeId" => String.t(),
        "ReservedNodeOfferingId" => String.t(),
        "ReservedNodeOfferingType" => list(any()),
        "StartTime" => non_neg_integer(),
        "State" => String.t(),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incompatible_orderable_options() :: %{
        "message" => String.t()
      }
      
  """
  @type incompatible_orderable_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_grant() :: %{
        "KmsKeyId" => String.t(),
        "SnapshotCopyGrantName" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type snapshot_copy_grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resize_cluster_message() :: %{
        "Classic" => boolean(),
        "ClusterIdentifier" => String.t(),
        "ClusterType" => String.t(),
        "NodeType" => String.t(),
        "NumberOfNodes" => integer(),
        "ReservedNodeId" => String.t(),
        "TargetReservedNodeOfferingId" => String.t()
      }
      
  """
  @type resize_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_client_certificate_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_client_certificate_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_configuration_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_configuration_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_share() :: %{
        optional("AllowPubliclyAccessibleConsumers") => boolean(),
        optional("DataShareArn") => String.t(),
        optional("DataShareAssociations") => list(data_share_association()),
        optional("DataShareType") => list(any()),
        optional("ManagedBy") => String.t(),
        optional("ProducerArn") => String.t()
      }
      
  """
  @type data_share() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_endpoint_access_message() :: %{
        optional("Account") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("Force") => boolean(),
        optional("VpcIds") => list(String.t())
      }
      
  """
  @type revoke_endpoint_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_configuration_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_configuration_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_status() :: %{
        "ParameterApplyErrorDescription" => String.t(),
        "ParameterApplyStatus" => String.t(),
        "ParameterName" => String.t()
      }
      
  """
  @type cluster_parameter_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      number_of_nodes_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type number_of_nodes_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint() :: %{
        "NetworkInterfaces" => list(network_interface()),
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_parameter_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_key_prefix_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_key_prefix_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_client_certificate_result() :: %{
        "HsmClientCertificate" => hsm_client_certificate()
      }
      
  """
  @type create_hsm_client_certificate_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_namespace_input_message() :: %{
        required("ConsumerIdentifiers") => list(String.t()),
        required("NamespaceIdentifier") => list()
      }
      
  """
  @type deregister_namespace_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_offerings_message() :: %{
        "Marker" => String.t(),
        "ReservedNodeOfferings" => list(reserved_node_offering())
      }
      
  """
  @type reserved_node_offerings_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_idc_application_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type redshift_idc_application_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_message() :: %{
        optional("DataShareArn") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_data_shares_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resize_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type resize_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type table_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_parameters_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("Source") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type describe_cluster_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reserved_node_exchange_configuration_options_input_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SnapshotIdentifier") => String.t(),
        required("ActionType") => list(any())
      }
      
  """
  @type get_reserved_node_exchange_configuration_options_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elastic_ip_status() :: %{
        "ElasticIp" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type elastic_ip_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type reboot_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_redshift_idc_applications_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("RedshiftIdcApplicationArn") => String.t()
      }
      
  """
  @type describe_redshift_idc_applications_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_limit_list() :: %{
        optional("Marker") => String.t(),
        optional("UsageLimits") => list(usage_limit())
      }
      
  """
  @type usage_limit_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hsm_client_certificate_message() :: %{
        required("HsmClientCertificateIdentifier") => String.t()
      }
      
  """
  @type delete_hsm_client_certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_details() :: %{
        "Marker" => String.t(),
        "Parameters" => list(parameter())
      }
      
  """
  @type cluster_parameter_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_status() :: %{
        "BucketName" => String.t(),
        "LastFailureMessage" => String.t(),
        "LastFailureTime" => non_neg_integer(),
        "LastSuccessfulDeliveryTime" => non_neg_integer(),
        "LogDestinationType" => list(any()),
        "LogExports" => list(String.t()),
        "LoggingEnabled" => boolean(),
        "S3KeyPrefix" => String.t()
      }
      
  """
  @type logging_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_attribute_list() :: %{
        optional("AccountAttributes") => list(account_attribute())
      }
      
  """
  @type account_attribute_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_subnet_group_message() :: %{
        required("ClusterSubnetGroupName") => String.t()
      }
      
  """
  @type delete_cluster_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_versions_message() :: %{
        "ClusterVersions" => list(cluster_version()),
        "Marker" => String.t()
      }
      
  """
  @type cluster_versions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_snapshot_schedule_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_snapshot_schedule_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_subnet_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_disabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_disabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_cname_association_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_cname_association_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "Port" => integer(),
        "VpcEndpoints" => list(vpc_endpoint())
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_integration_message() :: %{
        optional("Description") => String.t(),
        optional("IntegrationName") => String.t(),
        required("IntegrationArn") => String.t()
      }
      
  """
  @type modify_integration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      events_message() :: %{
        "Events" => list(event()),
        "Marker" => String.t()
      }
      
  """
  @type events_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagged_resource_list_message() :: %{
        "Marker" => String.t(),
        "TaggedResources" => list(tagged_resource())
      }
      
  """
  @type tagged_resource_list_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_subnet_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_error_message() :: %{
        "FailureCode" => String.t(),
        "FailureReason" => String.t(),
        "SnapshotClusterIdentifier" => String.t(),
        "SnapshotIdentifier" => String.t()
      }
      
  """
  @type snapshot_error_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_iam_role() :: %{
        "ApplyStatus" => String.t(),
        "IamRoleArn" => String.t()
      }
      
  """
  @type cluster_iam_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_message() :: %{
        required("SubscriptionName") => String.t()
      }
      
  """
  @type delete_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_security_group_result() :: %{
        "ClusterSecurityGroup" => cluster_security_group()
      }
      
  """
  @type create_cluster_security_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type scheduled_action_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_snapshot_copy_message() :: %{
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("RetentionPeriod") => integer(),
        optional("SnapshotCopyGrantName") => String.t(),
        required("ClusterIdentifier") => String.t(),
        required("DestinationRegion") => String.t()
      }
      
  """
  @type enable_snapshot_copy_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy() :: %{
        "Policy" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_tracks_message() :: %{
        optional("MaintenanceTrackName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cluster_tracks_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resize_info() :: %{
        "AllowCancelResize" => boolean(),
        "ResizeType" => String.t()
      }
      
  """
  @type resize_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_copy_grant_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_copy_grant_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_domain_association_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_domain_association_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_category_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_category_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_redshift_idc_application_message() :: %{
        optional("AuthorizedTokenIssuerList") => list(authorized_token_issuer()),
        optional("IdentityNamespace") => String.t(),
        optional("ServiceIntegrations") => list(list()),
        required("IamRoleArn") => String.t(),
        required("IdcDisplayName") => String.t(),
        required("IdcInstanceArn") => String.t(),
        required("RedshiftIdcApplicationName") => String.t()
      }
      
  """
  @type create_redshift_idc_application_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_invalid_topic_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_invalid_topic_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_integration_message() :: %{
        optional("AdditionalEncryptionContext") => map(),
        optional("Description") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("TagList") => list(tag()),
        required("IntegrationName") => String.t(),
        required("SourceArn") => String.t(),
        required("TargetArn") => String.t()
      }
      
  """
  @type create_integration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_partner_status_input_message() :: %{
        optional("StatusMessage") => String.t(),
        required("AccountId") => String.t(),
        required("ClusterIdentifier") => String.t(),
        required("DatabaseName") => String.t(),
        required("PartnerName") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_partner_status_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_node_offerings_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ReservedNodeOfferingId") => String.t()
      }
      
  """
  @type describe_reserved_node_offerings_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "EventCategories" => list(String.t()),
        "EventId" => String.t(),
        "Message" => String.t(),
        "Severity" => String.t(),
        "SourceIdentifier" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type create_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clusters_message() :: %{
        "Clusters" => list(cluster()),
        "Marker" => String.t()
      }
      
  """
  @type clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_snapshot_copy_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type enable_snapshot_copy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deauthorize_data_share_message() :: %{
        required("ConsumerIdentifier") => String.t(),
        required("DataShareArn") => String.t()
      }
      
  """
  @type deauthorize_data_share_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_share_association() :: %{
        "ConsumerAcceptedWrites" => boolean(),
        "ConsumerIdentifier" => String.t(),
        "ConsumerRegion" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "ProducerAllowedWrites" => boolean(),
        "Status" => list(any()),
        "StatusChangeDate" => non_neg_integer()
      }
      
  """
  @type data_share_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_snapshot_access_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type revoke_snapshot_access_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "Status" => String.t(),
        "TotalBackupSizeInMegaBytes" => float(),
        "DBName" => String.t(),
        "BackupProgressInMegaBytes" => float(),
        "ManualSnapshotRemainingDays" => integer(),
        "Tags" => list(tag()),
        "Encrypted" => boolean(),
        "OwnerAccount" => String.t(),
        "EnhancedVpcRouting" => boolean(),
        "SnapshotRetentionStartTime" => non_neg_integer(),
        "EncryptedWithHSM" => boolean(),
        "EstimatedSecondsToCompletion" => float(),
        "SourceRegion" => String.t(),
        "KmsKeyId" => String.t(),
        "VpcId" => String.t(),
        "AvailabilityZone" => String.t(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "EngineFullVersion" => String.t(),
        "AccountsWithRestoreAccess" => list(account_with_restore_access()),
        "ClusterCreateTime" => non_neg_integer(),
        "Port" => integer(),
        "NodeType" => String.t(),
        "SnapshotArn" => String.t(),
        "MaintenanceTrackName" => String.t(),
        "ElapsedTimeInSeconds" => float(),
        "MasterUsername" => String.t(),
        "SnapshotCreateTime" => non_neg_integer(),
        "ClusterVersion" => String.t(),
        "ClusterIdentifier" => String.t(),
        "NumberOfNodes" => integer(),
        "MasterPasswordSecretArn" => String.t(),
        "CurrentBackupRateInMegaBytesPerSecond" => float(),
        "SnapshotType" => String.t(),
        "ActualIncrementalBackupSizeInMegaBytes" => float(),
        "MasterPasswordSecretKmsKeyId" => String.t(),
        "SnapshotIdentifier" => String.t(),
        "RestorableNodeTypes" => list(String.t())
      }
      
  """
  @type snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_status() :: %{
        "CurrentRestoreRateInMegaBytesPerSecond" => float(),
        "ElapsedTimeInSeconds" => float(),
        "EstimatedTimeToCompletionInSeconds" => float(),
        "ProgressInMegaBytes" => float(),
        "SnapshotSizeInMegaBytes" => float(),
        "Status" => String.t()
      }
      
  """
  @type restore_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_partner_integration_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_partner_integration_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_orderable_cluster_options_message() :: %{
        optional("ClusterVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("NodeType") => String.t()
      }
      
  """
  @type describe_orderable_cluster_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_message() :: %{
        "Marker" => String.t(),
        "Snapshots" => list(snapshot())
      }
      
  """
  @type snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type scheduled_action_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_subnet_group_result() :: %{
        "ClusterSubnetGroup" => cluster_subnet_group()
      }
      
  """
  @type modify_cluster_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_topic_arn_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_topic_arn_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_cluster_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type resume_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_parameter_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subscription_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subscription_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_configuration_result() :: %{
        "HsmConfiguration" => hsm_configuration()
      }
      
  """
  @type create_hsm_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_logging_status_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type describe_logging_status_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_client_certificate_message() :: %{
        "HsmClientCertificates" => list(hsm_client_certificate()),
        "Marker" => String.t()
      }
      
  """
  @type hsm_client_certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_storage_message() :: %{
        "TotalBackupSizeInMegaBytes" => float(),
        "TotalProvisionedStorageInMegaBytes" => float()
      }
      
  """
  @type customer_storage_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ipv6_cidr_block_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type ipv6_cidr_block_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_db_revision() :: %{
        "ClusterIdentifier" => String.t(),
        "CurrentDatabaseRevision" => String.t(),
        "DatabaseRevisionReleaseDate" => non_neg_integer(),
        "RevisionTargets" => list(revision_target())
      }
      
  """
  @type cluster_db_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_logging_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type disable_logging_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_custom_domain_associations_message() :: %{
        optional("CustomDomainCertificateArn") => String.t(),
        optional("CustomDomainName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_custom_domain_associations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_link() :: %{
        "Link" => String.t(),
        "Text" => String.t()
      }
      
  """
  @type reference_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_db_revision_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_cluster_db_revision_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_modify_cluster_snapshots_message() :: %{
        optional("Force") => boolean(),
        optional("ManualSnapshotRetentionPeriod") => integer(),
        required("SnapshotIdentifierList") => list(String.t())
      }
      
  """
  @type batch_modify_cluster_snapshots_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_custom_domain_association_message() :: %{
        required("ClusterIdentifier") => String.t(),
        required("CustomDomainCertificateArn") => String.t(),
        required("CustomDomainName") => String.t()
      }
      
  """
  @type modify_custom_domain_association_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_access_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("EndpointName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ResourceOwner") => String.t(),
        optional("VpcId") => String.t()
      }
      
  """
  @type describe_endpoint_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_categories_message() :: %{
        "EventCategoriesMapList" => list(event_categories_map())
      }
      
  """
  @type event_categories_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_operation() :: %{
        "OperationName" => String.t()
      }
      
  """
  @type supported_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_cluster_security_group_ingress_message() :: %{
        optional("CIDRIP") => String.t(),
        optional("EC2SecurityGroupName") => String.t(),
        optional("EC2SecurityGroupOwnerId") => String.t(),
        required("ClusterSecurityGroupName") => String.t()
      }
      
  """
  @type revoke_cluster_security_group_ingress_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_cluster_snapshot_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type restore_from_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_default_cluster_parameters_result() :: %{
        "DefaultClusterParameters" => default_cluster_parameters()
      }
      
  """
  @type describe_default_cluster_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagged_resource() :: %{
        "ResourceName" => String.t(),
        "ResourceType" => String.t(),
        "Tag" => tag()
      }
      
  """
  @type tagged_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_primary_compute_input_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type failover_primary_compute_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_message() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SourceIdentifier") => String.t(),
        optional("SourceType") => list(any()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_events_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_with_restore_access() :: %{
        "AccountAlias" => String.t(),
        "AccountId" => String.t()
      }
      
  """
  @type account_with_restore_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_security_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_security_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_snapshots_message() :: %{
        optional("ClusterExists") => boolean(),
        optional("ClusterIdentifier") => String.t(),
        optional("EndTime") => non_neg_integer(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("OwnerAccount") => String.t(),
        optional("SnapshotArn") => String.t(),
        optional("SnapshotIdentifier") => String.t(),
        optional("SnapshotType") => String.t(),
        optional("SortingEntities") => list(snapshot_sorting_entity()),
        optional("StartTime") => non_neg_integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_cluster_snapshots_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_subnet_group_message() :: %{
        "ClusterSubnetGroups" => list(cluster_subnet_group()),
        "Marker" => String.t()
      }
      
  """
  @type cluster_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_message() :: %{
        optional("IamRoles") => list(String.t()),
        required("NodeType") => String.t(),
        optional("EnhancedVpcRouting") => boolean(),
        optional("MasterPasswordSecretKmsKeyId") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("HsmClientCertificateIdentifier") => String.t(),
        optional("ClusterVersion") => String.t(),
        optional("Encrypted") => boolean(),
        optional("MaintenanceTrackName") => String.t(),
        optional("RedshiftIdcApplicationArn") => String.t(),
        optional("SnapshotScheduleIdentifier") => String.t(),
        optional("HsmConfigurationIdentifier") => String.t(),
        optional("LoadSampleData") => String.t(),
        optional("IpAddressType") => String.t(),
        optional("NumberOfNodes") => integer(),
        optional("AvailabilityZoneRelocation") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("ManageMasterPassword") => boolean(),
        optional("ClusterSubnetGroupName") => String.t(),
        optional("ClusterType") => String.t(),
        optional("AdditionalInfo") => String.t(),
        optional("AquaConfigurationStatus") => list(any()),
        optional("AllowVersionUpgrade") => boolean(),
        optional("ClusterSecurityGroups") => list(String.t()),
        optional("PubliclyAccessible") => boolean(),
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("DefaultIamRoleArn") => String.t(),
        required("ClusterIdentifier") => String.t(),
        required("MasterUsername") => String.t(),
        optional("Port") => integer(),
        optional("ElasticIp") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()),
        optional("AutomatedSnapshotRetentionPeriod") => integer(),
        optional("KmsKeyId") => String.t(),
        optional("DBName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("ClusterParameterGroupName") => String.t(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_authentication_profile_result() :: %{
        "AuthenticationProfileName" => String.t()
      }
      
  """
  @type delete_authentication_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_snapshot_copy_status() :: %{
        "DestinationRegion" => String.t(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "RetentionPeriod" => float(),
        "SnapshotCopyGrantName" => String.t()
      }
      
  """
  @type cluster_snapshot_copy_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_limit() :: %{
        "Amount" => float(),
        "BreachAction" => list(any()),
        "ClusterIdentifier" => String.t(),
        "FeatureType" => list(any()),
        "LimitType" => list(any()),
        "Period" => list(any()),
        "Tags" => list(tag()),
        "UsageLimitId" => String.t()
      }
      
  """
  @type usage_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_schedule_update_in_progress_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_schedule_update_in_progress_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type scheduled_action_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_subnet_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_subnet_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_logging_message() :: %{
        optional("BucketName") => String.t(),
        optional("LogDestinationType") => list(any()),
        optional("LogExports") => list(String.t()),
        optional("S3KeyPrefix") => String.t(),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type enable_logging_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_exchange_status() :: %{
        "RequestTime" => non_neg_integer(),
        "ReservedNodeExchangeRequestId" => String.t(),
        "SourceReservedNodeCount" => integer(),
        "SourceReservedNodeId" => String.t(),
        "SourceReservedNodeType" => String.t(),
        "Status" => list(any()),
        "TargetReservedNodeCount" => integer(),
        "TargetReservedNodeOfferingId" => String.t(),
        "TargetReservedNodeType" => String.t()
      }
      
  """
  @type reserved_node_exchange_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_redshift_idc_applications_result() :: %{
        "Marker" => String.t(),
        "RedshiftIdcApplications" => list(redshift_idc_application())
      }
      
  """
  @type describe_redshift_idc_applications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type modify_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_request_size_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type batch_delete_request_size_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_access_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ResourceOwner") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()),
        required("EndpointName") => String.t(),
        required("SubnetGroupName") => String.t()
      }
      
  """
  @type create_endpoint_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_for_consumer_message() :: %{
        optional("ConsumerArn") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("Status") => list(any())
      }
      
  """
  @type describe_data_shares_for_consumer_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_endpoint_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedules_output_message() :: %{
        "Marker" => String.t(),
        "SnapshotSchedules" => list(snapshot_schedule())
      }
      
  """
  @type describe_snapshot_schedules_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_exchange_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_exchange_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_target() :: %{
        "DatabaseVersion" => String.t(),
        "MaintenanceTrackName" => String.t(),
        "SupportedOperations" => list(supported_operation())
      }
      
  """
  @type update_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_limit_message() :: %{
        optional("BreachAction") => list(any()),
        optional("Period") => list(any()),
        optional("Tags") => list(tag()),
        required("Amount") => float(),
        required("ClusterIdentifier") => String.t(),
        required("FeatureType") => list(any()),
        required("LimitType") => list(any())
      }
      
  """
  @type create_usage_limit_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_encryption_key_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type rotate_encryption_key_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_authentication_profile_message() :: %{
        required("AuthenticationProfileContent") => String.t(),
        required("AuthenticationProfileName") => String.t()
      }
      
  """
  @type modify_authentication_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_identifier() :: %{
        "ClusterIdentifier" => String.t()
      }
      
  """
  @type provisioned_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_schedule_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_schedule_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resize_progress_message() :: %{
        "AvgResizeRateInMegaBytesPerSecond" => float(),
        "DataTransferProgressPercent" => float(),
        "ElapsedTimeInSeconds" => float(),
        "EstimatedTimeToCompletionInSeconds" => float(),
        "ImportTablesCompleted" => list(String.t()),
        "ImportTablesInProgress" => list(String.t()),
        "ImportTablesNotStarted" => list(String.t()),
        "Message" => String.t(),
        "ProgressInMegaBytes" => float(),
        "ResizeType" => String.t(),
        "Status" => String.t(),
        "TargetClusterType" => String.t(),
        "TargetEncryptionType" => String.t(),
        "TargetNodeType" => String.t(),
        "TargetNumberOfNodes" => integer(),
        "TotalResizeDataInMegaBytes" => float()
      }
      
  """
  @type resize_progress_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_client_certificate_message() :: %{
        optional("Tags") => list(tag()),
        required("HsmClientCertificateIdentifier") => String.t()
      }
      
  """
  @type create_hsm_client_certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_message() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeValues" => list(attribute_value_target())
      }
      
  """
  @type account_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_to_snapshot_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type access_to_snapshot_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_node_exchange_status_input_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ReservedNodeExchangeRequestId") => String.t(),
        optional("ReservedNodeId") => String.t()
      }
      
  """
  @type describe_reserved_node_exchange_status_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_platform() :: %{
        "Name" => String.t()
      }
      
  """
  @type supported_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unknown_snapshot_copy_region_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unknown_snapshot_copy_region_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partner_integration_info() :: %{
        "CreatedAt" => non_neg_integer(),
        "DatabaseName" => String.t(),
        "PartnerName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type partner_integration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integrations_message() :: %{
        "Integrations" => list(integration()),
        "Marker" => String.t()
      }
      
  """
  @type integrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_to_region_disabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type copy_to_region_disabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_security_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_configuration_message() :: %{
        optional("Tags") => list(tag()),
        required("Description") => String.t(),
        required("HsmConfigurationIdentifier") => String.t(),
        required("HsmIpAddress") => String.t(),
        required("HsmPartitionName") => String.t(),
        required("HsmPartitionPassword") => String.t(),
        required("HsmServerPublicCertificate") => String.t()
      }
      
  """
  @type create_hsm_configuration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_snapshot_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_snapshot_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_encryption_key_message() :: %{
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type rotate_encryption_key_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cluster_credentials_message() :: %{
        optional("AutoCreate") => boolean(),
        optional("ClusterIdentifier") => String.t(),
        optional("CustomDomainName") => String.t(),
        optional("DbGroups") => list(String.t()),
        optional("DbName") => String.t(),
        optional("DurationSeconds") => integer(),
        required("DbUser") => String.t()
      }
      
  """
  @type get_cluster_credentials_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_client_certificates_message() :: %{
        optional("HsmClientCertificateIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t())
      }
      
  """
  @type describe_hsm_client_certificates_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_security_group_message() :: %{
        required("ClusterSecurityGroupName") => String.t()
      }
      
  """
  @type delete_cluster_security_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_message() :: %{
        optional("Filters") => list(describe_integrations_filter()),
        optional("IntegrationArn") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_integrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_option_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_option_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_limit_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type usage_limit_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group_message() :: %{
        "ClusterSecurityGroups" => list(cluster_security_group()),
        "Marker" => String.t()
      }
      
  """
  @type cluster_security_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_to_cluster_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type access_to_cluster_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partner_integration_output_message() :: %{
        optional("DatabaseName") => String.t(),
        optional("PartnerName") => String.t()
      }
      
  """
  @type partner_integration_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      number_of_nodes_per_cluster_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type number_of_nodes_per_cluster_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_authorization_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_authorization_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_scheduled_action_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_scheduled_action_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_shares_for_producer_result() :: %{
        "DataShares" => list(data_share()),
        "Marker" => String.t()
      }
      
  """
  @type describe_data_shares_for_producer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_access() :: %{
        "Address" => String.t(),
        "ClusterIdentifier" => String.t(),
        "EndpointCreateTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "EndpointStatus" => String.t(),
        "Port" => integer(),
        "ResourceOwner" => String.t(),
        "SubnetGroupName" => String.t(),
        "VpcEndpoint" => vpc_endpoint(),
        "VpcSecurityGroups" => list(vpc_security_group_membership())
      }
      
  """
  @type endpoint_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_policy_update_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_policy_update_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_message() :: %{
        optional("FinalClusterSnapshotIdentifier") => String.t(),
        optional("FinalClusterSnapshotRetentionPeriod") => integer(),
        optional("SkipFinalClusterSnapshot") => boolean(),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type delete_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_from_cluster_snapshot_result() :: %{
        "TableRestoreStatus" => table_restore_status()
      }
      
  """
  @type restore_table_from_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_domain_associations_message() :: %{
        "Associations" => list(association()),
        "Marker" => String.t()
      }
      
  """
  @type custom_domain_associations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authentication_profile_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_message() :: %{
        optional("AllowVersionUpgrade") => boolean(),
        optional("AutomatedSnapshotRetentionPeriod") => integer(),
        optional("AvailabilityZone") => String.t(),
        optional("AvailabilityZoneRelocation") => boolean(),
        optional("ClusterParameterGroupName") => String.t(),
        optional("ClusterSecurityGroups") => list(String.t()),
        optional("ClusterType") => String.t(),
        optional("ClusterVersion") => String.t(),
        optional("ElasticIp") => String.t(),
        optional("Encrypted") => boolean(),
        optional("EnhancedVpcRouting") => boolean(),
        optional("HsmClientCertificateIdentifier") => String.t(),
        optional("HsmConfigurationIdentifier") => String.t(),
        optional("IpAddressType") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("MaintenanceTrackName") => String.t(),
        optional("ManageMasterPassword") => boolean(),
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("MasterPasswordSecretKmsKeyId") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("NewClusterIdentifier") => String.t(),
        optional("NodeType") => String.t(),
        optional("NumberOfNodes") => integer(),
        optional("Port") => integer(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type modify_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_offering_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_offering_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscription_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type event_subscription_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_security_group() :: %{
        "ClusterSecurityGroupName" => String.t(),
        "Description" => String.t(),
        "EC2SecurityGroups" => list(ec2_security_group()),
        "IPRanges" => list(ip_range()),
        "Tags" => list(tag())
      }
      
  """
  @type cluster_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_snapshot_schedule_message() :: %{
        optional("DisassociateSchedule") => boolean(),
        optional("ScheduleIdentifier") => String.t(),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type modify_cluster_snapshot_schedule_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_categories_message() :: %{
        optional("SourceType") => String.t()
      }
      
  """
  @type describe_event_categories_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_redshift_idc_application_result() :: %{
        "RedshiftIdcApplication" => redshift_idc_application()
      }
      
  """
  @type modify_redshift_idc_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_cluster_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_schedule_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_schedule_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lake_formation_query() :: %{
        "Authorization" => list(any())
      }
      
  """
  @type lake_formation_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type delete_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_table_restore_argument_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_table_restore_argument_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_conflict_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_conflict_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_restore_status_message() :: %{
        "Marker" => String.t(),
        "TableRestoreStatusDetails" => list(table_restore_status())
      }
      
  """
  @type table_restore_status_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revision_target() :: %{
        "DatabaseRevision" => String.t(),
        "DatabaseRevisionReleaseDate" => non_neg_integer(),
        "Description" => String.t()
      }
      
  """
  @type revision_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_partners_input_message() :: %{
        optional("DatabaseName") => String.t(),
        optional("PartnerName") => String.t(),
        required("AccountId") => String.t(),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type describe_partners_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_cluster_snapshots_result() :: %{
        "Errors" => list(snapshot_error_message()),
        "Resources" => list(String.t())
      }
      
  """
  @type batch_delete_cluster_snapshots_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_partners_output_message() :: %{
        "PartnerIntegrationInfoList" => list(partner_integration_info())
      }
      
  """
  @type describe_partners_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_from_cluster_snapshot_message() :: %{
        optional("OwnerAccount") => String.t(),
        optional("IamRoles") => list(String.t()),
        optional("SnapshotArn") => String.t(),
        optional("EnhancedVpcRouting") => boolean(),
        optional("MasterPasswordSecretKmsKeyId") => String.t(),
        optional("HsmClientCertificateIdentifier") => String.t(),
        optional("Encrypted") => boolean(),
        optional("MaintenanceTrackName") => String.t(),
        optional("SnapshotScheduleIdentifier") => String.t(),
        optional("HsmConfigurationIdentifier") => String.t(),
        optional("IpAddressType") => String.t(),
        optional("NumberOfNodes") => integer(),
        optional("AvailabilityZoneRelocation") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("ManageMasterPassword") => boolean(),
        optional("ClusterSubnetGroupName") => String.t(),
        optional("AdditionalInfo") => String.t(),
        optional("AquaConfigurationStatus") => list(any()),
        optional("AllowVersionUpgrade") => boolean(),
        optional("ClusterSecurityGroups") => list(String.t()),
        optional("PubliclyAccessible") => boolean(),
        optional("NodeType") => String.t(),
        optional("ManualSnapshotRetentionPeriod") => integer(),
        optional("DefaultIamRoleArn") => String.t(),
        required("ClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("TargetReservedNodeOfferingId") => String.t(),
        optional("SnapshotIdentifier") => String.t(),
        optional("SnapshotClusterIdentifier") => String.t(),
        optional("ElasticIp") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("ReservedNodeId") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()),
        optional("AutomatedSnapshotRetentionPeriod") => integer(),
        optional("KmsKeyId") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("ClusterParameterGroupName") => String.t()
      }
      
  """
  @type restore_from_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_no_authorization_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_no_authorization_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_authorization_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_authorization_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_cluster_parameters() :: %{
        "Marker" => String.t(),
        "ParameterGroupFamily" => String.t(),
        "Parameters" => list(parameter())
      }
      
  """
  @type default_cluster_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_configuration_message() :: %{
        "HsmConfigurations" => list(hsm_configuration()),
        "Marker" => String.t()
      }
      
  """
  @type hsm_configuration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_cluster_security_group_ingress_result() :: %{
        "ClusterSecurityGroup" => cluster_security_group()
      }
      
  """
  @type revoke_cluster_security_group_ingress_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_parameter_group() :: %{
        "Description" => String.t(),
        "ParameterGroupFamily" => String.t(),
        "ParameterGroupName" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type cluster_parameter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_restore_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type table_restore_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_schedule_message() :: %{
        required("ScheduleIdentifier") => String.t()
      }
      
  """
  @type delete_snapshot_schedule_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_aqua_output_message() :: %{
        "AquaConfiguration" => aqua_configuration()
      }
      
  """
  @type modify_aqua_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_security_group_membership() :: %{
        "Status" => String.t(),
        "VpcSecurityGroupId" => String.t()
      }
      
  """
  @type vpc_security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_versions_message() :: %{
        optional("ClusterParameterGroupFamily") => String.t(),
        optional("ClusterVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cluster_versions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aqua_configuration() :: %{
        "AquaConfigurationStatus" => list(any()),
        "AquaStatus" => list(any())
      }
      
  """
  @type aqua_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_node_configuration_options_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Filters") => list(node_configuration_options_filter()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("OwnerAccount") => String.t(),
        optional("SnapshotArn") => String.t(),
        optional("SnapshotIdentifier") => String.t(),
        required("ActionType") => list(any())
      }
      
  """
  @type describe_node_configuration_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_domain_association_result() :: %{
        "ClusterIdentifier" => String.t(),
        "CustomDomainCertExpiryTime" => String.t(),
        "CustomDomainCertificateArn" => String.t(),
        "CustomDomainName" => String.t()
      }
      
  """
  @type create_custom_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_aqua_input_message() :: %{
        optional("AquaConfigurationStatus") => list(any()),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type modify_aqua_input_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_snapshot_access_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type authorize_snapshot_access_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_retention_period_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_retention_period_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_configuration_options_message() :: %{
        "Marker" => String.t(),
        "NodeConfigurationOptionList" => list(node_configuration_option())
      }
      
  """
  @type node_configuration_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_data_share_consumer_message() :: %{
        optional("ConsumerArn") => String.t(),
        optional("ConsumerRegion") => String.t(),
        optional("DisassociateEntireAccount") => boolean(),
        required("DataShareArn") => String.t()
      }
      
  """
  @type disassociate_data_share_consumer_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_namespace_output_message() :: %{
        "Status" => list(any())
      }
      
  """
  @type register_namespace_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorized_token_issuer() :: %{
        "AuthorizedAudiencesList" => list(String.t()),
        "TrustedTokenIssuerArn" => String.t()
      }
      
  """
  @type authorized_token_issuer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_snapshot_access_message() :: %{
        optional("SnapshotArn") => String.t(),
        optional("SnapshotClusterIdentifier") => String.t(),
        optional("SnapshotIdentifier") => String.t(),
        required("AccountWithRestoreAccess") => String.t()
      }
      
  """
  @type revoke_snapshot_access_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_cluster_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type copy_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secondary_cluster_info() :: %{
        "AvailabilityZone" => String.t(),
        "ClusterNodes" => list(cluster_node())
      }
      
  """
  @type secondary_cluster_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partner_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type partner_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_usage_limits_message() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("FeatureType") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TagKeys") => list(String.t()),
        optional("TagValues") => list(String.t()),
        optional("UsageLimitId") => String.t()
      }
      
  """
  @type describe_usage_limits_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_subnet_group_message() :: %{
        optional("Tags") => list(tag()),
        required("ClusterSubnetGroupName") => String.t(),
        required("Description") => String.t(),
        required("SubnetIds") => list(String.t())
      }
      
  """
  @type create_cluster_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type create_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_maintenance_message() :: %{
        optional("DeferMaintenance") => boolean(),
        optional("DeferMaintenanceDuration") => integer(),
        optional("DeferMaintenanceEndTime") => non_neg_integer(),
        optional("DeferMaintenanceIdentifier") => String.t(),
        optional("DeferMaintenanceStartTime") => non_neg_integer(),
        required("ClusterIdentifier") => String.t()
      }
      
  """
  @type modify_cluster_maintenance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_domain_association_message() :: %{
        required("ClusterIdentifier") => String.t(),
        required("CustomDomainCertificateArn") => String.t(),
        required("CustomDomainName") => String.t()
      }
      
  """
  @type create_custom_domain_association_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_client_certificate_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type hsm_client_certificate_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_track() :: %{
        "DatabaseVersion" => String.t(),
        "MaintenanceTrackName" => String.t(),
        "UpdateTargets" => list(update_target())
      }
      
  """
  @type maintenance_track() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependent_service_unavailable_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type dependent_service_unavailable_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reserved_node_exchange_configuration_options_output_message() :: %{
        "Marker" => String.t(),
        "ReservedNodeConfigurationOptionList" => list(reserved_node_configuration_option())
      }
      
  """
  @type get_reserved_node_exchange_configuration_options_output_message() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      create_scheduled_action_message() :: %{
        optional("Enable") => boolean(),
        optional("EndTime") => non_neg_integer(),
        optional("ScheduledActionDescription") => String.t(),
        optional("StartTime") => non_neg_integer(),
        required("IamRole") => String.t(),
        required("Schedule") => String.t(),
        required("ScheduledActionName") => String.t(),
        required("TargetAction") => scheduled_action_type()
      }
      
  """
  @type create_scheduled_action_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_node_exchange_status_output_message() :: %{
        "Marker" => String.t(),
        "ReservedNodeExchangeStatusDetails" => list(reserved_node_exchange_status())
      }
      
  """
  @type describe_reserved_node_exchange_status_output_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_schedule() :: %{
        "AssociatedClusterCount" => integer(),
        "AssociatedClusters" => list(cluster_associated_to_schedule()),
        "NextInvocations" => list(non_neg_integer()),
        "ScheduleDefinitions" => list(String.t()),
        "ScheduleDescription" => String.t(),
        "ScheduleIdentifier" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type snapshot_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      track_list_message() :: %{
        "MaintenanceTracks" => list(maintenance_track()),
        "Marker" => String.t()
      }
      
  """
  @type track_list_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_authentication_profiles_message() :: %{
        optional("AuthenticationProfileName") => String.t()
      }
      
  """
  @type describe_authentication_profiles_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_snapshot_copy_retention_period_result() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_snapshot_copy_retention_period_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_cluster_security_group_ingress_result() :: %{
        "ClusterSecurityGroup" => cluster_security_group()
      }
      
  """
  @type authorize_cluster_security_group_ingress_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm_status() :: %{
        "HsmClientCertificateIdentifier" => String.t(),
        "HsmConfigurationIdentifier" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type hsm_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_snapshot_message() :: %{
        "SnapshotClusterIdentifier" => String.t(),
        "SnapshotIdentifier" => String.t()
      }
      
  """
  @type delete_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_access_message() :: %{
        required("EndpointName") => String.t()
      }
      
  """
  @type delete_endpoint_access_message() :: %{String.t() => any()}

  @type accept_reserved_node_exchange_errors() ::
          dependent_service_unavailable_fault()
          | reserved_node_offering_not_found_fault()
          | reserved_node_not_found_fault()
          | invalid_reserved_node_state_fault()
          | reserved_node_already_migrated_fault()
          | unsupported_operation_fault()
          | reserved_node_already_exists_fault()

  @type add_partner_errors() ::
          partner_not_found_fault()
          | unauthorized_partner_integration_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type associate_data_share_consumer_errors() ::
          invalid_namespace_fault() | invalid_data_share_fault()

  @type authorize_cluster_security_group_ingress_errors() ::
          authorization_quota_exceeded_fault()
          | cluster_security_group_not_found_fault()
          | invalid_cluster_security_group_state_fault()
          | authorization_already_exists_fault()

  @type authorize_data_share_errors() :: invalid_data_share_fault()

  @type authorize_endpoint_access_errors() ::
          invalid_authorization_state_fault()
          | endpoint_authorization_already_exists_fault()
          | invalid_cluster_state_fault()
          | endpoint_authorizations_per_cluster_limit_exceeded_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type authorize_snapshot_access_errors() ::
          authorization_quota_exceeded_fault()
          | cluster_snapshot_not_found_fault()
          | authorization_already_exists_fault()
          | invalid_cluster_snapshot_state_fault()
          | unsupported_operation_fault()
          | dependent_service_request_throttling_fault()
          | limit_exceeded_fault()

  @type batch_delete_cluster_snapshots_errors() :: batch_delete_request_size_exceeded_fault()

  @type batch_modify_cluster_snapshots_errors() ::
          invalid_retention_period_fault() | batch_modify_cluster_snapshots_limit_exceeded_fault()

  @type cancel_resize_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | resize_not_found_fault()

  @type copy_cluster_snapshot_errors() ::
          invalid_retention_period_fault()
          | cluster_snapshot_not_found_fault()
          | cluster_snapshot_already_exists_fault()
          | invalid_cluster_snapshot_state_fault()
          | cluster_snapshot_quota_exceeded_fault()
          | cluster_not_found_fault()

  @type create_authentication_profile_errors() ::
          authentication_profile_quota_exceeded_fault()
          | invalid_authentication_profile_request_fault()
          | authentication_profile_already_exists_fault()

  @type create_cluster_errors() ::
          tag_limit_exceeded_fault()
          | invalid_retention_period_fault()
          | cluster_already_exists_fault()
          | insufficient_cluster_capacity_fault()
          | number_of_nodes_per_cluster_limit_exceeded_fault()
          | cluster_security_group_not_found_fault()
          | snapshot_schedule_not_found_fault()
          | ipv6_cidr_block_not_found_fault()
          | number_of_nodes_quota_exceeded_fault()
          | hsm_client_certificate_not_found_fault()
          | redshift_idc_application_not_exists_fault()
          | cluster_parameter_group_not_found_fault()
          | invalid_tag_fault()
          | invalid_elastic_ip_fault()
          | invalid_vpc_network_state_fault()
          | unauthorized_operation()
          | invalid_cluster_track_fault()
          | hsm_configuration_not_found_fault()
          | cluster_quota_exceeded_fault()
          | unsupported_operation_fault()
          | dependent_service_request_throttling_fault()
          | invalid_subnet()
          | limit_exceeded_fault()
          | cluster_subnet_group_not_found_fault()
          | invalid_cluster_subnet_group_state_fault()

  @type create_cluster_parameter_group_errors() ::
          tag_limit_exceeded_fault()
          | cluster_parameter_group_already_exists_fault()
          | cluster_parameter_group_quota_exceeded_fault()
          | invalid_tag_fault()

  @type create_cluster_security_group_errors() ::
          tag_limit_exceeded_fault()
          | invalid_tag_fault()
          | cluster_security_group_already_exists_fault()
          | cluster_security_group_quota_exceeded_fault()

  @type create_cluster_snapshot_errors() ::
          tag_limit_exceeded_fault()
          | invalid_retention_period_fault()
          | invalid_cluster_state_fault()
          | cluster_snapshot_already_exists_fault()
          | invalid_tag_fault()
          | cluster_snapshot_quota_exceeded_fault()
          | cluster_not_found_fault()

  @type create_cluster_subnet_group_errors() ::
          tag_limit_exceeded_fault()
          | cluster_subnet_group_already_exists_fault()
          | cluster_subnet_quota_exceeded_fault()
          | invalid_tag_fault()
          | unauthorized_operation()
          | dependent_service_request_throttling_fault()
          | invalid_subnet()
          | cluster_subnet_group_quota_exceeded_fault()

  @type create_custom_domain_association_errors() ::
          custom_cname_association_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type create_endpoint_access_errors() ::
          endpoint_already_exists_fault()
          | access_to_cluster_denied_fault()
          | invalid_cluster_state_fault()
          | invalid_cluster_security_group_state_fault()
          | endpoints_per_cluster_limit_exceeded_fault()
          | unauthorized_operation()
          | endpoints_per_authorization_limit_exceeded_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | cluster_subnet_group_not_found_fault()

  @type create_event_subscription_errors() ::
          tag_limit_exceeded_fault()
          | s_n_s_no_authorization_fault()
          | event_subscription_quota_exceeded_fault()
          | s_n_s_topic_arn_not_found_fault()
          | s_n_s_invalid_topic_fault()
          | subscription_category_not_found_fault()
          | source_not_found_fault()
          | invalid_tag_fault()
          | subscription_event_id_not_found_fault()
          | subscription_already_exist_fault()
          | subscription_severity_not_found_fault()

  @type create_hsm_client_certificate_errors() ::
          hsm_client_certificate_already_exists_fault()
          | tag_limit_exceeded_fault()
          | invalid_tag_fault()
          | hsm_client_certificate_quota_exceeded_fault()

  @type create_hsm_configuration_errors() ::
          tag_limit_exceeded_fault()
          | hsm_configuration_already_exists_fault()
          | hsm_configuration_quota_exceeded_fault()
          | invalid_tag_fault()

  @type create_integration_errors() ::
          tag_limit_exceeded_fault()
          | invalid_cluster_state_fault()
          | integration_quota_exceeded_fault()
          | integration_conflict_operation_fault()
          | invalid_tag_fault()
          | unsupported_operation_fault()
          | integration_already_exists_fault()
          | integration_target_not_found_fault()
          | integration_source_not_found_fault()

  @type create_redshift_idc_application_errors() ::
          dependent_service_unavailable_fault()
          | redshift_idc_application_quota_exceeded_fault()
          | dependent_service_access_denied_fault()
          | unsupported_operation_fault()
          | redshift_idc_application_already_exists_fault()

  @type create_scheduled_action_errors() ::
          invalid_schedule_fault()
          | invalid_scheduled_action_fault()
          | scheduled_action_already_exists_fault()
          | scheduled_action_quota_exceeded_fault()
          | unauthorized_operation()
          | scheduled_action_type_unsupported_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type create_snapshot_copy_grant_errors() ::
          tag_limit_exceeded_fault()
          | snapshot_copy_grant_quota_exceeded_fault()
          | invalid_tag_fault()
          | snapshot_copy_grant_already_exists_fault()
          | dependent_service_request_throttling_fault()
          | limit_exceeded_fault()

  @type create_snapshot_schedule_errors() ::
          tag_limit_exceeded_fault()
          | invalid_schedule_fault()
          | invalid_tag_fault()
          | snapshot_schedule_quota_exceeded_fault()
          | snapshot_schedule_already_exists_fault()
          | schedule_definition_type_unsupported_fault()

  @type create_tags_errors() ::
          tag_limit_exceeded_fault()
          | invalid_cluster_state_fault()
          | invalid_tag_fault()
          | resource_not_found_fault()

  @type create_usage_limit_errors() ::
          tag_limit_exceeded_fault()
          | usage_limit_already_exists_fault()
          | invalid_cluster_state_fault()
          | invalid_usage_limit_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | limit_exceeded_fault()

  @type deauthorize_data_share_errors() :: invalid_data_share_fault()

  @type delete_authentication_profile_errors() ::
          authentication_profile_not_found_fault()
          | invalid_authentication_profile_request_fault()

  @type delete_cluster_errors() ::
          invalid_retention_period_fault()
          | invalid_cluster_state_fault()
          | cluster_snapshot_already_exists_fault()
          | cluster_snapshot_quota_exceeded_fault()
          | cluster_not_found_fault()

  @type delete_cluster_parameter_group_errors() ::
          cluster_parameter_group_not_found_fault()
          | invalid_cluster_parameter_group_state_fault()

  @type delete_cluster_security_group_errors() ::
          cluster_security_group_not_found_fault() | invalid_cluster_security_group_state_fault()

  @type delete_cluster_snapshot_errors() ::
          cluster_snapshot_not_found_fault() | invalid_cluster_snapshot_state_fault()

  @type delete_cluster_subnet_group_errors() ::
          invalid_cluster_subnet_state_fault()
          | cluster_subnet_group_not_found_fault()
          | invalid_cluster_subnet_group_state_fault()

  @type delete_custom_domain_association_errors() ::
          custom_domain_association_not_found_fault()
          | custom_cname_association_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type delete_endpoint_access_errors() ::
          invalid_cluster_state_fault()
          | invalid_endpoint_state_fault()
          | endpoint_not_found_fault()
          | invalid_cluster_security_group_state_fault()
          | cluster_not_found_fault()

  @type delete_event_subscription_errors() ::
          invalid_subscription_state_fault() | subscription_not_found_fault()

  @type delete_hsm_client_certificate_errors() ::
          hsm_client_certificate_not_found_fault() | invalid_hsm_client_certificate_state_fault()

  @type delete_hsm_configuration_errors() ::
          invalid_hsm_configuration_state_fault() | hsm_configuration_not_found_fault()

  @type delete_integration_errors() ::
          integration_conflict_state_fault()
          | integration_not_found_fault()
          | integration_conflict_operation_fault()
          | unsupported_operation_fault()

  @type delete_partner_errors() ::
          partner_not_found_fault()
          | unauthorized_partner_integration_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type delete_redshift_idc_application_errors() ::
          dependent_service_unavailable_fault()
          | redshift_idc_application_not_exists_fault()
          | dependent_service_access_denied_fault()
          | unsupported_operation_fault()

  @type delete_resource_policy_errors() ::
          unsupported_operation_fault() | resource_not_found_fault()

  @type delete_scheduled_action_errors() ::
          scheduled_action_not_found_fault() | unauthorized_operation()

  @type delete_snapshot_copy_grant_errors() ::
          snapshot_copy_grant_not_found_fault() | invalid_snapshot_copy_grant_state_fault()

  @type delete_snapshot_schedule_errors() ::
          snapshot_schedule_not_found_fault() | invalid_cluster_snapshot_schedule_state_fault()

  @type delete_tags_errors() :: invalid_tag_fault() | resource_not_found_fault()

  @type delete_usage_limit_errors() ::
          unsupported_operation_fault() | usage_limit_not_found_fault()

  @type deregister_namespace_errors() ::
          invalid_cluster_state_fault() | invalid_namespace_fault() | cluster_not_found_fault()

  @type describe_authentication_profiles_errors() ::
          authentication_profile_not_found_fault()
          | invalid_authentication_profile_request_fault()

  @type describe_cluster_db_revisions_errors() ::
          invalid_cluster_state_fault() | cluster_not_found_fault()

  @type describe_cluster_parameter_groups_errors() ::
          cluster_parameter_group_not_found_fault() | invalid_tag_fault()

  @type describe_cluster_parameters_errors() :: cluster_parameter_group_not_found_fault()

  @type describe_cluster_security_groups_errors() ::
          cluster_security_group_not_found_fault() | invalid_tag_fault()

  @type describe_cluster_snapshots_errors() ::
          cluster_snapshot_not_found_fault()
          | invalid_tag_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type describe_cluster_subnet_groups_errors() ::
          invalid_tag_fault() | cluster_subnet_group_not_found_fault()

  @type describe_cluster_tracks_errors() ::
          unauthorized_operation() | invalid_cluster_track_fault()

  @type describe_clusters_errors() :: invalid_tag_fault() | cluster_not_found_fault()

  @type describe_custom_domain_associations_errors() ::
          custom_domain_association_not_found_fault() | unsupported_operation_fault()

  @type describe_data_shares_errors() :: invalid_data_share_fault()

  @type describe_data_shares_for_consumer_errors() :: invalid_namespace_fault()

  @type describe_data_shares_for_producer_errors() :: invalid_namespace_fault()

  @type describe_endpoint_access_errors() ::
          invalid_cluster_state_fault() | endpoint_not_found_fault() | cluster_not_found_fault()

  @type describe_endpoint_authorization_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault()

  @type describe_event_subscriptions_errors() ::
          subscription_not_found_fault() | invalid_tag_fault()

  @type describe_hsm_client_certificates_errors() ::
          hsm_client_certificate_not_found_fault() | invalid_tag_fault()

  @type describe_hsm_configurations_errors() ::
          invalid_tag_fault() | hsm_configuration_not_found_fault()

  @type describe_inbound_integrations_errors() ::
          integration_not_found_fault()
          | invalid_namespace_fault()
          | unsupported_operation_fault()

  @type describe_integrations_errors() ::
          integration_not_found_fault() | unsupported_operation_fault()

  @type describe_logging_status_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault()

  @type describe_node_configuration_options_errors() ::
          cluster_snapshot_not_found_fault()
          | access_to_snapshot_denied_fault()
          | invalid_cluster_snapshot_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type describe_partners_errors() ::
          unauthorized_partner_integration_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type describe_redshift_idc_applications_errors() ::
          dependent_service_unavailable_fault()
          | redshift_idc_application_not_exists_fault()
          | dependent_service_access_denied_fault()
          | unsupported_operation_fault()

  @type describe_reserved_node_exchange_status_errors() ::
          reserved_node_exchange_not_found_fault()
          | reserved_node_not_found_fault()
          | unsupported_operation_fault()

  @type describe_reserved_node_offerings_errors() ::
          dependent_service_unavailable_fault()
          | reserved_node_offering_not_found_fault()
          | unsupported_operation_fault()

  @type describe_reserved_nodes_errors() ::
          dependent_service_unavailable_fault() | reserved_node_not_found_fault()

  @type describe_resize_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault() | resize_not_found_fault()

  @type describe_scheduled_actions_errors() ::
          scheduled_action_not_found_fault() | unauthorized_operation()

  @type describe_snapshot_copy_grants_errors() ::
          invalid_tag_fault() | snapshot_copy_grant_not_found_fault()

  @type describe_table_restore_status_errors() ::
          table_restore_not_found_fault() | cluster_not_found_fault()

  @type describe_tags_errors() :: invalid_tag_fault() | resource_not_found_fault()

  @type describe_usage_limits_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault()

  @type disable_logging_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type disable_snapshot_copy_errors() ::
          invalid_cluster_state_fault()
          | unauthorized_operation()
          | unsupported_operation_fault()
          | snapshot_copy_already_disabled_fault()
          | cluster_not_found_fault()

  @type disassociate_data_share_consumer_errors() ::
          invalid_namespace_fault() | invalid_data_share_fault()

  @type enable_logging_errors() ::
          invalid_cluster_state_fault()
          | invalid_s3_key_prefix_fault()
          | insufficient_s3_bucket_policy_fault()
          | bucket_not_found_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | invalid_s3_bucket_name_fault()

  @type enable_snapshot_copy_errors() ::
          invalid_retention_period_fault()
          | copy_to_region_disabled_fault()
          | unknown_snapshot_copy_region_fault()
          | invalid_cluster_state_fault()
          | incompatible_orderable_options()
          | snapshot_copy_already_enabled_fault()
          | unauthorized_operation()
          | dependent_service_request_throttling_fault()
          | cluster_not_found_fault()
          | limit_exceeded_fault()
          | snapshot_copy_grant_not_found_fault()

  @type failover_primary_compute_errors() ::
          invalid_cluster_state_fault()
          | unauthorized_operation()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type get_cluster_credentials_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault()

  @type get_cluster_credentials_with_iam_errors() ::
          unsupported_operation_fault() | cluster_not_found_fault()

  @type get_reserved_node_exchange_configuration_options_errors() ::
          dependent_service_unavailable_fault()
          | reserved_node_offering_not_found_fault()
          | cluster_snapshot_not_found_fault()
          | reserved_node_not_found_fault()
          | invalid_reserved_node_state_fault()
          | reserved_node_already_migrated_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type get_reserved_node_exchange_offerings_errors() ::
          dependent_service_unavailable_fault()
          | reserved_node_offering_not_found_fault()
          | reserved_node_not_found_fault()
          | invalid_reserved_node_state_fault()
          | reserved_node_already_migrated_fault()
          | unsupported_operation_fault()

  @type get_resource_policy_errors() ::
          unsupported_operation_fault() | invalid_policy_fault() | resource_not_found_fault()

  @type list_recommendations_errors() :: unsupported_operation_fault() | cluster_not_found_fault()

  @type modify_aqua_configuration_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type modify_authentication_profile_errors() ::
          authentication_profile_quota_exceeded_fault()
          | authentication_profile_not_found_fault()
          | invalid_authentication_profile_request_fault()

  @type modify_cluster_errors() ::
          invalid_retention_period_fault()
          | cluster_already_exists_fault()
          | insufficient_cluster_capacity_fault()
          | number_of_nodes_per_cluster_limit_exceeded_fault()
          | unsupported_option_fault()
          | cluster_security_group_not_found_fault()
          | invalid_cluster_state_fault()
          | invalid_cluster_security_group_state_fault()
          | ipv6_cidr_block_not_found_fault()
          | custom_cname_association_fault()
          | table_limit_exceeded_fault()
          | number_of_nodes_quota_exceeded_fault()
          | hsm_client_certificate_not_found_fault()
          | cluster_parameter_group_not_found_fault()
          | invalid_elastic_ip_fault()
          | unauthorized_operation()
          | invalid_cluster_track_fault()
          | hsm_configuration_not_found_fault()
          | unsupported_operation_fault()
          | dependent_service_request_throttling_fault()
          | cluster_not_found_fault()
          | limit_exceeded_fault()

  @type modify_cluster_db_revision_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | cluster_on_latest_revision_fault()

  @type modify_cluster_iam_roles_errors() ::
          invalid_cluster_state_fault() | cluster_not_found_fault()

  @type modify_cluster_maintenance_errors() ::
          invalid_cluster_state_fault() | cluster_not_found_fault()

  @type modify_cluster_parameter_group_errors() ::
          cluster_parameter_group_not_found_fault()
          | invalid_cluster_parameter_group_state_fault()

  @type modify_cluster_snapshot_errors() ::
          invalid_retention_period_fault()
          | cluster_snapshot_not_found_fault()
          | invalid_cluster_snapshot_state_fault()

  @type modify_cluster_snapshot_schedule_errors() ::
          snapshot_schedule_not_found_fault()
          | invalid_cluster_snapshot_schedule_state_fault()
          | cluster_not_found_fault()

  @type modify_cluster_subnet_group_errors() ::
          cluster_subnet_quota_exceeded_fault()
          | unauthorized_operation()
          | dependent_service_request_throttling_fault()
          | invalid_subnet()
          | cluster_subnet_group_not_found_fault()
          | subnet_already_in_use()

  @type modify_custom_domain_association_errors() ::
          custom_domain_association_not_found_fault()
          | custom_cname_association_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type modify_endpoint_access_errors() ::
          invalid_cluster_state_fault()
          | invalid_endpoint_state_fault()
          | endpoint_not_found_fault()
          | invalid_cluster_security_group_state_fault()
          | unauthorized_operation()
          | cluster_not_found_fault()

  @type modify_event_subscription_errors() ::
          s_n_s_no_authorization_fault()
          | invalid_subscription_state_fault()
          | s_n_s_topic_arn_not_found_fault()
          | s_n_s_invalid_topic_fault()
          | subscription_category_not_found_fault()
          | subscription_not_found_fault()
          | source_not_found_fault()
          | subscription_event_id_not_found_fault()
          | subscription_severity_not_found_fault()

  @type modify_integration_errors() ::
          integration_conflict_state_fault()
          | integration_not_found_fault()
          | integration_conflict_operation_fault()
          | unsupported_operation_fault()
          | integration_already_exists_fault()

  @type modify_redshift_idc_application_errors() ::
          dependent_service_unavailable_fault()
          | redshift_idc_application_not_exists_fault()
          | dependent_service_access_denied_fault()
          | unsupported_operation_fault()

  @type modify_scheduled_action_errors() ::
          invalid_schedule_fault()
          | invalid_scheduled_action_fault()
          | scheduled_action_not_found_fault()
          | unauthorized_operation()
          | scheduled_action_type_unsupported_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type modify_snapshot_copy_retention_period_errors() ::
          invalid_retention_period_fault()
          | invalid_cluster_state_fault()
          | snapshot_copy_disabled_fault()
          | unauthorized_operation()
          | cluster_not_found_fault()

  @type modify_snapshot_schedule_errors() ::
          invalid_schedule_fault()
          | snapshot_schedule_not_found_fault()
          | snapshot_schedule_update_in_progress_fault()

  @type modify_usage_limit_errors() ::
          invalid_usage_limit_fault()
          | unsupported_operation_fault()
          | usage_limit_not_found_fault()

  @type pause_cluster_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type purchase_reserved_node_offering_errors() ::
          reserved_node_offering_not_found_fault()
          | reserved_node_quota_exceeded_fault()
          | unsupported_operation_fault()
          | reserved_node_already_exists_fault()

  @type put_resource_policy_errors() ::
          conflict_policy_update_fault()
          | unsupported_operation_fault()
          | invalid_policy_fault()
          | resource_not_found_fault()

  @type reboot_cluster_errors() :: invalid_cluster_state_fault() | cluster_not_found_fault()

  @type register_namespace_errors() ::
          invalid_cluster_state_fault() | invalid_namespace_fault() | cluster_not_found_fault()

  @type reject_data_share_errors() :: invalid_data_share_fault()

  @type reset_cluster_parameter_group_errors() ::
          cluster_parameter_group_not_found_fault()
          | invalid_cluster_parameter_group_state_fault()

  @type resize_cluster_errors() ::
          dependent_service_unavailable_fault()
          | insufficient_cluster_capacity_fault()
          | reserved_node_offering_not_found_fault()
          | number_of_nodes_per_cluster_limit_exceeded_fault()
          | unsupported_option_fault()
          | invalid_cluster_state_fault()
          | reserved_node_not_found_fault()
          | number_of_nodes_quota_exceeded_fault()
          | invalid_reserved_node_state_fault()
          | unauthorized_operation()
          | reserved_node_already_migrated_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()
          | limit_exceeded_fault()
          | reserved_node_already_exists_fault()

  @type restore_from_cluster_snapshot_errors() ::
          dependent_service_unavailable_fault()
          | tag_limit_exceeded_fault()
          | cluster_already_exists_fault()
          | insufficient_cluster_capacity_fault()
          | reserved_node_offering_not_found_fault()
          | number_of_nodes_per_cluster_limit_exceeded_fault()
          | cluster_snapshot_not_found_fault()
          | cluster_security_group_not_found_fault()
          | access_to_snapshot_denied_fault()
          | snapshot_schedule_not_found_fault()
          | ipv6_cidr_block_not_found_fault()
          | reserved_node_not_found_fault()
          | number_of_nodes_quota_exceeded_fault()
          | hsm_client_certificate_not_found_fault()
          | invalid_reserved_node_state_fault()
          | cluster_parameter_group_not_found_fault()
          | invalid_tag_fault()
          | invalid_elastic_ip_fault()
          | invalid_vpc_network_state_fault()
          | unauthorized_operation()
          | reserved_node_already_migrated_fault()
          | invalid_cluster_snapshot_state_fault()
          | invalid_cluster_track_fault()
          | hsm_configuration_not_found_fault()
          | cluster_quota_exceeded_fault()
          | unsupported_operation_fault()
          | dependent_service_request_throttling_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | limit_exceeded_fault()
          | reserved_node_already_exists_fault()
          | cluster_subnet_group_not_found_fault()
          | invalid_cluster_subnet_group_state_fault()

  @type restore_table_from_cluster_snapshot_errors() ::
          invalid_table_restore_argument_fault()
          | cluster_snapshot_not_found_fault()
          | invalid_cluster_state_fault()
          | in_progress_table_restore_quota_exceeded_fault()
          | invalid_cluster_snapshot_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type resume_cluster_errors() ::
          insufficient_cluster_capacity_fault()
          | invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  @type revoke_cluster_security_group_ingress_errors() ::
          cluster_security_group_not_found_fault()
          | invalid_cluster_security_group_state_fault()
          | authorization_not_found_fault()

  @type revoke_endpoint_access_errors() ::
          invalid_authorization_state_fault()
          | invalid_cluster_state_fault()
          | invalid_endpoint_state_fault()
          | endpoint_not_found_fault()
          | invalid_cluster_security_group_state_fault()
          | cluster_not_found_fault()
          | endpoint_authorization_not_found_fault()

  @type revoke_snapshot_access_errors() ::
          cluster_snapshot_not_found_fault()
          | access_to_snapshot_denied_fault()
          | authorization_not_found_fault()
          | unsupported_operation_fault()

  @type rotate_encryption_key_errors() ::
          invalid_cluster_state_fault()
          | unsupported_operation_fault()
          | dependent_service_request_throttling_fault()
          | cluster_not_found_fault()

  @type update_partner_status_errors() ::
          partner_not_found_fault()
          | unauthorized_partner_integration_fault()
          | unsupported_operation_fault()
          | cluster_not_found_fault()

  def metadata do
    %{
      api_version: "2012-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "redshift",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "Redshift",
      signature_version: "v4",
      signing_name: "redshift",
      target_prefix: "RedshiftServiceVersion20121201"
    }
  end

  @doc """
  Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the
  configuration (term, payment type, or number of nodes) and no additional costs.
  """
  @spec accept_reserved_node_exchange(
          map(),
          accept_reserved_node_exchange_input_message(),
          list()
        ) ::
          {:ok, accept_reserved_node_exchange_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_reserved_node_exchange_errors()}
  def accept_reserved_node_exchange(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptReservedNodeExchange", input, options)
  end

  @doc """
  Adds a partner integration to a cluster.

  This operation authorizes a partner to push status updates for the specified
  database.
  To complete the integration, you also set up the integration on the partner
  website.
  """
  @spec add_partner(map(), partner_integration_input_message(), list()) ::
          {:ok, partner_integration_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_partner_errors()}
  def add_partner(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddPartner", input, options)
  end

  @doc """
  From a datashare consumer account, associates a datashare with the
  account (AssociateEntireAccount) or the specified namespace (ConsumerArn).

  If you make this association, the consumer
  can consume the datashare.
  """
  @spec associate_data_share_consumer(map(), associate_data_share_consumer_message(), list()) ::
          {:ok, data_share(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_data_share_consumer_errors()}
  def associate_data_share_consumer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateDataShareConsumer", input, options)
  end

  @doc """
  Adds an inbound (ingress) rule to an Amazon Redshift security group.

  Depending on whether
  the application accessing your cluster is running on the Internet or an Amazon
  EC2
  instance, you can authorize inbound access to either a Classless Interdomain
  Routing
  (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can
  add as
  many as 20 ingress rules to an Amazon Redshift security group.

  If you authorize access to an Amazon EC2 security group, specify
  *EC2SecurityGroupName* and
  *EC2SecurityGroupOwnerId*. The Amazon EC2 security group and
  Amazon Redshift cluster must be in the same Amazon Web Services Region.

  If you authorize access to a CIDR/IP address range, specify
  *CIDRIP*. For an overview of CIDR blocks, see the Wikipedia
  article on [Classless Inter-Domain Routing](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  You must also associate the security group with a cluster so that clients
  running
  on these IP addresses or the EC2 instance are authorized to connect to the
  cluster. For
  information about managing security groups, go to [Working with Security Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec authorize_cluster_security_group_ingress(
          map(),
          authorize_cluster_security_group_ingress_message(),
          list()
        ) ::
          {:ok, authorize_cluster_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_cluster_security_group_ingress_errors()}
  def authorize_cluster_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AuthorizeClusterSecurityGroupIngress", input, options)
  end

  @doc """
  From a data producer account, authorizes the sharing of a datashare with one or
  more
  consumer accounts or managing entities.

  To authorize a datashare for a data consumer,
  the producer account must have the correct access permissions.
  """
  @spec authorize_data_share(map(), authorize_data_share_message(), list()) ::
          {:ok, data_share(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_data_share_errors()}
  def authorize_data_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AuthorizeDataShare", input, options)
  end

  @doc """
  Grants access to a cluster.
  """
  @spec authorize_endpoint_access(map(), authorize_endpoint_access_message(), list()) ::
          {:ok, endpoint_authorization(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_endpoint_access_errors()}
  def authorize_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AuthorizeEndpointAccess", input, options)
  end

  @doc """
  Authorizes the specified Amazon Web Services account to restore the specified
  snapshot.

  For more information about working with snapshots, go to
  [Amazon Redshift Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec authorize_snapshot_access(map(), authorize_snapshot_access_message(), list()) ::
          {:ok, authorize_snapshot_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_snapshot_access_errors()}
  def authorize_snapshot_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AuthorizeSnapshotAccess", input, options)
  end

  @doc """
  Deletes a set of cluster snapshots.
  """
  @spec batch_delete_cluster_snapshots(map(), batch_delete_cluster_snapshots_request(), list()) ::
          {:ok, batch_delete_cluster_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_cluster_snapshots_errors()}
  def batch_delete_cluster_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDeleteClusterSnapshots", input, options)
  end

  @doc """
  Modifies the settings for a set of cluster snapshots.
  """
  @spec batch_modify_cluster_snapshots(map(), batch_modify_cluster_snapshots_message(), list()) ::
          {:ok, batch_modify_cluster_snapshots_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_modify_cluster_snapshots_errors()}
  def batch_modify_cluster_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchModifyClusterSnapshots", input, options)
  end

  @doc """
  Cancels a resize operation for a cluster.
  """
  @spec cancel_resize(map(), cancel_resize_message(), list()) ::
          {:ok, resize_progress_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_resize_errors()}
  def cancel_resize(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelResize", input, options)
  end

  @doc """
  Copies the specified automated cluster snapshot to a new manual cluster
  snapshot.

  The source must be an automated snapshot and it must be in the available
  state.

  When you delete a cluster, Amazon Redshift deletes any automated snapshots of
  the
  cluster. Also, when the retention period of the snapshot expires, Amazon
  Redshift
  automatically deletes it. If you want to keep an automated snapshot for a longer
  period,
  you can make a manual copy of the snapshot. Manual snapshots are retained until
  you
  delete them.

  For more information about working with snapshots, go to
  [Amazon Redshift Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec copy_cluster_snapshot(map(), copy_cluster_snapshot_message(), list()) ::
          {:ok, copy_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_cluster_snapshot_errors()}
  def copy_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyClusterSnapshot", input, options)
  end

  @doc """
  Creates an authentication profile with the specified parameters.
  """
  @spec create_authentication_profile(map(), create_authentication_profile_message(), list()) ::
          {:ok, create_authentication_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_authentication_profile_errors()}
  def create_authentication_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAuthenticationProfile", input, options)
  end

  @doc """
  Creates a new cluster with the specified parameters.

  To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster
  subnet group name. The cluster subnet group identifies the subnets of your VPC
  that
  Amazon Redshift uses when creating the cluster.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a subnet group for a
  provisioned cluster is in an account with VPC BPA turned on, the following
  capabilities
  are blocked:

    *
  Creating a public cluster

    *
  Restoring a public cluster

    *
  Modifying a private cluster to be public

    *
  Adding a subnet with VPC BPA turned on to the subnet group when there's at
  least one public cluster within the group

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.
  """
  @spec create_cluster(map(), create_cluster_message(), list()) ::
          {:ok, create_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates an Amazon Redshift parameter group.

  Creating parameter groups is independent of creating clusters. You can associate
  a
  cluster with a parameter group when you create the cluster. You can also
  associate an
  existing cluster with a parameter group after the cluster is created by using
  `ModifyCluster`.

  Parameters in the parameter group define specific behavior that applies to the
  databases you create on the cluster.
  For more information about parameters and parameter groups, go to
  [Amazon Redshift Parameter Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_cluster_parameter_group(map(), create_cluster_parameter_group_message(), list()) ::
          {:ok, create_cluster_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_parameter_group_errors()}
  def create_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateClusterParameterGroup", input, options)
  end

  @doc """
  Creates a new Amazon Redshift security group.

  You use security groups to control access
  to non-VPC clusters.

  For information about managing security groups, go to
  [Amazon Redshift Cluster Security Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the
  *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_cluster_security_group(map(), create_cluster_security_group_message(), list()) ::
          {:ok, create_cluster_security_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_security_group_errors()}
  def create_cluster_security_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateClusterSecurityGroup", input, options)
  end

  @doc """
  Creates a manual snapshot of the specified cluster.

  The cluster must be in the
  `available` state.

  For more information about working with snapshots, go to
  [Amazon Redshift Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_cluster_snapshot(map(), create_cluster_snapshot_message(), list()) ::
          {:ok, create_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_snapshot_errors()}
  def create_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateClusterSnapshot", input, options)
  end

  @doc """
  Creates a new Amazon Redshift subnet group.

  You must provide a list of one or more
  subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating
  Amazon Redshift subnet group.

  For information about subnet groups, go to
  [Amazon Redshift Cluster Subnet Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html)
  in the
  *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_cluster_subnet_group(map(), create_cluster_subnet_group_message(), list()) ::
          {:ok, create_cluster_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_subnet_group_errors()}
  def create_cluster_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateClusterSubnetGroup", input, options)
  end

  @doc """
  Used to create a custom domain name for a cluster.

  Properties include the custom domain name, the
  cluster the custom domain is associated with, and the certificate Amazon
  Resource Name (ARN).
  """
  @spec create_custom_domain_association(
          map(),
          create_custom_domain_association_message(),
          list()
        ) ::
          {:ok, create_custom_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_domain_association_errors()}
  def create_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCustomDomainAssociation", input, options)
  end

  @doc """
  Creates a Redshift-managed VPC endpoint.
  """
  @spec create_endpoint_access(map(), create_endpoint_access_message(), list()) ::
          {:ok, endpoint_access(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_endpoint_access_errors()}
  def create_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEndpointAccess", input, options)
  end

  @doc """
  Creates an Amazon Redshift event notification subscription.

  This action requires an ARN
  (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon
  Redshift console,
  the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS,
  you
  must create a topic in Amazon SNS and subscribe to the topic. The ARN is
  displayed in
  the SNS console.

  You can specify the source type, and lists of Amazon Redshift source IDs, event
  categories, and event severities. Notifications will be sent for all events you
  want
  that match those criteria. For example, you can specify source type = cluster,
  source ID
  = my-cluster-1 and mycluster2, event categories = Availability, Backup, and
  severity =
  ERROR. The subscription will only send notifications for those ERROR events in
  the
  Availability and Backup categories for the specified clusters.

  If you specify both the source type and source IDs, such as source type =
  cluster
  and source identifier = my-cluster-1, notifications will be sent for all the
  cluster
  events for my-cluster-1. If you specify a source type but do not specify a
  source
  identifier, you will receive notice of the events for the objects of that type
  in your
  Amazon Web Services account. If you do not specify either the SourceType nor the
  SourceIdentifier, you
  will be notified of events generated from all Amazon Redshift sources belonging
  to your Amazon Web Services account. You must specify a source type if you
  specify a source ID.
  """
  @spec create_event_subscription(map(), create_event_subscription_message(), list()) ::
          {:ok, create_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_subscription_errors()}
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates an HSM client certificate that an Amazon Redshift cluster will use to
  connect to
  the client's HSM in order to store and retrieve the keys used to encrypt the
  cluster
  databases.

  The command returns a public key, which you must store in the HSM. In addition
  to
  creating the HSM certificate, you must create an Amazon Redshift HSM
  configuration that
  provides a cluster the information needed to store and use encryption keys in
  the HSM.
  For more information, go to [Hardware Security Modules](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html#working-with-HSM)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_hsm_client_certificate(map(), create_hsm_client_certificate_message(), list()) ::
          {:ok, create_hsm_client_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hsm_client_certificate_errors()}
  def create_hsm_client_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHsmClientCertificate", input, options)
  end

  @doc """
  Creates an HSM configuration that contains the information required by an Amazon
  Redshift
  cluster to store and use database encryption keys in a Hardware Security Module
  (HSM).

  After creating the HSM configuration, you can specify it as a parameter when
  creating a
  cluster. The cluster will then store its encryption keys in the HSM.

  In addition to creating an HSM configuration, you must also create an HSM client
  certificate. For more information, go to [Hardware Security Modules](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html)
  in the Amazon Redshift Cluster Management Guide.
  """
  @spec create_hsm_configuration(map(), create_hsm_configuration_message(), list()) ::
          {:ok, create_hsm_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hsm_configuration_errors()}
  def create_hsm_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHsmConfiguration", input, options)
  end

  @doc """
  Creates a zero-ETL integration or S3 event integration with Amazon Redshift.
  """
  @spec create_integration(map(), create_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIntegration", input, options)
  end

  @doc """
  Creates an Amazon Redshift application for use with IAM Identity Center.
  """
  @spec create_redshift_idc_application(map(), create_redshift_idc_application_message(), list()) ::
          {:ok, create_redshift_idc_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_redshift_idc_application_errors()}
  def create_redshift_idc_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRedshiftIdcApplication", input, options)
  end

  @doc """
  Creates a scheduled action.

  A scheduled action contains a schedule and an Amazon Redshift API action.
  For example, you can create a schedule of when to run the `ResizeCluster` API
  operation.
  """
  @spec create_scheduled_action(map(), create_scheduled_action_message(), list()) ::
          {:ok, scheduled_action(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scheduled_action_errors()}
  def create_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateScheduledAction", input, options)
  end

  @doc """
  Creates a snapshot copy grant that permits Amazon Redshift to use an encrypted
  symmetric key
  from Key Management Service (KMS) to encrypt copied snapshots in a
  destination region.

  For more information about managing snapshot copy grants, go to
  [Amazon Redshift Database Encryption](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec create_snapshot_copy_grant(map(), create_snapshot_copy_grant_message(), list()) ::
          {:ok, create_snapshot_copy_grant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_copy_grant_errors()}
  def create_snapshot_copy_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshotCopyGrant", input, options)
  end

  @doc """
  Create a snapshot schedule that can be associated to a cluster and which
  overrides the default system backup schedule.
  """
  @spec create_snapshot_schedule(map(), create_snapshot_schedule_message(), list()) ::
          {:ok, snapshot_schedule(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_schedule_errors()}
  def create_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshotSchedule", input, options)
  end

  @doc """
  Adds tags to a cluster.

  A resource can have up to 50 tags. If you try to create more than 50 tags for a
  resource, you will receive an error and the attempt will fail.

  If you specify a key that already exists for the resource, the value for that
  key
  will be updated with the new value.
  """
  @spec create_tags(map(), create_tags_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Creates a usage limit for a specified Amazon Redshift feature on a cluster.

  The usage limit is identified by the returned usage limit identifier.
  """
  @spec create_usage_limit(map(), create_usage_limit_message(), list()) ::
          {:ok, usage_limit(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_usage_limit_errors()}
  def create_usage_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUsageLimit", input, options)
  end

  @doc """
  From a datashare producer account, removes authorization from the specified
  datashare.
  """
  @spec deauthorize_data_share(map(), deauthorize_data_share_message(), list()) ::
          {:ok, data_share(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deauthorize_data_share_errors()}
  def deauthorize_data_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeauthorizeDataShare", input, options)
  end

  @doc """
  Deletes an authentication profile.
  """
  @spec delete_authentication_profile(map(), delete_authentication_profile_message(), list()) ::
          {:ok, delete_authentication_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_authentication_profile_errors()}
  def delete_authentication_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAuthenticationProfile", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster without its final snapshot being
  created.

  A successful response from the web
  service indicates that the request was received correctly. Use
  `DescribeClusters` to monitor the status of the deletion. The delete
  operation cannot be canceled or reverted once submitted.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you want to shut down the cluster and retain it for future use, set
  *SkipFinalClusterSnapshot* to `false` and specify a
  name for *FinalClusterSnapshotIdentifier*. You can later restore this
  snapshot to resume using the cluster. If a final cluster snapshot is requested,
  the
  status of the cluster will be "final-snapshot" while the snapshot is being
  taken, then
  it's "deleting" once Amazon Redshift begins deleting the cluster.

  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec delete_cluster(map(), delete_cluster_message(), list()) ::
          {:ok, delete_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified Amazon Redshift parameter group.

  You cannot delete a parameter group if it is associated with a
  cluster.
  """
  @spec delete_cluster_parameter_group(map(), delete_cluster_parameter_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_parameter_group_errors()}
  def delete_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteClusterParameterGroup", input, options)
  end

  @doc """
  Deletes an Amazon Redshift security group.

  You cannot delete a security group that is associated with any clusters. You
  cannot delete the default security group.

  For information about managing security groups, go to
  [Amazon Redshift Cluster Security Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the
  *Amazon Redshift Cluster Management Guide*.
  """
  @spec delete_cluster_security_group(map(), delete_cluster_security_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_security_group_errors()}
  def delete_cluster_security_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteClusterSecurityGroup", input, options)
  end

  @doc """
  Deletes the specified manual snapshot.

  The snapshot must be in the
  `available` state, with no other users authorized to access the snapshot.

  Unlike automated snapshots, manual snapshots are retained even after you delete
  your cluster. Amazon Redshift does not delete your manual snapshots. You must
  delete manual
  snapshot explicitly to avoid getting charged. If other accounts are authorized
  to access
  the snapshot, you must revoke all of the authorizations before you can delete
  the
  snapshot.
  """
  @spec delete_cluster_snapshot(map(), delete_cluster_snapshot_message(), list()) ::
          {:ok, delete_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_snapshot_errors()}
  def delete_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteClusterSnapshot", input, options)
  end

  @doc """
  Deletes the specified cluster subnet group.
  """
  @spec delete_cluster_subnet_group(map(), delete_cluster_subnet_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_subnet_group_errors()}
  def delete_cluster_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteClusterSubnetGroup", input, options)
  end

  @doc """
  Contains information about deleting a custom domain association for a cluster.
  """
  @spec delete_custom_domain_association(
          map(),
          delete_custom_domain_association_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_domain_association_errors()}
  def delete_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCustomDomainAssociation", input, options)
  end

  @doc """
  Deletes a Redshift-managed VPC endpoint.
  """
  @spec delete_endpoint_access(map(), delete_endpoint_access_message(), list()) ::
          {:ok, endpoint_access(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_endpoint_access_errors()}
  def delete_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEndpointAccess", input, options)
  end

  @doc """
  Deletes an Amazon Redshift event notification subscription.
  """
  @spec delete_event_subscription(map(), delete_event_subscription_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_subscription_errors()}
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes the specified HSM client certificate.
  """
  @spec delete_hsm_client_certificate(map(), delete_hsm_client_certificate_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hsm_client_certificate_errors()}
  def delete_hsm_client_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHsmClientCertificate", input, options)
  end

  @doc """
  Deletes the specified Amazon Redshift HSM configuration.
  """
  @spec delete_hsm_configuration(map(), delete_hsm_configuration_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hsm_configuration_errors()}
  def delete_hsm_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHsmConfiguration", input, options)
  end

  @doc """
  Deletes a zero-ETL integration or S3 event integration with Amazon Redshift.
  """
  @spec delete_integration(map(), delete_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIntegration", input, options)
  end

  @doc """
  Deletes a partner integration from a cluster.

  Data can still flow to the cluster until the integration is deleted at the
  partner's website.
  """
  @spec delete_partner(map(), partner_integration_input_message(), list()) ::
          {:ok, partner_integration_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_partner_errors()}
  def delete_partner(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePartner", input, options)
  end

  @doc """
  Deletes an Amazon Redshift IAM Identity Center application.
  """
  @spec delete_redshift_idc_application(map(), delete_redshift_idc_application_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_redshift_idc_application_errors()}
  def delete_redshift_idc_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRedshiftIdcApplication", input, options)
  end

  @doc """
  Deletes the resource policy for a specified resource.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a scheduled action.
  """
  @spec delete_scheduled_action(map(), delete_scheduled_action_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduled_action_errors()}
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes the specified snapshot copy grant.
  """
  @spec delete_snapshot_copy_grant(map(), delete_snapshot_copy_grant_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_copy_grant_errors()}
  def delete_snapshot_copy_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshotCopyGrant", input, options)
  end

  @doc """
  Deletes a snapshot schedule.
  """
  @spec delete_snapshot_schedule(map(), delete_snapshot_schedule_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_schedule_errors()}
  def delete_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshotSchedule", input, options)
  end

  @doc """
  Deletes tags from a resource.

  You must provide the ARN of the resource
  from which you want to delete the tag or tags.
  """
  @spec delete_tags(map(), delete_tags_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes a usage limit from a cluster.
  """
  @spec delete_usage_limit(map(), delete_usage_limit_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_usage_limit_errors()}
  def delete_usage_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUsageLimit", input, options)
  end

  @doc """
  Deregisters a cluster or serverless namespace from the Amazon Web Services Glue
  Data Catalog.
  """
  @spec deregister_namespace(map(), deregister_namespace_input_message(), list()) ::
          {:ok, deregister_namespace_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_namespace_errors()}
  def deregister_namespace(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterNamespace", input, options)
  end

  @doc """
  Returns a list of attributes attached to an account
  """
  @spec describe_account_attributes(map(), describe_account_attributes_message(), list()) ::
          {:ok, account_attribute_list(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes an authentication profile.
  """
  @spec describe_authentication_profiles(
          map(),
          describe_authentication_profiles_message(),
          list()
        ) ::
          {:ok, describe_authentication_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_authentication_profiles_errors()}
  def describe_authentication_profiles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAuthenticationProfiles", input, options)
  end

  @doc """
  Returns an array of `ClusterDbRevision` objects.
  """
  @spec describe_cluster_db_revisions(map(), describe_cluster_db_revisions_message(), list()) ::
          {:ok, cluster_db_revisions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_db_revisions_errors()}
  def describe_cluster_db_revisions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterDbRevisions", input, options)
  end

  @doc """
  Returns a list of Amazon Redshift parameter groups, including parameter groups
  you
  created and the default parameter group.

  For each parameter group, the response includes
  the parameter group name, description, and parameter group family name. You can
  optionally specify a name to retrieve the description of a specific parameter
  group.

  For more information about parameters and parameter groups, go to
  [Amazon Redshift Parameter Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all parameter groups that match any combination of the specified keys and
  values. For
  example, if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all parameter groups that
  have any combination of those values are returned.

  If both tag keys and values are omitted from the request, parameter groups are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_cluster_parameter_groups(
          map(),
          describe_cluster_parameter_groups_message(),
          list()
        ) ::
          {:ok, cluster_parameter_groups_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_parameter_groups_errors()}
  def describe_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterParameterGroups", input, options)
  end

  @doc """
  Returns a detailed list of parameters contained within the specified Amazon
  Redshift
  parameter group.

  For each parameter the response includes information such as parameter
  name, description, data type, value, whether the parameter value is modifiable,
  and so
  on.

  You can specify *source* filter to retrieve parameters of only
  specific type. For example, to retrieve parameters that were modified by a user
  action
  such as from `ModifyClusterParameterGroup`, you can specify
  *source* equal to *user*.

  For more information about parameters and parameter groups, go to
  [Amazon Redshift Parameter Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_cluster_parameters(map(), describe_cluster_parameters_message(), list()) ::
          {:ok, cluster_parameter_group_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_parameters_errors()}
  def describe_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterParameters", input, options)
  end

  @doc """
  Returns information about Amazon Redshift security groups.

  If the name of a security
  group is specified, the response will contain only information about only that
  security
  group.

  For information about managing security groups, go to
  [Amazon Redshift Cluster Security Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the
  *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all security groups that match any combination of the specified keys and values.
  For
  example, if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all security groups that
  have any combination of those values are returned.

  If both tag keys and values are omitted from the request, security groups are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_cluster_security_groups(
          map(),
          describe_cluster_security_groups_message(),
          list()
        ) ::
          {:ok, cluster_security_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_security_groups_errors()}
  def describe_cluster_security_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterSecurityGroups", input, options)
  end

  @doc """
  Returns one or more snapshot objects, which contain metadata about your cluster
  snapshots.

  By default, this operation returns information about all snapshots of all
  clusters that are owned by your Amazon Web Services account. No information is
  returned for
  snapshots owned by inactive Amazon Web Services accounts.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all snapshots that match any combination of the specified keys and values. For
  example,
  if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all snapshots that have any
  combination of those values are returned. Only snapshots that you own are
  returned in
  the response; shared snapshots are not returned with the tag key and tag value
  request
  parameters.

  If both tag keys and values are omitted from the request, snapshots are returned
  regardless of whether they have tag keys or values associated with them.
  """
  @spec describe_cluster_snapshots(map(), describe_cluster_snapshots_message(), list()) ::
          {:ok, snapshot_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_snapshots_errors()}
  def describe_cluster_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterSnapshots", input, options)
  end

  @doc """
  Returns one or more cluster subnet group objects, which contain metadata about
  your
  cluster subnet groups.

  By default, this operation returns information about all cluster
  subnet groups that are defined in your Amazon Web Services account.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all subnet groups that match any combination of the specified keys and values.
  For
  example, if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all subnet groups that have
  any combination of those values are returned.

  If both tag keys and values are omitted from the request, subnet groups are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_cluster_subnet_groups(map(), describe_cluster_subnet_groups_message(), list()) ::
          {:ok, cluster_subnet_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_subnet_groups_errors()}
  def describe_cluster_subnet_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterSubnetGroups", input, options)
  end

  @doc """
  Returns a list of all the available maintenance tracks.
  """
  @spec describe_cluster_tracks(map(), describe_cluster_tracks_message(), list()) ::
          {:ok, track_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_tracks_errors()}
  def describe_cluster_tracks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterTracks", input, options)
  end

  @doc """
  Returns descriptions of the available Amazon Redshift cluster versions.

  You can call this
  operation even before creating any clusters to learn more about the Amazon
  Redshift versions.

  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_cluster_versions(map(), describe_cluster_versions_message(), list()) ::
          {:ok, cluster_versions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_cluster_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusterVersions", input, options)
  end

  @doc """
  Returns properties of provisioned clusters including general cluster properties,
  cluster database properties, maintenance and backup properties, and security and
  access
  properties.

  This operation supports pagination.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all clusters that match any combination of the specified keys and values. For
  example,
  if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all clusters that have any
  combination of those values are returned.

  If both tag keys and values are omitted from the request, clusters are returned
  regardless of whether they have tag keys or values associated with them.
  """
  @spec describe_clusters(map(), describe_clusters_message(), list()) ::
          {:ok, clusters_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_clusters_errors()}
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Contains information about custom domain associations for a cluster.
  """
  @spec describe_custom_domain_associations(
          map(),
          describe_custom_domain_associations_message(),
          list()
        ) ::
          {:ok, custom_domain_associations_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_domain_associations_errors()}
  def describe_custom_domain_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCustomDomainAssociations", input, options)
  end

  @doc """
  Shows the status of any inbound or outbound datashares available in the
  specified
  account.
  """
  @spec describe_data_shares(map(), describe_data_shares_message(), list()) ::
          {:ok, describe_data_shares_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_shares_errors()}
  def describe_data_shares(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataShares", input, options)
  end

  @doc """
  Returns a list of datashares where the account identifier being called is a
  consumer account identifier.
  """
  @spec describe_data_shares_for_consumer(
          map(),
          describe_data_shares_for_consumer_message(),
          list()
        ) ::
          {:ok, describe_data_shares_for_consumer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_shares_for_consumer_errors()}
  def describe_data_shares_for_consumer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataSharesForConsumer", input, options)
  end

  @doc """
  Returns a list of datashares when the account identifier being called is a
  producer account identifier.
  """
  @spec describe_data_shares_for_producer(
          map(),
          describe_data_shares_for_producer_message(),
          list()
        ) ::
          {:ok, describe_data_shares_for_producer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_shares_for_producer_errors()}
  def describe_data_shares_for_producer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataSharesForProducer", input, options)
  end

  @doc """
  Returns a list of parameter settings for the specified parameter group
  family.

  For more information about parameters and parameter groups, go to
  [Amazon Redshift Parameter Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_default_cluster_parameters(
          map(),
          describe_default_cluster_parameters_message(),
          list()
        ) ::
          {:ok, describe_default_cluster_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_default_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDefaultClusterParameters", input, options)
  end

  @doc """
  Describes a Redshift-managed VPC endpoint.
  """
  @spec describe_endpoint_access(map(), describe_endpoint_access_message(), list()) ::
          {:ok, endpoint_access_list(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoint_access_errors()}
  def describe_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEndpointAccess", input, options)
  end

  @doc """
  Describes an endpoint authorization.
  """
  @spec describe_endpoint_authorization(map(), describe_endpoint_authorization_message(), list()) ::
          {:ok, endpoint_authorization_list(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoint_authorization_errors()}
  def describe_endpoint_authorization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEndpointAuthorization", input, options)
  end

  @doc """
  Displays a list of event categories for all event source types, or for a
  specified
  source type.

  For a list of the event categories and source types, go to [Amazon Redshift Event
  Notifications](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html).
  """
  @spec describe_event_categories(map(), describe_event_categories_message(), list()) ::
          {:ok, event_categories_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists descriptions of all the Amazon Redshift event notification subscriptions
  for a
  customer account.

  If you specify a subscription name, lists the description for that
  subscription.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all event notification subscriptions that match any combination of the specified
  keys
  and values. For example, if you have `owner` and `environment` for
  tag keys, and `admin` and `test` for tag values, all subscriptions
  that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, subscriptions are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_event_subscriptions(map(), describe_event_subscriptions_message(), list()) ::
          {:ok, event_subscriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_subscriptions_errors()}
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to clusters, security groups, snapshots, and parameter
  groups for the past 14 days.

  Events specific to a particular cluster, security group,
  snapshot or parameter group can be obtained by providing the name as a
  parameter. By
  default, the past hour of events are returned.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, events_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about the specified HSM client certificate.

  If no certificate
  ID is specified, returns information about all the HSM certificates owned by
  your Amazon Web Services account.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all HSM client certificates that match any combination of the specified keys and
  values.
  For example, if you have `owner` and `environment` for tag keys,
  and `admin` and `test` for tag values, all HSM client certificates
  that have any combination of those values are returned.

  If both tag keys and values are omitted from the request, HSM client
  certificates
  are returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_hsm_client_certificates(
          map(),
          describe_hsm_client_certificates_message(),
          list()
        ) ::
          {:ok, hsm_client_certificate_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hsm_client_certificates_errors()}
  def describe_hsm_client_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHsmClientCertificates", input, options)
  end

  @doc """
  Returns information about the specified Amazon Redshift HSM configuration.

  If no
  configuration ID is specified, returns information about all the HSM
  configurations
  owned by your Amazon Web Services account.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all HSM connections that match any combination of the specified keys and values.
  For
  example, if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all HSM connections that
  have any combination of those values are returned.

  If both tag keys and values are omitted from the request, HSM connections are
  returned regardless of whether they have tag keys or values associated with
  them.
  """
  @spec describe_hsm_configurations(map(), describe_hsm_configurations_message(), list()) ::
          {:ok, hsm_configuration_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hsm_configurations_errors()}
  def describe_hsm_configurations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHsmConfigurations", input, options)
  end

  @doc """
  Returns a list of inbound integrations.
  """
  @spec describe_inbound_integrations(map(), describe_inbound_integrations_message(), list()) ::
          {:ok, inbound_integrations_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_inbound_integrations_errors()}
  def describe_inbound_integrations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInboundIntegrations", input, options)
  end

  @doc """
  Describes one or more zero-ETL or S3 event integrations with Amazon Redshift.
  """
  @spec describe_integrations(map(), describe_integrations_message(), list()) ::
          {:ok, integrations_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_integrations_errors()}
  def describe_integrations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIntegrations", input, options)
  end

  @doc """
  Describes whether information, such as queries and connection attempts, is being
  logged for the specified Amazon Redshift cluster.
  """
  @spec describe_logging_status(map(), describe_logging_status_message(), list()) ::
          {:ok, logging_status(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_logging_status_errors()}
  def describe_logging_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoggingStatus", input, options)
  end

  @doc """
  Returns properties of possible node configurations such as node type, number of
  nodes, and
  disk usage for the specified action type.
  """
  @spec describe_node_configuration_options(
          map(),
          describe_node_configuration_options_message(),
          list()
        ) ::
          {:ok, node_configuration_options_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_node_configuration_options_errors()}
  def describe_node_configuration_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeNodeConfigurationOptions", input, options)
  end

  @doc """
  Returns a list of orderable cluster options.

  Before you create a new cluster you
  can use this operation to find what options are available, such as the EC2
  Availability
  Zones (AZ) in the specific Amazon Web Services Region that you can specify, and
  the node types you can
  request. The node types differ by available storage, memory, CPU and price. With
  the
  cost involved you might want to obtain a list of cluster options in the specific
  region
  and specify values when creating a cluster.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_orderable_cluster_options(
          map(),
          describe_orderable_cluster_options_message(),
          list()
        ) ::
          {:ok, orderable_cluster_options_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_orderable_cluster_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrderableClusterOptions", input, options)
  end

  @doc """
  Returns information about the partner integrations defined for a cluster.
  """
  @spec describe_partners(map(), describe_partners_input_message(), list()) ::
          {:ok, describe_partners_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_partners_errors()}
  def describe_partners(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePartners", input, options)
  end

  @doc """
  Lists the Amazon Redshift IAM Identity Center applications.
  """
  @spec describe_redshift_idc_applications(
          map(),
          describe_redshift_idc_applications_message(),
          list()
        ) ::
          {:ok, describe_redshift_idc_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_redshift_idc_applications_errors()}
  def describe_redshift_idc_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRedshiftIdcApplications", input, options)
  end

  @doc """
  Returns exchange status details and associated metadata for a reserved-node
  exchange.

  Statuses include such values as in progress and requested.
  """
  @spec describe_reserved_node_exchange_status(
          map(),
          describe_reserved_node_exchange_status_input_message(),
          list()
        ) ::
          {:ok, describe_reserved_node_exchange_status_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_node_exchange_status_errors()}
  def describe_reserved_node_exchange_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReservedNodeExchangeStatus", input, options)
  end

  @doc """
  Returns a list of the available reserved node offerings by Amazon Redshift with
  their
  descriptions including the node type, the fixed and recurring costs of reserving
  the
  node and duration the node will be reserved for you.

  These descriptions help you
  determine which reserve node offering you want to purchase. You then use the
  unique
  offering ID in you call to `PurchaseReservedNodeOffering` to reserve one
  or more nodes for your Amazon Redshift cluster.

  For more information about reserved node offerings, go to
  [Purchasing Reserved Nodes](https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_reserved_node_offerings(
          map(),
          describe_reserved_node_offerings_message(),
          list()
        ) ::
          {:ok, reserved_node_offerings_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_node_offerings_errors()}
  def describe_reserved_node_offerings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReservedNodeOfferings", input, options)
  end

  @doc """
  Returns the descriptions of the reserved nodes.
  """
  @spec describe_reserved_nodes(map(), describe_reserved_nodes_message(), list()) ::
          {:ok, reserved_nodes_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_nodes_errors()}
  def describe_reserved_nodes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReservedNodes", input, options)
  end

  @doc """
  Returns information about the last resize operation for the specified cluster.

  If
  no resize operation has ever been initiated for the specified cluster, a

  ```
  HTTP
  404
  ```

  error is returned. If a resize operation was initiated and completed, the
  status of the resize remains as `SUCCEEDED` until the next resize.

  A resize operation can be requested using `ModifyCluster` and
  specifying a different number or type of nodes for the cluster.
  """
  @spec describe_resize(map(), describe_resize_message(), list()) ::
          {:ok, resize_progress_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resize_errors()}
  def describe_resize(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResize", input, options)
  end

  @doc """
  Describes properties of scheduled actions.
  """
  @spec describe_scheduled_actions(map(), describe_scheduled_actions_message(), list()) ::
          {:ok, scheduled_actions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scheduled_actions_errors()}
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
  end

  @doc """
  Returns a list of snapshot copy grants owned by the Amazon Web Services account
  in the destination
  region.

  For more information about managing snapshot copy grants, go to
  [Amazon Redshift Database Encryption](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec describe_snapshot_copy_grants(map(), describe_snapshot_copy_grants_message(), list()) ::
          {:ok, snapshot_copy_grant_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_snapshot_copy_grants_errors()}
  def describe_snapshot_copy_grants(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshotCopyGrants", input, options)
  end

  @doc """
  Returns a list of snapshot schedules.
  """
  @spec describe_snapshot_schedules(map(), describe_snapshot_schedules_message(), list()) ::
          {:ok, describe_snapshot_schedules_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_snapshot_schedules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshotSchedules", input, options)
  end

  @doc """
  Returns account level backups storage size and provisional storage.
  """
  @spec describe_storage(map(), %{}, list()) ::
          {:ok, customer_storage_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStorage", input, options)
  end

  @doc """
  Lists the status of one or more table restore requests made using the
  `RestoreTableFromClusterSnapshot` API action.

  If you don't specify a value
  for the `TableRestoreRequestId` parameter, then
  `DescribeTableRestoreStatus` returns the status of all table restore
  requests ordered by the date and time of the request in ascending order.
  Otherwise
  `DescribeTableRestoreStatus` returns the status of the table specified by
  `TableRestoreRequestId`.
  """
  @spec describe_table_restore_status(map(), describe_table_restore_status_message(), list()) ::
          {:ok, table_restore_status_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_table_restore_status_errors()}
  def describe_table_restore_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTableRestoreStatus", input, options)
  end

  @doc """
  Returns a list of tags.

  You can return tags from a specific resource by specifying
  an ARN, or you can return all tags for a given type of resource, such as
  clusters,
  snapshots, and so on.

  The following are limitations for `DescribeTags`:

    *
  You cannot specify an ARN and a resource-type value together in the same
  request.

    *
  You cannot use the `MaxRecords` and `Marker`
  parameters together with the ARN parameter.

    *
  The `MaxRecords` parameter can be a range from 10 to 50 results
  to return in a request.

  If you specify both tag keys and tag values in the same request, Amazon Redshift
  returns
  all resources that match any combination of the specified keys and values. For
  example,
  if you have `owner` and `environment` for tag keys, and
  `admin` and `test` for tag values, all resources that have any
  combination of those values are returned.

  If both tag keys and values are omitted from the request, resources are returned
  regardless of whether they have tag keys or values associated with them.
  """
  @spec describe_tags(map(), describe_tags_message(), list()) ::
          {:ok, tagged_resource_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Shows usage limits on a cluster.

  Results are filtered based on the combination of input usage limit identifier,
  cluster identifier, and feature type parameters:

    *
  If usage limit identifier, cluster identifier, and feature type are not
  provided,
  then all usage limit objects for the current account in the current region are
  returned.

    *
  If usage limit identifier is provided,
  then the corresponding usage limit object is returned.

    *
  If cluster identifier is provided,
  then all usage limit objects for the specified cluster are returned.

    *
  If cluster identifier and feature type are provided,
  then all usage limit objects for the combination of cluster and feature are
  returned.
  """
  @spec describe_usage_limits(map(), describe_usage_limits_message(), list()) ::
          {:ok, usage_limit_list(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_usage_limits_errors()}
  def describe_usage_limits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUsageLimits", input, options)
  end

  @doc """
  Stops logging information, such as queries and connection attempts, for the
  specified Amazon Redshift cluster.
  """
  @spec disable_logging(map(), disable_logging_message(), list()) ::
          {:ok, logging_status(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_logging_errors()}
  def disable_logging(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableLogging", input, options)
  end

  @doc """
  Disables the automatic copying of snapshots from one region to another region
  for a
  specified cluster.

  If your cluster and its snapshots are encrypted using an encrypted symmetric key
  from Key Management Service, use `DeleteSnapshotCopyGrant` to delete the grant
  that
  grants Amazon Redshift permission to the key in the destination region.
  """
  @spec disable_snapshot_copy(map(), disable_snapshot_copy_message(), list()) ::
          {:ok, disable_snapshot_copy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_snapshot_copy_errors()}
  def disable_snapshot_copy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableSnapshotCopy", input, options)
  end

  @doc """
  From a datashare consumer account, remove association for the specified
  datashare.
  """
  @spec disassociate_data_share_consumer(
          map(),
          disassociate_data_share_consumer_message(),
          list()
        ) ::
          {:ok, data_share(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_data_share_consumer_errors()}
  def disassociate_data_share_consumer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateDataShareConsumer", input, options)
  end

  @doc """
  Starts logging information, such as queries and connection attempts, for the
  specified Amazon Redshift cluster.
  """
  @spec enable_logging(map(), enable_logging_message(), list()) ::
          {:ok, logging_status(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_logging_errors()}
  def enable_logging(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableLogging", input, options)
  end

  @doc """
  Enables the automatic copy of snapshots from one region to another region for a
  specified cluster.
  """
  @spec enable_snapshot_copy(map(), enable_snapshot_copy_message(), list()) ::
          {:ok, enable_snapshot_copy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_snapshot_copy_errors()}
  def enable_snapshot_copy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableSnapshotCopy", input, options)
  end

  @doc """
  Fails over the primary compute unit of the specified Multi-AZ cluster to another
  Availability Zone.
  """
  @spec failover_primary_compute(map(), failover_primary_compute_input_message(), list()) ::
          {:ok, failover_primary_compute_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_primary_compute_errors()}
  def failover_primary_compute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "FailoverPrimaryCompute", input, options)
  end

  @doc """
  Returns a database user name and temporary password with temporary authorization
  to
  log on to an Amazon Redshift database.

  The action returns the database user name
  prefixed with `IAM:` if `AutoCreate` is `False` or
  `IAMA:` if `AutoCreate` is `True`. You can
  optionally specify one or more database user groups that the user will join at
  log on.
  By default, the temporary credentials expire in 900 seconds. You can optionally
  specify
  a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For
  more
  information, see [Using IAM Authentication to Generate Database User
  Credentials](https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html)
  in the Amazon Redshift Cluster Management Guide.

  The Identity and Access Management (IAM) user or role that runs
  GetClusterCredentials must have an IAM policy attached that allows access to all
  necessary actions and resources. For more information about permissions, see
  [Resource Policies for GetClusterCredentials](https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources)
  in the
  Amazon Redshift Cluster Management Guide.

  If the `DbGroups` parameter is specified, the IAM policy must allow the
  `redshift:JoinGroup` action with access to the listed
  `dbgroups`.

  In addition, if the `AutoCreate` parameter is set to `True`,
  then the policy must include the `redshift:CreateClusterUser`
  permission.

  If the `DbName` parameter is specified, the IAM policy must allow access
  to the resource `dbname` for the specified database name.
  """
  @spec get_cluster_credentials(map(), get_cluster_credentials_message(), list()) ::
          {:ok, cluster_credentials(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_credentials_errors()}
  def get_cluster_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetClusterCredentials", input, options)
  end

  @doc """
  Returns a database user name and temporary password with temporary authorization
  to
  log in to an Amazon Redshift database.

  The database user is mapped 1:1 to the source Identity and Access Management
  (IAM) identity.
  For more information about IAM identities, see [IAM Identities (users, user groups, and roles)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html) in
  the
  Amazon Web Services Identity and Access Management User Guide.

  The Identity and Access Management (IAM) identity that runs
  this operation must have an IAM policy attached that allows access to all
  necessary actions and resources.
  For more information about permissions, see [Using identity-based policies (IAM policies)](https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html)
  in the
  Amazon Redshift Cluster Management Guide.
  """
  @spec get_cluster_credentials_with_iam(
          map(),
          get_cluster_credentials_with_iam_message(),
          list()
        ) ::
          {:ok, cluster_extended_credentials(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_credentials_with_iam_errors()}
  def get_cluster_credentials_with_iam(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetClusterCredentialsWithIAM", input, options)
  end

  @doc """
  Gets the configuration options for the reserved-node exchange.

  These options
  include information about the source reserved node and target reserved node
  offering.
  Details include the node type, the price, the node count, and the offering type.
  """
  @spec get_reserved_node_exchange_configuration_options(
          map(),
          get_reserved_node_exchange_configuration_options_input_message(),
          list()
        ) ::
          {:ok, get_reserved_node_exchange_configuration_options_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reserved_node_exchange_configuration_options_errors()}
  def get_reserved_node_exchange_configuration_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetReservedNodeExchangeConfigurationOptions",
      input,
      options
    )
  end

  @doc """
  Returns an array of DC2 ReservedNodeOfferings that matches the payment type,
  term,
  and usage price of the given DC1 reserved node.
  """
  @spec get_reserved_node_exchange_offerings(
          map(),
          get_reserved_node_exchange_offerings_input_message(),
          list()
        ) ::
          {:ok, get_reserved_node_exchange_offerings_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reserved_node_exchange_offerings_errors()}
  def get_reserved_node_exchange_offerings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetReservedNodeExchangeOfferings", input, options)
  end

  @doc """
  Get the resource policy for a specified resource.
  """
  @spec get_resource_policy(map(), get_resource_policy_message(), list()) ::
          {:ok, get_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  List the Amazon Redshift Advisor recommendations for one or multiple Amazon
  Redshift clusters in an Amazon Web Services account.
  """
  @spec list_recommendations(map(), list_recommendations_message(), list()) ::
          {:ok, list_recommendations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
  def list_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRecommendations", input, options)
  end

  @doc """
  This operation is retired.

  Calling this operation does not change AQUA configuration. Amazon Redshift
  automatically determines whether to use AQUA (Advanced Query Accelerator).
  """
  @spec modify_aqua_configuration(map(), modify_aqua_input_message(), list()) ::
          {:ok, modify_aqua_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_aqua_configuration_errors()}
  def modify_aqua_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyAquaConfiguration", input, options)
  end

  @doc """
  Modifies an authentication profile.
  """
  @spec modify_authentication_profile(map(), modify_authentication_profile_message(), list()) ::
          {:ok, modify_authentication_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_authentication_profile_errors()}
  def modify_authentication_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyAuthenticationProfile", input, options)
  end

  @doc """
  Modifies the settings for a cluster.

  You can also change node type and the number of nodes to scale up or down the
  cluster. When resizing a cluster, you must specify both the number of nodes and
  the node
  type even if one of the parameters does not change.

  You can add another security or
  parameter group, or change the admin user password. Resetting a cluster password
  or modifying the security groups associated with a cluster do not need a reboot.
  However, modifying a parameter group requires a reboot for parameters to take
  effect.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a subnet group for a
  provisioned cluster is in an account with VPC BPA turned on, the following
  capabilities
  are blocked:

    *
  Creating a public cluster

    *
  Restoring a public cluster

    *
  Modifying a private cluster to be public

    *
  Adding a subnet with VPC BPA turned on to the subnet group when there's at
  least one public cluster within the group

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.
  """
  @spec modify_cluster(map(), modify_cluster_message(), list()) ::
          {:ok, modify_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_errors()}
  def modify_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyCluster", input, options)
  end

  @doc """
  Modifies the database revision of a cluster.

  The database revision is a unique
  revision of the database running in a cluster.
  """
  @spec modify_cluster_db_revision(map(), modify_cluster_db_revision_message(), list()) ::
          {:ok, modify_cluster_db_revision_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_db_revision_errors()}
  def modify_cluster_db_revision(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterDbRevision", input, options)
  end

  @doc """
  Modifies the list of Identity and Access Management (IAM) roles that can be
  used by the cluster to access other Amazon Web Services services.

  The maximum number of IAM roles that you can associate is subject to a quota.
  For more information, go to [Quotas and limits](https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec modify_cluster_iam_roles(map(), modify_cluster_iam_roles_message(), list()) ::
          {:ok, modify_cluster_iam_roles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_iam_roles_errors()}
  def modify_cluster_iam_roles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterIamRoles", input, options)
  end

  @doc """
  Modifies the maintenance settings of a cluster.
  """
  @spec modify_cluster_maintenance(map(), modify_cluster_maintenance_message(), list()) ::
          {:ok, modify_cluster_maintenance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_maintenance_errors()}
  def modify_cluster_maintenance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterMaintenance", input, options)
  end

  @doc """
  Modifies the parameters of a parameter group.

  For the parameters parameter, it can't contain ASCII characters.

  For more information about parameters and parameter groups, go to
  [Amazon Redshift Parameter Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec modify_cluster_parameter_group(map(), modify_cluster_parameter_group_message(), list()) ::
          {:ok, cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_parameter_group_errors()}
  def modify_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the settings for a snapshot.

  This exanmple modifies the manual retention period setting for a cluster
  snapshot.
  """
  @spec modify_cluster_snapshot(map(), modify_cluster_snapshot_message(), list()) ::
          {:ok, modify_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_snapshot_errors()}
  def modify_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterSnapshot", input, options)
  end

  @doc """
  Modifies a snapshot schedule for a cluster.
  """
  @spec modify_cluster_snapshot_schedule(
          map(),
          modify_cluster_snapshot_schedule_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_snapshot_schedule_errors()}
  def modify_cluster_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterSnapshotSchedule", input, options)
  end

  @doc """
  Modifies a cluster subnet group to include the specified list of VPC subnets.

  The
  operation replaces the existing list of subnets with the new list of subnets.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a subnet group for a
  provisioned cluster is in an account with VPC BPA turned on, the following
  capabilities
  are blocked:

    *
  Creating a public cluster

    *
  Restoring a public cluster

    *
  Modifying a private cluster to be public

    *
  Adding a subnet with VPC BPA turned on to the subnet group when there's at
  least one public cluster within the group

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.
  """
  @spec modify_cluster_subnet_group(map(), modify_cluster_subnet_group_message(), list()) ::
          {:ok, modify_cluster_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_subnet_group_errors()}
  def modify_cluster_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClusterSubnetGroup", input, options)
  end

  @doc """
  Contains information for changing a custom domain association.
  """
  @spec modify_custom_domain_association(
          map(),
          modify_custom_domain_association_message(),
          list()
        ) ::
          {:ok, modify_custom_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_custom_domain_association_errors()}
  def modify_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyCustomDomainAssociation", input, options)
  end

  @doc """
  Modifies a Redshift-managed VPC endpoint.
  """
  @spec modify_endpoint_access(map(), modify_endpoint_access_message(), list()) ::
          {:ok, endpoint_access(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_endpoint_access_errors()}
  def modify_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyEndpointAccess", input, options)
  end

  @doc """
  Modifies an existing Amazon Redshift event notification subscription.
  """
  @spec modify_event_subscription(map(), modify_event_subscription_message(), list()) ::
          {:ok, modify_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_event_subscription_errors()}
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modifies a zero-ETL integration or S3 event integration with Amazon Redshift.
  """
  @spec modify_integration(map(), modify_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_integration_errors()}
  def modify_integration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyIntegration", input, options)
  end

  @doc """
  Changes an existing Amazon Redshift IAM Identity Center application.
  """
  @spec modify_redshift_idc_application(map(), modify_redshift_idc_application_message(), list()) ::
          {:ok, modify_redshift_idc_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_redshift_idc_application_errors()}
  def modify_redshift_idc_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyRedshiftIdcApplication", input, options)
  end

  @doc """
  Modifies a scheduled action.
  """
  @spec modify_scheduled_action(map(), modify_scheduled_action_message(), list()) ::
          {:ok, scheduled_action(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_scheduled_action_errors()}
  def modify_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyScheduledAction", input, options)
  end

  @doc """
  Modifies the number of days to retain snapshots in the destination Amazon Web
  Services Region after
  they are copied from the source Amazon Web Services Region.

  By default, this operation only changes the
  retention period of copied automated snapshots. The retention periods for both
  new and
  existing copied automated snapshots are updated with the new retention period.
  You can
  set the manual option to change only the retention periods of copied manual
  snapshots.
  If you set this option, only newly copied manual snapshots have the new
  retention
  period.
  """
  @spec modify_snapshot_copy_retention_period(
          map(),
          modify_snapshot_copy_retention_period_message(),
          list()
        ) ::
          {:ok, modify_snapshot_copy_retention_period_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_snapshot_copy_retention_period_errors()}
  def modify_snapshot_copy_retention_period(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifySnapshotCopyRetentionPeriod", input, options)
  end

  @doc """
  Modifies a snapshot schedule.

  Any schedule associated with a cluster is modified
  asynchronously.
  """
  @spec modify_snapshot_schedule(map(), modify_snapshot_schedule_message(), list()) ::
          {:ok, snapshot_schedule(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_snapshot_schedule_errors()}
  def modify_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifySnapshotSchedule", input, options)
  end

  @doc """
  Modifies a usage limit in a cluster.

  You can't modify the feature type or period of a usage limit.
  """
  @spec modify_usage_limit(map(), modify_usage_limit_message(), list()) ::
          {:ok, usage_limit(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_usage_limit_errors()}
  def modify_usage_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyUsageLimit", input, options)
  end

  @doc """
  Pauses a cluster.
  """
  @spec pause_cluster(map(), pause_cluster_message(), list()) ::
          {:ok, pause_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_cluster_errors()}
  def pause_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PauseCluster", input, options)
  end

  @doc """
  Allows you to purchase reserved nodes.

  Amazon Redshift offers a predefined set of
  reserved node offerings. You can purchase one or more of the offerings. You can
  call the
  `DescribeReservedNodeOfferings` API to obtain the available reserved
  node offerings. You can call this API by providing a specific reserved node
  offering and
  the number of nodes you want to reserve.

  For more information about reserved node offerings, go to
  [Purchasing Reserved Nodes](https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec purchase_reserved_node_offering(map(), purchase_reserved_node_offering_message(), list()) ::
          {:ok, purchase_reserved_node_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, purchase_reserved_node_offering_errors()}
  def purchase_reserved_node_offering(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PurchaseReservedNodeOffering", input, options)
  end

  @doc """
  Updates the resource policy for a specified resource.
  """
  @spec put_resource_policy(map(), put_resource_policy_message(), list()) ::
          {:ok, put_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Reboots a cluster.

  This action is taken as soon as possible. It results in a
  momentary outage to the cluster, during which the cluster status is set to
  `rebooting`. A cluster event is created when the reboot is completed. Any
  pending cluster modifications (see `ModifyCluster`) are applied at this
  reboot.
  For more information about managing clusters, go to
  [Amazon Redshift Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec reboot_cluster(map(), reboot_cluster_message(), list()) ::
          {:ok, reboot_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_cluster_errors()}
  def reboot_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootCluster", input, options)
  end

  @doc """
  Registers a cluster or serverless namespace to the Amazon Web Services Glue Data
  Catalog.
  """
  @spec register_namespace(map(), register_namespace_input_message(), list()) ::
          {:ok, register_namespace_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_namespace_errors()}
  def register_namespace(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterNamespace", input, options)
  end

  @doc """
  From a datashare consumer account, rejects the specified datashare.
  """
  @spec reject_data_share(map(), reject_data_share_message(), list()) ::
          {:ok, data_share(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_data_share_errors()}
  def reject_data_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectDataShare", input, options)
  end

  @doc """
  Sets one or more parameters of the specified parameter group to their default
  values and sets the source values of the parameters to "engine-default".

  To reset the
  entire parameter group specify the *ResetAllParameters* parameter.
  For parameter changes to take effect you must reboot any associated clusters.
  """
  @spec reset_cluster_parameter_group(map(), reset_cluster_parameter_group_message(), list()) ::
          {:ok, cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_cluster_parameter_group_errors()}
  def reset_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetClusterParameterGroup", input, options)
  end

  @doc """
  Changes the size of the cluster.

  You can change the cluster's type, or change the
  number or type of nodes. The default behavior is to use the elastic resize
  method. With
  an elastic resize, your cluster is available for read and write operations more
  quickly
  than with the classic resize method.

  Elastic resize operations have the following restrictions:

    *
  You can only resize clusters of the following types:

      *
  dc2.large

      *
  dc2.8xlarge

      *
  ra3.large

      *
  ra3.xlplus

      *
  ra3.4xlarge

      *
  ra3.16xlarge

    *
  The type of nodes that you add must match the node type for the
  cluster.
  """
  @spec resize_cluster(map(), resize_cluster_message(), list()) ::
          {:ok, resize_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resize_cluster_errors()}
  def resize_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResizeCluster", input, options)
  end

  @doc """
  Creates a new cluster from a snapshot.

  By default, Amazon Redshift creates the resulting
  cluster with the same configuration as the original cluster from which the
  snapshot was
  created, except that the new cluster is created with the default cluster
  security and
  parameter groups. After Amazon Redshift creates the cluster, you can use the
  `ModifyCluster` API to associate a different security group and different
  parameter group with the restored cluster. If you are using a DS node type, you
  can also
  choose to change to another DS node type of the same size during restore.

  If you restore a cluster into a VPC, you must provide a cluster subnet group
  where
  you want the cluster restored.

  VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets
  that
  you own in a Region from reaching or being reached from the internet through
  internet
  gateways and egress-only internet gateways. If a subnet group for a
  provisioned cluster is in an account with VPC BPA turned on, the following
  capabilities
  are blocked:

    *
  Creating a public cluster

    *
  Restoring a public cluster

    *
  Modifying a private cluster to be public

    *
  Adding a subnet with VPC BPA turned on to the subnet group when there's at
  least one public cluster within the group

  For more information about VPC BPA, see [Block public access to VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html)
  in the *Amazon VPC User Guide*.

  For more information about working with snapshots, go to
  [Amazon Redshift Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec restore_from_cluster_snapshot(map(), restore_from_cluster_snapshot_message(), list()) ::
          {:ok, restore_from_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_from_cluster_snapshot_errors()}
  def restore_from_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreFromClusterSnapshot", input, options)
  end

  @doc """
  Creates a new table from a table in an Amazon Redshift cluster snapshot.

  You must
  create the new table within the Amazon Redshift cluster that the snapshot was
  taken
  from.

  You cannot use `RestoreTableFromClusterSnapshot` to restore a table with
  the same name as an existing table in an Amazon Redshift cluster. That is, you
  cannot
  overwrite an existing table in a cluster with a restored table. If you want to
  replace
  your original table with a new, restored table, then rename or drop your
  original table
  before you call `RestoreTableFromClusterSnapshot`. When you have renamed your
  original table, then you can pass the original name of the table as the
  `NewTableName` parameter value in the call to
  `RestoreTableFromClusterSnapshot`. This way, you can replace the original
  table with the table created from the snapshot.

  You can't use this operation to restore tables with
  [interleaved sort keys](https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).
  """
  @spec restore_table_from_cluster_snapshot(
          map(),
          restore_table_from_cluster_snapshot_message(),
          list()
        ) ::
          {:ok, restore_table_from_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_table_from_cluster_snapshot_errors()}
  def restore_table_from_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreTableFromClusterSnapshot", input, options)
  end

  @doc """
  Resumes a paused cluster.
  """
  @spec resume_cluster(map(), resume_cluster_message(), list()) ::
          {:ok, resume_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_cluster_errors()}
  def resume_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResumeCluster", input, options)
  end

  @doc """
  Revokes an ingress rule in an Amazon Redshift security group for a previously
  authorized
  IP range or Amazon EC2 security group.

  To add an ingress rule, see `AuthorizeClusterSecurityGroupIngress`.
  For information about managing security groups, go to
  [Amazon Redshift Cluster Security Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html)
  in the
  *Amazon Redshift Cluster Management Guide*.
  """
  @spec revoke_cluster_security_group_ingress(
          map(),
          revoke_cluster_security_group_ingress_message(),
          list()
        ) ::
          {:ok, revoke_cluster_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_cluster_security_group_ingress_errors()}
  def revoke_cluster_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeClusterSecurityGroupIngress", input, options)
  end

  @doc """
  Revokes access to a cluster.
  """
  @spec revoke_endpoint_access(map(), revoke_endpoint_access_message(), list()) ::
          {:ok, endpoint_authorization(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_endpoint_access_errors()}
  def revoke_endpoint_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeEndpointAccess", input, options)
  end

  @doc """
  Removes the ability of the specified Amazon Web Services account to restore the
  specified
  snapshot.

  If the account is currently restoring the snapshot, the restore will run to
  completion.

  For more information about working with snapshots, go to
  [Amazon Redshift Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
  in the *Amazon Redshift Cluster Management Guide*.
  """
  @spec revoke_snapshot_access(map(), revoke_snapshot_access_message(), list()) ::
          {:ok, revoke_snapshot_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_snapshot_access_errors()}
  def revoke_snapshot_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeSnapshotAccess", input, options)
  end

  @doc """
  Rotates the encryption keys for a cluster.
  """
  @spec rotate_encryption_key(map(), rotate_encryption_key_message(), list()) ::
          {:ok, rotate_encryption_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rotate_encryption_key_errors()}
  def rotate_encryption_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RotateEncryptionKey", input, options)
  end

  @doc """
  Updates the status of a partner integration.
  """
  @spec update_partner_status(map(), update_partner_status_input_message(), list()) ::
          {:ok, partner_integration_output_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_partner_status_errors()}
  def update_partner_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePartnerStatus", input, options)
  end
end
