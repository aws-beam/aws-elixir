# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeStarConnections do
  @moduledoc """
  AWS CodeStar Connections

  This Amazon Web Services CodeStar Connections API Reference provides
  descriptions and usage examples of the operations and data types for the Amazon
  Web Services CodeStar Connections API.

  You can use the connections API to work with connections and installations.

  *Connections* are configurations that you use to connect Amazon Web Services
  resources to external code repositories. Each connection is a resource that can
  be given to services such as CodePipeline to connect to a third-party repository
  such as Bitbucket. For example, you can add the connection in CodePipeline so
  that it triggers your pipeline when a code change is made to your third-party
  code repository. Each connection is named and associated with a unique ARN that
  is used to reference the connection.

  When you create a connection, the console initiates a third-party connection
  handshake. *Installations* are the apps that are used to conduct this handshake.
  For example, the installation for the Bitbucket provider type is the Bitbucket
  app. When you create a connection, you can choose an existing installation or
  create one.

  When you want to create a connection to an installed provider type such as
  GitHub Enterprise Server, you create a *host* for your connections.

  You can work with connections by calling:

    * `CreateConnection`, which creates a uniquely named connection that
  can be referenced by services such as CodePipeline.

    * `DeleteConnection`, which deletes the specified connection.

    * `GetConnection`, which returns information about the connection,
  including the connection status.

    * `ListConnections`, which lists the connections associated with
  your account.

  You can work with hosts by calling:

    * `CreateHost`, which creates a host that represents the
  infrastructure where your provider is installed.

    * `DeleteHost`, which deletes the specified host.

    * `GetHost`, which returns information about the host, including the
  setup status.

    * `ListHosts`, which lists the hosts associated with your account.

  You can work with tags in Amazon Web Services CodeStar Connections by calling
  the following:

    * `ListTagsForResource`, which gets information about Amazon Web
  Services tags for a specified Amazon Resource Name (ARN) in Amazon Web Services
  CodeStar Connections.

    * `TagResource`, which adds or updates tags for a resource in Amazon
  Web Services CodeStar Connections.

    * `UntagResource`, which removes tags for a resource in Amazon Web
  Services CodeStar Connections.

  For information about how to use Amazon Web Services CodeStar Connections, see
  the [Developer Tools User Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "codestar-connections",
      global?: false,
      protocol: "json",
      service_id: "CodeStar connections",
      signature_version: "v4",
      signing_name: "codestar-connections",
      target_prefix: "com.amazonaws.codestar.connections.CodeStar_connections_20191201"
    }
  end

  @doc """
  Creates a connection that can then be given to other Amazon Web Services
  services like CodePipeline so that it can access third-party code repositories.

  The connection is in pending status until the third-party connection handshake
  is completed from the console.
  """
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a resource that represents the infrastructure where a third-party
  provider is installed.

  The host is used when you create connections to an installed third-party
  provider type, such as GitHub Enterprise Server. You create one host for all
  connections to that provider.

  A host created through the CLI or the SDK is in `PENDING` status by default. You
  can make its status `AVAILABLE` by setting up the host in the console.
  """
  def create_host(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHost", input, options)
  end

  @doc """
  Creates a link to a specified external Git repository.

  A repository link allows Git sync to monitor and sync changes to files in a
  specified Git repository.
  """
  def create_repository_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRepositoryLink", input, options)
  end

  @doc """
  Creates a sync configuration which allows Amazon Web Services to sync content
  from a Git repository to update a specified Amazon Web Services resource.

  Parameters for the sync configuration are determined by the sync type.
  """
  def create_sync_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSyncConfiguration", input, options)
  end

  @doc """
  The connection to be deleted.
  """
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  The host to be deleted.

  Before you delete a host, all connections associated to the host must be
  deleted.

  A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
  VPC_CONFIG_DELETING state.
  """
  def delete_host(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHost", input, options)
  end

  @doc """
  Deletes the association between your connection and a specified external Git
  repository.
  """
  def delete_repository_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepositoryLink", input, options)
  end

  @doc """
  Deletes the sync configuration for a specified repository and connection.
  """
  def delete_sync_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSyncConfiguration", input, options)
  end

  @doc """
  Returns the connection ARN and details such as status, owner, and provider type.
  """
  def get_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Returns the host ARN and details such as status, provider type, endpoint, and,
  if applicable, the VPC configuration.
  """
  def get_host(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHost", input, options)
  end

  @doc """
  Returns details about a repository link.

  A repository link allows Git sync to monitor and sync changes from files in a
  specified Git repository.
  """
  def get_repository_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositoryLink", input, options)
  end

  @doc """
  Returns details about the sync status for a repository.

  A repository sync uses Git sync to push and pull changes from your remote
  repository.
  """
  def get_repository_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositorySyncStatus", input, options)
  end

  @doc """
  Returns the status of the sync with the Git repository for a specific Amazon Web
  Services resource.
  """
  def get_resource_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceSyncStatus", input, options)
  end

  @doc """
  Returns a list of the most recent sync blockers.
  """
  def get_sync_blocker_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSyncBlockerSummary", input, options)
  end

  @doc """
  Returns details about a sync configuration, including the sync type and resource
  name.

  A sync configuration allows the configuration to sync (push and pull) changes
  from the remote repository for a specified branch in a Git repository.
  """
  def get_sync_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSyncConfiguration", input, options)
  end

  @doc """
  Lists the connections associated with your account.
  """
  def list_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Lists the hosts associated with your account.
  """
  def list_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHosts", input, options)
  end

  @doc """
  Lists the repository links created for connections in your account.
  """
  def list_repository_links(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositoryLinks", input, options)
  end

  @doc """
  Lists the repository sync definitions for repository links in your account.
  """
  def list_repository_sync_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositorySyncDefinitions", input, options)
  end

  @doc """
  Returns a list of sync configurations for a specified repository.
  """
  def list_sync_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSyncConfigurations", input, options)
  end

  @doc """
  Gets the set of key-value pairs (metadata) that are used to manage the resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used to manage a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Amazon Web Services resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a specified host with the provided configurations.
  """
  def update_host(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHost", input, options)
  end

  @doc """
  Updates the association between your connection and a specified external Git
  repository.

  A repository link allows Git sync to monitor and sync changes to files in a
  specified Git repository.
  """
  def update_repository_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRepositoryLink", input, options)
  end

  @doc """
  Allows you to update the status of a sync blocker, resolving the blocker and
  allowing syncing to continue.
  """
  def update_sync_blocker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSyncBlocker", input, options)
  end

  @doc """
  Updates the sync configuration for your connection and a specified external Git
  repository.
  """
  def update_sync_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSyncConfiguration", input, options)
  end
end
