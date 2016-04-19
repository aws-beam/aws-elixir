# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DMS do
  @moduledoc """
  AWS Database Migration Service

  AWS Database Migration Service (AWS DMS) can migrate your data to and from
  the most widely used commercial and open-source databases such as Oracle,
  PostgreSQL, Microsoft SQL Server, MariaDB, Amazon Aurora, and MySQL. The
  service supports homogeneous migrations such as Oracle to Oracle, as well
  as heterogeneous migrations between different database platforms, such as
  Oracle to MySQL or SQL Server to PostgreSQL.
  """

  @doc """
  Adds metadata tags to a DMS resource, including replication instance,
  endpoint, security group, and migration task. These tags can also be used
  with cost allocation reporting to track cost associated with DMS resources,
  or used in a Condition statement in an IAM policy for DMS.

  <note/><p/>
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Creates an endpoint using the provided settings.

  <note/><p/>
  """
  def create_endpoint(client, input, options \\ []) do
    request(client, "CreateEndpoint", input, options)
  end

  @doc """
  Creates the replication instance using the specified parameters.

  <note/><p/>
  """
  def create_replication_instance(client, input, options \\ []) do
    request(client, "CreateReplicationInstance", input, options)
  end

  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.

  <note/><p/>
  """
  def create_replication_subnet_group(client, input, options \\ []) do
    request(client, "CreateReplicationSubnetGroup", input, options)
  end

  @doc """
  Creates a replication task using the specified parameters.

  <note/><p/>
  """
  def create_replication_task(client, input, options \\ []) do
    request(client, "CreateReplicationTask", input, options)
  end

  @doc """
  Deletes the specified endpoint.

  <note>All tasks associated with the endpoint must be deleted before you can
  delete the endpoint.</note><p/>
  """
  def delete_endpoint(client, input, options \\ []) do
    request(client, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes the specified replication instance.

  <note>You must delete any migration tasks that are associated with the
  replication instance before you can delete it.</note><p/>
  """
  def delete_replication_instance(client, input, options \\ []) do
    request(client, "DeleteReplicationInstance", input, options)
  end

  @doc """
  Deletes a subnet group.

  <note/><p/>
  """
  def delete_replication_subnet_group(client, input, options \\ []) do
    request(client, "DeleteReplicationSubnetGroup", input, options)
  end

  @doc """
  Deletes the specified replication task.

  <note/><p/>
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

  <note/><p/>
  """
  def describe_account_attributes(client, input, options \\ []) do
    request(client, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes the status of the connections that have been made between the
  replication instance and an endpoint. Connections are created when you test
  an endpoint.

  <note/><p/>
  """
  def describe_connections(client, input, options \\ []) do
    request(client, "DescribeConnections", input, options)
  end

  @doc """
  Returns information about the type of endpoints available.

  <note/> <p/>
  """
  def describe_endpoint_types(client, input, options \\ []) do
    request(client, "DescribeEndpointTypes", input, options)
  end

  @doc """
  Returns information about the endpoints for your account in the current
  region.

  <note/><p/>
  """
  def describe_endpoints(client, input, options \\ []) do
    request(client, "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the replication instance types that can be
  created in the specified region.

  <note/><p/>
  """
  def describe_orderable_replication_instances(client, input, options \\ []) do
    request(client, "DescribeOrderableReplicationInstances", input, options)
  end

  @doc """
  Returns the status of the RefreshSchemas operation.

  <note/><p/>
  """
  def describe_refresh_schemas_status(client, input, options \\ []) do
    request(client, "DescribeRefreshSchemasStatus", input, options)
  end

  @doc """
  Returns information about replication instances for your account in the
  current region.

  <note/><p/>
  """
  def describe_replication_instances(client, input, options \\ []) do
    request(client, "DescribeReplicationInstances", input, options)
  end

  @doc """
  Returns information about the replication subnet groups.

  <note/><p/>
  """
  def describe_replication_subnet_groups(client, input, options \\ []) do
    request(client, "DescribeReplicationSubnetGroups", input, options)
  end

  @doc """
  Returns information about replication tasks for your account in the current
  region.

  <note/><p/>
  """
  def describe_replication_tasks(client, input, options \\ []) do
    request(client, "DescribeReplicationTasks", input, options)
  end

  @doc """
  Returns information about the schema for the specified endpoint.

  <note/><p/>
  """
  def describe_schemas(client, input, options \\ []) do
    request(client, "DescribeSchemas", input, options)
  end

  @doc """
  Returns table statistics on the database migration task, including table
  name, rows inserted, rows updated, and rows deleted.

  <note/><p/>
  """
  def describe_table_statistics(client, input, options \\ []) do
    request(client, "DescribeTableStatistics", input, options)
  end

  @doc """
  Lists all tags for an AWS DMS resource.

  <note/><p/>
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the specified endpoint.

  <note/><p/>
  """
  def modify_endpoint(client, input, options \\ []) do
    request(client, "ModifyEndpoint", input, options)
  end

  @doc """
  Modifies the replication instance to apply new settings. You can change one
  or more parameters by specifying these parameters and the new values in the
  request.

  <note>Some settings are applied during the maintenance window.</note><p/>
  <p/>
  """
  def modify_replication_instance(client, input, options \\ []) do
    request(client, "ModifyReplicationInstance", input, options)
  end

  @doc """
  Modifies the settings for the specified replication subnet group.

  <note/><p/>
  """
  def modify_replication_subnet_group(client, input, options \\ []) do
    request(client, "ModifyReplicationSubnetGroup", input, options)
  end

  @doc """
  Populates the schema for the specified endpoint. This is an asynchronous
  operation and can take several minutes. You can check the status of this
  operation by calling the DescribeRefreshSchemasStatus operation.

  <note/><p/>
  """
  def refresh_schemas(client, input, options \\ []) do
    request(client, "RefreshSchemas", input, options)
  end

  @doc """
  Removes metadata tags from a DMS resource.

  <note/><p/>
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Starts the replication task.

  <note/><p/>
  """
  def start_replication_task(client, input, options \\ []) do
    request(client, "StartReplicationTask", input, options)
  end

  @doc """
  Stops the replication task.

  <note/><p/>
  """
  def stop_replication_task(client, input, options \\ []) do
    request(client, "StopReplicationTask", input, options)
  end

  @doc """
  Tests the connection between the replication instance and the endpoint.

  <note/><p/>
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
