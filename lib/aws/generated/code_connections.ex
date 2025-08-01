# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeConnections do
  @moduledoc """
  AWS CodeConnections

  This Amazon Web Services CodeConnections API Reference provides descriptions and
  usage examples of
  the operations and data types for the Amazon Web Services CodeConnections API.

  You can use the
  connections API to work with connections and installations.

  *Connections* are configurations that you use to connect Amazon Web Services
  resources to external code repositories. Each connection is a resource that can
  be given to
  services such as CodePipeline to connect to a third-party repository such as
  Bitbucket. For
  example, you can add the connection in CodePipeline so that it triggers your
  pipeline when a
  code change is made to your third-party code repository. Each connection is
  named and
  associated with a unique ARN that is used to reference the connection.

  When you create a connection, the console initiates a third-party connection
  handshake.
  *Installations* are the apps that are used to conduct this handshake. For
  example, the installation for the Bitbucket provider type is the Bitbucket app.
  When you
  create a connection, you can choose an existing installation or create one.

  When you want to create a connection to an installed provider type such as
  GitHub
  Enterprise Server, you create a *host* for your connections.

  You can work with connections by calling:

    *

  `CreateConnection`, which creates a uniquely named connection that can be
  referenced by services such as CodePipeline.

    *

  `DeleteConnection`, which deletes the specified connection.

    *

  `GetConnection`, which returns information about the connection, including
  the connection status.

    *

  `ListConnections`, which lists the connections associated with your
  account.

  You can work with hosts by calling:

    *

  `CreateHost`, which creates a host that represents the infrastructure where your
  provider is installed.

    *

  `DeleteHost`, which deletes the specified host.

    *

  `GetHost`, which returns information about the host, including
  the setup status.

    *

  `ListHosts`, which lists the hosts associated with your
  account.

  You can work with tags in Amazon Web Services CodeConnections by calling the
  following:

    *

  `ListTagsForResource`, which gets information about Amazon Web Services tags for
  a
  specified Amazon Resource Name (ARN) in Amazon Web Services CodeConnections.

    *

  `TagResource`, which adds or updates tags for a resource in Amazon Web Services
  CodeConnections.

    *

  `UntagResource`, which removes tags for a resource in Amazon Web Services
  CodeConnections.

  For information about how to use Amazon Web Services CodeConnections, see the
  [Developer Tools User
  Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_repository_link_input() :: %{
        required("RepositoryLinkId") => String.t() | Atom.t()
      }
      
  """
  @type get_repository_link_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_sync_configuration_output() :: %{
        "SyncConfiguration" => sync_configuration()
      }
      
  """
  @type create_sync_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_attempt() :: %{
        "Events" => list(repository_sync_event()),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type repository_sync_attempt() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_input() :: %{
        required("ConnectionArn") => String.t() | Atom.t()
      }
      
  """
  @type delete_connection_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t()),
        "TlsCertificate" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }
      
  """
  @type vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_link_input() :: %{
        optional("EncryptionKeyArn") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("ConnectionArn") => String.t() | Atom.t(),
        required("OwnerId") => String.t() | Atom.t(),
        required("RepositoryName") => String.t() | Atom.t()
      }
      
  """
  @type create_repository_link_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sync_configurations_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "SyncConfigurations" => list(sync_configuration())
      }
      
  """
  @type list_sync_configurations_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_link_output() :: %{}
      
  """
  @type delete_repository_link_output() :: %{}

  @typedoc """

  ## Example:
      
      sync_blocker_context() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type sync_blocker_context() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_sync_status_input() :: %{
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type get_resource_sync_status_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_sync_blocker_input() :: %{
        required("Id") => String.t() | Atom.t(),
        required("ResolvedReason") => String.t() | Atom.t(),
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type update_sync_blocker_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sync_blocker_summary() :: %{
        "LatestBlockers" => list(sync_blocker()),
        "ParentResourceName" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }
      
  """
  @type sync_blocker_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_output() :: %{
        "Connections" => list(connection()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_connections_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_link_output() :: %{
        "RepositoryLinkInfo" => repository_link_info()
      }
      
  """
  @type create_repository_link_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_output() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "Tags" => list(tag())
      }
      
  """
  @type create_connection_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_sync_status_output() :: %{
        "DesiredState" => revision(),
        "LatestSuccessfulSync" => resource_sync_attempt(),
        "LatestSync" => resource_sync_attempt()
      }
      
  """
  @type get_resource_sync_status_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sync_configuration_still_exists_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type sync_configuration_still_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_latest_commit_failed_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type retry_latest_commit_failed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_host_output() :: %{
        "HostArn" => String.t() | Atom.t(),
        "Tags" => list(tag())
      }
      
  """
  @type create_host_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_sync_configuration_input() :: %{
        optional("Branch") => String.t() | Atom.t(),
        optional("ConfigFile") => String.t() | Atom.t(),
        optional("PublishDeploymentStatus") => list(any()),
        optional("PullRequestComment") => list(any()),
        optional("RepositoryLinkId") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TriggerResourceUpdateOn") => list(any()),
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type update_sync_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_definition() :: %{
        "Branch" => String.t() | Atom.t(),
        "Directory" => String.t() | Atom.t(),
        "Parent" => String.t() | Atom.t(),
        "Target" => String.t() | Atom.t()
      }
      
  """
  @type repository_sync_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sync_configuration_input() :: %{
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type delete_sync_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_links_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "RepositoryLinks" => list(repository_link_info())
      }
      
  """
  @type list_repository_links_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_repository_link_output() :: %{
        "RepositoryLinkInfo" => repository_link_info()
      }
      
  """
  @type update_repository_link_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_sync_blocker_output() :: %{
        "ParentResourceName" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t(),
        "SyncBlocker" => sync_blocker()
      }
      
  """
  @type update_sync_blocker_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_sync_configuration_output() :: %{
        "SyncConfiguration" => sync_configuration()
      }
      
  """
  @type get_sync_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_provider_type_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type unsupported_provider_type_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_host_input() :: %{
        optional("ProviderEndpoint") => String.t() | Atom.t(),
        optional("VpcConfiguration") => vpc_configuration(),
        required("HostArn") => String.t() | Atom.t()
      }
      
  """
  @type update_host_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_connection_input() :: %{
        required("ConnectionArn") => String.t() | Atom.t()
      }
      
  """
  @type get_connection_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_connection_output() :: %{
        "Connection" => connection()
      }
      
  """
  @type get_connection_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionName" => String.t() | Atom.t(),
        "ConnectionStatus" => list(any()),
        "HostArn" => String.t() | Atom.t(),
        "OwnerAccountId" => String.t() | Atom.t(),
        "ProviderType" => list(any())
      }
      
  """
  @type connection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_sync_configuration_output() :: %{
        "SyncConfiguration" => sync_configuration()
      }
      
  """
  @type update_sync_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sync_configurations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("RepositoryLinkId") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type list_sync_configurations_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_sync_status_output() :: %{
        "LatestSync" => repository_sync_attempt()
      }
      
  """
  @type get_repository_sync_status_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sync_blocker() :: %{
        "Contexts" => list(sync_blocker_context()),
        "CreatedAt" => non_neg_integer(),
        "CreatedReason" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "ResolvedAt" => non_neg_integer(),
        "ResolvedReason" => String.t() | Atom.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type sync_blocker() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_repository_link_input() :: %{
        optional("ConnectionArn") => String.t() | Atom.t(),
        optional("EncryptionKeyArn") => String.t() | Atom.t(),
        required("RepositoryLinkId") => String.t() | Atom.t()
      }
      
  """
  @type update_repository_link_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_sync_blocker_summary_output() :: %{
        "SyncBlockerSummary" => sync_blocker_summary()
      }
      
  """
  @type get_sync_blocker_summary_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_sync_definitions_input() :: %{
        required("RepositoryLinkId") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type list_repository_sync_definitions_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      host() :: %{
        "HostArn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ProviderEndpoint" => String.t() | Atom.t(),
        "ProviderType" => list(any()),
        "Status" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type host() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_hosts_output() :: %{
        "Hosts" => list(host()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_hosts_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      conditional_check_failed_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type conditional_check_failed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sync_configuration() :: %{
        "Branch" => String.t() | Atom.t(),
        "ConfigFile" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "ProviderType" => list(any()),
        "PublishDeploymentStatus" => list(any()),
        "PullRequestComment" => list(any()),
        "RepositoryLinkId" => String.t() | Atom.t(),
        "RepositoryName" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "SyncType" => list(any()),
        "TriggerResourceUpdateOn" => list(any())
      }
      
  """
  @type sync_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_host_input() :: %{
        required("HostArn") => String.t() | Atom.t()
      }
      
  """
  @type delete_host_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_sync_configuration_input() :: %{
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type get_sync_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_output() :: %{}
      
  """
  @type delete_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("ResourceArn") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_sync_attempt() :: %{
        "Events" => list(resource_sync_event()),
        "InitialRevision" => revision(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "Target" => String.t() | Atom.t(),
        "TargetRevision" => revision()
      }
      
  """
  @type resource_sync_attempt() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_host_output() :: %{}
      
  """
  @type delete_host_output() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_sync_status_input() :: %{
        required("Branch") => String.t() | Atom.t(),
        required("RepositoryLinkId") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type get_repository_sync_status_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_links_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_repository_links_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_host_input() :: %{
        optional("Tags") => list(tag()),
        optional("VpcConfiguration") => vpc_configuration(),
        required("Name") => String.t() | Atom.t(),
        required("ProviderEndpoint") => String.t() | Atom.t(),
        required("ProviderType") => list(any())
      }
      
  """
  @type create_host_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_sync_definitions_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "RepositorySyncDefinitions" => list(repository_sync_definition())
      }
      
  """
  @type list_repository_sync_definitions_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_input() :: %{
        optional("HostArnFilter") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ProviderTypeFilter") => list(any())
      }
      
  """
  @type list_connections_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_sync_configuration_input() :: %{
        optional("PublishDeploymentStatus") => list(any()),
        optional("PullRequestComment") => list(any()),
        optional("TriggerResourceUpdateOn") => list(any()),
        required("Branch") => String.t() | Atom.t(),
        required("ConfigFile") => String.t() | Atom.t(),
        required("RepositoryLinkId") => String.t() | Atom.t(),
        required("ResourceName") => String.t() | Atom.t(),
        required("RoleArn") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type create_sync_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_link_input() :: %{
        required("RepositoryLinkId") => String.t() | Atom.t()
      }
      
  """
  @type delete_repository_link_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_host_output() :: %{}
      
  """
  @type update_host_output() :: %{}

  @typedoc """

  ## Example:
      
      get_repository_link_output() :: %{
        "RepositoryLinkInfo" => repository_link_info()
      }
      
  """
  @type get_repository_link_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_sync_blocker_summary_input() :: %{
        required("ResourceName") => String.t() | Atom.t(),
        required("SyncType") => list(any())
      }
      
  """
  @type get_sync_blocker_summary_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_input() :: %{
        optional("HostArn") => String.t() | Atom.t(),
        optional("ProviderType") => list(any()),
        optional("Tags") => list(tag()),
        required("ConnectionName") => String.t() | Atom.t()
      }
      
  """
  @type create_connection_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sync_blocker_does_not_exist_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type sync_blocker_does_not_exist_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sync_configuration_output() :: %{}
      
  """
  @type delete_sync_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      repository_link_info() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "EncryptionKeyArn" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "ProviderType" => list(any()),
        "RepositoryLinkArn" => String.t() | Atom.t(),
        "RepositoryLinkId" => String.t() | Atom.t(),
        "RepositoryName" => String.t() | Atom.t()
      }
      
  """
  @type repository_link_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_sync_event() :: %{
        "Event" => String.t() | Atom.t(),
        "ExternalId" => String.t() | Atom.t(),
        "Time" => non_neg_integer(),
        "Type" => String.t() | Atom.t()
      }
      
  """
  @type resource_sync_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_event() :: %{
        "Event" => String.t() | Atom.t(),
        "ExternalId" => String.t() | Atom.t(),
        "Time" => non_neg_integer(),
        "Type" => String.t() | Atom.t()
      }
      
  """
  @type repository_sync_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      revision() :: %{
        "Branch" => String.t() | Atom.t(),
        "Directory" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "ProviderType" => list(any()),
        "RepositoryName" => String.t() | Atom.t(),
        "Sha" => String.t() | Atom.t()
      }
      
  """
  @type revision() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_out_of_sync_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type update_out_of_sync_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_host_output() :: %{
        "Name" => String.t() | Atom.t(),
        "ProviderEndpoint" => String.t() | Atom.t(),
        "ProviderType" => list(any()),
        "Status" => String.t() | Atom.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type get_host_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_hosts_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_hosts_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_host_input() :: %{
        required("HostArn") => String.t() | Atom.t()
      }
      
  """
  @type get_host_input() :: %{String.t() | Atom.t() => any()}

  @type create_connection_errors() ::
          limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type create_host_errors() :: limit_exceeded_exception()

  @type create_repository_link_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()

  @type create_sync_configuration_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()

  @type delete_connection_errors() :: resource_not_found_exception()

  @type delete_host_errors() :: resource_not_found_exception() | resource_unavailable_exception()

  @type delete_repository_link_errors() ::
          throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | unsupported_provider_type_exception()
          | resource_not_found_exception()
          | sync_configuration_still_exists_exception()

  @type delete_sync_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()

  @type get_connection_errors() ::
          resource_not_found_exception() | resource_unavailable_exception()

  @type get_host_errors() :: resource_not_found_exception() | resource_unavailable_exception()

  @type get_repository_link_errors() ::
          throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type get_repository_sync_status_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type get_resource_sync_status_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type get_sync_blocker_summary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type get_sync_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_connections_errors() :: resource_not_found_exception()

  @type list_repository_links_errors() ::
          throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_repository_sync_definitions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_sync_configurations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type tag_resource_errors() :: limit_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_host_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | unsupported_operation_exception()

  @type update_repository_link_errors() ::
          update_out_of_sync_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conditional_check_failed_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type update_sync_blocker_errors() ::
          sync_blocker_does_not_exist_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | retry_latest_commit_failed_exception()

  @type update_sync_configuration_errors() ::
          update_out_of_sync_exception()
          | throttling_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2023-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "codeconnections",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CodeConnections",
      signature_version: "v4",
      signing_name: "codeconnections",
      target_prefix: "CodeConnections_20231201"
    }
  end

  @doc """
  Creates a connection that can then be given to other Amazon Web Services
  services like CodePipeline so
  that it can access third-party code repositories.

  The connection is in pending status until
  the third-party connection handshake is completed from the console.
  """
  @spec create_connection(map(), create_connection_input(), list()) ::
          {:ok, create_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a resource that represents the infrastructure where a third-party
  provider is
  installed.

  The host is used when you create connections to an installed third-party
  provider
  type, such as GitHub Enterprise Server. You create one host for all connections
  to that
  provider.

  A host created through the CLI or the SDK is in `PENDING` status by
  default. You can make its status `AVAILABLE` by setting up the host in the
  console.
  """
  @spec create_host(map(), create_host_input(), list()) ::
          {:ok, create_host_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_host_errors()}
  def create_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHost", input, options)
  end

  @doc """
  Creates a link to a specified external Git repository.

  A repository link allows Git sync to monitor and sync changes to files in a
  specified Git repository.
  """
  @spec create_repository_link(map(), create_repository_link_input(), list()) ::
          {:ok, create_repository_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_repository_link_errors()}
  def create_repository_link(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRepositoryLink", input, options)
  end

  @doc """
  Creates a sync configuration which allows Amazon Web Services to sync content
  from a Git
  repository to update a specified Amazon Web Services resource.

  Parameters for the sync
  configuration are determined by the sync type.
  """
  @spec create_sync_configuration(map(), create_sync_configuration_input(), list()) ::
          {:ok, create_sync_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sync_configuration_errors()}
  def create_sync_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSyncConfiguration", input, options)
  end

  @doc """
  The connection to be deleted.
  """
  @spec delete_connection(map(), delete_connection_input(), list()) ::
          {:ok, delete_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  The host to be deleted.

  Before you delete a host, all connections associated to the host must be
  deleted.

  A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
  VPC_CONFIG_DELETING state.
  """
  @spec delete_host(map(), delete_host_input(), list()) ::
          {:ok, delete_host_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_host_errors()}
  def delete_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHost", input, options)
  end

  @doc """
  Deletes the association between your connection and a specified external Git
  repository.
  """
  @spec delete_repository_link(map(), delete_repository_link_input(), list()) ::
          {:ok, delete_repository_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_link_errors()}
  def delete_repository_link(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepositoryLink", input, options)
  end

  @doc """
  Deletes the sync configuration for a specified repository and connection.
  """
  @spec delete_sync_configuration(map(), delete_sync_configuration_input(), list()) ::
          {:ok, delete_sync_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sync_configuration_errors()}
  def delete_sync_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSyncConfiguration", input, options)
  end

  @doc """
  Returns the connection ARN and details such as status, owner, and provider type.
  """
  @spec get_connection(map(), get_connection_input(), list()) ::
          {:ok, get_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Returns the host ARN and details such as status, provider type, endpoint, and,
  if
  applicable, the VPC configuration.
  """
  @spec get_host(map(), get_host_input(), list()) ::
          {:ok, get_host_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_host_errors()}
  def get_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetHost", input, options)
  end

  @doc """
  Returns details about a repository link.

  A repository link allows Git sync to monitor
  and sync changes from files in a specified Git repository.
  """
  @spec get_repository_link(map(), get_repository_link_input(), list()) ::
          {:ok, get_repository_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_link_errors()}
  def get_repository_link(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepositoryLink", input, options)
  end

  @doc """
  Returns details about the sync status for a repository.

  A repository sync uses Git sync
  to push and pull changes from your remote repository.
  """
  @spec get_repository_sync_status(map(), get_repository_sync_status_input(), list()) ::
          {:ok, get_repository_sync_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_sync_status_errors()}
  def get_repository_sync_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepositorySyncStatus", input, options)
  end

  @doc """
  Returns the status of the sync with the Git repository for a specific Amazon Web
  Services
  resource.
  """
  @spec get_resource_sync_status(map(), get_resource_sync_status_input(), list()) ::
          {:ok, get_resource_sync_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_sync_status_errors()}
  def get_resource_sync_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourceSyncStatus", input, options)
  end

  @doc """
  Returns a list of the most recent sync blockers.
  """
  @spec get_sync_blocker_summary(map(), get_sync_blocker_summary_input(), list()) ::
          {:ok, get_sync_blocker_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sync_blocker_summary_errors()}
  def get_sync_blocker_summary(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSyncBlockerSummary", input, options)
  end

  @doc """
  Returns details about a sync configuration, including the sync type and resource
  name.

  A sync configuration allows the configuration to sync (push and pull) changes
  from the remote repository for a specified branch in a Git repository.
  """
  @spec get_sync_configuration(map(), get_sync_configuration_input(), list()) ::
          {:ok, get_sync_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sync_configuration_errors()}
  def get_sync_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSyncConfiguration", input, options)
  end

  @doc """
  Lists the connections associated with your account.
  """
  @spec list_connections(map(), list_connections_input(), list()) ::
          {:ok, list_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connections_errors()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Lists the hosts associated with your account.
  """
  @spec list_hosts(map(), list_hosts_input(), list()) ::
          {:ok, list_hosts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_hosts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHosts", input, options)
  end

  @doc """
  Lists the repository links created for connections in your account.
  """
  @spec list_repository_links(map(), list_repository_links_input(), list()) ::
          {:ok, list_repository_links_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repository_links_errors()}
  def list_repository_links(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRepositoryLinks", input, options)
  end

  @doc """
  Lists the repository sync definitions for repository links in your account.
  """
  @spec list_repository_sync_definitions(map(), list_repository_sync_definitions_input(), list()) ::
          {:ok, list_repository_sync_definitions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repository_sync_definitions_errors()}
  def list_repository_sync_definitions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRepositorySyncDefinitions", input, options)
  end

  @doc """
  Returns a list of sync configurations for a specified repository.
  """
  @spec list_sync_configurations(map(), list_sync_configurations_input(), list()) ::
          {:ok, list_sync_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sync_configurations_errors()}
  def list_sync_configurations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSyncConfigurations", input, options)
  end

  @doc """
  Gets the set of key-value pairs (metadata) that are used to manage the resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used
  to manage a resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Amazon Web Services resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a specified host with the provided configurations.
  """
  @spec update_host(map(), update_host_input(), list()) ::
          {:ok, update_host_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_host_errors()}
  def update_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateHost", input, options)
  end

  @doc """
  Updates the association between your connection and a specified external Git
  repository.

  A repository link allows Git sync to monitor and sync changes to files in a
  specified Git
  repository.
  """
  @spec update_repository_link(map(), update_repository_link_input(), list()) ::
          {:ok, update_repository_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_repository_link_errors()}
  def update_repository_link(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRepositoryLink", input, options)
  end

  @doc """
  Allows you to update the status of a sync blocker, resolving the blocker and
  allowing syncing to continue.
  """
  @spec update_sync_blocker(map(), update_sync_blocker_input(), list()) ::
          {:ok, update_sync_blocker_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sync_blocker_errors()}
  def update_sync_blocker(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSyncBlocker", input, options)
  end

  @doc """
  Updates the sync configuration for your connection and a specified external Git
  repository.
  """
  @spec update_sync_configuration(map(), update_sync_configuration_input(), list()) ::
          {:ok, update_sync_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sync_configuration_errors()}
  def update_sync_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSyncConfiguration", input, options)
  end
end
