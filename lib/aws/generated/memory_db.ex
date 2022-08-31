# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MemoryDB do
  @moduledoc """
  MemoryDB for Redis is a fully managed, Redis-compatible, in-memory database that
  delivers ultra-fast performance and Multi-AZ durability for modern applications
  built using microservices architectures.

  MemoryDB stores the entire database in-memory, enabling low latency and high
  throughput data access. It is compatible with Redis, a popular open source data
  store, enabling you to leverage Redis’ flexible and friendly data structures,
  APIs, and commands.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Amazon MemoryDB",
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "memory-db",
      global?: false,
      protocol: "json",
      service_id: "MemoryDB",
      signature_version: "v4",
      signing_name: "memorydb",
      target_prefix: "AmazonMemoryDB"
    }
  end

  @doc """
  Apply the service update to a list of clusters supplied.

  For more information on service updates and applying them, see [Applying the service
  updates](https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates).
  """
  def batch_update_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchUpdateCluster", input, options)
  end

  @doc """
  Makes a copy of an existing snapshot.
  """
  def copy_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopySnapshot", input, options)
  end

  @doc """
  Creates an Access Control List.

  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  def create_acl(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateACL", input, options)
  end

  @doc """
  Creates a cluster.

  All nodes in the cluster run the same protocol-compliant engine software.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCluster", input, options)
  end

  @doc """
  Creates a new MemoryDB parameter group.

  A parameter group is a collection of parameters and their values that are
  applied to all of the nodes in any cluster. For more information, see
  [Configuring engine parameters using parameter groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html).
  """
  def create_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateParameterGroup", input, options)
  end

  @doc """
  Creates a copy of an entire cluster at a specific moment in time.
  """
  def create_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSnapshot", input, options)
  end

  @doc """
  Creates a subnet group.

  A subnet group is a collection of subnets (typically private) that you can
  designate for your clusters running in an Amazon Virtual Private Cloud (VPC)
  environment. When you create a cluster in an Amazon VPC, you must specify a
  subnet group. MemoryDB uses that subnet group to choose a subnet and IP
  addresses within that subnet to associate with your nodes. For more information,
  see [Subnets and subnet groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html).
  """
  def create_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSubnetGroup", input, options)
  end

  @doc """
  Creates a MemoryDB user.

  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  def create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUser", input, options)
  end

  @doc """
  Deletes an Access Control List.

  The ACL must first be disassociated from the cluster before it can be deleted.
  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  def delete_acl(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteACL", input, options)
  end

  @doc """
  Deletes a cluster.

  It also deletes all associated nodes and node endpoints
  """
  def delete_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified parameter group.

  You cannot delete a parameter group if it is associated with any clusters. You
  cannot delete the default parameter groups in your account.
  """
  def delete_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteParameterGroup", input, options)
  end

  @doc """
  Deletes an existing snapshot.

  When you receive a successful response from this operation, MemoryDB immediately
  begins deleting the snapshot; you cannot cancel or revert this operation.
  """
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes a subnet group.

  You cannot delete a default subnet group or one that is associated with any
  clusters.
  """
  def delete_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSubnetGroup", input, options)
  end

  @doc """
  Deletes a user.

  The user will be removed from all ACLs and in turn removed from all clusters.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Returns a list of ACLs
  """
  def describe_acls(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeACLs", input, options)
  end

  @doc """
  Returns information about all provisioned clusters if no cluster identifier is
  specified, or about a specific cluster if a cluster name is supplied.
  """
  def describe_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeClusters", input, options)
  end

  @doc """
  Returns a list of the available Redis engine versions.
  """
  def describe_engine_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEngineVersions", input, options)
  end

  @doc """
  Returns events related to clusters, security groups, and parameter groups.

  You can obtain events specific to a particular cluster, security group, or
  parameter group by providing the name as a parameter. By default, only the
  events occurring within the last hour are returned; however, you can retrieve up
  to 14 days' worth of events if necessary.
  """
  def describe_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of parameter group descriptions.

  If a parameter group name is specified, the list contains only the descriptions
  for that group.
  """
  def describe_parameter_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular parameter group.
  """
  def describe_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeParameters", input, options)
  end

  @doc """
  Returns details of the service updates
  """
  def describe_service_updates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeServiceUpdates", input, options)
  end

  @doc """
  Returns information about cluster snapshots.

  By default, DescribeSnapshots lists all of your snapshots; it can optionally
  describe a single snapshot, or just the snapshots associated with a particular
  cluster.
  """
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSnapshots", input, options)
  end

  @doc """
  Returns a list of subnet group descriptions.

  If a subnet group name is specified, the list contains only the description of
  that group.
  """
  def describe_subnet_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubnetGroups", input, options)
  end

  @doc """
  Returns a list of users.
  """
  def describe_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUsers", input, options)
  end

  @doc """
  Used to failover a shard
  """
  def failover_shard(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FailoverShard", input, options)
  end

  @doc """
  Lists all available node types that you can scale to from your cluster's current
  node type.

  When you use the UpdateCluster operation to scale your cluster, the value of the
  NodeType parameter must be one of the node types returned by this operation.
  """
  def list_allowed_node_type_updates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAllowedNodeTypeUpdates", input, options)
  end

  @doc """
  Lists all tags currently on a named resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use tags to categorize and track your MemoryDB resources. For more information,
  see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html)
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTags", input, options)
  end

  @doc """
  Modifies the parameters of a parameter group to the engine or system default
  value.

  You can reset specific parameters by submitting a list of parameter names. To
  reset the entire parameter group, specify the AllParameters and
  ParameterGroupName parameters.
  """
  def reset_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetParameterGroup", input, options)
  end

  @doc """
  A tag is a key-value pair where the key and value are case-sensitive.

  You can use tags to categorize and track all your MemoryDB resources. When you
  add or remove tags on clusters, those actions will be replicated to all nodes in
  the cluster. For more information, see [Resource-level permissions](https://docs.aws.amazon.com/MemoryDB/latest/devguide/iam.resourcelevelpermissions.html).

  For example, you can use cost-allocation tags to your MemoryDB resources, Amazon
  generates a cost allocation report as a comma-separated value (CSV) file with
  your usage and costs aggregated by your tags. You can apply tags that represent
  business categories (such as cost centers, application names, or owners) to
  organize your costs across multiple services. For more information, see [Using Cost Allocation
  Tags](https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Use this operation to remove tags on a resource
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Changes the list of users that belong to the Access Control List.
  """
  def update_acl(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateACL", input, options)
  end

  @doc """
  Modifies the settings for a cluster.

  You can use this operation to change one or more cluster configuration settings
  by specifying the settings and the new values.
  """
  def update_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCluster", input, options)
  end

  @doc """
  Updates the parameters of a parameter group.

  You can modify up to 20 parameters in a single request by submitting a list
  parameter name and value pairs.
  """
  def update_parameter_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateParameterGroup", input, options)
  end

  @doc """
  Updates a subnet group.

  For more information, see [Updating a subnet group](https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html)
  """
  def update_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSubnetGroup", input, options)
  end

  @doc """
  Changes user password(s) and/or access string.
  """
  def update_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUser", input, options)
  end
end
