# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDB do
  @moduledoc """
  Amazon DocumentDB API documentation
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Amazon DocDB",
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      protocol: "query",
      service_id: "DocDB",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: nil
    }
  end

  @doc """
  Adds a source identifier to an existing event notification subscription.
  """
  def add_source_identifier_to_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon DocumentDB resource.

  You can use these tags with cost allocation reporting to track costs that are
  associated with Amazon DocumentDB resources or in a `Condition` statement in an
  Identity and Access Management (IAM) policy for Amazon DocumentDB.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to an Amazon
  DocumentDB instance).
  """
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified cluster parameter group.
  """
  def copy_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a cluster.

  To copy a cluster snapshot from a shared manual cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of
  the shared cluster snapshot. You can only copy a shared DB cluster snapshot,
  whether encrypted or not, in the same Region.

  To cancel the copy operation after it is in progress, delete the target cluster
  snapshot identified by `TargetDBClusterSnapshotIdentifier` while that cluster
  snapshot is in the *copying* status.
  """
  def copy_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new Amazon DocumentDB cluster.
  """
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new cluster parameter group.

  Parameters in a cluster parameter group apply to all of the instances in a
  cluster.

  A cluster parameter group is initially created with the default parameters for
  the database engine used by instances in the cluster. In Amazon DocumentDB, you
  cannot make modifications directly to the `default.docdb3.6` cluster parameter
  group. If your Amazon DocumentDB cluster is using the default cluster parameter
  group and you want to modify a value in it, you must first [ create a new parameter
  group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html)
  or [ copy an existing parameter group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html),
  modify it, and then apply the modified parameter group to your cluster. For the
  new cluster parameter group and associated settings to take effect, you must
  then reboot the instances in the cluster without failover. For more information,
  see [ Modifying Amazon DocumentDB Cluster Parameter Groups](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html).
  """
  def create_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a cluster.
  """
  def create_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new instance.
  """
  def create_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new subnet group.

  subnet groups must contain at least one subnet in at least two Availability
  Zones in the Region.
  """
  def create_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an Amazon DocumentDB event notification subscription.

  This action requires a topic Amazon Resource Name (ARN) created by using the
  Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS API. To
  obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and
  subscribe to the topic. The ARN is displayed in the Amazon SNS console.

  You can specify the type of source (`SourceType`) that you want to be notified
  of. You can also provide a list of Amazon DocumentDB sources (`SourceIds`) that
  trigger the events, and you can provide a list of event categories
  (`EventCategories`) for events that you want to be notified of. For example, you
  can specify `SourceType = db-instance`, `SourceIds = mydbinstance1,
  mydbinstance2` and `EventCategories = Availability, Backup`.

  If you specify both the `SourceType` and `SourceIds` (such as `SourceType =
  db-instance` and `SourceIdentifier = myDBInstance1`), you are notified of all
  the `db-instance` events for the specified source. If you specify a `SourceType`
  but do not specify a `SourceIdentifier`, you receive notice of the events for
  that source type for all your Amazon DocumentDB sources. If you do not specify
  either the `SourceType` or the `SourceIdentifier`, you are notified of events
  generated from all Amazon DocumentDB sources belonging to your customer account.
  """
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEventSubscription", input, options)
  end

  @doc """
  Creates an Amazon DocumentDB global cluster that can span multiple multiple
  Regions.

  The global cluster contains one primary cluster with read-write capability, and
  up-to give read-only secondary clusters. Global clusters uses storage-based fast
  replication across regions with latencies less than one second, using dedicated
  infrastructure with no impact to your workload’s performance.

  You can create a global cluster that is initially empty, and then add a primary
  and a secondary to it. Or you can specify an existing cluster during the create
  operation, and this cluster becomes the primary of the global cluster.

  This action only applies to Amazon DocumentDB clusters.
  """
  def create_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGlobalCluster", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster.

  When you delete a cluster, all automated backups for that cluster are deleted
  and can't be recovered. Manual DB cluster snapshots of the specified cluster are
  not deleted.
  """
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a specified cluster parameter group.

  The cluster parameter group to be deleted can't be associated with any clusters.
  """
  def delete_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a cluster snapshot.

  If the snapshot is being copied, the copy operation is terminated.

  The cluster snapshot must be in the `available` state to be deleted.
  """
  def delete_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  Deletes a previously provisioned instance.
  """
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a subnet group.

  The specified database subnet group must not be associated with any DB
  instances.
  """
  def delete_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an Amazon DocumentDB event notification subscription.
  """
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes a global cluster.

  The primary and secondary clusters must already be detached or deleted before
  attempting to delete a global cluster.

  This action only applies to Amazon DocumentDB clusters.
  """
  def delete_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGlobalCluster", input, options)
  end

  @doc """
  Returns a list of certificate authority (CA) certificates provided by Amazon
  DocumentDB for this account.
  """
  def describe_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCertificates", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions.

  If a `DBClusterParameterGroupName` parameter is specified, the list contains
  only the description of the specified cluster parameter group.
  """
  def describe_db_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular cluster parameter group.
  """
  def describe_db_cluster_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of cluster snapshot attribute names and values for a manual DB
  cluster snapshot.

  When you share snapshots with other accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the accounts that are authorized to copy or restore the manual
  cluster snapshot. If `all` is included in the list of values for the `restore`
  attribute, then the manual cluster snapshot is public and can be copied or
  restored by all accounts.
  """
  def describe_db_cluster_snapshot_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeDBClusterSnapshotAttributes",
      input,
      options
    )
  end

  @doc """
  Returns information about cluster snapshots.

  This API operation supports pagination.
  """
  def describe_db_cluster_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB clusters.

  This API operation supports pagination. For certain management features such as
  cluster and instance lifecycle management, Amazon DocumentDB leverages
  operational technology that is shared with Amazon RDS and Amazon Neptune. Use
  the `filterName=engine,Values=docdb` filter parameter to return only Amazon
  DocumentDB clusters.
  """
  def describe_db_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available engines.
  """
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB instances.

  This API supports pagination.
  """
  def describe_db_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBSubnetGroup` descriptions.

  If a `DBSubnetGroupName` is specified, the list will contain only the
  descriptions of the specified `DBSubnetGroup`.
  """
  def describe_db_subnet_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.
  """
  def describe_engine_default_cluster_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeEngineDefaultClusterParameters",
      input,
      options
    )
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified, for
  a specified source type.
  """
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account.

  The description for a subscription includes `SubscriptionName`, `SNSTopicARN`,
  `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify a `SubscriptionName`, lists the description for that
  subscription.
  """
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to instances, security groups, snapshots, and DB
  parameter groups for the past 14 days.

  You can obtain events specific to a particular DB instance, security group,
  snapshot, or parameter group by providing the name as a parameter. By default,
  the events of the past hour are returned.
  """
  def describe_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEvents", input, options)
  end

  @doc """
  Returns information about Amazon DocumentDB global clusters.

  This API supports pagination.

  This action only applies to Amazon DocumentDB clusters.
  """
  def describe_global_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeGlobalClusters", input, options)
  end

  @doc """
  Returns a list of orderable instance options for the specified engine.
  """
  def describe_orderable_db_instance_options(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, instances) that have at least one
  pending maintenance action.
  """
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Forces a failover for a cluster.

  A failover for a cluster promotes one of the Amazon DocumentDB replicas
  (read-only instances) in the cluster to be the primary instance (the cluster
  writer).

  If the primary instance fails, Amazon DocumentDB automatically fails over to an
  Amazon DocumentDB replica, if one exists. You can force a failover when you want
  to simulate a failure of a primary instance for testing.
  """
  def failover_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FailoverDBCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon DocumentDB resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Modifies a setting for an Amazon DocumentDB cluster.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request.
  """
  def modify_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group.

  To modify more than one parameter, submit a list of the following:
  `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters
  can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot or maintenance window before the change can take
  effect.

  After you create a cluster parameter group, you should wait at least 5 minutes
  before creating your first cluster that uses that cluster parameter group as the
  default parameter group. This allows Amazon DocumentDB to fully complete the
  create action before the parameter group is used as the default for a new
  cluster. This step is especially important for parameters that are critical when
  creating the default database for a cluster, such as the character set for the
  default database defined by the `character_set_database` parameter.
  """
  def modify_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual cluster snapshot.

  To share a manual cluster snapshot with other accounts, specify `restore` as the
  `AttributeName`, and use the `ValuesToAdd` parameter to add a list of IDs of the
  accounts that are authorized to restore the manual cluster snapshot. Use the
  value `all` to make the manual cluster snapshot public, which means that it can
  be copied or restored by all accounts. Do not add the `all` value for any manual
  cluster snapshots that contain private information that you don't want available
  to all accounts. If a manual cluster snapshot is encrypted, it can be shared,
  but only by specifying a list of authorized account IDs for the `ValuesToAdd`
  parameter. You can't use `all` as a value for that parameter in this case.
  """
  def modify_db_cluster_snapshot_attribute(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for an instance.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request.
  """
  def modify_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies an existing subnet group.

  subnet groups must contain at least one subnet in at least two Availability
  Zones in the Region.
  """
  def modify_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing Amazon DocumentDB event notification subscription.
  """
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyEventSubscription", input, options)
  end

  @doc """
  Modify a setting for an Amazon DocumentDB global cluster.

  You can change one or more configuration parameters (for example: deletion
  protection), or the global cluster identifier by specifying these parameters and
  the new values in the request.

  This action only applies to Amazon DocumentDB clusters.
  """
  def modify_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyGlobalCluster", input, options)
  end

  @doc """
  You might need to reboot your instance, usually for maintenance reasons.

  For example, if you make certain changes, or if you change the cluster parameter
  group that is associated with the instance, you must reboot the instance for the
  changes to take effect.

  Rebooting an instance restarts the database engine service. Rebooting an
  instance results in a momentary outage, during which the instance status is set
  to *rebooting*.
  """
  def reboot_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RebootDBInstance", input, options)
  end

  @doc """
  Detaches an Amazon DocumentDB secondary cluster from a global cluster.

  The cluster becomes a standalone cluster with read-write capability instead of
  being read-only and receiving data from a primary in a different region.

  This action only applies to Amazon DocumentDB clusters.
  """
  def remove_from_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveFromGlobalCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing Amazon DocumentDB event
  notification subscription.
  """
  def remove_source_identifier_from_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "RemoveSourceIdentifierFromSubscription",
      input,
      options
    )
  end

  @doc """
  Removes metadata tags from an Amazon DocumentDB resource.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group to the default value.

  To reset specific parameters, submit a list of the following: `ParameterName`
  and `ApplyMethod`. To reset the entire cluster parameter group, specify the
  `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

  When you reset the entire group, dynamic parameters are updated immediately and
  static parameters are set to `pending-reboot` to take effect on the next DB
  instance reboot.
  """
  def reset_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a new cluster from a snapshot or cluster snapshot.

  If a snapshot is specified, the target cluster is created from the source DB
  snapshot with a default configuration and default security group.

  If a cluster snapshot is specified, the target cluster is created from the
  source cluster restore point with the same configuration as the original source
  DB cluster, except that the new cluster is created with the default security
  group.
  """
  def restore_db_cluster_from_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a cluster to an arbitrary point in time.

  Users can restore to any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target cluster is created from the source
  cluster with the same configuration as the original cluster, except that the new
  cluster is created with the default security group.
  """
  def restore_db_cluster_to_point_in_time(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Restarts the stopped cluster that is specified by `DBClusterIdentifier`.

  For more information, see [Stopping and Starting an Amazon DocumentDB Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
  """
  def start_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDBCluster", input, options)
  end

  @doc """
  Stops the running cluster that is specified by `DBClusterIdentifier`.

  The cluster must be in the *available* state. For more information, see
  [Stopping and Starting an Amazon DocumentDB Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
  """
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDBCluster", input, options)
  end
end
