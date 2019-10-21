# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Workspaces do
  @moduledoc """
  Amazon WorkSpaces Service

  Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
  Windows and Amazon Linux desktops for your users.
  """

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
  """
  def copy_workspace_image(client, input, options \\ []) do
    request(client, "CopyWorkspaceImage", input, options)
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
  first delete any bundles that are associated with the image and un-share
  the image if it is shared with other accounts.
  """
  def delete_workspace_image(client, input, options \\ []) do
    request(client, "DeleteWorkspaceImage", input, options)
  end

  @doc """
  Retrieves a list that describes the configuration of bring your own license
  (BYOL) for the specified account.
  """
  def describe_account(client, input, options \\ []) do
    request(client, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves a list that describes modifications to the configuration of bring
  your own license (BYOL) for the specified account.
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
  Describes the available AWS Directory Service directories that are
  registered with Amazon WorkSpaces.
  """
  def describe_workspace_directories(client, input, options \\ []) do
    request(client, "DescribeWorkspaceDirectories", input, options)
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
  Disassociates the specified IP access control group from the specified
  directory.
  """
  def disassociate_ip_groups(client, input, options \\ []) do
    request(client, "DisassociateIpGroups", input, options)
  end

  @doc """
  Imports the specified Windows 7 or Windows 10 bring your own license (BYOL)
  image into Amazon WorkSpaces. The image must be an already licensed EC2
  image that is in your AWS account, and you must own the image.
  """
  def import_workspace_image(client, input, options \\ []) do
    request(client, "ImportWorkspaceImage", input, options)
  end

  @doc """
  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that
  you can use for the network management interface when you enable bring your
  own license (BYOL).

  The management network interface is connected to a secure Amazon WorkSpaces
  management network. It is used for interactive streaming of the WorkSpace
  desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to
  manage the WorkSpace.
  """
  def list_available_management_cidr_ranges(client, input, options \\ []) do
    request(client, "ListAvailableManagementCidrRanges", input, options)
  end

  @doc """
  Modifies the configuration of bring your own license (BYOL) for the
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
  Modifies the specified WorkSpace properties.
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

  You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`, or
  `UNHEALTHY`.

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
  Restores the specified WorkSpace to its last known healthy state.

  You cannot restore a WorkSpace unless its state is ` AVAILABLE`, `ERROR`,
  or `UNHEALTHY`.

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

  Terminating a WorkSpace is a permanent action and cannot be undone. The
  user's data is destroyed. If you need to archive any user data, contact
  Amazon Web Services before terminating the WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  This operation is asynchronous and returns before the WorkSpaces have been
  completely terminated.
  """
  def terminate_workspaces(client, input, options \\ []) do
    request(client, "TerminateWorkspaces", input, options)
  end

  @doc """
  Replaces the current rules of the specified IP access control group with
  the specified rules.
  """
  def update_rules_of_ip_group(client, input, options \\ []) do
    request(client, "UpdateRulesOfIpGroup", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "workspaces"}
    host = get_host("workspaces", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "WorkspacesService.#{action}"} | headers]

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
