# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.OpsWorks.ChefAutomate do
  @moduledoc """
  AWS OpsWorks for Chef Automate

  A service that runs and manages configuration management servers.

  Glossary of terms

  <ul> <li> **Server**: A server is a configuration management server, and
  can be highly-available. The configuration manager runs on your instances
  by using various AWS services, such as Amazon Elastic Compute Cloud (EC2),
  and potentially Amazon Relational Database Service (RDS). A server is a
  generic abstraction over the configuration manager that you want to use,
  much like Amazon RDS. In AWS OpsWorks for Chef Automate, you do not start
  or stop servers. After you create servers, they continue to run until they
  are deleted.

  </li> <li> **Engine**: The specific configuration manager that you want to
  use (such as `Chef`) is the engine.

  </li> <li> **Backup**: This is an application-level backup of the data that
  the configuration manager stores. A backup creates a .tar.gz file that is
  stored in an Amazon Simple Storage Service (S3) bucket in your account. AWS
  OpsWorks for Chef Automate creates the S3 bucket when you launch the first
  instance. A backup maintains a snapshot of all of a server's important
  attributes at the time of the backup.

  </li> <li> **Events**: Events are always related to a server. Events are
  written during server creation, when health checks run, when backups are
  created, etc. When you delete a server, the server's events are also
  deleted.

  </li> <li> **AccountAttributes**: Every account has attributes that are
  assigned in the AWS OpsWorks for Chef Automate database. These attributes
  store information about configuration limits (servers, backups, etc.) and
  your customer account.

  </li> </ul> Throttling limits

  All API operations allow for 5 requests per second with a burst of 10
  requests per second.
  """

  @doc """

  """
  def associate_node(client, input, options \\ []) do
    request(client, "AssociateNode", input, options)
  end

  @doc """
  Creates an application-level backup of a server. While the server is
  `BACKING_UP`, the server can not be modified and no additional backup can
  be created.

  Backups can be created for `RUNNING`, `HEALTHY` and `UNHEALTHY` servers.

  This operation is asnychronous.

  By default 50 manual backups can be created.

  A `LimitExceededException` is thrown then the maximum number of manual
  backup is reached. A `InvalidStateException` is thrown when the server is
  not in any of RUNNING, HEALTHY, UNHEALTHY. A `ResourceNotFoundException` is
  thrown when the server is not found. A `ValidationException` is thrown when
  parameters of the request are not valid.
  """
  def create_backup(client, input, options \\ []) do
    request(client, "CreateBackup", input, options)
  end

  @doc """
  Creates and immedately starts a new Server. The server can be used once it
  has reached the `HEALTHY` state.

  This operation is asnychronous.

  A `LimitExceededException` is thrown then the maximum number of server
  backup is reached. A `ResourceAlreadyExistsException` is raise when a
  server with the same name already exists in the account. A
  `ResourceNotFoundException` is thrown when a backupId is passed, but the
  backup does not exist. A `ValidationException` is thrown when parameters of
  the request are not valid.

  By default 10 servers can be created. A `LimitExceededException` is raised
  when the limit is exceeded.

  When no security groups are provided by using `SecurityGroupIds`, AWS
  OpsWorks creates a new security group. This security group opens the Chef
  server to the world on TCP port 443. If a KeyName is present, SSH access is
  enabled. SSH is also open to the world on TCP port 22.

  By default, the Chef Server is accessible from any IP address. We recommend
  that you update your security group rules to allow access from known IP
  addresses and address ranges only. To edit security group rules, open
  Security Groups in the navigation pane of the EC2 management console.
  """
  def create_server(client, input, options \\ []) do
    request(client, "CreateServer", input, options)
  end

  @doc """
  Deletes a backup. You can delete both manual and automated backups.

  This operation is asynchronous.

  A `InvalidStateException` is thrown then a backup is already deleting. A
  `ResourceNotFoundException` is thrown when the backup does not exist. A
  `ValidationException` is thrown when parameters of the request are not
  valid.
  """
  def delete_backup(client, input, options \\ []) do
    request(client, "DeleteBackup", input, options)
  end

  @doc """
  Deletes the server and the underlying AWS CloudFormation stack (including
  the server's EC2 instance). The server status updated to `DELETING`. Once
  the server is successfully deleted, it will no longer be returned by
  `DescribeServer` requests. If the AWS CloudFormation stack cannot be
  deleted, the server cannot be deleted.

  This operation is asynchronous.

  A `InvalidStateException` is thrown then a server is already deleting. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are invalid.
  """
  def delete_server(client, input, options \\ []) do
    request(client, "DeleteServer", input, options)
  end

  @doc """
  Describes your account attributes, and creates requests to increase limits
  before they are reached or exceeded.

  This operation is synchronous.
  """
  def describe_account_attributes(client, input, options \\ []) do
    request(client, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes backups. The results are ordered by time, with newest backups
  first. If you do not specify a BackupId or ServerName, the command returns
  all backups.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the backup does not exist. A
  `ValidationException` is raised when parameters of the request are invalid.
  """
  def describe_backups(client, input, options \\ []) do
    request(client, "DescribeBackups", input, options)
  end

  @doc """
  Describes events for a specified server. Results are ordered by time, with
  newest events first.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are invalid.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """

  """
  def describe_node_association_status(client, input, options \\ []) do
    request(client, "DescribeNodeAssociationStatus", input, options)
  end

  @doc """
  Lists all configuration management servers that are identified with your
  account. Only the stored results from Amazon DynamoDB are returned. AWS
  OpsWorks for Chef Automate does not query other services.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are invalid.
  """
  def describe_servers(client, input, options \\ []) do
    request(client, "DescribeServers", input, options)
  end

  @doc """

  """
  def disassociate_node(client, input, options \\ []) do
    request(client, "DisassociateNode", input, options)
  end

  @doc """
  Restores a backup to a server that is in a `RUNNING`, `FAILED`, or
  `HEALTHY` state. When you run RestoreServer, the server's EC2 instance is
  deleted, and a new EC2 instance is configured. RestoreServer maintains the
  existing server endpoint, so configuration management of all of the
  server's client devices should continue to work.

  This operation is asynchronous.

  A `InvalidStateException` is thrown when the server is not in a valid
  state. A `ResourceNotFoundException` is thrown when the server does not
  exist. A `ValidationException` is raised when parameters of the request are
  invalid.
  """
  def restore_server(client, input, options \\ []) do
    request(client, "RestoreServer", input, options)
  end

  @doc """
  Manually starts server maintenance. This command can be useful if an
  earlier maintenance attempt failed, and the underlying cause of maintenance
  failure has been resolved. The server will switch to `UNDER_MAINTENANCE`
  state, while maintenace is in progress.

  Maintenace can only be started for `HEALTHY` and `UNHEALTHY` servers. A
  `InvalidStateException` is thrown otherwise. A `ResourceNotFoundException`
  is thrown when the server does not exist. A `ValidationException` is raised
  when parameters of the request are invalid.
  """
  def start_maintenance(client, input, options \\ []) do
    request(client, "StartMaintenance", input, options)
  end

  @doc """
  Updates settings for a server.

  This operation is synchronous.
  """
  def update_server(client, input, options \\ []) do
    request(client, "UpdateServer", input, options)
  end

  @doc """
  Updates engine specific attributes on a specified server. Server will enter
  the `MODIFYING` state when this operation is in progress. Only one update
  can take place at a time.

  This operation can be use to reset Chef Server main API key
  (`CHEF_PIVOTAL_KEY`).

  This operation is asynchronous.

  This operation can only be called for `HEALTHY` and `UNHEALTHY` servers.
  Otherwise a `InvalidStateException` is raised. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are invalid.
  """
  def update_server_engine_attributes(client, input, options \\ []) do
    request(client, "UpdateServerEngineAttributes", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "opsworks-cm"}
    host = get_host("opsworks-cm", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "OpsWorksCM_V2016_11_01.#{action}"}]
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
