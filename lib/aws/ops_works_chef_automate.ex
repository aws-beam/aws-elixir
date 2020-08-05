# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpsWorks.ChefAutomate do
  @moduledoc """
  AWS OpsWorks CM

  AWS OpsWorks for configuration management (CM) is a service that runs and
  manages configuration management servers. You can use AWS OpsWorks CM to
  create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks for
  Puppet Enterprise servers, and add or remove nodes for the servers to
  manage.

  **Glossary of terms**

  <ul> <li> **Server**: A configuration management server that can be
  highly-available. The configuration management server runs on an Amazon
  Elastic Compute Cloud (EC2) instance, and may use various other AWS
  services, such as Amazon Relational Database Service (RDS) and Elastic Load
  Balancing. A server is a generic abstraction over the configuration manager
  that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not
  start or stop servers. After you create servers, they continue to run until
  they are deleted.

  </li> <li> **Engine**: The engine is the specific configuration manager
  that you want to use. Valid values in this release include `ChefAutomate`
  and `Puppet`.

  </li> <li> **Backup**: This is an application-level backup of the data that
  the configuration manager stores. AWS OpsWorks CM creates an S3 bucket for
  backups when you launch the first server. A backup maintains a snapshot of
  a server's configuration-related attributes at the time the backup starts.

  </li> <li> **Events**: Events are always related to a server. Events are
  written during server creation, when health checks run, when backups are
  created, when system maintenance is performed, etc. When you delete a
  server, the server's events are also deleted.

  </li> <li> **Account attributes**: Every account has attributes that are
  assigned in the AWS OpsWorks CM database. These attributes store
  information about configuration limits (servers, backups, etc.) and your
  customer account.

  </li> </ul> **Endpoints**

  AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
  connect to one of the following endpoints. Your servers can only be
  accessed or managed within the endpoint in which they are created.

  <ul> <li> opsworks-cm.us-east-1.amazonaws.com

  </li> <li> opsworks-cm.us-east-2.amazonaws.com

  </li> <li> opsworks-cm.us-west-1.amazonaws.com

  </li> <li> opsworks-cm.us-west-2.amazonaws.com

  </li> <li> opsworks-cm.ap-northeast-1.amazonaws.com

  </li> <li> opsworks-cm.ap-southeast-1.amazonaws.com

  </li> <li> opsworks-cm.ap-southeast-2.amazonaws.com

  </li> <li> opsworks-cm.eu-central-1.amazonaws.com

  </li> <li> opsworks-cm.eu-west-1.amazonaws.com

  </li> </ul> For more information, see [AWS OpsWorks endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html)
  in the AWS General Reference.

  **Throttling limits**

  All API operations allow for five requests per second with a burst of 10
  requests per second.
  """

  @doc """
  Associates a new node with the server. For more information about how to
  disassociate a node, see `DisassociateNode`.

  On a Chef server: This command is an alternative to `knife bootstrap`.

  Example (Chef): `aws opsworks-cm associate-node --server-name *MyServer*
  --node-name *MyManagedNode* --engine-attributes
  "Name=*CHEF_ORGANIZATION*,Value=default"
  "Name=*CHEF_NODE_PUBLIC_KEY*,Value=*public-key-pem*"`

  On a Puppet server, this command is an alternative to the `puppet cert
  sign` command that signs a Puppet node CSR.

  Example (Puppet): `aws opsworks-cm associate-node --server-name *MyServer*
  --node-name *MyManagedNode* --engine-attributes
  "Name=*PUPPET_NODE_CSR*,Value=*csr-pem*"`

  A node can can only be associated with servers that are in a `HEALTHY`
  state. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid. The AssociateNode API call can be integrated into Auto Scaling
  configurations, AWS Cloudformation templates, or the user data of a
  server's instance.
  """
  def associate_node(client, input, options \\ []) do
    request(client, "AssociateNode", input, options)
  end

  @doc """
  Creates an application-level backup of a server. While the server is in the
  `BACKING_UP` state, the server cannot be changed, and no additional backup
  can be created.

  Backups can be created for servers in `RUNNING`, `HEALTHY`, and `UNHEALTHY`
  states. By default, you can create a maximum of 50 manual backups.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when the maximum number of manual
  backups is reached. An `InvalidStateException` is thrown when the server is
  not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A
  `ResourceNotFoundException` is thrown when the server is not found. A
  `ValidationException` is thrown when parameters of the request are not
  valid.
  """
  def create_backup(client, input, options \\ []) do
    request(client, "CreateBackup", input, options)
  end

  @doc """
  Creates and immedately starts a new server. The server is ready to use when
  it is in the `HEALTHY` state. By default, you can create a maximum of 10
  servers.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when you have created the maximum
  number of servers (10). A `ResourceAlreadyExistsException` is thrown when a
  server with the same name already exists in the account. A
  `ResourceNotFoundException` is thrown when you specify a backup ID that is
  not valid or is for a backup that does not exist. A `ValidationException`
  is thrown when parameters of the request are not valid.

  If you do not specify a security group by adding the `SecurityGroupIds`
  parameter, AWS OpsWorks creates a new security group.

  *Chef Automate:* The default security group opens the Chef server to the
  world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH
  access. SSH is also open to the world on TCP port 22.

  *Puppet Enterprise:* The default security group opens TCP ports 22, 443,
  4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks
  enables SSH access. SSH is also open to the world on TCP port 22.

  By default, your server is accessible from any IP address. We recommend
  that you update your security group rules to allow access from known IP
  addresses and address ranges only. To edit security group rules, open
  Security Groups in the navigation pane of the EC2 management console.

  To specify your own domain for a server, and provide your own self-signed
  or CA-signed certificate and private key, specify values for
  `CustomDomain`, `CustomCertificate`, and `CustomPrivateKey`.
  """
  def create_server(client, input, options \\ []) do
    request(client, "CreateServer", input, options)
  end

  @doc """
  Deletes a backup. You can delete both manual and automated backups. This
  operation is asynchronous.

  An `InvalidStateException` is thrown when a backup deletion is already in
  progress. A `ResourceNotFoundException` is thrown when the backup does not
  exist. A `ValidationException` is thrown when parameters of the request are
  not valid.
  """
  def delete_backup(client, input, options \\ []) do
    request(client, "DeleteBackup", input, options)
  end

  @doc """
  Deletes the server and the underlying AWS CloudFormation stacks (including
  the server's EC2 instance). When you run this command, the server state is
  updated to `DELETING`. After the server is deleted, it is no longer
  returned by `DescribeServer` requests. If the AWS CloudFormation stack
  cannot be deleted, the server cannot be deleted.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when a server deletion is already in
  progress. A `ResourceNotFoundException` is thrown when the server does not
  exist. A `ValidationException` is raised when parameters of the request are
  not valid.
  """
  def delete_server(client, input, options \\ []) do
    request(client, "DeleteServer", input, options)
  end

  @doc """
  Describes your OpsWorks-CM account attributes.

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
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_backups(client, input, options \\ []) do
    request(client, "DescribeBackups", input, options)
  end

  @doc """
  Describes events for a specified server. Results are ordered by time, with
  newest events first.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns the current status of an existing association or disassociation
  request.

  A `ResourceNotFoundException` is thrown when no recent association or
  disassociation request with the specified token is found, or when the
  server does not exist. A `ValidationException` is raised when parameters of
  the request are not valid.
  """
  def describe_node_association_status(client, input, options \\ []) do
    request(client, "DescribeNodeAssociationStatus", input, options)
  end

  @doc """
  Lists all configuration management servers that are identified with your
  account. Only the stored results from Amazon DynamoDB are returned. AWS
  OpsWorks CM does not query other services.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_servers(client, input, options \\ []) do
    request(client, "DescribeServers", input, options)
  end

  @doc """
  Disassociates a node from an AWS OpsWorks CM server, and removes the node
  from the server's managed nodes. After a node is disassociated, the node
  key pair is no longer valid for accessing the configuration manager's API.
  For more information about how to associate a node, see `AssociateNode`.

  A node can can only be disassociated from a server that is in a `HEALTHY`
  state. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def disassociate_node(client, input, options \\ []) do
    request(client, "DisassociateNode", input, options)
  end

  @doc """
  Exports a specified server engine attribute as a base64-encoded string. For
  example, you can export user data that you can use in EC2 to associate
  nodes with a server.

  This operation is synchronous.

  A `ValidationException` is raised when parameters of the request are not
  valid. A `ResourceNotFoundException` is thrown when the server does not
  exist. An `InvalidStateException` is thrown when the server is in any of
  the following states: CREATING, TERMINATED, FAILED or DELETING.
  """
  def export_server_engine_attribute(client, input, options \\ []) do
    request(client, "ExportServerEngineAttribute", input, options)
  end

  @doc """
  Returns a list of tags that are applied to the specified AWS OpsWorks for
  Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Restores a backup to a server that is in a `CONNECTION_LOST`, `HEALTHY`,
  `RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run RestoreServer,
  the server's EC2 instance is deleted, and a new EC2 instance is configured.
  RestoreServer maintains the existing server endpoint, so configuration
  management of the server's client devices (nodes) should continue to work.

  Restoring from a backup is performed by creating a new EC2 instance. If
  restoration is successful, and the server is in a `HEALTHY` state, AWS
  OpsWorks CM switches traffic over to the new instance. After restoration is
  finished, the old EC2 instance is maintained in a `Running` or `Stopped`
  state, but is eventually terminated.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when the server is not in a valid
  state. A `ResourceNotFoundException` is thrown when the server does not
  exist. A `ValidationException` is raised when parameters of the request are
  not valid.
  """
  def restore_server(client, input, options \\ []) do
    request(client, "RestoreServer", input, options)
  end

  @doc """
  Manually starts server maintenance. This command can be useful if an
  earlier maintenance attempt failed, and the underlying cause of maintenance
  failure has been resolved. The server is in an `UNDER_MAINTENANCE` state
  while maintenance is in progress.

  Maintenance can only be started on servers in `HEALTHY` and `UNHEALTHY`
  states. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def start_maintenance(client, input, options \\ []) do
    request(client, "StartMaintenance", input, options)
  end

  @doc """
  Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for
  Puppet Enterprise server, or to server backups.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes specified tags from an AWS OpsWorks-CM server or backup.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates settings for a server.

  This operation is synchronous.
  """
  def update_server(client, input, options \\ []) do
    request(client, "UpdateServer", input, options)
  end

  @doc """
  Updates engine-specific attributes on a specified server. The server enters
  the `MODIFYING` state when this operation is in progress. Only one update
  can occur at a time. You can use this command to reset a Chef server's
  public key (`CHEF_PIVOTAL_KEY`) or a Puppet server's admin password
  (`PUPPET_ADMIN_PASSWORD`).

  This operation is asynchronous.

  This operation can only be called for servers in `HEALTHY` or `UNHEALTHY`
  states. Otherwise, an `InvalidStateException` is raised. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def update_server_engine_attributes(client, input, options \\ []) do
    request(client, "UpdateServerEngineAttributes", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "opsworks-cm"}
    host = get_host("opsworks-cm", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "OpsWorksCM_V2016_11_01.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
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
