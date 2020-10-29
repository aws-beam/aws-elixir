# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDB do
  @moduledoc """
  Amazon DocumentDB API documentation
  """

  @doc """
  Adds metadata tags to an Amazon DocumentDB resource. You can use these tags
  with cost allocation reporting to track costs that are associated with
  Amazon DocumentDB resources. or in a `Condition` statement in an AWS
  Identity and Access Management (IAM) policy for Amazon DocumentDB.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to an
  Amazon DocumentDB instance).
  """
  def apply_pending_maintenance_action(client, input, options \\ []) do
    request(client, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified cluster parameter group.
  """
  def copy_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a cluster.

  To copy a cluster snapshot from a shared manual cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN)
  of the shared cluster snapshot. You can only copy a shared DB cluster
  snapshot, whether encrypted or not, in the same AWS Region.

  To cancel the copy operation after it is in progress, delete the target
  cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while
  that cluster snapshot is in the *copying* status.
  """
  def copy_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new Amazon DocumentDB cluster.
  """
  def create_d_b_cluster(client, input, options \\ []) do
    request(client, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new cluster parameter group.

  Parameters in a cluster parameter group apply to all of the instances in a
  cluster.

  A cluster parameter group is initially created with the default parameters
  for the database engine used by instances in the cluster. In Amazon
  DocumentDB, you cannot make modifications directly to the
  `default.docdb3.6` cluster parameter group. If your Amazon DocumentDB
  cluster is using the default cluster parameter group and you want to modify
  a value in it, you must first [ create a new parameter
  group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html)
  or [ copy an existing parameter
  group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html),
  modify it, and then apply the modified parameter group to your cluster. For
  the new cluster parameter group and associated settings to take effect, you
  must then reboot the instances in the cluster without failover. For more
  information, see [ Modifying Amazon DocumentDB Cluster Parameter
  Groups](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html).
  """
  def create_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a cluster.
  """
  def create_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new instance.
  """
  def create_d_b_instance(client, input, options \\ []) do
    request(client, "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new subnet group. subnet groups must contain at least one subnet
  in at least two Availability Zones in the AWS Region.
  """
  def create_d_b_subnet_group(client, input, options \\ []) do
    request(client, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster. When you delete a cluster, all
  automated backups for that cluster are deleted and can't be recovered.
  Manual DB cluster snapshots of the specified cluster are not deleted.

  <p/>
  """
  def delete_d_b_cluster(client, input, options \\ []) do
    request(client, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a specified cluster parameter group. The cluster parameter group to
  be deleted can't be associated with any clusters.
  """
  def delete_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a cluster snapshot. If the snapshot is being copied, the copy
  operation is terminated.

  <note> The cluster snapshot must be in the `available` state to be deleted.

  </note>
  """
  def delete_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  Deletes a previously provisioned instance.
  """
  def delete_d_b_instance(client, input, options \\ []) do
    request(client, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a subnet group.

  <note> The specified database subnet group must not be associated with any
  DB instances.

  </note>
  """
  def delete_d_b_subnet_group(client, input, options \\ []) do
    request(client, "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Returns a list of certificate authority (CA) certificates provided by
  Amazon DocumentDB for this AWS account.
  """
  def describe_certificates(client, input, options \\ []) do
    request(client, "DescribeCertificates", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions. If a
  `DBClusterParameterGroupName` parameter is specified, the list contains
  only the description of the specified cluster parameter group.
  """
  def describe_d_b_cluster_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular cluster parameter
  group.
  """
  def describe_d_b_cluster_parameters(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of cluster snapshot attribute names and values for a manual
  DB cluster snapshot.

  When you share snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a
  list of IDs for the AWS accounts that are authorized to copy or restore the
  manual cluster snapshot. If `all` is included in the list of values for the
  `restore` attribute, then the manual cluster snapshot is public and can be
  copied or restored by all AWS accounts.
  """
  def describe_d_b_cluster_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about cluster snapshots. This API operation supports
  pagination.
  """
  def describe_d_b_cluster_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB clusters. This API
  operation supports pagination. For certain management features such as
  cluster and instance lifecycle management, Amazon DocumentDB leverages
  operational technology that is shared with Amazon RDS and Amazon Neptune.
  Use the `filterName=engine,Values=docdb` filter parameter to return only
  Amazon DocumentDB clusters.
  """
  def describe_d_b_clusters(client, input, options \\ []) do
    request(client, "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available engines.
  """
  def describe_d_b_engine_versions(client, input, options \\ []) do
    request(client, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB instances. This API
  supports pagination.
  """
  def describe_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBSubnetGroup` descriptions. If a `DBSubnetGroupName` is
  specified, the list will contain only the descriptions of the specified
  `DBSubnetGroup`.
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
  Displays a list of categories for all event source types, or, if specified,
  for a specified source type.
  """
  def describe_event_categories(client, input, options \\ []) do
    request(client, "DescribeEventCategories", input, options)
  end

  @doc """
  Returns events related to instances, security groups, snapshots, and DB
  parameter groups for the past 14 days. You can obtain events specific to a
  particular DB instance, security group, snapshot, or parameter group by
  providing the name as a parameter. By default, the events of the past hour
  are returned.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of orderable instance options for the specified engine.
  """
  def describe_orderable_d_b_instance_options(client, input, options \\ []) do
    request(client, "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, instances) that have at least one
  pending maintenance action.
  """
  def describe_pending_maintenance_actions(client, input, options \\ []) do
    request(client, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Forces a failover for a cluster.

  A failover for a cluster promotes one of the Amazon DocumentDB replicas
  (read-only instances) in the cluster to be the primary instance (the
  cluster writer).

  If the primary instance fails, Amazon DocumentDB automatically fails over
  to an Amazon DocumentDB replica, if one exists. You can force a failover
  when you want to simulate a failure of a primary instance for testing.
  """
  def failover_d_b_cluster(client, input, options \\ []) do
    request(client, "FailoverDBCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon DocumentDB resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies a setting for an Amazon DocumentDB cluster. You can change one or
  more database configuration parameters by specifying these parameters and
  the new values in the request.
  """
  def modify_d_b_cluster(client, input, options \\ []) do
    request(client, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group. To modify more than
  one parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot or maintenance window before the change
  can take effect.

  </note> <important> After you create a cluster parameter group, you should
  wait at least 5 minutes before creating your first cluster that uses that
  cluster parameter group as the default parameter group. This allows Amazon
  DocumentDB to fully complete the create action before the parameter group
  is used as the default for a new cluster. This step is especially important
  for parameters that are critical when creating the default database for a
  cluster, such as the character set for the default database defined by the
  `character_set_database` parameter.

  </important>
  """
  def modify_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual cluster snapshot with other AWS accounts, specify
  `restore` as the `AttributeName`, and use the `ValuesToAdd` parameter to
  add a list of IDs of the AWS accounts that are authorized to restore the
  manual cluster snapshot. Use the value `all` to make the manual cluster
  snapshot public, which means that it can be copied or restored by all AWS
  accounts. Do not add the `all` value for any manual DB cluster snapshots
  that contain private information that you don't want available to all AWS
  accounts. If a manual cluster snapshot is encrypted, it can be shared, but
  only by specifying a list of authorized AWS account IDs for the
  `ValuesToAdd` parameter. You can't use `all` as a value for that parameter
  in this case.
  """
  def modify_d_b_cluster_snapshot_attribute(client, input, options \\ []) do
    request(client, "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for an instance. You can change one or more database
  configuration parameters by specifying these parameters and the new values
  in the request.
  """
  def modify_d_b_instance(client, input, options \\ []) do
    request(client, "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies an existing subnet group. subnet groups must contain at least one
  subnet in at least two Availability Zones in the AWS Region.
  """
  def modify_d_b_subnet_group(client, input, options \\ []) do
    request(client, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  You might need to reboot your instance, usually for maintenance reasons.
  For example, if you make certain changes, or if you change the cluster
  parameter group that is associated with the instance, you must reboot the
  instance for the changes to take effect.

  Rebooting an instance restarts the database engine service. Rebooting an
  instance results in a momentary outage, during which the instance status is
  set to *rebooting*.
  """
  def reboot_d_b_instance(client, input, options \\ []) do
    request(client, "RebootDBInstance", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon DocumentDB resource.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group to the default value.
  To reset specific parameters, submit a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire cluster parameter
  group, specify the `DBClusterParameterGroupName` and `ResetAllParameters`
  parameters.

  When you reset the entire group, dynamic parameters are updated immediately
  and static parameters are set to `pending-reboot` to take effect on the
  next DB instance reboot.
  """
  def reset_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a new cluster from a snapshot or cluster snapshot.

  If a snapshot is specified, the target cluster is created from the source
  DB snapshot with a default configuration and default security group.

  If a cluster snapshot is specified, the target cluster is created from the
  source cluster restore point with the same configuration as the original
  source DB cluster, except that the new cluster is created with the default
  security group.
  """
  def restore_d_b_cluster_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a cluster to an arbitrary point in time. Users can restore to any
  point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target cluster is created from the source
  cluster with the same configuration as the original cluster, except that
  the new cluster is created with the default security group.
  """
  def restore_d_b_cluster_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Restarts the stopped cluster that is specified by `DBClusterIdentifier`.
  For more information, see [Stopping and Starting an Amazon DocumentDB
  Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
  """
  def start_d_b_cluster(client, input, options \\ []) do
    request(client, "StartDBCluster", input, options)
  end

  @doc """
  Stops the running cluster that is specified by `DBClusterIdentifier`. The
  cluster must be in the *available* state. For more information, see
  [Stopping and Starting an Amazon DocumentDB
  Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
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
    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :query)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :xml)
  end
end
