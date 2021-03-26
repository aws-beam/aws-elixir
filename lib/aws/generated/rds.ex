# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDS do
  @moduledoc """
  Amazon Relational Database Service

  Amazon Relational Database Service (Amazon RDS) is a web service that makes it
  easier to set up, operate, and scale a relational database in the cloud.

  It provides cost-efficient, resizeable capacity for an industry-standard
  relational database and manages common database administration tasks, freeing up
  developers to focus on what makes their applications and businesses unique.

  Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL,
  Microsoft SQL Server, Oracle, or Amazon Aurora database server. These
  capabilities mean that the code, applications, and tools you already use today
  with your existing databases work with Amazon RDS without modification. Amazon
  RDS automatically backs up your database and maintains the database software
  that powers your DB instance. Amazon RDS is flexible: you can scale your DB
  instance's compute resources and storage capacity to meet your application's
  demand. As with all Amazon Web Services, there are no up-front investments, and
  you pay only for the resources you use.

  This interface reference for Amazon RDS contains documentation for a programming
  or command line interface you can use to manage Amazon RDS. Amazon RDS is
  asynchronous, which means that some interfaces might require techniques such as
  polling or callback functions to determine when a command has been applied. In
  this reference, the parameter descriptions indicate whether a command is applied
  immediately, on the next instance reboot, or during the maintenance window. The
  reference structure is as follows, and we list following some related topics
  from the user guide.

  ## Amazon RDS API Reference

    * For the alphabetical list of API actions, see [API Actions](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

    * For the alphabetical list of data types, see [Data Types](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

    * For a list of common query parameters, see [Common Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

    * For descriptions of the error codes, see [Common Errors](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

  ## Amazon RDS User Guide

    * For a summary of the Amazon RDS interfaces, see [Available RDS Interfaces](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

    * For more information about how to use the Query API, see [Using the Query
  API](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Amazon RDS",
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      protocol: "query",
      service_id: "RDS",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: nil
    }
  end

  @doc """
  Associates an Identity and Access Management (IAM) role from an Amazon Aurora DB
  cluster.

  For more information, see [Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your
  Behalf](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
  in the *Amazon Aurora User Guide*.

  This action only applies to Aurora DB clusters.
  """
  def add_role_to_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddRoleToDBCluster", input, options)
  end

  @doc """
  Associates an AWS Identity and Access Management (IAM) role with a DB instance.

  To add a role to a DB instance, the status of the DB instance must be
  `available`.
  """
  def add_role_to_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddRoleToDBInstance", input, options)
  end

  @doc """
  Adds a source identifier to an existing RDS event notification subscription.
  """
  def add_source_identifier_to_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon RDS resource.

  These tags can also be used with cost allocation reporting to track cost
  associated with Amazon RDS resources, or used in a Condition statement in an IAM
  policy for Amazon RDS.

  For an overview on tagging Amazon RDS resources, see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Enables ingress to a DBSecurityGroup using one of two forms of authorization.

  First, EC2 or VPC security groups can be added to the DBSecurityGroup if the
  application using the database is running on EC2 or VPC instances. Second, IP
  ranges are available if the application accessing your database is running on
  the Internet. Required parameters for this API are one of CIDR range,
  EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either
  EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).

  You can't authorize ingress from an EC2 security group in one AWS Region to an
  Amazon RDS DB instance in another. You can't authorize ingress from a VPC
  security group in one VPC to an Amazon RDS DB instance in another.

  For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def authorize_db_security_group_ingress(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AuthorizeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Backtracks a DB cluster to a specific time, without creating a new DB cluster.

  For more information on backtracking, see [ Backtracking an Aurora DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora MySQL DB clusters.
  """
  def backtrack_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BacktrackDBCluster", input, options)
  end

  @doc """
  Cancels an export task in progress that is exporting a snapshot to Amazon S3.

  Any data that has already been written to the S3 bucket isn't removed.
  """
  def cancel_export_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelExportTask", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.

  This action only applies to Aurora DB clusters.
  """
  def copy_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of
  the shared DB cluster snapshot.

  You can copy an encrypted DB cluster snapshot from another AWS Region. In that
  case, the AWS Region where you call the `CopyDBClusterSnapshot` action is the
  destination AWS Region for the encrypted DB cluster snapshot to be copied to. To
  copy an encrypted DB cluster snapshot from another AWS Region, you must provide
  the following values:

    * `KmsKeyId` - The AWS Key Management System (AWS KMS) key
  identifier for the key to use to encrypt the copy of the DB cluster snapshot in
  the destination AWS Region.

    * `PreSignedUrl` - A URL that contains a Signature Version 4 signed
  request for the `CopyDBClusterSnapshot` action to be called in the source AWS
  Region where the DB cluster snapshot is copied from. The pre-signed URL must be
  a valid request for the `CopyDBClusterSnapshot` API action that can be executed
  in the source AWS Region that contains the encrypted DB cluster snapshot to be
  copied.

  The pre-signed URL request must contain the following parameter values:

      * `KmsKeyId` - The AWS KMS key identifier for the
  customer master key (CMK) to use to encrypt the copy of the DB cluster snapshot
  in the destination AWS Region. This is the same identifier for both the
  `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and
  the action contained in the pre-signed URL.

      * `DestinationRegion` - The name of the AWS Region that
  the DB cluster snapshot is to be created in.

      * `SourceDBClusterSnapshotIdentifier` - The DB cluster
  snapshot identifier for the encrypted DB cluster snapshot to be copied. This
  identifier must be in the Amazon Resource Name (ARN) format for the source AWS
  Region. For example, if you are copying an encrypted DB cluster snapshot from
  the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks
  like the following example:
  `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.

  To learn how to generate a Signature Version 4 signed request, see [
  Authenticating Requests: Using Query Parameters (AWS Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
  and [ Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  If you are using an AWS SDK tool or the AWS CLI, you can specify `SourceRegion`
  (or `--source-region` for the AWS CLI) instead of specifying `PreSignedUrl`
  manually. Specifying `SourceRegion` autogenerates a pre-signed URL that is a
  valid request for the operation that can be executed in the source AWS Region.

    * `TargetDBClusterSnapshotIdentifier` - The identifier for the new
  copy of the DB cluster snapshot in the destination AWS Region.

    * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This identifier
  must be in the ARN format for the source AWS Region and is the same value as the
  `SourceDBClusterSnapshotIdentifier` in the pre-signed URL.

  To cancel the copy operation once it is in progress, delete the target DB
  cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while that DB
  cluster snapshot is in "copying" status.

  For more information on copying encrypted DB cluster snapshots from one AWS
  Region to another, see [ Copying a Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html)
  in the *Amazon Aurora User Guide.*

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def copy_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Copies the specified DB parameter group.
  """
  def copy_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBParameterGroup", input, options)
  end

  @doc """
  Copies the specified DB snapshot.

  The source DB snapshot must be in the `available` state.

  You can copy a snapshot from one AWS Region to another. In that case, the AWS
  Region where you call the `CopyDBSnapshot` action is the destination AWS Region
  for the DB snapshot copy.

  For more information about copying snapshots, see [Copying a DB Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot)
  in the *Amazon RDS User Guide.*
  """
  def copy_db_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyDBSnapshot", input, options)
  end

  @doc """
  Copies the specified option group.
  """
  def copy_option_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyOptionGroup", input, options)
  end

  @doc """
  Creates a custom Availability Zone (AZ).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ RDS on VMware User Guide.](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def create_custom_availability_zone(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCustomAvailabilityZone", input, options)
  end

  @doc """
  Creates a new Amazon Aurora DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB cluster
  as a read replica of another DB cluster or Amazon RDS MySQL DB instance. For
  cross-region replication where the DB cluster identified by
  `ReplicationSourceIdentifier` is encrypted, you must also specify the
  `PreSignedUrl` parameter.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new custom endpoint and associates it with an Amazon Aurora DB
  cluster.

  This action only applies to Aurora DB clusters.
  """
  def create_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterEndpoint", input, options)
  end

  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in a DB
  cluster.

  A DB cluster parameter group is initially created with the default parameters
  for the database engine used by instances in the DB cluster. To provide custom
  values for any of the parameters, you must modify the group after creating it
  using `ModifyDBClusterParameterGroup`. Once you've created a DB cluster
  parameter group, you need to associate it with your DB cluster using
  `ModifyDBCluster`. When you associate a new DB cluster parameter group with a
  running DB cluster, you need to reboot the DB instances in the DB cluster
  without failover for the new DB cluster parameter group and associated settings
  to take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes before creating your first DB cluster that uses that DB cluster
  parameter group as the default parameter group. This allows Amazon RDS to fully
  complete the create action before the DB cluster parameter group is used as the
  default for a new DB cluster. This is especially important for parameters that
  are critical when creating the default database for a DB cluster, such as the
  character set for the default database defined by the `character_set_database`
  parameter. You can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` action to verify that your DB cluster parameter
  group has been created or modified.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def create_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def create_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new DB instance.
  """
  def create_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new DB instance that acts as a read replica for an existing source DB
  instance.

  You can create a read replica for a DB instance running MySQL, MariaDB, Oracle,
  PostgreSQL, or SQL Server. For more information, see [Working with Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
  in the *Amazon RDS User Guide*.

  Amazon Aurora doesn't support this action. Call the `CreateDBInstance` action to
  create a DB instance for an Aurora DB cluster.

  All read replica DB instances are created with backups disabled. All other DB
  instance attributes (including DB security groups and DB parameter groups) are
  inherited from the source DB instance, except as specified.

  Your source DB instance must have backup retention enabled.
  """
  def create_db_instance_read_replica(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBInstanceReadReplica", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for the
  database engine used by the DB instance. To provide custom values for any of the
  parameters, you must modify the group after creating it using
  *ModifyDBParameterGroup*. Once you've created a DB parameter group, you need to
  associate it with your DB instance using *ModifyDBInstance*. When you associate
  a new DB parameter group with a running DB instance, you need to reboot the DB
  instance without failover for the new DB parameter group and associated settings
  to take effect.

  After you create a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter group. This allows Amazon RDS to fully complete the create action
  before the parameter group is used as the default for a new DB instance. This is
  especially important for parameters that are critical when creating the default
  database for a DB instance, such as the character set for the default database
  defined by the `character_set_database` parameter. You can use the *Parameter
  Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/)
  or the *DescribeDBParameters* command to verify that your DB parameter group has
  been created or modified.
  """
  def create_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB proxy.
  """
  def create_db_proxy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBProxy", input, options)
  end

  @doc """
  Creates a `DBProxyEndpoint`.

  Only applies to proxies that are associated with Aurora DB clusters. You can use
  DB proxy endpoints to specify read/write or read-only access to the DB cluster.
  You can also use DB proxy endpoints to access a DB proxy through a different VPC
  than the proxy's default VPC.
  """
  def create_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBProxyEndpoint", input, options)
  end

  @doc """
  Creates a new DB security group.

  DB security groups control access to a DB instance.

  A DB security group controls access to EC2-Classic DB instances that are not in
  a VPC.
  """
  def create_db_security_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBSecurityGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB instance.

  The source DB instance must be in the `available` or `storage-optimization`
  state.
  """
  def create_db_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBSnapshot", input, options)
  end

  @doc """
  Creates a new DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the AWS
  Region.
  """
  def create_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an RDS event notification subscription.

  This action requires a topic Amazon Resource Name (ARN) created by either the
  RDS console, the SNS console, or the SNS API. To obtain an ARN with SNS, you
  must create a topic in Amazon SNS and subscribe to the topic. The ARN is
  displayed in the SNS console.

  You can specify the type of source (`SourceType`) that you want to be notified
  of and provide a list of RDS sources (`SourceIds`) that triggers the events. You
  can also provide a list of event categories (`EventCategories`) for events that
  you want to be notified of. For example, you can specify `SourceType` =
  `db-instance`, `SourceIds` = `mydbinstance1`, `mydbinstance2` and
  `EventCategories` = `Availability`, `Backup`.

  If you specify both the `SourceType` and `SourceIds`, such as `SourceType` =
  `db-instance` and `SourceIdentifier` = `myDBInstance1`, you are notified of all
  the `db-instance` events for the specified source. If you specify a `SourceType`
  but do not specify a `SourceIdentifier`, you receive notice of the events for
  that source type for all your RDS sources. If you don't specify either the
  SourceType or the `SourceIdentifier`, you are notified of events generated from
  all RDS sources belonging to your customer account.

  RDS event notification is only available for unencrypted SNS topics. If you
  specify an encrypted SNS topic, event notifications aren't sent for the topic.
  """
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEventSubscription", input, options)
  end

  @doc """
  Creates an Aurora global database spread across multiple AWS Regions.

  The global database contains a single primary cluster with read-write
  capability, and a read-only secondary cluster that receives data from the
  primary cluster through high-speed replication performed by the Aurora storage
  subsystem.

  You can create a global database that is initially empty, and then add a primary
  cluster and a secondary cluster to it. Or you can specify an existing Aurora
  cluster during the create operation, and this cluster becomes the primary
  cluster of the global database.

  This action only applies to Aurora DB clusters.
  """
  def create_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGlobalCluster", input, options)
  end

  @doc """
  Creates a new option group.

  You can create up to 20 option groups.
  """
  def create_option_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOptionGroup", input, options)
  end

  @doc """
  Deletes a custom Availability Zone (AZ).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ RDS on VMware User Guide.](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def delete_custom_availability_zone(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCustomAvailabilityZone", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.

  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and can't be recovered. Manual DB cluster snapshots of the specified DB
  cluster are not deleted.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.

  This action only applies to Aurora DB clusters.
  """
  def delete_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterEndpoint", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group.

  The DB cluster parameter group to be deleted can't be associated with any DB
  clusters.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def delete_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot.

  If the snapshot is being copied, the copy operation is terminated.

  The DB cluster snapshot must be in the `available` state to be deleted.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def delete_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.

  When you delete a DB instance, all automated backups for that instance are
  deleted and can't be recovered. Manual DB snapshots of the DB instance to be
  deleted by `DeleteDBInstance` are not deleted.

  If you request a final DB snapshot the status of the Amazon RDS DB instance is
  `deleting` until the DB snapshot is created. The API action `DescribeDBInstance`
  is used to monitor the status of this operation. The action can't be canceled or
  reverted once submitted.

  When a DB instance is in a failure state and has a status of `failed`,
  `incompatible-restore`, or `incompatible-network`, you can only delete it when
  you skip creation of the final snapshot with the `SkipFinalSnapshot` parameter.

  If the specified DB instance is part of an Amazon Aurora DB cluster, you can't
  delete the DB instance if both of the following conditions are true:

    * The DB cluster is a read replica of another Amazon Aurora DB
  cluster.

    * The DB instance is the only instance in the DB cluster.

  To delete a DB instance in this case, first call the
  `PromoteReadReplicaDBCluster` API action to promote the DB cluster so it's no
  longer a read replica. After the promotion completes, then call the
  `DeleteDBInstance` API action to delete the final instance in the DB cluster.
  """
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes automated backups using the `DbiResourceId` value of the source DB
  instance or the Amazon Resource Name (ARN) of the automated backups.
  """
  def delete_db_instance_automated_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBInstanceAutomatedBackup", input, options)
  end

  @doc """
  Deletes a specified DB parameter group.

  The DB parameter group to be deleted can't be associated with any DB instances.
  """
  def delete_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes an existing DB proxy.
  """
  def delete_db_proxy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBProxy", input, options)
  end

  @doc """
  Deletes a `DBProxyEndpoint`.

  Doing so removes the ability to access the DB proxy using the endpoint that you
  defined. The endpoint that you delete might have provided capabilities such as
  read/write or read-only operations, or using a different VPC than the DB proxy's
  default VPC.
  """
  def delete_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBProxyEndpoint", input, options)
  end

  @doc """
  Deletes a DB security group.

  The specified DB security group must not be associated with any DB instances.
  """
  def delete_db_security_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBSecurityGroup", input, options)
  end

  @doc """
  Deletes a DB snapshot.

  If the snapshot is being copied, the copy operation is terminated.

  The DB snapshot must be in the `available` state to be deleted.
  """
  def delete_db_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBSnapshot", input, options)
  end

  @doc """
  Deletes a DB subnet group.

  The specified database subnet group must not be associated with any DB
  instances.
  """
  def delete_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an RDS event notification subscription.
  """
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes a global database cluster.

  The primary and secondary clusters must already be detached or destroyed first.

  This action only applies to Aurora DB clusters.
  """
  def delete_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGlobalCluster", input, options)
  end

  @doc """
  Deletes the installation medium for a DB engine that requires an on-premises
  customer provided license, such as Microsoft SQL Server.
  """
  def delete_installation_media(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteInstallationMedia", input, options)
  end

  @doc """
  Deletes an existing option group.
  """
  def delete_option_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOptionGroup", input, options)
  end

  @doc """
  Remove the association between one or more `DBProxyTarget` data structures and a
  `DBProxyTargetGroup`.
  """
  def deregister_db_proxy_targets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterDBProxyTargets", input, options)
  end

  @doc """
  Lists all of the attributes for a customer account.

  The attributes include Amazon RDS quotas for the account, such as the number of
  DB instances allowed. The description for a quota includes the quota name,
  current usage toward that quota, and the quota's maximum value.

  This command doesn't take any parameters.
  """
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccountAttributes", input, options)
  end

  @doc """
  Lists the set of CA certificates provided by Amazon RDS for this AWS account.
  """
  def describe_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCertificates", input, options)
  end

  @doc """
  Returns information about custom Availability Zones (AZs).

  A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
  cluster.

  For more information about RDS on VMware, see the [ RDS on VMware User Guide.](https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)
  """
  def describe_custom_availability_zones(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomAvailabilityZones", input, options)
  end

  @doc """
  Returns information about backtracks for a DB cluster.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora MySQL DB clusters.
  """
  def describe_db_cluster_backtracks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterBacktracks", input, options)
  end

  @doc """
  Returns information about endpoints for an Amazon Aurora DB cluster.

  This action only applies to Aurora DB clusters.
  """
  def describe_db_cluster_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterEndpoints", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions.

  If a `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def describe_db_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter group.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def describe_db_cluster_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a manual DB
  cluster snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the AWS accounts that are authorized to copy or restore the manual DB
  cluster snapshot. If `all` is included in the list of values for the `restore`
  attribute, then the manual DB cluster snapshot is public and can be copied or
  restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  cluster snapshot, or to make the manual DB cluster snapshot public or private,
  use the `ModifyDBClusterSnapshotAttribute` API action.

  This action only applies to Aurora DB clusters.
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
  Returns information about DB cluster snapshots.

  This API action supports pagination.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def describe_db_cluster_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Aurora DB clusters.

  This API supports pagination.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This operation can also return information for Amazon Neptune DB instances and
  Amazon DocumentDB instances.
  """
  def describe_db_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available DB engines.
  """
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Displays backups for both current and deleted instances.

  For example, use this operation to find details about automated backups for
  previously deleted instances. Current instances with retention periods greater
  than zero (0) are returned for both the `DescribeDBInstanceAutomatedBackups` and
  `DescribeDBInstances` operations.

  All parameters are optional.
  """
  def describe_db_instance_automated_backups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBInstanceAutomatedBackups", input, options)
  end

  @doc """
  Returns information about provisioned RDS instances.

  This API supports pagination.

  This operation can also return information for Amazon Neptune DB instances and
  Amazon DocumentDB instances.
  """
  def describe_db_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of DB log files for the DB instance.
  """
  def describe_db_log_files(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBLogFiles", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions.

  If a `DBParameterGroupName` is specified, the list will contain only the
  description of the specified DB parameter group.
  """
  def describe_db_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  def describe_db_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBParameters", input, options)
  end

  @doc """
  Returns information about DB proxies.
  """
  def describe_db_proxies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBProxies", input, options)
  end

  @doc """
  Returns information about DB proxy endpoints.
  """
  def describe_db_proxy_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBProxyEndpoints", input, options)
  end

  @doc """
  Returns information about DB proxy target groups, represented by
  `DBProxyTargetGroup` data structures.
  """
  def describe_db_proxy_target_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBProxyTargetGroups", input, options)
  end

  @doc """
  Returns information about `DBProxyTarget` objects.

  This API supports pagination.
  """
  def describe_db_proxy_targets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBProxyTargets", input, options)
  end

  @doc """
  Returns a list of `DBSecurityGroup` descriptions.

  If a `DBSecurityGroupName` is specified, the list will contain only the
  descriptions of the specified DB security group.
  """
  def describe_db_security_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSecurityGroups", input, options)
  end

  @doc """
  Returns a list of DB snapshot attribute names and values for a manual DB
  snapshot.

  When sharing snapshots with other AWS accounts, `DescribeDBSnapshotAttributes`
  returns the `restore` attribute and a list of IDs for the AWS accounts that are
  authorized to copy or restore the manual DB snapshot. If `all` is included in
  the list of values for the `restore` attribute, then the manual DB snapshot is
  public and can be copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  snapshot, or to make the manual DB snapshot public or private, use the
  `ModifyDBSnapshotAttribute` API action.
  """
  def describe_db_snapshot_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB snapshots.

  This API action supports pagination.
  """
  def describe_db_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSnapshots", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions.

  If a DBSubnetGroupName is specified, the list will contain only the descriptions
  of the specified DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def describe_db_subnet_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*
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
  Returns the default engine and system parameter information for the specified
  database engine.
  """
  def describe_engine_default_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified, for
  a specified source type.

  You can see a list of the event categories and source types in [
  Events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  in the *Amazon RDS User Guide.*
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
  Returns events related to DB instances, DB clusters, DB parameter groups, DB
  security groups, DB snapshots, and DB cluster snapshots for the past 14 days.

  Events specific to a particular DB instances, DB clusters, DB parameter groups,
  DB security groups, DB snapshots, and DB cluster snapshots group can be obtained
  by providing the name as a parameter.

  By default, the past hour of events are returned.
  """
  def describe_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEvents", input, options)
  end

  @doc """
  Returns information about a snapshot export to Amazon S3.

  This API operation supports pagination.
  """
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExportTasks", input, options)
  end

  @doc """
  Returns information about Aurora global database clusters.

  This API supports pagination.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def describe_global_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeGlobalClusters", input, options)
  end

  @doc """
  Describes the available installation media for a DB engine that requires an
  on-premises customer provided license, such as Microsoft SQL Server.
  """
  def describe_installation_media(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeInstallationMedia", input, options)
  end

  @doc """
  Describes all available options.
  """
  def describe_option_group_options(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOptionGroupOptions", input, options)
  end

  @doc """
  Describes the available option groups.
  """
  def describe_option_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOptionGroups", input, options)
  end

  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  def describe_orderable_db_instance_options(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, DB instances) that have at least one
  pending maintenance action.
  """
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Returns information about reserved DB instances for this account, or about a
  specified reserved DB instance.
  """
  def describe_reserved_db_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReservedDBInstances", input, options)
  end

  @doc """
  Lists available reserved DB instance offerings.
  """
  def describe_reserved_db_instances_offerings(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeReservedDBInstancesOfferings",
      input,
      options
    )
  end

  @doc """
  Returns a list of the source AWS Regions where the current AWS Region can create
  a read replica, copy a DB snapshot from, or replicate automated backups from.

  This API action supports pagination.
  """
  def describe_source_regions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSourceRegions", input, options)
  end

  @doc """
  You can call `DescribeValidDBInstanceModifications` to learn what modifications
  you can make to your DB instance.

  You can use this information when you call `ModifyDBInstance`.
  """
  def describe_valid_db_instance_modifications(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeValidDBInstanceModifications",
      input,
      options
    )
  end

  @doc """
  Downloads all or a portion of the specified log file, up to 1 MB in size.
  """
  def download_db_log_file_portion(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DownloadDBLogFilePortion", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Aurora Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster writer).

  Amazon Aurora will automatically fail over to an Aurora Replica, if one exists,
  when the primary instance fails. You can force a failover when you want to
  simulate a failure of a primary instance for testing. Because each instance in a
  DB cluster has its own endpoint address, you will need to clean up and
  re-establish any existing connections that use those endpoint addresses when the
  failover is complete.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def failover_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FailoverDBCluster", input, options)
  end

  @doc """
  Initiates the failover process for an Aurora global database (`GlobalCluster`).

  A failover for an Aurora global database promotes one of secondary read-only DB
  clusters to be the primary DB cluster and demotes the primary DB cluster to
  being a secondary (read-only) DB cluster. In other words, the role of the
  current primary DB cluster and the selected (target) DB cluster are switched.
  The selected secondary DB cluster assumes full read/write capabilities for the
  Aurora global database.

  For more information about failing over an Amazon Aurora global database, see
  [Managed planned failover for Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.managed-failover)
  in the *Amazon Aurora User Guide.*

  This action applies to `GlobalCluster` (Aurora global databases) only. Use this
  action only on healthy Aurora global databases with running Aurora DB clusters
  and no Region-wide outages, to test disaster recovery scenarios or to
  reconfigure your Aurora global database topology.
  """
  def failover_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FailoverGlobalCluster", input, options)
  end

  @doc """
  Imports the installation media for a DB engine that requires an on-premises
  customer provided license, such as SQL Server.
  """
  def import_installation_media(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportInstallationMedia", input, options)
  end

  @doc """
  Lists all tags on an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
  in the *Amazon RDS User Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Override the system-default Secure Sockets Layer/Transport Layer Security
  (SSL/TLS) certificate for Amazon RDS for new DB instances temporarily, or remove
  the override.

  By using this operation, you can specify an RDS-approved SSL/TLS certificate for
  new DB instances that is different from the default certificate provided by RDS.
  You can also use this operation to remove the override, so that new DB instances
  use the default certificate provided by RDS.

  You might need to override the default certificate in the following situations:

    * You already migrated your applications to support the latest
  certificate authority (CA) certificate, but the new CA certificate is not yet
  the RDS default CA certificate for the specified AWS Region.

    * RDS has already moved to a new default CA certificate for the
  specified AWS Region, but you are still in the process of supporting the new CA
  certificate. In this case, you temporarily need additional time to finish your
  application changes.

  For more information about rotating your SSL/TLS certificate for RDS DB engines,
  see [ Rotating Your SSL/TLS Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon RDS User Guide*.

  For more information about rotating your SSL/TLS certificate for Aurora DB
  engines, see [ Rotating Your SSL/TLS Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon Aurora User Guide*.
  """
  def modify_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyCertificates", input, options)
  end

  @doc """
  Set the capacity of an Aurora Serverless DB cluster to a specific value.

  Aurora Serverless scales seamlessly based on the workload on the DB cluster. In
  some cases, the capacity might not scale fast enough to meet a sudden change in
  workload, such as a large number of new transactions. Call
  `ModifyCurrentDBClusterCapacity` to set the capacity explicitly.

  After this call sets the DB cluster capacity, Aurora Serverless can
  automatically scale the DB cluster based on the cooldown period for scaling up
  and the cooldown period for scaling down.

  For more information about Aurora Serverless, see [Using Amazon Aurora Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
  in the *Amazon Aurora User Guide*.

  If you call `ModifyCurrentDBClusterCapacity` with the default `TimeoutAction`,
  connections that prevent Aurora Serverless from finding a scaling point might be
  dropped. For more information about scaling points, see [ Autoscaling for Aurora Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling)
  in the *Amazon Aurora User Guide*.

  This action only applies to Aurora DB clusters.
  """
  def modify_current_db_cluster_capacity(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyCurrentDBClusterCapacity", input, options)
  end

  @doc """
  Modify a setting for an Amazon Aurora DB cluster.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request. For more information on Amazon
  Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def modify_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the properties of an endpoint in an Amazon Aurora DB cluster.

  This action only applies to Aurora DB clusters.
  """
  def modify_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterEndpoint", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group.

  To modify more than one parameter, submit a list of the following:
  `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters
  can be modified in a single request.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot without failover to the DB cluster associated with
  the parameter group before the change can take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes before creating your first DB cluster that uses that DB cluster
  parameter group as the default parameter group. This allows Amazon RDS to fully
  complete the create action before the parameter group is used as the default for
  a new DB cluster. This is especially important for parameters that are critical
  when creating the default database for a DB cluster, such as the character set
  for the default database defined by the `character_set_database` parameter. You
  can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` action to verify that your DB cluster parameter
  group has been created or modified.

  If the modified DB cluster parameter group is used by an Aurora Serverless
  cluster, Aurora applies the update immediately. The cluster restart might
  interrupt your workload. In that case, your application must reopen any
  connections and retry any transactions that were active when the parameter
  changes took effect.

  This action only applies to Aurora DB clusters.
  """
  def modify_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other AWS accounts, specify `restore`
  as the `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs
  of the AWS accounts that are authorized to restore the manual DB cluster
  snapshot. Use the value `all` to make the manual DB cluster snapshot public,
  which means that it can be copied or restored by all AWS accounts.

  Don't add the `all` value for any manual DB cluster snapshots that contain
  private information that you don't want available to all AWS accounts.

  If a manual DB cluster snapshot is encrypted, it can be shared, but only by
  specifying a list of authorized AWS account IDs for the `ValuesToAdd` parameter.
  You can't use `all` as a value for that parameter in this case.

  To view which AWS accounts have access to copy or restore a manual DB cluster
  snapshot, or whether a manual DB cluster snapshot is public or private, use the
  `DescribeDBClusterSnapshotAttributes` API action. The accounts are returned as
  values for the `restore` attribute.

  This action only applies to Aurora DB clusters.
  """
  def modify_db_cluster_snapshot_attribute(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for a DB instance.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request. To learn what modifications you
  can make to your DB instance, call `DescribeValidDBInstanceModifications` before
  you call `ModifyDBInstance`.
  """
  def modify_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group.

  To modify more than one parameter, submit a list of the following:
  `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters
  can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot without failover to the DB instance associated with
  the parameter group before the change can take effect.

  After you modify a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter group. This allows Amazon RDS to fully complete the modify action
  before the parameter group is used as the default for a new DB instance. This is
  especially important for parameters that are critical when creating the default
  database for a DB instance, such as the character set for the default database
  defined by the `character_set_database` parameter. You can use the *Parameter
  Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/)
  or the *DescribeDBParameters* command to verify that your DB parameter group has
  been created or modified.
  """
  def modify_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Changes the settings for an existing DB proxy.
  """
  def modify_db_proxy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBProxy", input, options)
  end

  @doc """
  Changes the settings for an existing DB proxy endpoint.
  """
  def modify_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBProxyEndpoint", input, options)
  end

  @doc """
  Modifies the properties of a `DBProxyTargetGroup`.
  """
  def modify_db_proxy_target_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBProxyTargetGroup", input, options)
  end

  @doc """
  Updates a manual DB snapshot with a new engine version.

  The snapshot can be encrypted or unencrypted, but not shared or public.

  Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and PostgreSQL.
  """
  def modify_db_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBSnapshot", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB snapshot.

  To share a manual DB snapshot with other AWS accounts, specify `restore` as the
  `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs of the
  AWS accounts that are authorized to restore the manual DB snapshot. Uses the
  value `all` to make the manual DB snapshot public, which means it can be copied
  or restored by all AWS accounts.

  Don't add the `all` value for any manual DB snapshots that contain private
  information that you don't want available to all AWS accounts.

  If the manual DB snapshot is encrypted, it can be shared, but only by specifying
  a list of authorized AWS account IDs for the `ValuesToAdd` parameter. You can't
  use `all` as a value for that parameter in this case.

  To view which AWS accounts have access to copy or restore a manual DB snapshot,
  or whether a manual DB snapshot public or private, use the
  `DescribeDBSnapshotAttributes` API action. The accounts are returned as values
  for the `restore` attribute.
  """
  def modify_db_snapshot_attribute(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBSnapshotAttribute", input, options)
  end

  @doc """
  Modifies an existing DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the AWS
  Region.
  """
  def modify_db_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing RDS event notification subscription.

  You can't modify the source identifiers using this call. To change source
  identifiers for a subscription, use the `AddSourceIdentifierToSubscription` and
  `RemoveSourceIdentifierFromSubscription` calls.

  You can see a list of the event categories for a given source type
  (`SourceType`) in
  [Events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  in the *Amazon RDS User Guide* or by using the `DescribeEventCategories`
  operation.
  """
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyEventSubscription", input, options)
  end

  @doc """
  Modify a setting for an Amazon Aurora global cluster.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request. For more information on Amazon
  Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def modify_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyGlobalCluster", input, options)
  end

  @doc """
  Modifies an existing option group.
  """
  def modify_option_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyOptionGroup", input, options)
  end

  @doc """
  Promotes a read replica DB instance to a standalone DB instance.

     Backup duration is a function of the amount of changes to the
  database since the previous backup. If you plan to promote a read replica to a
  standalone instance, we recommend that you enable backups and complete at least
  one backup prior to promotion. In addition, a read replica cannot be promoted to
  a standalone instance when it is in the `backing-up` status. If you have enabled
  backups on your read replica, configure the automated backup window so that
  daily backups do not interfere with read replica promotion.

     This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
  """
  def promote_read_replica(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PromoteReadReplica", input, options)
  end

  @doc """
  Promotes a read replica DB cluster to a standalone DB cluster.

  This action only applies to Aurora DB clusters.
  """
  def promote_read_replica_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  Purchases a reserved DB instance offering.
  """
  def purchase_reserved_db_instances_offering(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "PurchaseReservedDBInstancesOffering",
      input,
      options
    )
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.

  For example, if you make certain modifications, or if you change the DB
  parameter group associated with the DB instance, you must reboot the instance
  for the changes to take effect.

  Rebooting a DB instance restarts the database engine service. Rebooting a DB
  instance results in a momentary outage, during which the DB instance status is
  set to rebooting.

  For more information about rebooting, see [Rebooting a DB Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html)
  in the *Amazon RDS User Guide.*
  """
  def reboot_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RebootDBInstance", input, options)
  end

  @doc """
  Associate one or more `DBProxyTarget` data structures with a
  `DBProxyTargetGroup`.
  """
  def register_db_proxy_targets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterDBProxyTargets", input, options)
  end

  @doc """
  Detaches an Aurora secondary cluster from an Aurora global database cluster.

  The cluster becomes a standalone cluster with read-write capability instead of
  being read-only and receiving data from a primary cluster in a different region.

  This action only applies to Aurora DB clusters.
  """
  def remove_from_global_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveFromGlobalCluster", input, options)
  end

  @doc """
  Disassociates an AWS Identity and Access Management (IAM) role from an Amazon
  Aurora DB cluster.

  For more information, see [Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf
  ](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
  in the *Amazon Aurora User Guide*.

  This action only applies to Aurora DB clusters.
  """
  def remove_role_from_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Disassociates an AWS Identity and Access Management (IAM) role from a DB
  instance.
  """
  def remove_role_from_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveRoleFromDBInstance", input, options)
  end

  @doc """
  Removes a source identifier from an existing RDS event notification
  subscription.
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
  Removes metadata tags from an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
  in the *Amazon RDS User Guide.*
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group to the default value.

  To reset specific parameters submit a list of the following: `ParameterName` and
  `ApplyMethod`. To reset the entire DB cluster parameter group, specify the
  `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

  When resetting the entire group, dynamic parameters are updated immediately and
  static parameters are set to `pending-reboot` to take effect on the next DB
  instance restart or `RebootDBInstance` request. You must call `RebootDBInstance`
  for every DB instance in your DB cluster that you want the updated static
  parameter to apply to.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def reset_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group to the engine/system default
  value.

  To reset specific parameters, provide a list of the following: `ParameterName`
  and `ApplyMethod`. To reset the entire DB parameter group, specify the
  `DBParameterGroup` name and `ResetAllParameters` parameters. When resetting the
  entire group, dynamic parameters are updated immediately and static parameters
  are set to `pending-reboot` to take effect on the next DB instance restart or
  `RebootDBInstance` request.
  """
  def reset_db_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetDBParameterGroup", input, options)
  end

  @doc """
  Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon S3
  bucket.

  Amazon RDS must be authorized to access the Amazon S3 bucket and the data must
  be created using the Percona XtraBackup utility as described in [ Migrating Data from MySQL by Using an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3)
  in the *Amazon Aurora User Guide*.

  This action only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` action to create DB instances
  for the restored DB cluster, specifying the identifier of the restored DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after the
  `RestoreDBClusterFromS3` action has completed and the DB cluster is available.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters. The source DB engine must be
  MySQL.
  """
  def restore_db_cluster_from_s3(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterFromS3", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

  This action only applies to Aurora DB clusters.

  The target DB cluster is created from the source snapshot with a default
  configuration. If you don't specify a security group, the new DB cluster is
  associated with the default security group.

  This action only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` action to create DB instances
  for the restored DB cluster, specifying the identifier of the restored DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after the
  `RestoreDBClusterFromSnapshot` action has completed and the DB cluster is
  available.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def restore_db_cluster_from_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a DB cluster to an arbitrary point in time.

  Users can restore to any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the source
  DB cluster with the same configuration as the original DB cluster, except that
  the new DB cluster is created with the default DB security group.

  This action only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` action to create DB instances
  for the restored DB cluster, specifying the identifier of the restored DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after the
  `RestoreDBClusterToPointInTime` action has completed and the DB cluster is
  available.

  For more information on Amazon Aurora, see [ What Is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def restore_db_cluster_to_point_in_time(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Creates a new DB instance from a DB snapshot.

  The target database is created from the source database restore point with most
  of the source's original configuration, including the default security group and
  DB parameter group. By default, the new DB instance is created as a Single-AZ
  deployment, except when the instance is a SQL Server instance that has an option
  group associated with mirroring. In this case, the instance becomes a Multi-AZ
  deployment, not a Single-AZ deployment.

  If you want to replace your original DB instance with the new, restored DB
  instance, then rename your original DB instance before you call the
  RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with
  the same name. After you have renamed your original DB instance with a different
  identifier, then you can pass the original name of the DB instance as the
  DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action.
  The result is that you replace the original DB instance with the DB instance
  created from the snapshot.

  If you are restoring from a shared manual DB snapshot, the
  `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.

  This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora,
  use `RestoreDBClusterFromSnapshot`.
  """
  def restore_db_instance_from_db_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBInstanceFromDBSnapshot", input, options)
  end

  @doc """
  Amazon Relational Database Service (Amazon RDS) supports importing MySQL
  databases by using backup files.

  You can create a backup of your on-premises database, store it on Amazon Simple
  Storage Service (Amazon S3), and then restore the backup file onto a new Amazon
  RDS DB instance running MySQL. For more information, see [Importing Data into an Amazon RDS MySQL DB
  Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_db_instance_from_s3(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBInstanceFromS3", input, options)
  end

  @doc """
  Restores a DB instance to an arbitrary point in time.

  You can restore to any point in time before the time identified by the
  LatestRestorableTime property. You can restore to a point up to the number of
  days specified by the BackupRetentionPeriod property.

  The target database is created with most of the original configuration, but in a
  system-selected Availability Zone, with the default security group, the default
  subnet group, and the default DB parameter group. By default, the new DB
  instance is created as a single-AZ deployment except when the instance is a SQL
  Server instance that has an option group that is associated with mirroring; in
  this case, the instance becomes a mirrored deployment and not a single-AZ
  deployment.

  This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora,
  use `RestoreDBClusterToPointInTime`.
  """
  def restore_db_instance_to_point_in_time(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreDBInstanceToPointInTime", input, options)
  end

  @doc """
  Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or
  EC2 or VPC Security Groups.

  Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC,
  or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
  EC2SecurityGroupId).
  """
  def revoke_db_security_group_ingress(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Starts a database activity stream to monitor activity on the database.

  For more information, see [Database Activity Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide*.
  """
  def start_activity_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartActivityStream", input, options)
  end

  @doc """
  Starts an Amazon Aurora DB cluster that was stopped using the AWS console, the
  stop-db-cluster AWS CLI command, or the StopDBCluster action.

  For more information, see [ Stopping and Starting an Aurora Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def start_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDBCluster", input, options)
  end

  @doc """
  Starts an Amazon RDS DB instance that was stopped using the AWS console, the
  stop-db-instance AWS CLI command, or the StopDBInstance action.

  For more information, see [ Starting an Amazon RDS DB instance That Was Previously
  Stopped](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html)
  in the *Amazon RDS User Guide.*

  This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora DB
  clusters, use `StartDBCluster` instead.
  """
  def start_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDBInstance", input, options)
  end

  @doc """
  Enables replication of automated backups to a different AWS Region.

  For more information, see [ Replicating Automated Backups to Another AWS Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
  in the *Amazon RDS User Guide.*
  """
  def start_db_instance_automated_backups_replication(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "StartDBInstanceAutomatedBackupsReplication",
      input,
      options
    )
  end

  @doc """
  Starts an export of a snapshot to Amazon S3.

  The provided IAM role must have access to the S3 bucket.
  """
  def start_export_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartExportTask", input, options)
  end

  @doc """
  Stops a database activity stream that was started using the AWS console, the
  `start-activity-stream` AWS CLI command, or the `StartActivityStream` action.

  For more information, see [Database Activity Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide*.
  """
  def stop_activity_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopActivityStream", input, options)
  end

  @doc """
  Stops an Amazon Aurora DB cluster.

  When you stop a DB cluster, Aurora retains the DB cluster's metadata, including
  its endpoints and DB parameter groups. Aurora also retains the transaction logs
  so you can do a point-in-time restore if necessary.

  For more information, see [ Stopping and Starting an Aurora Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide.*

  This action only applies to Aurora DB clusters.
  """
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDBCluster", input, options)
  end

  @doc """
  Stops an Amazon RDS DB instance.

  When you stop a DB instance, Amazon RDS retains the DB instance's metadata,
  including its endpoint, DB parameter group, and option group membership. Amazon
  RDS also retains the transaction logs so you can do a point-in-time restore if
  necessary.

  For more information, see [ Stopping an Amazon RDS DB Instance Temporarily](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html)
  in the *Amazon RDS User Guide.*

  This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora
  clusters, use `StopDBCluster` instead.
  """
  def stop_db_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDBInstance", input, options)
  end

  @doc """
  Stops automated backup replication for a DB instance.

  For more information, see [ Replicating Automated Backups to Another AWS Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
  in the *Amazon RDS User Guide.*
  """
  def stop_db_instance_automated_backups_replication(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "StopDBInstanceAutomatedBackupsReplication",
      input,
      options
    )
  end
end