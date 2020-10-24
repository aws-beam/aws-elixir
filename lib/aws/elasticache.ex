# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElastiCache do
  @moduledoc """
  Amazon ElastiCache

  Amazon ElastiCache is a web service that makes it easier to set up,
  operate, and scale a distributed cache in the cloud.

  With ElastiCache, customers get all of the benefits of a high-performance,
  in-memory cache with less of the administrative burden involved in
  launching and managing a distributed cache. The service makes setup,
  scaling, and cluster failure handling much simpler than in a self-managed
  cache deployment.

  In addition, through integration with Amazon CloudWatch, customers get
  enhanced visibility into the key performance statistics associated with
  their cache and can receive alarms if a part of their cache runs hot.
  """

  @doc """
  Adds up to 50 cost allocation tags to the named resource. A cost allocation
  tag is a key-value pair where the key and value are case-sensitive. You can
  use cost allocation tags to categorize and track your AWS costs.

  When you apply tags to your ElastiCache resources, AWS generates a cost
  allocation report as a comma-separated value (CSV) file with your usage and
  costs aggregated by your tags. You can apply tags that represent business
  categories (such as cost centers, application names, or owners) to organize
  your costs across multiple services. For more information, see [Using Cost
  Allocation Tags in Amazon
  ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html)
  in the *ElastiCache User Guide*.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Allows network ingress to a cache security group. Applications using
  ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups
  are used as the authorization mechanism.

  <note> You cannot authorize ingress from an Amazon EC2 security group in
  one region to an ElastiCache cluster in another region.

  </note>
  """
  def authorize_cache_security_group_ingress(client, input, options \\ []) do
    request(client, "AuthorizeCacheSecurityGroupIngress", input, options)
  end

  @doc """
  Apply the service update. For more information on service updates and
  applying them, see [Applying Service
  Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/applying-updates.html).
  """
  def batch_apply_update_action(client, input, options \\ []) do
    request(client, "BatchApplyUpdateAction", input, options)
  end

  @doc """
  Stop the service update. For more information on service updates and
  stopping them, see [Stopping Service
  Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html).
  """
  def batch_stop_update_action(client, input, options \\ []) do
    request(client, "BatchStopUpdateAction", input, options)
  end

  @doc """
  Complete the migration of data.
  """
  def complete_migration(client, input, options \\ []) do
    request(client, "CompleteMigration", input, options)
  end

  @doc """
  Makes a copy of an existing snapshot.

  <note> This operation is valid for Redis only.

  </note> <important> Users or groups that have permissions to use the
  `CopySnapshot` operation can create their own Amazon S3 buckets and copy
  snapshots to it. To control access to your snapshots, use an IAM policy to
  control who has the ability to use the `CopySnapshot` operation. For more
  information about using IAM to control the use of ElastiCache operations,
  see [Exporting
  Snapshots](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html)
  and [Authentication &amp; Access
  Control](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html).

  </important> You could receive the following error messages.

  <p class="title"> **Error Messages**

  <ul> <li> **Error Message:** The S3 bucket %s is outside of the region.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The S3 bucket %s does not exist.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The S3 bucket %s is not owned by the
  authenticated user.

  **Solution:** Create an Amazon S3 bucket in the same region as your
  snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User Guide.

  </li> <li> **Error Message:** The authenticated user does not have
  sufficient permissions to perform the desired activity.

  **Solution:** Contact your system administrator to get the needed
  permissions.

  </li> <li> **Error Message:** The S3 bucket %s already contains an object
  with key %s.

  **Solution:** Give the `TargetSnapshotName` a new and unique value. If
  exporting a snapshot, you could alternatively create a new Amazon S3 bucket
  and use this same value for `TargetSnapshotName`.

  </li> <li> **Error Message: ** ElastiCache has not been granted READ
  permissions %s on the S3 Bucket.

  **Solution:** Add List and Read permissions on the bucket. For more
  information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
  in the ElastiCache User Guide.

  </li> <li> **Error Message: ** ElastiCache has not been granted WRITE
  permissions %s on the S3 Bucket.

  **Solution:** Add Upload/Delete permissions on the bucket. For more
  information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
  in the ElastiCache User Guide.

  </li> <li> **Error Message: ** ElastiCache has not been granted READ_ACP
  permissions %s on the S3 Bucket.

  **Solution:** Add View Permissions on the bucket. For more information, see
  [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
  in the ElastiCache User Guide.

  </li> </ul>
  """
  def copy_snapshot(client, input, options \\ []) do
    request(client, "CopySnapshot", input, options)
  end

  @doc """
  Creates a cluster. All nodes in the cluster run the same protocol-compliant
  cache engine software, either Memcached or Redis.

  This operation is not supported for Redis (cluster mode enabled) clusters.
  """
  def create_cache_cluster(client, input, options \\ []) do
    request(client, "CreateCacheCluster", input, options)
  end

  @doc """
  Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
  cache parameter group is a collection of parameters and their values that
  are applied to all of the nodes in any cluster or replication group using
  the CacheParameterGroup.

  A newly created CacheParameterGroup is an exact duplicate of the default
  parameter group for the CacheParameterGroupFamily. To customize the newly
  created CacheParameterGroup you can change the values of specific
  parameters. For more information, see:

  <ul> <li>
  [ModifyCacheParameterGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html)
  in the ElastiCache API Reference.

  </li> <li> [Parameters and Parameter
  Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html)
  in the ElastiCache User Guide.

  </li> </ul>
  """
  def create_cache_parameter_group(client, input, options \\ []) do
    request(client, "CreateCacheParameterGroup", input, options)
  end

  @doc """
  Creates a new cache security group. Use a cache security group to control
  access to one or more clusters.

  Cache security groups are only used when you are creating a cluster outside
  of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a
  cluster inside of a VPC, use a cache subnet group instead. For more
  information, see
  [CreateCacheSubnetGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).
  """
  def create_cache_security_group(client, input, options \\ []) do
    request(client, "CreateCacheSecurityGroup", input, options)
  end

  @doc """
  Creates a new cache subnet group.

  Use this parameter only when you are creating a cluster in an Amazon
  Virtual Private Cloud (Amazon VPC).
  """
  def create_cache_subnet_group(client, input, options \\ []) do
    request(client, "CreateCacheSubnetGroup", input, options)
  end

  @doc """
  Global Datastore for Redis offers fully managed, fast, reliable and secure
  cross-region replication. Using Global Datastore for Redis, you can create
  cross-region read replica clusters for ElastiCache for Redis to enable
  low-latency reads and disaster recovery across regions. For more
  information, see [Replication Across Regions Using Global
  Datastore](/AmazonElastiCache/latest/red-ug/Redis-Global-Clusters.html).

  <ul> <li> The **GlobalReplicationGroupIdSuffix** is the name of the Global
  Datastore.

  </li> <li> The **PrimaryReplicationGroupId** represents the name of the
  primary cluster that accepts writes and will replicate updates to the
  secondary cluster.

  </li> </ul>
  """
  def create_global_replication_group(client, input, options \\ []) do
    request(client, "CreateGlobalReplicationGroup", input, options)
  end

  @doc """
  Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled)
  replication group.

  This API can be used to create a standalone regional replication group or a
  secondary replication group associated with a Global Datastore.

  A Redis (cluster mode disabled) replication group is a collection of
  clusters, where one of the clusters is a read/write primary and the others
  are read-only replicas. Writes to the primary are asynchronously propagated
  to the replicas.

  A Redis (cluster mode enabled) replication group is a collection of 1 to 90
  node groups (shards). Each node group (shard) has one read/write primary
  node and up to 5 read-only replica nodes. Writes to the primary are
  asynchronously propagated to the replicas. Redis (cluster mode enabled)
  replication groups partition the data across node groups (shards).

  When a Redis (cluster mode disabled) replication group has been
  successfully created, you can add one or more read replicas to it, up to a
  total of 5 read replicas. If you need to increase or decrease the number of
  node groups (console: shards), you can avail yourself of ElastiCache for
  Redis' scaling. For more information, see [Scaling ElastiCache for Redis
  Clusters](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Scaling.html)
  in the *ElastiCache User Guide*.

  <note> This operation is valid for Redis only.

  </note>
  """
  def create_replication_group(client, input, options \\ []) do
    request(client, "CreateReplicationGroup", input, options)
  end

  @doc """
  Creates a copy of an entire cluster or replication group at a specific
  moment in time.

  <note> This operation is valid for Redis only.

  </note>
  """
  def create_snapshot(client, input, options \\ []) do
    request(client, "CreateSnapshot", input, options)
  end

  @doc """
  For Redis engine version 6.04 onwards: Creates a Redis user. For more
  information, see [Using Role Based Access Control
  (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
  """
  def create_user(client, input, options \\ []) do
    request(client, "CreateUser", input, options)
  end

  @doc """
  For Redis engine version 6.04 onwards: Creates a Redis user group. For more
  information, see [Using Role Based Access Control
  (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html)
  """
  def create_user_group(client, input, options \\ []) do
    request(client, "CreateUserGroup", input, options)
  end

  @doc """
  Decreases the number of node groups in a Global Datastore
  """
  def decrease_node_groups_in_global_replication_group(client, input, options \\ []) do
    request(client, "DecreaseNodeGroupsInGlobalReplicationGroup", input, options)
  end

  @doc """
  Dynamically decreases the number of replicas in a Redis (cluster mode
  disabled) replication group or the number of replica nodes in one or more
  node groups (shards) of a Redis (cluster mode enabled) replication group.
  This operation is performed with no cluster down time.
  """
  def decrease_replica_count(client, input, options \\ []) do
    request(client, "DecreaseReplicaCount", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster. `DeleteCacheCluster` deletes all
  associated cache nodes, node endpoints and the cluster itself. When you
  receive a successful response from this operation, Amazon ElastiCache
  immediately begins deleting the cluster; you cannot cancel or revert this
  operation.

  This operation is not valid for:

  <ul> <li> Redis (cluster mode enabled) clusters

  </li> <li> A cluster that is the last read replica of a replication group

  </li> <li> A node group (shard) that has Multi-AZ mode enabled

  </li> <li> A cluster from a Redis (cluster mode enabled) replication group

  </li> <li> A cluster that is not in the `available` state

  </li> </ul>
  """
  def delete_cache_cluster(client, input, options \\ []) do
    request(client, "DeleteCacheCluster", input, options)
  end

  @doc """
  Deletes the specified cache parameter group. You cannot delete a cache
  parameter group if it is associated with any cache clusters.
  """
  def delete_cache_parameter_group(client, input, options \\ []) do
    request(client, "DeleteCacheParameterGroup", input, options)
  end

  @doc """
  Deletes a cache security group.

  <note> You cannot delete a cache security group if it is associated with
  any clusters.

  </note>
  """
  def delete_cache_security_group(client, input, options \\ []) do
    request(client, "DeleteCacheSecurityGroup", input, options)
  end

  @doc """
  Deletes a cache subnet group.

  <note> You cannot delete a cache subnet group if it is associated with any
  clusters.

  </note>
  """
  def delete_cache_subnet_group(client, input, options \\ []) do
    request(client, "DeleteCacheSubnetGroup", input, options)
  end

  @doc """
  Deleting a Global Datastore is a two-step process:

  <ul> <li> First, you must `DisassociateGlobalReplicationGroup` to remove
  the secondary clusters in the Global Datastore.

  </li> <li> Once the Global Datastore contains only the primary cluster, you
  can use DeleteGlobalReplicationGroup API to delete the Global Datastore
  while retainining the primary cluster using Retain…= true.

  </li> </ul> Since the Global Datastore has only a primary cluster, you can
  delete the Global Datastore while retaining the primary by setting
  `RetainPrimaryCluster=true`.

  When you receive a successful response from this operation, Amazon
  ElastiCache immediately begins deleting the selected resources; you cannot
  cancel or revert this operation.
  """
  def delete_global_replication_group(client, input, options \\ []) do
    request(client, "DeleteGlobalReplicationGroup", input, options)
  end

  @doc """
  Deletes an existing replication group. By default, this operation deletes
  the entire replication group, including the primary/primaries and all of
  the read replicas. If the replication group has only one primary, you can
  optionally delete only the read replicas, while retaining the primary by
  setting `RetainPrimaryCluster=true`.

  When you receive a successful response from this operation, Amazon
  ElastiCache immediately begins deleting the selected resources; you cannot
  cancel or revert this operation.

  <note> This operation is valid for Redis only.

  </note>
  """
  def delete_replication_group(client, input, options \\ []) do
    request(client, "DeleteReplicationGroup", input, options)
  end

  @doc """
  Deletes an existing snapshot. When you receive a successful response from
  this operation, ElastiCache immediately begins deleting the snapshot; you
  cannot cancel or revert this operation.

  <note> This operation is valid for Redis only.

  </note>
  """
  def delete_snapshot(client, input, options \\ []) do
    request(client, "DeleteSnapshot", input, options)
  end

  @doc """
  For Redis engine version 6.04 onwards: Deletes a user. The user will be
  removed from all user groups and in turn removed from all replication
  groups. For more information, see [Using Role Based Access Control
  (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  For Redis engine version 6.04 onwards: Deletes a ser group. The user group
  must first be disassociated from the replcation group before it can be
  deleted. For more information, see [Using Role Based Access Control
  (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
  """
  def delete_user_group(client, input, options \\ []) do
    request(client, "DeleteUserGroup", input, options)
  end

  @doc """
  Returns information about all provisioned clusters if no cluster identifier
  is specified, or about a specific cache cluster if a cluster identifier is
  supplied.

  By default, abbreviated information about the clusters is returned. You can
  use the optional *ShowCacheNodeInfo* flag to retrieve detailed information
  about the cache nodes associated with the clusters. These details include
  the DNS address and port for the cache node endpoint.

  If the cluster is in the *creating* state, only cluster-level information
  is displayed until all of the nodes are successfully provisioned.

  If the cluster is in the *deleting* state, only cluster-level information
  is displayed.

  If cache nodes are currently being added to the cluster, node endpoint
  information and creation time for the additional nodes are not displayed
  until they are completely provisioned. When the cluster state is
  *available*, the cluster is ready for use.

  If cache nodes are currently being removed from the cluster, no endpoint
  information for the removed nodes is displayed.
  """
  def describe_cache_clusters(client, input, options \\ []) do
    request(client, "DescribeCacheClusters", input, options)
  end

  @doc """
  Returns a list of the available cache engines and their versions.
  """
  def describe_cache_engine_versions(client, input, options \\ []) do
    request(client, "DescribeCacheEngineVersions", input, options)
  end

  @doc """
  Returns a list of cache parameter group descriptions. If a cache parameter
  group name is specified, the list contains only the descriptions for that
  group.
  """
  def describe_cache_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeCacheParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular cache parameter group.
  """
  def describe_cache_parameters(client, input, options \\ []) do
    request(client, "DescribeCacheParameters", input, options)
  end

  @doc """
  Returns a list of cache security group descriptions. If a cache security
  group name is specified, the list contains only the description of that
  group. This applicable only when you have ElastiCache in Classic setup
  """
  def describe_cache_security_groups(client, input, options \\ []) do
    request(client, "DescribeCacheSecurityGroups", input, options)
  end

  @doc """
  Returns a list of cache subnet group descriptions. If a subnet group name
  is specified, the list contains only the description of that group. This is
  applicable only when you have ElastiCache in VPC setup. All ElastiCache
  clusters now launch in VPC by default.
  """
  def describe_cache_subnet_groups(client, input, options \\ []) do
    request(client, "DescribeCacheSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the
  specified cache engine.
  """
  def describe_engine_default_parameters(client, input, options \\ []) do
    request(client, "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Returns events related to clusters, cache security groups, and cache
  parameter groups. You can obtain events specific to a particular cluster,
  cache security group, or cache parameter group by providing the name as a
  parameter.

  By default, only the events occurring within the last hour are returned;
  however, you can retrieve up to 14 days' worth of events if necessary.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about a particular global replication group. If no
  identifier is specified, returns information about all Global Datastores.
  """
  def describe_global_replication_groups(client, input, options \\ []) do
    request(client, "DescribeGlobalReplicationGroups", input, options)
  end

  @doc """
  Returns information about a particular replication group. If no identifier
  is specified, `DescribeReplicationGroups` returns information about all
  replication groups.

  <note> This operation is valid for Redis only.

  </note>
  """
  def describe_replication_groups(client, input, options \\ []) do
    request(client, "DescribeReplicationGroups", input, options)
  end

  @doc """
  Returns information about reserved cache nodes for this account, or about a
  specified reserved cache node.
  """
  def describe_reserved_cache_nodes(client, input, options \\ []) do
    request(client, "DescribeReservedCacheNodes", input, options)
  end

  @doc """
  Lists available reserved cache node offerings.
  """
  def describe_reserved_cache_nodes_offerings(client, input, options \\ []) do
    request(client, "DescribeReservedCacheNodesOfferings", input, options)
  end

  @doc """
  Returns details of the service updates
  """
  def describe_service_updates(client, input, options \\ []) do
    request(client, "DescribeServiceUpdates", input, options)
  end

  @doc """
  Returns information about cluster or replication group snapshots. By
  default, `DescribeSnapshots` lists all of your snapshots; it can optionally
  describe a single snapshot, or just the snapshots associated with a
  particular cache cluster.

  <note> This operation is valid for Redis only.

  </note>
  """
  def describe_snapshots(client, input, options \\ []) do
    request(client, "DescribeSnapshots", input, options)
  end

  @doc """
  Returns details of the update actions
  """
  def describe_update_actions(client, input, options \\ []) do
    request(client, "DescribeUpdateActions", input, options)
  end

  @doc """
  Returns a list of user groups.
  """
  def describe_user_groups(client, input, options \\ []) do
    request(client, "DescribeUserGroups", input, options)
  end

  @doc """
  Returns a list of users.
  """
  def describe_users(client, input, options \\ []) do
    request(client, "DescribeUsers", input, options)
  end

  @doc """
  Remove a secondary cluster from the Global Datastore using the Global
  Datastore name. The secondary cluster will no longer receive updates from
  the primary cluster, but will remain as a standalone cluster in that AWS
  region.
  """
  def disassociate_global_replication_group(client, input, options \\ []) do
    request(client, "DisassociateGlobalReplicationGroup", input, options)
  end

  @doc """
  Used to failover the primary region to a selected secondary region. The
  selected secondary region will become primary, and all other clusters will
  become secondary.
  """
  def failover_global_replication_group(client, input, options \\ []) do
    request(client, "FailoverGlobalReplicationGroup", input, options)
  end

  @doc """
  Increase the number of node groups in the Global Datastore
  """
  def increase_node_groups_in_global_replication_group(client, input, options \\ []) do
    request(client, "IncreaseNodeGroupsInGlobalReplicationGroup", input, options)
  end

  @doc """
  Dynamically increases the number of replics in a Redis (cluster mode
  disabled) replication group or the number of replica nodes in one or more
  node groups (shards) of a Redis (cluster mode enabled) replication group.
  This operation is performed with no cluster down time.
  """
  def increase_replica_count(client, input, options \\ []) do
    request(client, "IncreaseReplicaCount", input, options)
  end

  @doc """
  Lists all available node types that you can scale your Redis cluster's or
  replication group's current node type.

  When you use the `ModifyCacheCluster` or `ModifyReplicationGroup`
  operations to scale your cluster or replication group, the value of the
  `CacheNodeType` parameter must be one of the node types returned by this
  operation.
  """
  def list_allowed_node_type_modifications(client, input, options \\ []) do
    request(client, "ListAllowedNodeTypeModifications", input, options)
  end

  @doc """
  Lists all cost allocation tags currently on the named resource. A `cost
  allocation tag` is a key-value pair where the key is case-sensitive and the
  value is optional. You can use cost allocation tags to categorize and track
  your AWS costs.

  If the cluster is not in the *available* state, `ListTagsForResource`
  returns an error.

  You can have a maximum of 50 cost allocation tags on an ElastiCache
  resource. For more information, see [Monitoring Costs with
  Tags](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html).
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the settings for a cluster. You can use this operation to change
  one or more cluster configuration parameters by specifying the parameters
  and the new values.
  """
  def modify_cache_cluster(client, input, options \\ []) do
    request(client, "ModifyCacheCluster", input, options)
  end

  @doc """
  Modifies the parameters of a cache parameter group. You can modify up to 20
  parameters in a single request by submitting a list parameter name and
  value pairs.
  """
  def modify_cache_parameter_group(client, input, options \\ []) do
    request(client, "ModifyCacheParameterGroup", input, options)
  end

  @doc """
  Modifies an existing cache subnet group.
  """
  def modify_cache_subnet_group(client, input, options \\ []) do
    request(client, "ModifyCacheSubnetGroup", input, options)
  end

  @doc """
  Modifies the settings for a Global Datastore.
  """
  def modify_global_replication_group(client, input, options \\ []) do
    request(client, "ModifyGlobalReplicationGroup", input, options)
  end

  @doc """
  Modifies the settings for a replication group.

  <ul> <li> [Scaling for Amazon ElastiCache for Redis (cluster mode
  enabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html)
  in the ElastiCache User Guide

  </li> <li>
  [ModifyReplicationGroupShardConfiguration](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html)
  in the ElastiCache API Reference

  </li> </ul> <note> This operation is valid for Redis only.

  </note>
  """
  def modify_replication_group(client, input, options \\ []) do
    request(client, "ModifyReplicationGroup", input, options)
  end

  @doc """
  Modifies a replication group's shards (node groups) by allowing you to add
  shards, remove shards, or rebalance the keyspaces among exisiting shards.
  """
  def modify_replication_group_shard_configuration(client, input, options \\ []) do
    request(client, "ModifyReplicationGroupShardConfiguration", input, options)
  end

  @doc """
  Changes user password(s) and/or access string.
  """
  def modify_user(client, input, options \\ []) do
    request(client, "ModifyUser", input, options)
  end

  @doc """
  Changes the list of users that belong to the user group.
  """
  def modify_user_group(client, input, options \\ []) do
    request(client, "ModifyUserGroup", input, options)
  end

  @doc """
  Allows you to purchase a reserved cache node offering.
  """
  def purchase_reserved_cache_nodes_offering(client, input, options \\ []) do
    request(client, "PurchaseReservedCacheNodesOffering", input, options)
  end

  @doc """
  Redistribute slots to ensure uniform distribution across existing shards in
  the cluster.
  """
  def rebalance_slots_in_global_replication_group(client, input, options \\ []) do
    request(client, "RebalanceSlotsInGlobalReplicationGroup", input, options)
  end

  @doc """
  Reboots some, or all, of the cache nodes within a provisioned cluster. This
  operation applies any modified cache parameter groups to the cluster. The
  reboot operation takes place as soon as possible, and results in a
  momentary outage to the cluster. During the reboot, the cluster status is
  set to REBOOTING.

  The reboot causes the contents of the cache (for each cache node being
  rebooted) to be lost.

  When the reboot is complete, a cluster event is created.

  Rebooting a cluster is currently supported on Memcached and Redis (cluster
  mode disabled) clusters. Rebooting is not supported on Redis (cluster mode
  enabled) clusters.

  If you make changes to parameters that require a Redis (cluster mode
  enabled) cluster reboot for the changes to be applied, see [Rebooting a
  Cluster](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html)
  for an alternate process.
  """
  def reboot_cache_cluster(client, input, options \\ []) do
    request(client, "RebootCacheCluster", input, options)
  end

  @doc """
  Removes the tags identified by the `TagKeys` list from the named resource.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a cache parameter group to the engine or system
  default value. You can reset specific parameters by submitting a list of
  parameter names. To reset the entire cache parameter group, specify the
  `ResetAllParameters` and `CacheParameterGroupName` parameters.
  """
  def reset_cache_parameter_group(client, input, options \\ []) do
    request(client, "ResetCacheParameterGroup", input, options)
  end

  @doc """
  Revokes ingress from a cache security group. Use this operation to disallow
  access from an Amazon EC2 security group that had been previously
  authorized.
  """
  def revoke_cache_security_group_ingress(client, input, options \\ []) do
    request(client, "RevokeCacheSecurityGroupIngress", input, options)
  end

  @doc """
  Start the migration of data.
  """
  def start_migration(client, input, options \\ []) do
    request(client, "StartMigration", input, options)
  end

  @doc """
  Represents the input of a `TestFailover` operation which test automatic
  failover on a specified node group (called shard in the console) in a
  replication group (called cluster in the console).

  <p class="title"> **Note the following**

  <ul> <li> A customer can use this operation to test automatic failover on
  up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in
  any rolling 24-hour period.

  </li> <li> If calling this operation on shards in different clusters
  (called replication groups in the API and CLI), the calls can be made
  concurrently.

  </li> <li> If calling this operation multiple times on different shards in
  the same Redis (cluster mode enabled) replication group, the first node
  replacement must complete before a subsequent call can be made.

  </li> <li> To determine whether the node replacement is complete you can
  check Events using the Amazon ElastiCache console, the AWS CLI, or the
  ElastiCache API. Look for the following automatic failover related events,
  listed here in order of occurrance:

  <ol> <li> Replication group message: `Test Failover API called for node
  group &lt;node-group-id&gt;`

  </li> <li> Cache cluster message: `Failover from master node
  &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed`

  </li> <li> Replication group message: `Failover from master node
  &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed`

  </li> <li> Cache cluster message: `Recovering cache nodes &lt;node-id&gt;`

  </li> <li> Cache cluster message: `Finished recovery for cache nodes
  &lt;node-id&gt;`

  </li> </ol> For more information see:

  <ul> <li> [Viewing ElastiCache
  Events](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html)
  in the *ElastiCache User Guide*

  </li> <li>
  [DescribeEvents](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html)
  in the ElastiCache API Reference

  </li> </ul> </li> </ul> Also see, [Testing Multi-AZ
  ](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test)
  in the *ElastiCache User Guide*.
  """
  def test_failover(client, input, options \\ []) do
    request(client, "TestFailover", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "elasticache"}
    host = build_host("elasticache", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2015-02-02"})
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
