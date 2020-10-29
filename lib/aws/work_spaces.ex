# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpaces do
  @moduledoc """
  Amazon WorkSpaces Service

  Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
  Windows and Amazon Linux desktops for your users.
  """

  @doc """
  Associates the specified connection alias with the specified directory to
  enable cross-Region redirection. For more information, see [ Cross-Region
  Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  <note> Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

  </note>
  """
  def associate_connection_alias(client, input, options \\ []) do
    request(client, "AssociateConnectionAlias", input, options)
  end

  @doc """
  Associates the specified IP access control group with the specified
  directory.
  """
  def associate_ip_groups(client, input, options \\ []) do
    request(client, "AssociateIpGroups", input, options)
  end

  @doc """
  Adds one or more rules to the specified IP access control group.

  This action gives users permission to access their WorkSpaces from the CIDR
  address ranges specified in the rules.
  """
  def authorize_ip_rules(client, input, options \\ []) do
    request(client, "AuthorizeIpRules", input, options)
  end

  @doc """
  Copies the specified image from the specified Region to the current Region.
  For more information about copying images, see [ Copy a Custom WorkSpaces
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).

  <important> Before copying a shared image, be sure to verify that it has
  been shared from the correct AWS account. To determine if an image has been
  shared and to see the AWS account ID that owns an image, use the
  [DescribeWorkSpaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html)
  and
  [DescribeWorkspaceImagePermissions](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html)
  API operations.

  </important>
  """
  def copy_workspace_image(client, input, options \\ []) do
    request(client, "CopyWorkspaceImage", input, options)
  end

  @doc """
  Creates the specified connection alias for use with cross-Region
  redirection. For more information, see [ Cross-Region Redirection for
  Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def create_connection_alias(client, input, options \\ []) do
    request(client, "CreateConnectionAlias", input, options)
  end

  @doc """
  Creates an IP access control group.

  An IP access control group provides you with the ability to control the IP
  addresses from which users are allowed to access their WorkSpaces. To
  specify the CIDR address ranges, add rules to your IP access control group
  and then associate the group with your directory. You can add rules when
  you create the group or at any time using `AuthorizeIpRules`.

  There is a default IP access control group associated with your directory.
  If you don't associate an IP access control group with your directory, the
  default group is used. The default group includes a default rule that
  allows users to access their WorkSpaces from anywhere. You cannot modify
  the default IP access control group for your directory.
  """
  def create_ip_group(client, input, options \\ []) do
    request(client, "CreateIpGroup", input, options)
  end

  @doc """
  Creates the specified tags for the specified WorkSpaces resource.
  """
  def create_tags(client, input, options \\ []) do
    request(client, "CreateTags", input, options)
  end

  @doc """
  Creates one or more WorkSpaces.

  This operation is asynchronous and returns before the WorkSpaces are
  created.
  """
  def create_workspaces(client, input, options \\ []) do
    request(client, "CreateWorkspaces", input, options)
  end

  @doc """
  Deletes the specified connection alias. For more information, see [
  Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  <important> **If you will no longer be using a fully qualified domain name
  (FQDN) as the registration code for your WorkSpaces users, you must take
  certain precautions to prevent potential security issues.** For more
  information, see [ Security Considerations if You Stop Using Cross-Region
  Redirection](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

  </important> <note> To delete a connection alias that has been shared, the
  shared account must first disassociate the connection alias from any
  directories it has been associated with. Then you must unshare the
  connection alias from the account it has been shared with. You can delete a
  connection alias only after it is no longer shared with any accounts or
  associated with any directories.

  </note>
  """
  def delete_connection_alias(client, input, options \\ []) do
    request(client, "DeleteConnectionAlias", input, options)
  end

  @doc """
  Deletes the specified IP access control group.

  You cannot delete an IP access control group that is associated with a
  directory.
  """
  def delete_ip_group(client, input, options \\ []) do
    request(client, "DeleteIpGroup", input, options)
  end

  @doc """
  Deletes the specified tags from the specified WorkSpaces resource.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified image from your account. To delete an image, you must
  first delete any bundles that are associated with the image and unshare the
  image if it is shared with other accounts.
  """
  def delete_workspace_image(client, input, options \\ []) do
    request(client, "DeleteWorkspaceImage", input, options)
  end

  @doc """
  Deregisters the specified directory. This operation is asynchronous and
  returns before the WorkSpace directory is deregistered. If any WorkSpaces
  are registered to this directory, you must remove them before you can
  deregister the directory.
  """
  def deregister_workspace_directory(client, input, options \\ []) do
    request(client, "DeregisterWorkspaceDirectory", input, options)
  end

  @doc """
  Retrieves a list that describes the configuration of Bring Your Own License
  (BYOL) for the specified account.
  """
  def describe_account(client, input, options \\ []) do
    request(client, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves a list that describes modifications to the configuration of Bring
  Your Own License (BYOL) for the specified account.
  """
  def describe_account_modifications(client, input, options \\ []) do
    request(client, "DescribeAccountModifications", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Amazon WorkSpaces
  clients.
  """
  def describe_client_properties(client, input, options \\ []) do
    request(client, "DescribeClientProperties", input, options)
  end

  @doc """
  Describes the permissions that the owner of a connection alias has granted
  to another AWS account for the specified connection alias. For more
  information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def describe_connection_alias_permissions(client, input, options \\ []) do
    request(client, "DescribeConnectionAliasPermissions", input, options)
  end

  @doc """
  Retrieves a list that describes the connection aliases used for
  cross-Region redirection. For more information, see [ Cross-Region
  Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def describe_connection_aliases(client, input, options \\ []) do
    request(client, "DescribeConnectionAliases", input, options)
  end

  @doc """
  Describes one or more of your IP access control groups.
  """
  def describe_ip_groups(client, input, options \\ []) do
    request(client, "DescribeIpGroups", input, options)
  end

  @doc """
  Describes the specified tags for the specified WorkSpaces resource.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Retrieves a list that describes the available WorkSpace bundles.

  You can filter the results using either bundle ID or owner, but not both.
  """
  def describe_workspace_bundles(client, input, options \\ []) do
    request(client, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
  Describes the available directories that are registered with Amazon
  WorkSpaces.
  """
  def describe_workspace_directories(client, input, options \\ []) do
    request(client, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
  Describes the permissions that the owner of an image has granted to other
  AWS accounts for an image.
  """
  def describe_workspace_image_permissions(client, input, options \\ []) do
    request(client, "DescribeWorkspaceImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image
  identifiers are provided. Otherwise, all images in the account are
  described.
  """
  def describe_workspace_images(client, input, options \\ []) do
    request(client, "DescribeWorkspaceImages", input, options)
  end

  @doc """
  Describes the snapshots for the specified WorkSpace.
  """
  def describe_workspace_snapshots(client, input, options \\ []) do
    request(client, "DescribeWorkspaceSnapshots", input, options)
  end

  @doc """
  Describes the specified WorkSpaces.

  You can filter the results by using the bundle identifier, directory
  identifier, or owner, but you can specify only one filter at a time.
  """
  def describe_workspaces(client, input, options \\ []) do
    request(client, "DescribeWorkspaces", input, options)
  end

  @doc """
  Describes the connection status of the specified WorkSpaces.
  """
  def describe_workspaces_connection_status(client, input, options \\ []) do
    request(client, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
  Disassociates a connection alias from a directory. Disassociating a
  connection alias disables cross-Region redirection between two directories
  in different AWS Regions. For more information, see [ Cross-Region
  Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  <note> Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

  </note>
  """
  def disassociate_connection_alias(client, input, options \\ []) do
    request(client, "DisassociateConnectionAlias", input, options)
  end

  @doc """
  Disassociates the specified IP access control group from the specified
  directory.
  """
  def disassociate_ip_groups(client, input, options \\ []) do
    request(client, "DisassociateIpGroups", input, options)
  end

  @doc """
  Imports the specified Windows 10 Bring Your Own License (BYOL) image into
  Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image
  that is in your AWS account, and you must own the image. For more
  information about creating BYOL images, see [ Bring Your Own Windows
  Desktop
  Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  """
  def import_workspace_image(client, input, options \\ []) do
    request(client, "ImportWorkspaceImage", input, options)
  end

  @doc """
  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that
  you can use for the network management interface when you enable Bring Your
  Own License (BYOL).

  This operation can be run only by AWS accounts that are enabled for BYOL.
  If your account isn't enabled for BYOL, you'll receive an
  `AccessDeniedException` error.

  The management network interface is connected to a secure Amazon WorkSpaces
  management network. It is used for interactive streaming of the WorkSpace
  desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to
  manage the WorkSpace.
  """
  def list_available_management_cidr_ranges(client, input, options \\ []) do
    request(client, "ListAvailableManagementCidrRanges", input, options)
  end

  @doc """
  Migrates a WorkSpace from one operating system or bundle type to another,
  while retaining the data on the user volume.

  The migration process recreates the WorkSpace by using a new root volume
  from the target bundle image and the user volume from the last available
  snapshot of the original WorkSpace. During migration, the original
  `D:\Users\%USERNAME%` user profile folder is renamed to
  `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new
  `D:\Users\%USERNAME%\` folder is generated by the new OS. Certain files in
  the old user profile are moved to the new user profile.

  For available migration scenarios, details about what happens during
  migration, and best practices, see [Migrate a
  WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html).
  """
  def migrate_workspace(client, input, options \\ []) do
    request(client, "MigrateWorkspace", input, options)
  end

  @doc """
  Modifies the configuration of Bring Your Own License (BYOL) for the
  specified account.
  """
  def modify_account(client, input, options \\ []) do
    request(client, "ModifyAccount", input, options)
  end

  @doc """
  Modifies the properties of the specified Amazon WorkSpaces clients.
  """
  def modify_client_properties(client, input, options \\ []) do
    request(client, "ModifyClientProperties", input, options)
  end

  @doc """
  Modifies the self-service WorkSpace management capabilities for your users.
  For more information, see [Enable Self-Service WorkSpace Management
  Capabilities for Your
  Users](https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).
  """
  def modify_selfservice_permissions(client, input, options \\ []) do
    request(client, "ModifySelfservicePermissions", input, options)
  end

  @doc """
  Specifies which devices and operating systems users can use to access their
  WorkSpaces. For more information, see [ Control Device
  Access](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).
  """
  def modify_workspace_access_properties(client, input, options \\ []) do
    request(client, "ModifyWorkspaceAccessProperties", input, options)
  end

  @doc """
  Modify the default properties used to create WorkSpaces.
  """
  def modify_workspace_creation_properties(client, input, options \\ []) do
    request(client, "ModifyWorkspaceCreationProperties", input, options)
  end

  @doc """
  Modifies the specified WorkSpace properties. For important information
  about how to modify the size of the root and user volumes, see [ Modify a
  WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).
  """
  def modify_workspace_properties(client, input, options \\ []) do
    request(client, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
  Sets the state of the specified WorkSpace.

  To maintain a WorkSpace without being interrupted, set the WorkSpace state
  to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to requests
  to reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this
  state is not stopped. Users cannot log into a WorkSpace in the
  `ADMIN_MAINTENANCE` state.
  """
  def modify_workspace_state(client, input, options \\ []) do
    request(client, "ModifyWorkspaceState", input, options)
  end

  @doc """
  Reboots the specified WorkSpaces.

  You cannot reboot a WorkSpace unless its state is `AVAILABLE` or
  `UNHEALTHY`.

  This operation is asynchronous and returns before the WorkSpaces have
  rebooted.
  """
  def reboot_workspaces(client, input, options \\ []) do
    request(client, "RebootWorkspaces", input, options)
  end

  @doc """
  Rebuilds the specified WorkSpace.

  You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`,
  `UNHEALTHY`, `STOPPED`, or `REBOOTING`.

  Rebuilding a WorkSpace is a potentially destructive action that can result
  in the loss of data. For more information, see [Rebuild a
  WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

  This operation is asynchronous and returns before the WorkSpaces have been
  completely rebuilt.
  """
  def rebuild_workspaces(client, input, options \\ []) do
    request(client, "RebuildWorkspaces", input, options)
  end

  @doc """
  Registers the specified directory. This operation is asynchronous and
  returns before the WorkSpace directory is registered. If this is the first
  time you are registering a directory, you will need to create the
  workspaces_DefaultRole role before you can register a directory. For more
  information, see [ Creating the workspaces_DefaultRole
  Role](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).
  """
  def register_workspace_directory(client, input, options \\ []) do
    request(client, "RegisterWorkspaceDirectory", input, options)
  end

  @doc """
  Restores the specified WorkSpace to its last known healthy state.

  You cannot restore a WorkSpace unless its state is ` AVAILABLE`, `ERROR`,
  `UNHEALTHY`, or `STOPPED`.

  Restoring a WorkSpace is a potentially destructive action that can result
  in the loss of data. For more information, see [Restore a
  WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html).

  This operation is asynchronous and returns before the WorkSpace is
  completely restored.
  """
  def restore_workspace(client, input, options \\ []) do
    request(client, "RestoreWorkspace", input, options)
  end

  @doc """
  Removes one or more rules from the specified IP access control group.
  """
  def revoke_ip_rules(client, input, options \\ []) do
    request(client, "RevokeIpRules", input, options)
  end

  @doc """
  Starts the specified WorkSpaces.

  You cannot start a WorkSpace unless it has a running mode of `AutoStop` and
  a state of `STOPPED`.
  """
  def start_workspaces(client, input, options \\ []) do
    request(client, "StartWorkspaces", input, options)
  end

  @doc """
  Stops the specified WorkSpaces.

  You cannot stop a WorkSpace unless it has a running mode of `AutoStop` and
  a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
  """
  def stop_workspaces(client, input, options \\ []) do
    request(client, "StopWorkspaces", input, options)
  end

  @doc """
  Terminates the specified WorkSpaces.

  <important> Terminating a WorkSpace is a permanent action and cannot be
  undone. The user's data is destroyed. If you need to archive any user data,
  contact AWS Support before terminating the WorkSpace.

  </important> You can terminate a WorkSpace that is in any state except
  `SUSPENDED`.

  This operation is asynchronous and returns before the WorkSpaces have been
  completely terminated. After a WorkSpace is terminated, the `TERMINATED`
  state is returned only briefly before the WorkSpace directory metadata is
  cleaned up, so this state is rarely returned. To confirm that a WorkSpace
  is terminated, check for the WorkSpace ID by using [
  DescribeWorkSpaces](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html).
  If the WorkSpace ID isn't returned, then the WorkSpace has been
  successfully terminated.
  """
  def terminate_workspaces(client, input, options \\ []) do
    request(client, "TerminateWorkspaces", input, options)
  end

  @doc """
  Shares or unshares a connection alias with one account by specifying
  whether that account has permission to associate the connection alias with
  a directory. If the association permission is granted, the connection alias
  is shared with that account. If the association permission is revoked, the
  connection alias is unshared with the account. For more information, see [
  Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  <note> <ul> <li> Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

  </li> <li> To delete a connection alias that has been shared, the shared
  account must first disassociate the connection alias from any directories
  it has been associated with. Then you must unshare the connection alias
  from the account it has been shared with. You can delete a connection alias
  only after it is no longer shared with any accounts or associated with any
  directories.

  </li> </ul> </note>
  """
  def update_connection_alias_permission(client, input, options \\ []) do
    request(client, "UpdateConnectionAliasPermission", input, options)
  end

  @doc """
  Replaces the current rules of the specified IP access control group with
  the specified rules.
  """
  def update_rules_of_ip_group(client, input, options \\ []) do
    request(client, "UpdateRulesOfIpGroup", input, options)
  end

  @doc """
  Shares or unshares an image with one account by specifying whether that
  account has permission to copy the image. If the copy image permission is
  granted, the image is shared with that account. If the copy image
  permission is revoked, the image is unshared with the account. For more
  information about sharing images, see [ Share or Unshare a Custom
  WorkSpaces
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

  <note> <ul> <li> To delete an image that has been shared, you must unshare
  the image before you delete it.

  </li> <li> Sharing Bring Your Own License (BYOL) images across AWS accounts
  isn't supported at this time in the AWS GovCloud (US-West) Region. To share
  BYOL images across accounts in the AWS GovCloud (US-West) Region, contact
  AWS Support.

  </li> </ul> </note>
  """
  def update_workspace_image_permission(client, input, options \\ []) do
    request(client, "UpdateWorkspaceImagePermission", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "workspaces"}
    host = build_host("workspaces", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "WorkspacesService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
