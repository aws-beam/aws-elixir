# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DMS do
  @moduledoc """
  AWS Database Migration Service

  AWS Database Migration Service (AWS DMS) can migrate your data to and from
  the most widely used commercial and open-source databases such as Oracle,
  PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora,
  MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports
  homogeneous migrations such as Oracle to Oracle, as well as heterogeneous
  migrations between different database platforms, such as Oracle to MySQL or
  SQL Server to PostgreSQL.

  For more information about AWS DMS, see [What Is AWS Database Migration
  Service?](https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html) in
  the *AWS Database Migration User Guide.*
  """

  @doc """
  Adds metadata tags to an AWS DMS resource, including replication instance,
  endpoint, security group, and migration task. These tags can also be used
  with cost allocation reporting to track cost associated with DMS resources,
  or used in a Condition statement in an IAM policy for DMS.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a
  replication instance).
  """
  def apply_pending_maintenance_action(client, input, options \\ []) do
    request(client, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Creates an endpoint using the provided settings.
  """
  def create_endpoint(client, input, options \\ []) do
    request(client, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an AWS DMS event notification subscription.

  You can specify the type of source (`SourceType`) you want to be notified
  of, provide a list of AWS DMS source IDs (`SourceIds`) that triggers the
  events, and provide a list of event categories (`EventCategories`) for
  events you want to be notified of. If you specify both the `SourceType` and
  `SourceIds`, such as `SourceType = replication-instance` and
  `SourceIdentifier = my-replinstance`, you will be notified of all the
  replication instance events for the specified source. If you specify a
  `SourceType` but don't specify a `SourceIdentifier`, you receive notice of
  the events for that source type for all your AWS DMS sources. If you don't
  specify either `SourceType` nor `SourceIdentifier`, you will be notified of
  events generated from all AWS DMS sources belonging to your customer
  account.

  For more information about AWS DMS events, see [Working with Events and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *AWS Database Migration Service User Guide.*
  """
  def create_event_subscription(client, input, options \\ []) do
    request(client, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates the replication instance using the specified parameters.
  """
  def create_replication_instance(client, input, options \\ []) do
    request(client, "CreateReplicationInstance", input, options)
  end

  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.
  """
  def create_replication_subnet_group(client, input, options \\ []) do
    request(client, "CreateReplicationSubnetGroup", input, options)
  end

  @doc """
  Creates a replication task using the specified parameters.
  """
  def create_replication_task(client, input, options \\ []) do
    request(client, "CreateReplicationTask", input, options)
  end

  @doc """
  Deletes the specified certificate.
  """
  def delete_certificate(client, input, options \\ []) do
    request(client, "DeleteCertificate", input, options)
  end

  @doc """
  Deletes the specified endpoint.

  <note> All tasks associated with the endpoint must be deleted before you
  can delete the endpoint.

  </note> <p/>
  """
  def delete_endpoint(client, input, options \\ []) do
    request(client, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an AWS DMS event subscription.
  """
  def delete_event_subscription(client, input, options \\ []) do
    request(client, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes the specified replication instance.

  <note> You must delete any migration tasks that are associated with the
  replication instance before you can delete it.

  </note> <p/>
  """
  def delete_replication_instance(client, input, options \\ []) do
    request(client, "DeleteReplicationInstance", input, options)
  end

  @doc """
  Deletes a subnet group.
  """
  def delete_replication_subnet_group(client, input, options \\ []) do
    request(client, "DeleteReplicationSubnetGroup", input, options)
  end

  @doc """
  Deletes the specified replication task.
  """
  def delete_replication_task(client, input, options \\ []) do
    request(client, "DeleteReplicationTask", input, options)
  end

  @doc """
  Lists all of the AWS DMS attributes for a customer account. The attributes
  include AWS DMS quotas for the account, such as the number of replication
  instances allowed. The description for a quota includes the quota name,
  current usage toward that quota, and the quota's maximum value.

  This command does not take any parameters.
  """
  def describe_account_attributes(client, input, options \\ []) do
    request(client, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Provides a description of the certificate.
  """
  def describe_certificates(client, input, options \\ []) do
    request(client, "DescribeCertificates", input, options)
  end

  @doc """
  Describes the status of the connections that have been made between the
  replication instance and an endpoint. Connections are created when you test
  an endpoint.
  """
  def describe_connections(client, input, options \\ []) do
    request(client, "DescribeConnections", input, options)
  end

  @doc """
  Returns information about the type of endpoints available.
  """
  def describe_endpoint_types(client, input, options \\ []) do
    request(client, "DescribeEndpointTypes", input, options)
  end

  @doc """
  Returns information about the endpoints for your account in the current
  region.
  """
  def describe_endpoints(client, input, options \\ []) do
    request(client, "DescribeEndpoints", input, options)
  end

  @doc """
  Lists categories for all event source types, or, if specified, for a
  specified source type. You can see a list of the event categories and
  source types in [Working with Events and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *AWS Database Migration Service User Guide.*
  """
  def describe_event_categories(client, input, options \\ []) do
    request(client, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the event subscriptions for a customer account. The description
  of a subscription includes `SubscriptionName`, `SNSTopicARN`, `CustomerID`,
  `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify `SubscriptionName`, this action lists the description for
  that subscription.
  """
  def describe_event_subscriptions(client, input, options \\ []) do
    request(client, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Lists events for a given source identifier and source type. You can also
  specify a start and end time. For more information on AWS DMS events, see
  [Working with Events and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *AWS Database Migration User Guide.*
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about the replication instance types that can be
  created in the specified region.
  """
  def describe_orderable_replication_instances(client, input, options \\ []) do
    request(client, "DescribeOrderableReplicationInstances", input, options)
  end

  @doc """
  For internal use only
  """
  def describe_pending_maintenance_actions(client, input, options \\ []) do
    request(client, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Returns the status of the RefreshSchemas operation.
  """
  def describe_refresh_schemas_status(client, input, options \\ []) do
    request(client, "DescribeRefreshSchemasStatus", input, options)
  end

  @doc """
  Returns information about the task logs for the specified task.
  """
  def describe_replication_instance_task_logs(client, input, options \\ []) do
    request(client, "DescribeReplicationInstanceTaskLogs", input, options)
  end

  @doc """
  Returns information about replication instances for your account in the
  current region.
  """
  def describe_replication_instances(client, input, options \\ []) do
    request(client, "DescribeReplicationInstances", input, options)
  end

  @doc """
  Returns information about the replication subnet groups.
  """
  def describe_replication_subnet_groups(client, input, options \\ []) do
    request(client, "DescribeReplicationSubnetGroups", input, options)
  end

  @doc """
  Returns the task assessment results from Amazon S3. This action always
  returns the latest results.
  """
  def describe_replication_task_assessment_results(client, input, options \\ []) do
    request(client, "DescribeReplicationTaskAssessmentResults", input, options)
  end

  @doc """
  Returns information about replication tasks for your account in the current
  region.
  """
  def describe_replication_tasks(client, input, options \\ []) do
    request(client, "DescribeReplicationTasks", input, options)
  end

  @doc """
  Returns information about the schema for the specified endpoint.

  <p/>
  """
  def describe_schemas(client, input, options \\ []) do
    request(client, "DescribeSchemas", input, options)
  end

  @doc """
  Returns table statistics on the database migration task, including table
  name, rows inserted, rows updated, and rows deleted.

  Note that the "last updated" column the DMS console only indicates the time
  that AWS DMS last updated the table statistics record for a table. It does
  not indicate the time of the last update to the table.
  """
  def describe_table_statistics(client, input, options \\ []) do
    request(client, "DescribeTableStatistics", input, options)
  end

  @doc """
  Uploads the specified certificate.
  """
  def import_certificate(client, input, options \\ []) do
    request(client, "ImportCertificate", input, options)
  end

  @doc """
  Lists all tags for an AWS DMS resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the specified endpoint.
  """
  def modify_endpoint(client, input, options \\ []) do
    request(client, "ModifyEndpoint", input, options)
  end

  @doc """
  Modifies an existing AWS DMS event notification subscription.
  """
  def modify_event_subscription(client, input, options \\ []) do
    request(client, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modifies the replication instance to apply new settings. You can change one
  or more parameters by specifying these parameters and the new values in the
  request.

  Some settings are applied during the maintenance window.

  <p/>
  """
  def modify_replication_instance(client, input, options \\ []) do
    request(client, "ModifyReplicationInstance", input, options)
  end

  @doc """
  Modifies the settings for the specified replication subnet group.
  """
  def modify_replication_subnet_group(client, input, options \\ []) do
    request(client, "ModifyReplicationSubnetGroup", input, options)
  end

  @doc """
  Modifies the specified replication task.

  You can't modify the task endpoints. The task must be stopped before you
  can modify it.

  For more information about AWS DMS tasks, see [Working with Migration
  Tasks](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in
  the *AWS Database Migration Service User Guide*.
  """
  def modify_replication_task(client, input, options \\ []) do
    request(client, "ModifyReplicationTask", input, options)
  end

  @doc """
  Reboots a replication instance. Rebooting results in a momentary outage,
  until the replication instance becomes available again.
  """
  def reboot_replication_instance(client, input, options \\ []) do
    request(client, "RebootReplicationInstance", input, options)
  end

  @doc """
  Populates the schema for the specified endpoint. This is an asynchronous
  operation and can take several minutes. You can check the status of this
  operation by calling the DescribeRefreshSchemasStatus operation.
  """
  def refresh_schemas(client, input, options \\ []) do
    request(client, "RefreshSchemas", input, options)
  end

  @doc """
  Reloads the target database table with the source data.
  """
  def reload_tables(client, input, options \\ []) do
    request(client, "ReloadTables", input, options)
  end

  @doc """
  Removes metadata tags from a DMS resource.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Starts the replication task.

  For more information about AWS DMS tasks, see [Working with Migration Tasks
  ](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in the
  *AWS Database Migration Service User Guide.*
  """
  def start_replication_task(client, input, options \\ []) do
    request(client, "StartReplicationTask", input, options)
  end

  @doc """
  Starts the replication task assessment for unsupported data types in the
  source database.
  """
  def start_replication_task_assessment(client, input, options \\ []) do
    request(client, "StartReplicationTaskAssessment", input, options)
  end

  @doc """
  Stops the replication task.

  <p/>
  """
  def stop_replication_task(client, input, options \\ []) do
    request(client, "StopReplicationTask", input, options)
  end

  @doc """
  Tests the connection between the replication instance and the endpoint.
  """
  def test_connection(client, input, options \\ []) do
    request(client, "TestConnection", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "dms"}
    host = get_host("dms", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonDMSv20160101.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
