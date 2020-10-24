# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Neptune do
  @moduledoc """
  Amazon Neptune

  Amazon Neptune is a fast, reliable, fully-managed graph database service
  that makes it easy to build and run applications that work with highly
  connected datasets. The core of Amazon Neptune is a purpose-built,
  high-performance graph database engine optimized for storing billions of
  relationships and querying the graph with milliseconds latency. Amazon
  Neptune supports popular graph models Property Graph and W3C's RDF, and
  their respective query languages Apache TinkerPop Gremlin and SPARQL,
  allowing you to easily build queries that efficiently navigate highly
  connected datasets. Neptune powers graph use cases such as recommendation
  engines, fraud detection, knowledge graphs, drug discovery, and network
  security.

  This interface reference for Amazon Neptune contains documentation for a
  programming or command line interface you can use to manage Amazon Neptune.
  Note that Amazon Neptune is asynchronous, which means that some interfaces
  might require techniques such as polling or callback functions to determine
  when a command has been applied. In this reference, the parameter
  descriptions indicate whether a command is applied immediately, on the next
  instance reboot, or during the maintenance window. The reference structure
  is as follows, and we list following some related topics from the user
  guide.
  """

  @doc """
  Associates an Identity and Access Management (IAM) role from an Neptune DB
  cluster.
  """
  def add_role_to_d_b_cluster(client, input, options \\ []) do
    request(client, "AddRoleToDBCluster", input, options)
  end

  @doc """
  Adds a source identifier to an existing event notification subscription.
  """
  def add_source_identifier_to_subscription(client, input, options \\ []) do
    request(client, "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon Neptune resource. These tags can also be
  used with cost allocation reporting to track cost associated with Amazon
  Neptune resources, or used in a Condition statement in an IAM policy for
  Amazon Neptune.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  def apply_pending_maintenance_action(client, input, options \\ []) do
    request(client, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.
  """
  def copy_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN)
  of the shared DB cluster snapshot.
  """
  def copy_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Copies the specified DB parameter group.
  """
  def copy_d_b_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBParameterGroup", input, options)
  end

  @doc """
  Creates a new Amazon Neptune DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB
  cluster as a Read Replica of another DB cluster or Amazon Neptune DB
  instance.

  Note that when you create a new cluster using `CreateDBCluster` directly,
  deletion protection is disabled by default (when you create a new
  production cluster in the console, deletion protection is enabled by
  default). You can only delete a DB cluster if its `DeletionProtection`
  field is set to `false`.
  """
  def create_d_b_cluster(client, input, options \\ []) do
    request(client, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in
  a DB cluster.

  A DB cluster parameter group is initially created with the default
  parameters for the database engine used by instances in the DB cluster. To
  provide custom values for any of the parameters, you must modify the group
  after creating it using `ModifyDBClusterParameterGroup`. Once you've
  created a DB cluster parameter group, you need to associate it with your DB
  cluster using `ModifyDBCluster`. When you associate a new DB cluster
  parameter group with a running DB cluster, you need to reboot the DB
  instances in the DB cluster without failover for the new DB cluster
  parameter group and associated settings to take effect.

  <important> After you create a DB cluster parameter group, you should wait
  at least 5 minutes before creating your first DB cluster that uses that DB
  cluster parameter group as the default parameter group. This allows Amazon
  Neptune to fully complete the create action before the DB cluster parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon Neptune
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important>
  """
  def create_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster.
  """
  def create_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new DB instance.
  """
  def create_d_b_instance(client, input, options \\ []) do
    request(client, "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for
  the database engine used by the DB instance. To provide custom values for
  any of the parameters, you must modify the group after creating it using
  *ModifyDBParameterGroup*. Once you've created a DB parameter group, you
  need to associate it with your DB instance using *ModifyDBInstance*. When
  you associate a new DB parameter group with a running DB instance, you need
  to reboot the DB instance without failover for the new DB parameter group
  and associated settings to take effect.

  <important> After you create a DB parameter group, you should wait at least
  5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon Neptune
  to fully complete the create action before the parameter group is used as
  the default for a new DB instance. This is especially important for
  parameters that are critical when creating the default database for a DB
  instance, such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the Amazon Neptune console or the *DescribeDBParameters* command
  to verify that your DB parameter group has been created or modified.

  </important>
  """
  def create_d_b_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB subnet group. DB subnet groups must contain at least one
  subnet in at least two AZs in the AWS Region.
  """
  def create_d_b_subnet_group(client, input, options \\ []) do
    request(client, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an event notification subscription. This action requires a topic
  ARN (Amazon Resource Name) created by either the Neptune console, the SNS
  console, or the SNS API. To obtain an ARN with SNS, you must create a topic
  in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS
  console.

  You can specify the type of source (SourceType) you want to be notified of,
  provide a list of Neptune sources (SourceIds) that triggers the events, and
  provide a list of event categories (EventCategories) for events you want to
  be notified of. For example, you can specify SourceType = db-instance,
  SourceIds = mydbinstance1, mydbinstance2 and EventCategories =
  Availability, Backup.

  If you specify both the SourceType and SourceIds, such as SourceType =
  db-instance and SourceIdentifier = myDBInstance1, you are notified of all
  the db-instance events for the specified source. If you specify a
  SourceType but do not specify a SourceIdentifier, you receive notice of the
  events for that source type for all your Neptune sources. If you do not
  specify either the SourceType nor the SourceIdentifier, you are notified of
  events generated from all Neptune sources belonging to your customer
  account.
  """
  def create_event_subscription(client, input, options \\ []) do
    request(client, "CreateEventSubscription", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.
  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and can't be recovered. Manual DB cluster snapshots of the
  specified DB cluster are not deleted.

  Note that the DB Cluster cannot be deleted if deletion protection is
  enabled. To delete it, you must first set its `DeletionProtection` field to
  `False`.
  """
  def delete_d_b_cluster(client, input, options \\ []) do
    request(client, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group. The DB cluster parameter
  group to be deleted can't be associated with any DB clusters.
  """
  def delete_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
  operation is terminated.

  <note> The DB cluster snapshot must be in the `available` state to be
  deleted.

  </note>
  """
  def delete_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.
  When you delete a DB instance, all automated backups for that instance are
  deleted and can't be recovered. Manual DB snapshots of the DB instance to
  be deleted by `DeleteDBInstance` are not deleted.

  If you request a final DB snapshot the status of the Amazon Neptune DB
  instance is `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The
  action can't be canceled or reverted once submitted.

  Note that when a DB instance is in a failure state and has a status of
  `failed`, `incompatible-restore`, or `incompatible-network`, you can only
  delete it when the `SkipFinalSnapshot` parameter is set to `true`.

  You can't delete a DB instance if it is the only instance in the DB
  cluster, or if it has deletion protection enabled.
  """
  def delete_d_b_instance(client, input, options \\ []) do
    request(client, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted
  can't be associated with any DB instances.
  """
  def delete_d_b_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes a DB subnet group.

  <note> The specified database subnet group must not be associated with any
  DB instances.

  </note>
  """
  def delete_d_b_subnet_group(client, input, options \\ []) do
    request(client, "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an event notification subscription.
  """
  def delete_event_subscription(client, input, options \\ []) do
    request(client, "DeleteEventSubscription", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions. If a
  `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.
  """
  def describe_d_b_cluster_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter
  group.
  """
  def describe_d_b_cluster_parameters(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a
  manual DB cluster snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a
  list of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB cluster snapshot. If `all` is included in the list of values for
  the `restore` attribute, then the manual DB cluster snapshot is public and
  can be copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  cluster snapshot, or to make the manual DB cluster snapshot public or
  private, use the `ModifyDBClusterSnapshotAttribute` API action.
  """
  def describe_d_b_cluster_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB cluster snapshots. This API action supports
  pagination.
  """
  def describe_d_b_cluster_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned DB clusters, and supports pagination.

  <note> This operation can also return information for Amazon RDS clusters
  and Amazon DocDB clusters.

  </note>
  """
  def describe_d_b_clusters(client, input, options \\ []) do
    request(client, "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available DB engines.
  """
  def describe_d_b_engine_versions(client, input, options \\ []) do
    request(client, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned instances, and supports pagination.

  <note> This operation can also return information for Amazon RDS instances
  and Amazon DocDB instances.

  </note>
  """
  def describe_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions. If a
  `DBParameterGroupName` is specified, the list will contain only the
  description of the specified DB parameter group.
  """
  def describe_d_b_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  def describe_d_b_parameters(client, input, options \\ []) do
    request(client, "DescribeDBParameters", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
  specified, the list will contain only the descriptions of the specified
  DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def describe_d_b_subnet_groups(client, input, options \\ []) do
    request(client, "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.
  """
  def describe_engine_default_cluster_parameters(client, input, options \\ []) do
    request(client, "DescribeEngineDefaultClusterParameters", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the
  specified database engine.
  """
  def describe_engine_default_parameters(client, input, options \\ []) do
    request(client, "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified,
  for a specified source type.
  """
  def describe_event_categories(client, input, options \\ []) do
    request(client, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account. The
  description for a subscription includes SubscriptionName, SNSTopicARN,
  CustomerID, SourceType, SourceID, CreationTime, and Status.

  If you specify a SubscriptionName, lists the description for that
  subscription.
  """
  def describe_event_subscriptions(client, input, options \\ []) do
    request(client, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to DB instances, DB security groups, DB snapshots,
  and DB parameter groups for the past 14 days. Events specific to a
  particular DB instance, DB security group, database snapshot, or DB
  parameter group can be obtained by providing the name as a parameter. By
  default, the past hour of events are returned.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  def describe_orderable_d_b_instance_options(client, input, options \\ []) do
    request(client, "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, DB instances) that have at least
  one pending maintenance action.
  """
  def describe_pending_maintenance_actions(client, input, options \\ []) do
    request(client, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  You can call `DescribeValidDBInstanceModifications` to learn what
  modifications you can make to your DB instance. You can use this
  information when you call `ModifyDBInstance`.
  """
  def describe_valid_d_b_instance_modifications(client, input, options \\ []) do
    request(client, "DescribeValidDBInstanceModifications", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Read Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster
  writer).

  Amazon Neptune will automatically fail over to a Read Replica, if one
  exists, when the primary instance fails. You can force a failover when you
  want to simulate a failure of a primary instance for testing. Because each
  instance in a DB cluster has its own endpoint address, you will need to
  clean up and re-establish any existing connections that use those endpoint
  addresses when the failover is complete.
  """
  def failover_d_b_cluster(client, input, options \\ []) do
    request(client, "FailoverDBCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon Neptune resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modify a setting for a DB cluster. You can change one or more database
  configuration parameters by specifying these parameters and the new values
  in the request.
  """
  def modify_d_b_cluster(client, input, options \\ []) do
    request(client, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group. To modify more
  than one parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB cluster
  associated with the parameter group before the change can take effect.

  </note> <important> After you create a DB cluster parameter group, you
  should wait at least 5 minutes before creating your first DB cluster that
  uses that DB cluster parameter group as the default parameter group. This
  allows Amazon Neptune to fully complete the create action before the
  parameter group is used as the default for a new DB cluster. This is
  especially important for parameters that are critical when creating the
  default database for a DB cluster, such as the character set for the
  default database defined by the `character_set_database` parameter. You can
  use the *Parameter Groups* option of the Amazon Neptune console or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important>
  """
  def modify_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other AWS accounts, specify
  `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add
  a list of IDs of the AWS accounts that are authorized to restore the manual
  DB cluster snapshot. Use the value `all` to make the manual DB cluster
  snapshot public, which means that it can be copied or restored by all AWS
  accounts. Do not add the `all` value for any manual DB cluster snapshots
  that contain private information that you don't want available to all AWS
  accounts. If a manual DB cluster snapshot is encrypted, it can be shared,
  but only by specifying a list of authorized AWS account IDs for the
  `ValuesToAdd` parameter. You can't use `all` as a value for that parameter
  in this case.

  To view which AWS accounts have access to copy or restore a manual DB
  cluster snapshot, or whether a manual DB cluster snapshot public or
  private, use the `DescribeDBClusterSnapshotAttributes` API action.
  """
  def modify_d_b_cluster_snapshot_attribute(client, input, options \\ []) do
    request(client, "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for a DB instance. You can change one or more database
  configuration parameters by specifying these parameters and the new values
  in the request. To learn what modifications you can make to your DB
  instance, call `DescribeValidDBInstanceModifications` before you call
  `ModifyDBInstance`.
  """
  def modify_d_b_instance(client, input, options \\ []) do
    request(client, "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group. To modify more than one
  parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB instance
  associated with the parameter group before the change can take effect.

  </note> <important> After you modify a DB parameter group, you should wait
  at least 5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon Neptune
  to fully complete the modify action before the parameter group is used as
  the default for a new DB instance. This is especially important for
  parameters that are critical when creating the default database for a DB
  instance, such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the Amazon Neptune console or the *DescribeDBParameters* command
  to verify that your DB parameter group has been created or modified.

  </important>
  """
  def modify_d_b_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Modifies an existing DB subnet group. DB subnet groups must contain at
  least one subnet in at least two AZs in the AWS Region.
  """
  def modify_d_b_subnet_group(client, input, options \\ []) do
    request(client, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing event notification subscription. Note that you can't
  modify the source identifiers using this call; to change source identifiers
  for a subscription, use the `AddSourceIdentifierToSubscription` and
  `RemoveSourceIdentifierFromSubscription` calls.

  You can see a list of the event categories for a given SourceType by using
  the **DescribeEventCategories** action.
  """
  def modify_event_subscription(client, input, options \\ []) do
    request(client, "ModifyEventSubscription", input, options)
  end

  @doc """
  Not supported.
  """
  def promote_read_replica_d_b_cluster(client, input, options \\ []) do
    request(client, "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.
  For example, if you make certain modifications, or if you change the DB
  parameter group associated with the DB instance, you must reboot the
  instance for the changes to take effect.

  Rebooting a DB instance restarts the database engine service. Rebooting a
  DB instance results in a momentary outage, during which the DB instance
  status is set to rebooting.
  """
  def reboot_d_b_instance(client, input, options \\ []) do
    request(client, "RebootDBInstance", input, options)
  end

  @doc """
  Disassociates an Identity and Access Management (IAM) role from a DB
  cluster.
  """
  def remove_role_from_d_b_cluster(client, input, options \\ []) do
    request(client, "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing event notification
  subscription.
  """
  def remove_source_identifier_from_subscription(client, input, options \\ []) do
    request(client, "RemoveSourceIdentifierFromSubscription", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon Neptune resource.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group to the default
  value. To reset specific parameters submit a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter
  group, specify the `DBClusterParameterGroupName` and `ResetAllParameters`
  parameters.

  When resetting the entire group, dynamic parameters are updated immediately
  and static parameters are set to `pending-reboot` to take effect on the
  next DB instance restart or `RebootDBInstance` request. You must call
  `RebootDBInstance` for every DB instance in your DB cluster that you want
  the updated static parameter to apply to.
  """
  def reset_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group to the engine/system
  default value. To reset specific parameters, provide a list of the
  following: `ParameterName` and `ApplyMethod`. To reset the entire DB
  parameter group, specify the `DBParameterGroup` name and
  `ResetAllParameters` parameters. When resetting the entire group, dynamic
  parameters are updated immediately and static parameters are set to
  `pending-reboot` to take effect on the next DB instance restart or
  `RebootDBInstance` request.
  """
  def reset_d_b_parameter_group(client, input, options \\ []) do
    request(client, "ResetDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

  If a DB snapshot is specified, the target DB cluster is created from the
  source DB snapshot with a default configuration and default security group.

  If a DB cluster snapshot is specified, the target DB cluster is created
  from the source DB cluster restore point with the same configuration as the
  original source DB cluster, except that the new DB cluster is created with
  the default security group.
  """
  def restore_d_b_cluster_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a DB cluster to an arbitrary point in time. Users can restore to
  any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the
  source DB cluster with the same configuration as the original DB cluster,
  except that the new DB cluster is created with the default DB security
  group.

  <note> This action only restores the DB cluster, not the DB instances for
  that DB cluster. You must invoke the `CreateDBInstance` action to create DB
  instances for the restored DB cluster, specifying the identifier of the
  restored DB cluster in `DBClusterIdentifier`. You can create DB instances
  only after the `RestoreDBClusterToPointInTime` action has completed and the
  DB cluster is available.

  </note>
  """
  def restore_d_b_cluster_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Starts an Amazon Neptune DB cluster that was stopped using the AWS console,
  the AWS CLI stop-db-cluster command, or the StopDBCluster API.
  """
  def start_d_b_cluster(client, input, options \\ []) do
    request(client, "StartDBCluster", input, options)
  end

  @doc """
  Stops an Amazon Neptune DB cluster. When you stop a DB cluster, Neptune
  retains the DB cluster's metadata, including its endpoints and DB parameter
  groups.

  Neptune also retains the transaction logs so you can do a point-in-time
  restore if necessary.
  """
  def stop_d_b_cluster(client, input, options \\ []) do
    request(client, "StopDBCluster", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "rds"}
    host = build_host("rds", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2014-10-31"})
    payload = AWS.Util.encode_query(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.Util.decode_xml(body)}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
