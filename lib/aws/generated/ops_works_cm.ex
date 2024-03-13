# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpsWorksCM do
  @moduledoc """
  AWS OpsWorks CM

  AWS OpsWorks for configuration management (CM) is a service that runs and
  manages
  configuration management servers.

  You can use AWS OpsWorks CM to create and manage AWS
  OpsWorks for Chef Automate and AWS OpsWorks for Puppet Enterprise servers, and
  add or remove
  nodes for the servers to manage.

  ## Glossary of terms

    *

  **Server**: A configuration management server that can be
  highly-available. The configuration management server runs on
  an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS
  services, such as Amazon Relational
  Database Service (RDS) and Elastic Load Balancing. A server is a generic
  abstraction over the configuration
  manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do
  not start
  or stop servers. After you create servers, they continue to run until they are
  deleted.

    *

  **Engine**: The engine is the specific configuration manager
  that you want to use. Valid values in this release include `ChefAutomate` and
  `Puppet`.

    *

  **Backup**: This
  is an application-level backup of the data that the configuration manager
  stores. AWS OpsWorks CM
  creates an S3 bucket for backups when you launch the first
  server. A backup maintains a snapshot of a server's configuration-related
  attributes at the time the backup starts.

    *

  **Events**:
  Events are always related to a server. Events are written
  during server creation, when health checks run, when backups
  are created, when system maintenance is performed, etc. When you delete a
  server, the server's events are
  also deleted.

    *

  **Account attributes**:
  Every account has attributes that are assigned in the AWS OpsWorks CM
  database. These attributes store information about configuration limits
  (servers,
  backups, etc.) and your customer account.

  ## Endpoints

  AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to
  one of the following endpoints. Your servers
  can only be accessed or managed within the endpoint in which they are created.

    *
  opsworks-cm.us-east-1.amazonaws.com

    *
  opsworks-cm.us-east-2.amazonaws.com

    *
  opsworks-cm.us-west-1.amazonaws.com

    *
  opsworks-cm.us-west-2.amazonaws.com

    *
  opsworks-cm.ap-northeast-1.amazonaws.com

    *
  opsworks-cm.ap-southeast-1.amazonaws.com

    *
  opsworks-cm.ap-southeast-2.amazonaws.com

    *
  opsworks-cm.eu-central-1.amazonaws.com

    *
  opsworks-cm.eu-west-1.amazonaws.com

  For more information, see [AWS OpsWorks endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html) in
  the AWS General Reference.

  ## Throttling limits

  All API operations allow for five requests per second with a burst of 10
  requests per second.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_node_association_status_response() :: %{
        "EngineAttributes" => list(engine_attribute()()),
        "NodeAssociationStatus" => list(any())
      }
      
  """
  @type describe_node_association_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_server_engine_attribute_response() :: %{
        "EngineAttribute" => engine_attribute(),
        "ServerName" => String.t()
      }
      
  """
  @type export_server_engine_attribute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_node_response() :: %{
        "NodeAssociationStatusToken" => String.t()
      }
      
  """
  @type associate_node_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_server_response() :: %{
        "Server" => server()
      }
      
  """
  @type update_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_server_request() :: %{
        optional("BackupRetentionCount") => integer(),
        optional("DisableAutomatedBackup") => boolean(),
        optional("PreferredBackupWindow") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type update_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_maintenance_request() :: %{
        optional("EngineAttributes") => list(engine_attribute()()),
        required("ServerName") => String.t()
      }
      
  """
  @type start_maintenance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_server_engine_attributes_request() :: %{
        optional("AttributeValue") => String.t(),
        required("AttributeName") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type update_server_engine_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_server_response() :: %{
        "Server" => server()
      }
      
  """
  @type restore_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_server_request() :: %{
        optional("AssociatePublicIpAddress") => boolean(),
        optional("BackupId") => String.t(),
        optional("BackupRetentionCount") => integer(),
        optional("CustomCertificate") => String.t(),
        optional("CustomDomain") => String.t(),
        optional("CustomPrivateKey") => String.t(),
        optional("DisableAutomatedBackup") => boolean(),
        optional("EngineAttributes") => list(engine_attribute()()),
        optional("EngineModel") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("KeyPair") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("SubnetIds") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("Engine") => String.t(),
        required("InstanceProfileArn") => String.t(),
        required("InstanceType") => String.t(),
        required("ServerName") => String.t(),
        required("ServiceRoleArn") => String.t()
      }
      
  """
  @type create_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_server_request() :: %{
        optional("InstanceType") => String.t(),
        optional("KeyPair") => String.t(),
        required("BackupId") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type restore_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_attribute() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type engine_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_request() :: %{
        optional("BackupId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServerName") => String.t()
      }
      
  """
  @type describe_backups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_server_response() :: %{
        "Server" => server()
      }
      
  """
  @type create_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_response() :: %{}
      
  """
  @type delete_backup_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_node_association_status_request() :: %{
        required("NodeAssociationStatusToken") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type describe_node_association_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_response() :: %{
        "Attributes" => list(account_attribute()())
      }
      
  """
  @type describe_account_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_server_engine_attribute_request() :: %{
        optional("InputAttributes") => list(engine_attribute()()),
        required("ExportAttributeName") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type export_server_engine_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup() :: %{
        "BackupArn" => String.t(),
        "BackupId" => String.t(),
        "BackupType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Engine" => String.t(),
        "EngineModel" => String.t(),
        "EngineVersion" => String.t(),
        "InstanceProfileArn" => String.t(),
        "InstanceType" => String.t(),
        "KeyPair" => String.t(),
        "PreferredBackupWindow" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "S3DataSize" => integer(),
        "S3DataUrl" => String.t(),
        "S3LogUrl" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "ServerName" => String.t(),
        "ServiceRoleArn" => String.t(),
        "Status" => list(any()),
        "StatusDescription" => String.t(),
        "SubnetIds" => list(String.t()()),
        "ToolsVersion" => String.t(),
        "UserArn" => String.t()
      }
      
  """
  @type backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type describe_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_node_request() :: %{
        optional("EngineAttributes") => list(engine_attribute()()),
        required("NodeName") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type disassociate_node_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_server_response() :: %{}
      
  """
  @type delete_server_response() :: %{}

  @typedoc """

  ## Example:
      
      update_server_engine_attributes_response() :: %{
        "Server" => server()
      }
      
  """
  @type update_server_engine_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      server() :: %{
        "AssociatePublicIpAddress" => boolean(),
        "BackupRetentionCount" => integer(),
        "CloudFormationStackArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "CustomDomain" => String.t(),
        "DisableAutomatedBackup" => boolean(),
        "Endpoint" => String.t(),
        "Engine" => String.t(),
        "EngineAttributes" => list(engine_attribute()()),
        "EngineModel" => String.t(),
        "EngineVersion" => String.t(),
        "InstanceProfileArn" => String.t(),
        "InstanceType" => String.t(),
        "KeyPair" => String.t(),
        "MaintenanceStatus" => list(any()),
        "PreferredBackupWindow" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "ServerArn" => String.t(),
        "ServerName" => String.t(),
        "ServiceRoleArn" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_servers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServerName") => String.t()
      }
      
  """
  @type describe_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_node_request() :: %{
        required("EngineAttributes") => list(engine_attribute()()),
        required("NodeName") => String.t(),
        required("ServerName") => String.t()
      }
      
  """
  @type associate_node_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_servers_response() :: %{
        "NextToken" => String.t(),
        "Servers" => list(server()())
      }
      
  """
  @type describe_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_maintenance_response() :: %{
        "Server" => server()
      }
      
  """
  @type start_maintenance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_attribute() :: %{
        "Maximum" => integer(),
        "Name" => String.t(),
        "Used" => integer()
      }
      
  """
  @type account_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_response() :: %{
        "Backups" => list(backup()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_backups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_request() :: %{
        required("BackupId") => String.t()
      }
      
  """
  @type delete_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("ServerName") => String.t()
      }
      
  """
  @type create_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_node_response() :: %{
        "NodeAssociationStatusToken" => String.t()
      }
      
  """
  @type disassociate_node_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_event() :: %{
        "CreatedAt" => non_neg_integer(),
        "LogUrl" => String.t(),
        "Message" => String.t(),
        "ServerName" => String.t()
      }
      
  """
  @type server_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_request() :: %{}
      
  """
  @type describe_account_attributes_request() :: %{}

  @typedoc """

  ## Example:
      
      create_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type create_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "NextToken" => String.t(),
        "ServerEvents" => list(server_event()())
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_server_request() :: %{
        required("ServerName") => String.t()
      }
      
  """
  @type delete_server_request() :: %{String.t() => any()}

  @type associate_node_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type create_backup_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type create_server_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | resource_not_found_exception()

  @type delete_backup_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type delete_server_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type describe_backups_errors() ::
          validation_exception() | invalid_next_token_exception() | resource_not_found_exception()

  @type describe_events_errors() ::
          validation_exception() | invalid_next_token_exception() | resource_not_found_exception()

  @type describe_node_association_status_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_servers_errors() ::
          validation_exception() | invalid_next_token_exception() | resource_not_found_exception()

  @type disassociate_node_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type export_server_engine_attribute_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type restore_server_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type start_maintenance_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type update_server_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  @type update_server_engine_attributes_errors() ::
          validation_exception() | resource_not_found_exception() | invalid_state_exception()

  def metadata do
    %{
      api_version: "2016-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "opsworks-cm",
      global?: false,
      protocol: "json",
      service_id: "OpsWorksCM",
      signature_version: "v4",
      signing_name: "opsworks-cm",
      target_prefix: "OpsWorksCM_V2016_11_01"
    }
  end

  @doc """
  Associates a new node with the server.

  For more information about how to disassociate a node, see `DisassociateNode`.

  On a Chef server: This command is an alternative to `knife bootstrap`.

  Example (Chef): `aws opsworks-cm associate-node --server-name *MyServer*
  --node-name *MyManagedNode* --engine-attributes
  "Name=*CHEF_ORGANIZATION*,Value=default"
  "Name=*CHEF_NODE_PUBLIC_KEY*,Value=*public-key-pem*"`

  On a Puppet server, this command is an alternative to the `puppet cert sign`
  command that signs a Puppet node CSR.

  Example (Puppet): `aws opsworks-cm associate-node --server-name *MyServer*
  --node-name *MyManagedNode* --engine-attributes
  "Name=*PUPPET_NODE_CSR*,Value=*csr-pem*"`

  A node can can only be associated with servers that are in a `HEALTHY` state.
  Otherwise, an `InvalidStateException` is thrown.
  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not valid.
  The AssociateNode API call can be integrated into Auto Scaling configurations,
  AWS Cloudformation templates, or the user data of a server's instance.
  """
  @spec associate_node(map(), associate_node_request(), list()) ::
          {:ok, associate_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_node_errors()}
  def associate_node(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateNode", input, options)
  end

  @doc """

  Creates an application-level backup of a server.

  While the
  server is in the `BACKING_UP` state, the server cannot be
  changed, and no additional backup can be created.

  Backups can be created for servers in `RUNNING`, `HEALTHY`, and `UNHEALTHY`
  states. By default, you can create a maximum of 50
  manual backups.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when the maximum number of manual backups
  is reached.
  An `InvalidStateException` is thrown when the server is not in any of the
  following states: RUNNING, HEALTHY, or UNHEALTHY.
  A `ResourceNotFoundException` is thrown when the server is not found.
  A `ValidationException` is thrown when parameters of the request are not valid.
  """
  @spec create_backup(map(), create_backup_request(), list()) ::
          {:ok, create_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_errors()}
  def create_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBackup", input, options)
  end

  @doc """

  Creates and immedately starts a new server.

  The server is ready to use when it is in the `HEALTHY` state. By default, you
  can create a maximum of 10 servers.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when you have created the maximum number of
  servers (10). A `ResourceAlreadyExistsException`
  is thrown when a server with the same name already exists in the account. A
  `ResourceNotFoundException` is thrown when you
  specify a backup ID that is not valid or is for a backup that does not exist. A
  `ValidationException` is thrown when parameters
  of the request are not valid.

  If you do not specify a security group by adding the `SecurityGroupIds`
  parameter, AWS OpsWorks creates a new security group.

  *Chef Automate:* The default security group opens the Chef server to the world
  on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH
  is also open to the world on TCP port 22.

  *Puppet Enterprise:* The default security group opens TCP ports 22, 443, 4433,
  8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH
  access. SSH is also open to the world on TCP port 22.

  By default, your server is accessible from any IP address. We
  recommend that you update your security group rules to allow
  access from known IP addresses and address ranges only. To edit security group
  rules, open Security Groups
  in the navigation pane of the EC2 management console.

  To specify your own domain for a server, and provide your own self-signed or
  CA-signed certificate and private key, specify values for `CustomDomain`,
  `CustomCertificate`, and `CustomPrivateKey`.
  """
  @spec create_server(map(), create_server_request(), list()) ::
          {:ok, create_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_server_errors()}
  def create_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServer", input, options)
  end

  @doc """

  Deletes a backup.

  You can delete both manual and automated backups. This operation is
  asynchronous.

  An `InvalidStateException` is thrown when a backup deletion is already in
  progress.
  A `ResourceNotFoundException` is thrown when the backup does not exist.
  A `ValidationException` is thrown when parameters of the request are not valid.
  """
  @spec delete_backup(map(), delete_backup_request(), list()) ::
          {:ok, delete_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_errors()}
  def delete_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """

  Deletes the server and the underlying AWS CloudFormation stacks
  (including the server's EC2 instance).

  When you run this command, the server state is updated
  to `DELETING`. After the server is deleted, it is no longer returned by
  `DescribeServer` requests. If the AWS CloudFormation stack cannot be deleted,
  the server cannot be deleted.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when a server deletion is already in
  progress.
  A `ResourceNotFoundException` is thrown when the server does not exist.
  A `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec delete_server(map(), delete_server_request(), list()) ::
          {:ok, delete_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_server_errors()}
  def delete_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServer", input, options)
  end

  @doc """

  Describes your OpsWorks-CM account attributes.

  This operation is synchronous.
  """
  @spec describe_account_attributes(map(), describe_account_attributes_request(), list()) ::
          {:ok, describe_account_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """

  Describes backups.

  The results are ordered by time, with newest backups first.
  If you do not specify a BackupId or ServerName, the command returns all backups.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the backup does not exist.
  A `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec describe_backups(map(), describe_backups_request(), list()) ::
          {:ok, describe_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backups_errors()}
  def describe_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBackups", input, options)
  end

  @doc """

  Describes events for a specified server.

  Results are ordered by time, with newest events first.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist.
  A `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec describe_events(map(), describe_events_request(), list()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_errors()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """

  Returns the current status of an existing association or disassociation request.

  A `ResourceNotFoundException` is thrown when no recent association or
  disassociation request with the specified token is found,
  or when the server does not exist. A `ValidationException` is raised when
  parameters of the request are not valid.
  """
  @spec describe_node_association_status(
          map(),
          describe_node_association_status_request(),
          list()
        ) ::
          {:ok, describe_node_association_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_node_association_status_errors()}
  def describe_node_association_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNodeAssociationStatus", input, options)
  end

  @doc """

  Lists all configuration management servers that are identified with your
  account.

  Only the stored results from Amazon DynamoDB
  are returned. AWS OpsWorks CM does not query other services.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist.
  A `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec describe_servers(map(), describe_servers_request(), list()) ::
          {:ok, describe_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_servers_errors()}
  def describe_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServers", input, options)
  end

  @doc """

  Disassociates a node from an AWS OpsWorks CM server, and removes the node from
  the server's managed nodes.

  After a node is disassociated,
  the node key pair is no longer valid for accessing the configuration manager's
  API. For more information about how to associate a node, see `AssociateNode`.

  A node can can only be disassociated from a server that is in a `HEALTHY` state.
  Otherwise, an `InvalidStateException` is thrown.
  A `ResourceNotFoundException` is thrown when the server does not exist.
  A `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec disassociate_node(map(), disassociate_node_request(), list()) ::
          {:ok, disassociate_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_node_errors()}
  def disassociate_node(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateNode", input, options)
  end

  @doc """

  Exports a specified server engine attribute as a base64-encoded string.

  For example, you can export user data that you can use in EC2 to associate nodes
  with a server.

  This operation is synchronous.

  A `ValidationException` is raised when parameters of the request are not valid.
  A `ResourceNotFoundException` is thrown when the server does not exist.
  An `InvalidStateException` is thrown when the server is in any of the following
  states: CREATING, TERMINATED,
  FAILED or DELETING.
  """
  @spec export_server_engine_attribute(map(), export_server_engine_attribute_request(), list()) ::
          {:ok, export_server_engine_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_server_engine_attribute_errors()}
  def export_server_engine_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportServerEngineAttribute", input, options)
  end

  @doc """
  Returns a list of tags that are applied to the specified AWS OpsWorks for Chef
  Automate or
  AWS OpsWorks for Puppet Enterprise servers or backups.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  Restores a backup to a server that is in a `CONNECTION_LOST`, `HEALTHY`,
  `RUNNING`, `UNHEALTHY`, or `TERMINATED` state.

  When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2
  instance is configured. RestoreServer maintains
  the existing server endpoint, so configuration management of the server's client
  devices (nodes) should continue to work.

  Restoring from a backup is performed by creating a new EC2 instance. If
  restoration is successful, and the server is in a `HEALTHY` state,
  AWS OpsWorks CM switches traffic over to the new instance. After restoration is
  finished, the old EC2 instance is maintained in a
  `Running` or `Stopped` state, but is eventually terminated.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when the server is not in a valid state. A
  `ResourceNotFoundException` is thrown
  when the server does not exist. A `ValidationException` is raised when
  parameters of the request are not valid.
  """
  @spec restore_server(map(), restore_server_request(), list()) ::
          {:ok, restore_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_server_errors()}
  def restore_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreServer", input, options)
  end

  @doc """

  Manually starts server maintenance.

  This command can be useful if an earlier maintenance attempt failed, and the
  underlying
  cause of maintenance failure has been resolved. The server is in an
  `UNDER_MAINTENANCE` state while maintenance is in progress.

  Maintenance can only be started on servers in `HEALTHY` and `UNHEALTHY` states.
  Otherwise, an `InvalidStateException` is thrown.
  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec start_maintenance(map(), start_maintenance_request(), list()) ::
          {:ok, start_maintenance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_maintenance_errors()}
  def start_maintenance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMaintenance", input, options)
  end

  @doc """
  Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet
  Enterprise server, or to server backups.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes specified tags from an AWS OpsWorks-CM server or backup.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  Updates settings for a server.

  This operation is synchronous.
  """
  @spec update_server(map(), update_server_request(), list()) ::
          {:ok, update_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_server_errors()}
  def update_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServer", input, options)
  end

  @doc """

  Updates engine-specific attributes on a specified server.

  The server
  enters the `MODIFYING` state when this operation
  is in progress. Only one update can occur at a time.
  You can use this command to reset a Chef server's public key
  (`CHEF_PIVOTAL_KEY`) or a Puppet server's
  admin password (`PUPPET_ADMIN_PASSWORD`).

  This operation is asynchronous.

  This operation can only be called for servers in `HEALTHY` or `UNHEALTHY`
  states. Otherwise, an `InvalidStateException` is raised.
  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not valid.
  """
  @spec update_server_engine_attributes(map(), update_server_engine_attributes_request(), list()) ::
          {:ok, update_server_engine_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_server_engine_attributes_errors()}
  def update_server_engine_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServerEngineAttributes", input, options)
  end
end
