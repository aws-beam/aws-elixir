# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDS do
  @moduledoc """
  Amazon Relational Database Service

  Amazon Relational Database Service (Amazon RDS) is a web service that makes
  it easier to set up, operate, and scale a relational database in the cloud.
  It provides cost-efficient, resizeable capacity for an industry-standard
  relational database and manages common database administration tasks,
  freeing up developers to focus on what makes their applications and
  businesses unique.

  Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
  PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server.
  These capabilities mean that the code, applications, and tools you already
  use today with your existing databases work with Amazon RDS without
  modification. Amazon RDS automatically backs up your database and maintains
  the database software that powers your DB instance. Amazon RDS is flexible:
  you can scale your DB instance's compute resources and storage capacity to
  meet your application's demand. As with all Amazon Web Services, there are
  no up-front investments, and you pay only for the resources you use.

  This interface reference for Amazon RDS contains documentation for a
  programming or command line interface you can use to manage Amazon RDS.
  Amazon RDS is asynchronous, which means that some interfaces might require
  techniques such as polling or callback functions to determine when a
  command has been applied. In this reference, the parameter descriptions
  indicate whether a command is applied immediately, on the next instance
  reboot, or during the maintenance window. The reference structure is as
  follows, and we list following some related topics from the user guide.

  **Amazon RDS API Reference**

  <ul> <li> For the alphabetical list of API actions, see [API
  Actions](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

  </li> <li> For the alphabetical list of data types, see [Data
  Types](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

  </li> <li> For a list of common query parameters, see [Common
  Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

  </li> <li> For descriptions of the error codes, see [Common
  Errors](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

  </li> </ul> **Amazon RDS User Guide**

  <ul> <li> For a summary of the Amazon RDS interfaces, see [Available RDS
  Interfaces](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

  </li> <li> For more information about how to use the Query API, see [Using
  the Query
  API](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).

  </li> </ul>
  """

  @doc """
  Associates an Identity and Access Management (IAM) role from an Amazon
  Aurora DB cluster. For more information, see [Authorizing Amazon Aurora
  MySQL to Access Other AWS Services on Your
  Behalf](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
  in the *Amazon Aurora User Guide*.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def add_role_to_d_b_cluster(client, input, options \\ []) do
    request(client, "AddRoleToDBCluster", input, options)
  end

  @doc """
  Associates an AWS Identity and Access Management (IAM) role with a DB
  instance.

  <note> To add a role to a DB instance, the status of the DB instance must
  be `available`.

  </note>
  """
  def add_role_to_d_b_instance(client, input, options \\ []) do
    request(client, "AddRoleToDBInstance", input, options)
  end

  @doc """
  Adds a source identifier to an existing RDS event notification
  subscription.
  """
  def add_source_identifier_to_subscription(client, input, options \\ []) do
    request(client, "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon RDS resource. These tags can also be used
  with cost allocation reporting to track cost associated with Amazon RDS
  resources, or used in a Condition statement in an IAM policy for Amazon
  RDS.

  For an overview on tagging Amazon RDS resources, see [Tagging Amazon RDS
  Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
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
  Enables ingress to a DBSecurityGroup using one of two forms of
  authorization. First, EC2 or VPC security groups can be added to the
  DBSecurityGroup if the application using the database is running on EC2 or
  VPC instances. Second, IP ranges are available if the application accessing
  your database is running on the Internet. Required parameters for this API
  are one of CIDR range, EC2SecurityGroupId for VPC, or
  (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
  EC2SecurityGroupId for non-VPC).

  <note> You can't authorize ingress from an EC2 security group in one AWS
  Region to an Amazon RDS DB instance in another. You can't authorize ingress
  from a VPC security group in one VPC to an Amazon RDS DB instance in
  another.

  </note> For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def authorize_d_b_security_group_ingress(client, input, options \\ []) do
    request(client, "AuthorizeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Backtracks a DB cluster to a specific time, without creating a new DB
  cluster.

  For more information on backtracking, see [ Backtracking an Aurora DB
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora MySQL DB clusters.

  </note>
  """
  def backtrack_d_b_cluster(client, input, options \\ []) do
    request(client, "BacktrackDBCluster", input, options)
  end

  @doc """
  Cancels an export task in progress that is exporting a snapshot to Amazon
  S3. Any data that has already been written to the S3 bucket isn't removed.
  """
  def cancel_export_task(client, input, options \\ []) do
    request(client, "CancelExportTask", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def copy_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN)
  of the shared DB cluster snapshot.

  You can copy an encrypted DB cluster snapshot from another AWS Region. In
  that case, the AWS Region where you call the `CopyDBClusterSnapshot` action
  is the destination AWS Region for the encrypted DB cluster snapshot to be
  copied to. To copy an encrypted DB cluster snapshot from another AWS
  Region, you must provide the following values:

  <ul> <li> `KmsKeyId` - The AWS Key Management System (AWS KMS) key
  identifier for the key to use to encrypt the copy of the DB cluster
  snapshot in the destination AWS Region.

  </li> <li> `PreSignedUrl` - A URL that contains a Signature Version 4
  signed request for the `CopyDBClusterSnapshot` action to be called in the
  source AWS Region where the DB cluster snapshot is copied from. The
  pre-signed URL must be a valid request for the `CopyDBClusterSnapshot` API
  action that can be executed in the source AWS Region that contains the
  encrypted DB cluster snapshot to be copied.

  The pre-signed URL request must contain the following parameter values:

  <ul> <li> `KmsKeyId` - The KMS key identifier for the key to use to encrypt
  the copy of the DB cluster snapshot in the destination AWS Region. This is
  the same identifier for both the `CopyDBClusterSnapshot` action that is
  called in the destination AWS Region, and the action contained in the
  pre-signed URL.

  </li> <li> `DestinationRegion` - The name of the AWS Region that the DB
  cluster snapshot is to be created in.

  </li> <li> `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This
  identifier must be in the Amazon Resource Name (ARN) format for the source
  AWS Region. For example, if you are copying an encrypted DB cluster
  snapshot from the us-west-2 AWS Region, then your
  `SourceDBClusterSnapshotIdentifier` looks like the following example:
  `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.

  </li> </ul> To learn how to generate a Signature Version 4 signed request,
  see [ Authenticating Requests: Using Query Parameters (AWS Signature
  Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
  and [ Signature Version 4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  <note> If you are using an AWS SDK tool or the AWS CLI, you can specify
  `SourceRegion` (or `--source-region` for the AWS CLI) instead of specifying
  `PreSignedUrl` manually. Specifying `SourceRegion` autogenerates a
  pre-signed URL that is a valid request for the operation that can be
  executed in the source AWS Region.

  </note> </li> <li> `TargetDBClusterSnapshotIdentifier` - The identifier for
  the new copy of the DB cluster snapshot in the destination AWS Region.

  </li> <li> `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This
  identifier must be in the ARN format for the source AWS Region and is the
  same value as the `SourceDBClusterSnapshotIdentifier` in the pre-signed
  URL.

  </li> </ul> To cancel the copy operation once it is in progress, delete the
  target DB cluster snapshot identified by
  `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in
  "copying" status.

  For more information on copying encrypted DB cluster snapshots from one AWS
  Region to another, see [ Copying a
  Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html)
  in the *Amazon Aurora User Guide.*

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
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
  Copies the specified DB snapshot. The source DB snapshot must be in the
  `available` state.

  You can copy a snapshot from one AWS Region to another. In that case, the
  AWS Region where you call the `CopyDBSnapshot` action is the destination
  AWS Region for the DB snapshot copy.

  For more information about copying snapshots, see [Copying a DB
  Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot)
  in the *Amazon RDS User Guide.*
  """
  def copy_d_b_snapshot(client, input, options \\ []) do
    request(client, "CopyDBSnapshot", input, options)
  end

  @doc """
  Copies the specified option group.
  """
  def copy_option_group(client, input, options \\ []) do
    request(client, "CopyOptionGroup", input, options)
  end

  @doc """
  Creates a custom Availability Zone (AZ).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ *RDS on VMware User
  Guide.*
  ](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def create_custom_availability_zone(client, input, options \\ []) do
    request(client, "CreateCustomAvailabilityZone", input, options)
  end

  @doc """
  Creates a new Amazon Aurora DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB
  cluster as a read replica of another DB cluster or Amazon RDS MySQL DB
  instance. For cross-region replication where the DB cluster identified by
  `ReplicationSourceIdentifier` is encrypted, you must also specify the
  `PreSignedUrl` parameter.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def create_d_b_cluster(client, input, options \\ []) do
    request(client, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new custom endpoint and associates it with an Amazon Aurora DB
  cluster.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def create_d_b_cluster_endpoint(client, input, options \\ []) do
    request(client, "CreateDBClusterEndpoint", input, options)
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
  RDS to fully complete the create action before the DB cluster parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` action to verify that your DB cluster
  parameter group has been created or modified.

  </important> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def create_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster. For more information on Amazon Aurora,
  see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
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
  Creates a new DB instance that acts as a read replica for an existing
  source DB instance. You can create a read replica for a DB instance running
  MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server. For more information,
  see [Working with Read
  Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
  in the *Amazon RDS User Guide*.

  Amazon Aurora doesn't support this action. Call the `CreateDBInstance`
  action to create a DB instance for an Aurora DB cluster.

  All read replica DB instances are created with backups disabled. All other
  DB instance attributes (including DB security groups and DB parameter
  groups) are inherited from the source DB instance, except as specified.

  <important> Your source DB instance must have backup retention enabled.

  </important>
  """
  def create_d_b_instance_read_replica(client, input, options \\ []) do
    request(client, "CreateDBInstanceReadReplica", input, options)
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
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the create action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def create_d_b_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB proxy.
  """
  def create_d_b_proxy(client, input, options \\ []) do
    request(client, "CreateDBProxy", input, options)
  end

  @doc """
  Creates a new DB security group. DB security groups control access to a DB
  instance.

  <note> A DB security group controls access to EC2-Classic DB instances that
  are not in a VPC.

  </note>
  """
  def create_d_b_security_group(client, input, options \\ []) do
    request(client, "CreateDBSecurityGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB instance. The source DB instance must be in the
  `available` or `storage-optimization`state.
  """
  def create_d_b_snapshot(client, input, options \\ []) do
    request(client, "CreateDBSnapshot", input, options)
  end

  @doc """
  Creates a new DB subnet group. DB subnet groups must contain at least one
  subnet in at least two AZs in the AWS Region.
  """
  def create_d_b_subnet_group(client, input, options \\ []) do
    request(client, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an RDS event notification subscription. This action requires a
  topic Amazon Resource Name (ARN) created by either the RDS console, the SNS
  console, or the SNS API. To obtain an ARN with SNS, you must create a topic
  in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS
  console.

  You can specify the type of source (`SourceType`) that you want to be
  notified of and provide a list of RDS sources (`SourceIds`) that triggers
  the events. You can also provide a list of event categories
  (`EventCategories`) for events that you want to be notified of. For
  example, you can specify `SourceType` = `db-instance`, `SourceIds` =
  `mydbinstance1`, `mydbinstance2` and `EventCategories` = `Availability`,
  `Backup`.

  If you specify both the `SourceType` and `SourceIds`, such as `SourceType`
  = `db-instance` and `SourceIdentifier` = `myDBInstance1`, you are notified
  of all the `db-instance` events for the specified source. If you specify a
  `SourceType` but do not specify a `SourceIdentifier`, you receive notice of
  the events for that source type for all your RDS sources. If you don't
  specify either the SourceType or the `SourceIdentifier`, you are notified
  of events generated from all RDS sources belonging to your customer
  account.

  <note> RDS event notification is only available for unencrypted SNS topics.
  If you specify an encrypted SNS topic, event notifications aren't sent for
  the topic.

  </note>
  """
  def create_event_subscription(client, input, options \\ []) do
    request(client, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates an Aurora global database spread across multiple AWS Regions. The
  global database contains a single primary cluster with read-write
  capability, and a read-only secondary cluster that receives data from the
  primary cluster through high-speed replication performed by the Aurora
  storage subsystem.

  You can create a global database that is initially empty, and then add a
  primary cluster and a secondary cluster to it. Or you can specify an
  existing Aurora cluster during the create operation, and this cluster
  becomes the primary cluster of the global database.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def create_global_cluster(client, input, options \\ []) do
    request(client, "CreateGlobalCluster", input, options)
  end

  @doc """
  Creates a new option group. You can create up to 20 option groups.
  """
  def create_option_group(client, input, options \\ []) do
    request(client, "CreateOptionGroup", input, options)
  end

  @doc """
  Deletes a custom Availability Zone (AZ).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ *RDS on VMware User
  Guide.*
  ](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def delete_custom_availability_zone(client, input, options \\ []) do
    request(client, "DeleteCustomAvailabilityZone", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.
  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and can't be recovered. Manual DB cluster snapshots of the
  specified DB cluster are not deleted.

  <p/> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def delete_d_b_cluster(client, input, options \\ []) do
    request(client, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def delete_d_b_cluster_endpoint(client, input, options \\ []) do
    request(client, "DeleteDBClusterEndpoint", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group. The DB cluster parameter
  group to be deleted can't be associated with any DB clusters.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def delete_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
  operation is terminated.

  <note> The DB cluster snapshot must be in the `available` state to be
  deleted.

  </note> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

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

  If you request a final DB snapshot the status of the Amazon RDS DB instance
  is `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The
  action can't be canceled or reverted once submitted.

  When a DB instance is in a failure state and has a status of `failed`,
  `incompatible-restore`, or `incompatible-network`, you can only delete it
  when you skip creation of the final snapshot with the `SkipFinalSnapshot`
  parameter.

  If the specified DB instance is part of an Amazon Aurora DB cluster, you
  can't delete the DB instance if both of the following conditions are true:

  <ul> <li> The DB cluster is a read replica of another Amazon Aurora DB
  cluster.

  </li> <li> The DB instance is the only instance in the DB cluster.

  </li> </ul> To delete a DB instance in this case, first call the
  `PromoteReadReplicaDBCluster` API action to promote the DB cluster so it's
  no longer a read replica. After the promotion completes, then call the
  `DeleteDBInstance` API action to delete the final instance in the DB
  cluster.
  """
  def delete_d_b_instance(client, input, options \\ []) do
    request(client, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes automated backups based on the source instance's `DbiResourceId`
  value or the restorable instance's resource ID.
  """
  def delete_d_b_instance_automated_backup(client, input, options \\ []) do
    request(client, "DeleteDBInstanceAutomatedBackup", input, options)
  end

  @doc """
  Deletes a specified DB parameter group. The DB parameter group to be
  deleted can't be associated with any DB instances.
  """
  def delete_d_b_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes an existing proxy.
  """
  def delete_d_b_proxy(client, input, options \\ []) do
    request(client, "DeleteDBProxy", input, options)
  end

  @doc """
  Deletes a DB security group.

  <note> The specified DB security group must not be associated with any DB
  instances.

  </note>
  """
  def delete_d_b_security_group(client, input, options \\ []) do
    request(client, "DeleteDBSecurityGroup", input, options)
  end

  @doc """
  Deletes a DB snapshot. If the snapshot is being copied, the copy operation
  is terminated.

  <note> The DB snapshot must be in the `available` state to be deleted.

  </note>
  """
  def delete_d_b_snapshot(client, input, options \\ []) do
    request(client, "DeleteDBSnapshot", input, options)
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
  Deletes an RDS event notification subscription.
  """
  def delete_event_subscription(client, input, options \\ []) do
    request(client, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes a global database cluster. The primary and secondary clusters must
  already be detached or destroyed first.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def delete_global_cluster(client, input, options \\ []) do
    request(client, "DeleteGlobalCluster", input, options)
  end

  @doc """
  Deletes the installation medium for a DB engine that requires an
  on-premises customer provided license, such as Microsoft SQL Server.
  """
  def delete_installation_media(client, input, options \\ []) do
    request(client, "DeleteInstallationMedia", input, options)
  end

  @doc """
  Deletes an existing option group.
  """
  def delete_option_group(client, input, options \\ []) do
    request(client, "DeleteOptionGroup", input, options)
  end

  @doc """
  Remove the association between one or more `DBProxyTarget` data structures
  and a `DBProxyTargetGroup`.
  """
  def deregister_d_b_proxy_targets(client, input, options \\ []) do
    request(client, "DeregisterDBProxyTargets", input, options)
  end

  @doc """
  Lists all of the attributes for a customer account. The attributes include
  Amazon RDS quotas for the account, such as the number of DB instances
  allowed. The description for a quota includes the quota name, current usage
  toward that quota, and the quota's maximum value.

  This command doesn't take any parameters.
  """
  def describe_account_attributes(client, input, options \\ []) do
    request(client, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Lists the set of CA certificates provided by Amazon RDS for this AWS
  account.
  """
  def describe_certificates(client, input, options \\ []) do
    request(client, "DescribeCertificates", input, options)
  end

  @doc """
  Returns information about custom Availability Zones (AZs).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ *RDS on VMware User
  Guide.*
  ](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def describe_custom_availability_zones(client, input, options \\ []) do
    request(client, "DescribeCustomAvailabilityZones", input, options)
  end

  @doc """
  Returns information about backtracks for a DB cluster.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora MySQL DB clusters.

  </note>
  """
  def describe_d_b_cluster_backtracks(client, input, options \\ []) do
    request(client, "DescribeDBClusterBacktracks", input, options)
  end

  @doc """
  Returns information about endpoints for an Amazon Aurora DB cluster.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def describe_d_b_cluster_endpoints(client, input, options \\ []) do
    request(client, "DescribeDBClusterEndpoints", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions. If a
  `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def describe_d_b_cluster_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter
  group.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
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

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def describe_d_b_cluster_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB cluster snapshots. This API action supports
  pagination.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def describe_d_b_cluster_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Aurora DB clusters. This API supports
  pagination.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This operation can also return information for Amazon Neptune DB
  instances and Amazon DocumentDB instances.

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
  Displays backups for both current and deleted instances. For example, use
  this operation to find details about automated backups for previously
  deleted instances. Current instances with retention periods greater than
  zero (0) are returned for both the `DescribeDBInstanceAutomatedBackups` and
  `DescribeDBInstances` operations.

  All parameters are optional.
  """
  def describe_d_b_instance_automated_backups(client, input, options \\ []) do
    request(client, "DescribeDBInstanceAutomatedBackups", input, options)
  end

  @doc """
  Returns information about provisioned RDS instances. This API supports
  pagination.

  <note> This operation can also return information for Amazon Neptune DB
  instances and Amazon DocumentDB instances.

  </note>
  """
  def describe_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of DB log files for the DB instance.
  """
  def describe_d_b_log_files(client, input, options \\ []) do
    request(client, "DescribeDBLogFiles", input, options)
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
  Returns information about DB proxies.
  """
  def describe_d_b_proxies(client, input, options \\ []) do
    request(client, "DescribeDBProxies", input, options)
  end

  @doc """
  Returns information about DB proxy target groups, represented by
  `DBProxyTargetGroup` data structures.
  """
  def describe_d_b_proxy_target_groups(client, input, options \\ []) do
    request(client, "DescribeDBProxyTargetGroups", input, options)
  end

  @doc """
  Returns information about `DBProxyTarget` objects. This API supports
  pagination.
  """
  def describe_d_b_proxy_targets(client, input, options \\ []) do
    request(client, "DescribeDBProxyTargets", input, options)
  end

  @doc """
  Returns a list of `DBSecurityGroup` descriptions. If a
  `DBSecurityGroupName` is specified, the list will contain only the
  descriptions of the specified DB security group.
  """
  def describe_d_b_security_groups(client, input, options \\ []) do
    request(client, "DescribeDBSecurityGroups", input, options)
  end

  @doc """
  Returns a list of DB snapshot attribute names and values for a manual DB
  snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB snapshot. If `all` is included in the list of values for the
  `restore` attribute, then the manual DB snapshot is public and can be
  copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  snapshot, or to make the manual DB snapshot public or private, use the
  `ModifyDBSnapshotAttribute` API action.
  """
  def describe_d_b_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB snapshots. This API action supports
  pagination.
  """
  def describe_d_b_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBSnapshots", input, options)
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

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*
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
  for a specified source type. You can see a list of the event categories and
  source types in [
  Events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_event_categories(client, input, options \\ []) do
    request(client, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account. The
  description for a subscription includes `SubscriptionName`, `SNSTopicARN`,
  `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify a `SubscriptionName`, lists the description for that
  subscription.
  """
  def describe_event_subscriptions(client, input, options \\ []) do
    request(client, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to DB instances, DB clusters, DB parameter groups,
  DB security groups, DB snapshots, and DB cluster snapshots for the past 14
  days. Events specific to a particular DB instances, DB clusters, DB
  parameter groups, DB security groups, DB snapshots, and DB cluster
  snapshots group can be obtained by providing the name as a parameter.

  <note> By default, the past hour of events are returned.

  </note>
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about a snapshot export to Amazon S3. This API
  operation supports pagination.
  """
  def describe_export_tasks(client, input, options \\ []) do
    request(client, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns information about Aurora global database clusters. This API
  supports pagination.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def describe_global_clusters(client, input, options \\ []) do
    request(client, "DescribeGlobalClusters", input, options)
  end

  @doc """
  Describes the available installation media for a DB engine that requires an
  on-premises customer provided license, such as Microsoft SQL Server.
  """
  def describe_installation_media(client, input, options \\ []) do
    request(client, "DescribeInstallationMedia", input, options)
  end

  @doc """
  Describes all available options.
  """
  def describe_option_group_options(client, input, options \\ []) do
    request(client, "DescribeOptionGroupOptions", input, options)
  end

  @doc """
  Describes the available option groups.
  """
  def describe_option_groups(client, input, options \\ []) do
    request(client, "DescribeOptionGroups", input, options)
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
  Returns information about reserved DB instances for this account, or about
  a specified reserved DB instance.
  """
  def describe_reserved_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeReservedDBInstances", input, options)
  end

  @doc """
  Lists available reserved DB instance offerings.
  """
  def describe_reserved_d_b_instances_offerings(client, input, options \\ []) do
    request(client, "DescribeReservedDBInstancesOfferings", input, options)
  end

  @doc """
  Returns a list of the source AWS Regions where the current AWS Region can
  create a read replica or copy a DB snapshot from. This API action supports
  pagination.
  """
  def describe_source_regions(client, input, options \\ []) do
    request(client, "DescribeSourceRegions", input, options)
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
  Downloads all or a portion of the specified log file, up to 1 MB in size.
  """
  def download_d_b_log_file_portion(client, input, options \\ []) do
    request(client, "DownloadDBLogFilePortion", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Aurora Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster
  writer).

  Amazon Aurora will automatically fail over to an Aurora Replica, if one
  exists, when the primary instance fails. You can force a failover when you
  want to simulate a failure of a primary instance for testing. Because each
  instance in a DB cluster has its own endpoint address, you will need to
  clean up and re-establish any existing connections that use those endpoint
  addresses when the failover is complete.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def failover_d_b_cluster(client, input, options \\ []) do
    request(client, "FailoverDBCluster", input, options)
  end

  @doc """
  Imports the installation media for a DB engine that requires an on-premises
  customer provided license, such as SQL Server.
  """
  def import_installation_media(client, input, options \\ []) do
    request(client, "ImportInstallationMedia", input, options)
  end

  @doc """
  Lists all tags on an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
  in the *Amazon RDS User Guide*.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Override the system-default Secure Sockets Layer/Transport Layer Security
  (SSL/TLS) certificate for Amazon RDS for new DB instances temporarily, or
  remove the override.

  By using this operation, you can specify an RDS-approved SSL/TLS
  certificate for new DB instances that is different from the default
  certificate provided by RDS. You can also use this operation to remove the
  override, so that new DB instances use the default certificate provided by
  RDS.

  You might need to override the default certificate in the following
  situations:

  <ul> <li> You already migrated your applications to support the latest
  certificate authority (CA) certificate, but the new CA certificate is not
  yet the RDS default CA certificate for the specified AWS Region.

  </li> <li> RDS has already moved to a new default CA certificate for the
  specified AWS Region, but you are still in the process of supporting the
  new CA certificate. In this case, you temporarily need additional time to
  finish your application changes.

  </li> </ul> For more information about rotating your SSL/TLS certificate
  for RDS DB engines, see [ Rotating Your SSL/TLS
  Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon RDS User Guide*.

  For more information about rotating your SSL/TLS certificate for Aurora DB
  engines, see [ Rotating Your SSL/TLS
  Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon Aurora User Guide*.
  """
  def modify_certificates(client, input, options \\ []) do
    request(client, "ModifyCertificates", input, options)
  end

  @doc """
  Set the capacity of an Aurora Serverless DB cluster to a specific value.

  Aurora Serverless scales seamlessly based on the workload on the DB
  cluster. In some cases, the capacity might not scale fast enough to meet a
  sudden change in workload, such as a large number of new transactions. Call
  `ModifyCurrentDBClusterCapacity` to set the capacity explicitly.

  After this call sets the DB cluster capacity, Aurora Serverless can
  automatically scale the DB cluster based on the cooldown period for scaling
  up and the cooldown period for scaling down.

  For more information about Aurora Serverless, see [Using Amazon Aurora
  Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
  in the *Amazon Aurora User Guide*.

  <important> If you call `ModifyCurrentDBClusterCapacity` with the default
  `TimeoutAction`, connections that prevent Aurora Serverless from finding a
  scaling point might be dropped. For more information about scaling points,
  see [ Autoscaling for Aurora
  Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling)
  in the *Amazon Aurora User Guide*.

  </important> <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def modify_current_d_b_cluster_capacity(client, input, options \\ []) do
    request(client, "ModifyCurrentDBClusterCapacity", input, options)
  end

  @doc """
  Modify a setting for an Amazon Aurora DB cluster. You can change one or
  more database configuration parameters by specifying these parameters and
  the new values in the request. For more information on Amazon Aurora, see [
  What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def modify_d_b_cluster(client, input, options \\ []) do
    request(client, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the properties of an endpoint in an Amazon Aurora DB cluster.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def modify_d_b_cluster_endpoint(client, input, options \\ []) do
    request(client, "ModifyDBClusterEndpoint", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group. To modify more
  than one parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB cluster
  associated with the parameter group before the change can take effect.

  </note> <important> After you create a DB cluster parameter group, you
  should wait at least 5 minutes before creating your first DB cluster that
  uses that DB cluster parameter group as the default parameter group. This
  allows Amazon RDS to fully complete the create action before the parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` action to verify that your DB cluster
  parameter group has been created or modified.

  If the modified DB cluster parameter group is used by an Aurora Serverless
  cluster, Aurora applies the update immediately. The cluster restart might
  interrupt your workload. In that case, your application must reopen any
  connections and retry any transactions that were active when the parameter
  changes took effect.

  </important> <note> This action only applies to Aurora DB clusters.

  </note>
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
  accounts.

  <note> Don't add the `all` value for any manual DB cluster snapshots that
  contain private information that you don't want available to all AWS
  accounts.

  </note> If a manual DB cluster snapshot is encrypted, it can be shared, but
  only by specifying a list of authorized AWS account IDs for the
  `ValuesToAdd` parameter. You can't use `all` as a value for that parameter
  in this case.

  To view which AWS accounts have access to copy or restore a manual DB
  cluster snapshot, or whether a manual DB cluster snapshot is public or
  private, use the `DescribeDBClusterSnapshotAttributes` API action. The
  accounts are returned as values for the `restore` attribute.

  <note> This action only applies to Aurora DB clusters.

  </note>
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
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the modify action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def modify_d_b_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Changes the settings for an existing DB proxy.
  """
  def modify_d_b_proxy(client, input, options \\ []) do
    request(client, "ModifyDBProxy", input, options)
  end

  @doc """
  Modifies the properties of a `DBProxyTargetGroup`.
  """
  def modify_d_b_proxy_target_group(client, input, options \\ []) do
    request(client, "ModifyDBProxyTargetGroup", input, options)
  end

  @doc """
  Updates a manual DB snapshot with a new engine version. The snapshot can be
  encrypted or unencrypted, but not shared or public.

  Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and
  PostgreSQL.
  """
  def modify_d_b_snapshot(client, input, options \\ []) do
    request(client, "ModifyDBSnapshot", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB snapshot.

  To share a manual DB snapshot with other AWS accounts, specify `restore` as
  the `AttributeName` and use the `ValuesToAdd` parameter to add a list of
  IDs of the AWS accounts that are authorized to restore the manual DB
  snapshot. Uses the value `all` to make the manual DB snapshot public, which
  means it can be copied or restored by all AWS accounts.

  <note> Don't add the `all` value for any manual DB snapshots that contain
  private information that you don't want available to all AWS accounts.

  </note> If the manual DB snapshot is encrypted, it can be shared, but only
  by specifying a list of authorized AWS account IDs for the `ValuesToAdd`
  parameter. You can't use `all` as a value for that parameter in this case.

  To view which AWS accounts have access to copy or restore a manual DB
  snapshot, or whether a manual DB snapshot public or private, use the
  `DescribeDBSnapshotAttributes` API action. The accounts are returned as
  values for the `restore` attribute.
  """
  def modify_d_b_snapshot_attribute(client, input, options \\ []) do
    request(client, "ModifyDBSnapshotAttribute", input, options)
  end

  @doc """
  Modifies an existing DB subnet group. DB subnet groups must contain at
  least one subnet in at least two AZs in the AWS Region.
  """
  def modify_d_b_subnet_group(client, input, options \\ []) do
    request(client, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing RDS event notification subscription. You can't modify
  the source identifiers using this call. To change source identifiers for a
  subscription, use the `AddSourceIdentifierToSubscription` and
  `RemoveSourceIdentifierFromSubscription` calls.

  You can see a list of the event categories for a given source type
  (`SourceType`) in
  [Events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  in the *Amazon RDS User Guide* or by using the `DescribeEventCategories`
  operation.
  """
  def modify_event_subscription(client, input, options \\ []) do
    request(client, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modify a setting for an Amazon Aurora global cluster. You can change one or
  more database configuration parameters by specifying these parameters and
  the new values in the request. For more information on Amazon Aurora, see [
  What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def modify_global_cluster(client, input, options \\ []) do
    request(client, "ModifyGlobalCluster", input, options)
  end

  @doc """
  Modifies an existing option group.
  """
  def modify_option_group(client, input, options \\ []) do
    request(client, "ModifyOptionGroup", input, options)
  end

  @doc """
  Promotes a read replica DB instance to a standalone DB instance.

  <note> <ul> <li> Backup duration is a function of the amount of changes to
  the database since the previous backup. If you plan to promote a read
  replica to a standalone instance, we recommend that you enable backups and
  complete at least one backup prior to promotion. In addition, a read
  replica cannot be promoted to a standalone instance when it is in the
  `backing-up` status. If you have enabled backups on your read replica,
  configure the automated backup window so that daily backups do not
  interfere with read replica promotion.

  </li> <li> This command doesn't apply to Aurora MySQL and Aurora
  PostgreSQL.

  </li> </ul> </note>
  """
  def promote_read_replica(client, input, options \\ []) do
    request(client, "PromoteReadReplica", input, options)
  end

  @doc """
  Promotes a read replica DB cluster to a standalone DB cluster.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def promote_read_replica_d_b_cluster(client, input, options \\ []) do
    request(client, "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  Purchases a reserved DB instance offering.
  """
  def purchase_reserved_d_b_instances_offering(client, input, options \\ []) do
    request(client, "PurchaseReservedDBInstancesOffering", input, options)
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.
  For example, if you make certain modifications, or if you change the DB
  parameter group associated with the DB instance, you must reboot the
  instance for the changes to take effect.

  Rebooting a DB instance restarts the database engine service. Rebooting a
  DB instance results in a momentary outage, during which the DB instance
  status is set to rebooting.

  For more information about rebooting, see [Rebooting a DB
  Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html)
  in the *Amazon RDS User Guide.*
  """
  def reboot_d_b_instance(client, input, options \\ []) do
    request(client, "RebootDBInstance", input, options)
  end

  @doc """
  Associate one or more `DBProxyTarget` data structures with a
  `DBProxyTargetGroup`.
  """
  def register_d_b_proxy_targets(client, input, options \\ []) do
    request(client, "RegisterDBProxyTargets", input, options)
  end

  @doc """
  Detaches an Aurora secondary cluster from an Aurora global database
  cluster. The cluster becomes a standalone cluster with read-write
  capability instead of being read-only and receiving data from a primary
  cluster in a different region.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def remove_from_global_cluster(client, input, options \\ []) do
    request(client, "RemoveFromGlobalCluster", input, options)
  end

  @doc """
  Disassociates an AWS Identity and Access Management (IAM) role from an
  Amazon Aurora DB cluster. For more information, see [Authorizing Amazon
  Aurora MySQL to Access Other AWS Services on Your Behalf
  ](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
  in the *Amazon Aurora User Guide*.

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def remove_role_from_d_b_cluster(client, input, options \\ []) do
    request(client, "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Disassociates an AWS Identity and Access Management (IAM) role from a DB
  instance.
  """
  def remove_role_from_d_b_instance(client, input, options \\ []) do
    request(client, "RemoveRoleFromDBInstance", input, options)
  end

  @doc """
  Removes a source identifier from an existing RDS event notification
  subscription.
  """
  def remove_source_identifier_from_subscription(client, input, options \\ []) do
    request(client, "RemoveSourceIdentifierFromSubscription", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
  in the *Amazon RDS User Guide.*
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

  For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
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
  Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon S3
  bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and
  the data must be created using the Percona XtraBackup utility as described
  in [ Migrating Data from MySQL by Using an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3)
  in the *Amazon Aurora User Guide*.

  <note> This action only restores the DB cluster, not the DB instances for
  that DB cluster. You must invoke the `CreateDBInstance` action to create DB
  instances for the restored DB cluster, specifying the identifier of the
  restored DB cluster in `DBClusterIdentifier`. You can create DB instances
  only after the `RestoreDBClusterFromS3` action has completed and the DB
  cluster is available.

  </note> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters. The source DB engine
  must be MySQL.

  </note>
  """
  def restore_d_b_cluster_from_s3(client, input, options \\ []) do
    request(client, "RestoreDBClusterFromS3", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot. This
  action only applies to Aurora DB clusters.

  The target DB cluster is created from the source snapshot with a default
  configuration. If you don't specify a security group, the new DB cluster is
  associated with the default security group.

  <note> This action only restores the DB cluster, not the DB instances for
  that DB cluster. You must invoke the `CreateDBInstance` action to create DB
  instances for the restored DB cluster, specifying the identifier of the
  restored DB cluster in `DBClusterIdentifier`. You can create DB instances
  only after the `RestoreDBClusterFromSnapshot` action has completed and the
  DB cluster is available.

  </note> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
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

  </note> For more information on Amazon Aurora, see [ What Is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def restore_d_b_cluster_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Creates a new DB instance from a DB snapshot. The target database is
  created from the source database restore point with the most of original
  configuration with the default security group and the default DB parameter
  group. By default, the new DB instance is created as a single-AZ deployment
  except when the instance is a SQL Server instance that has an option group
  that is associated with mirroring; in this case, the instance becomes a
  mirrored AZ deployment and not a single-AZ deployment.

  If your intent is to replace your original DB instance with the new,
  restored DB instance, then rename your original DB instance before you call
  the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB
  instances with the same name. Once you have renamed your original DB
  instance with a different identifier, then you can pass the original name
  of the DB instance as the DBInstanceIdentifier in the call to the
  RestoreDBInstanceFromDBSnapshot action. The result is that you will replace
  the original DB instance with the DB instance created from the snapshot.

  If you are restoring from a shared manual DB snapshot, the
  `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.

  <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
  For Aurora, use `RestoreDBClusterFromSnapshot`.

  </note>
  """
  def restore_d_b_instance_from_d_b_snapshot(client, input, options \\ []) do
    request(client, "RestoreDBInstanceFromDBSnapshot", input, options)
  end

  @doc """
  Amazon Relational Database Service (Amazon RDS) supports importing MySQL
  databases by using backup files. You can create a backup of your
  on-premises database, store it on Amazon Simple Storage Service (Amazon
  S3), and then restore the backup file onto a new Amazon RDS DB instance
  running MySQL. For more information, see [Importing Data into an Amazon RDS
  MySQL DB
  Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_d_b_instance_from_s3(client, input, options \\ []) do
    request(client, "RestoreDBInstanceFromS3", input, options)
  end

  @doc """
  Restores a DB instance to an arbitrary point in time. You can restore to
  any point in time before the time identified by the LatestRestorableTime
  property. You can restore to a point up to the number of days specified by
  the BackupRetentionPeriod property.

  The target database is created with most of the original configuration, but
  in a system-selected Availability Zone, with the default security group,
  the default subnet group, and the default DB parameter group. By default,
  the new DB instance is created as a single-AZ deployment except when the
  instance is a SQL Server instance that has an option group that is
  associated with mirroring; in this case, the instance becomes a mirrored
  deployment and not a single-AZ deployment.

  <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
  For Aurora, use `RestoreDBClusterToPointInTime`.

  </note>
  """
  def restore_d_b_instance_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBInstanceToPointInTime", input, options)
  end

  @doc """
  Revokes ingress from a DBSecurityGroup for previously authorized IP ranges
  or EC2 or VPC Security Groups. Required parameters for this API are one of
  CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either
  EC2SecurityGroupName or EC2SecurityGroupId).
  """
  def revoke_d_b_security_group_ingress(client, input, options \\ []) do
    request(client, "RevokeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Starts a database activity stream to monitor activity on the database. For
  more information, see [Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide*.
  """
  def start_activity_stream(client, input, options \\ []) do
    request(client, "StartActivityStream", input, options)
  end

  @doc """
  Starts an Amazon Aurora DB cluster that was stopped using the AWS console,
  the stop-db-cluster AWS CLI command, or the StopDBCluster action.

  For more information, see [ Stopping and Starting an Aurora
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def start_d_b_cluster(client, input, options \\ []) do
    request(client, "StartDBCluster", input, options)
  end

  @doc """
  Starts an Amazon RDS DB instance that was stopped using the AWS console,
  the stop-db-instance AWS CLI command, or the StopDBInstance action.

  For more information, see [ Starting an Amazon RDS DB instance That Was
  Previously
  Stopped](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html)
  in the *Amazon RDS User Guide.*

  <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
  For Aurora DB clusters, use `StartDBCluster` instead.

  </note>
  """
  def start_d_b_instance(client, input, options \\ []) do
    request(client, "StartDBInstance", input, options)
  end

  @doc """
  Starts an export of a snapshot to Amazon S3. The provided IAM role must
  have access to the S3 bucket.
  """
  def start_export_task(client, input, options \\ []) do
    request(client, "StartExportTask", input, options)
  end

  @doc """
  Stops a database activity stream that was started using the AWS console,
  the `start-activity-stream` AWS CLI command, or the `StartActivityStream`
  action.

  For more information, see [Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide*.
  """
  def stop_activity_stream(client, input, options \\ []) do
    request(client, "StopActivityStream", input, options)
  end

  @doc """
  Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
  retains the DB cluster's metadata, including its endpoints and DB parameter
  groups. Aurora also retains the transaction logs so you can do a
  point-in-time restore if necessary.

  For more information, see [ Stopping and Starting an Aurora
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide.*

  <note> This action only applies to Aurora DB clusters.

  </note>
  """
  def stop_d_b_cluster(client, input, options \\ []) do
    request(client, "StopDBCluster", input, options)
  end

  @doc """
  Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon RDS
  retains the DB instance's metadata, including its endpoint, DB parameter
  group, and option group membership. Amazon RDS also retains the transaction
  logs so you can do a point-in-time restore if necessary.

  For more information, see [ Stopping an Amazon RDS DB Instance
  Temporarily](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html)
  in the *Amazon RDS User Guide.*

  <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
  For Aurora clusters, use `StopDBCluster` instead.

  </note>
  """
  def stop_d_b_instance(client, input, options \\ []) do
    request(client, "StopDBInstance", input, options)
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
    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case do_request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(:query)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:xml)
    apply(mod, fun, [payload])
  end
end
