# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Workspaces do
  @moduledoc """
  Amazon WorkSpaces Service

  This reference provides detailed information about the Amazon WorkSpaces
  operations.
  """

  @doc """
  Creates tags for a WorkSpace.
  """
  def create_tags(client, input, options \\ []) do
    request(client, "CreateTags", input, options)
  end

  @doc """
  Creates one or more WorkSpaces.

  <note> This operation is asynchronous and returns before the WorkSpaces are
  created.

  </note>
  """
  def create_workspaces(client, input, options \\ []) do
    request(client, "CreateWorkspaces", input, options)
  end

  @doc """
  Deletes tags from a WorkSpace.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Describes tags for a WorkSpace.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Obtains information about the WorkSpace bundles that are available to your
  account in the specified region.

  You can filter the results with either the `BundleIds` parameter, or the
  `Owner` parameter, but not both.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspace_bundles(client, input, options \\ []) do
    request(client, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
  Retrieves information about the AWS Directory Service directories in the
  region that are registered with Amazon WorkSpaces and are available to your
  account.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspace_directories(client, input, options \\ []) do
    request(client, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
  Obtains information about the specified WorkSpaces.

  Only one of the filter parameters, such as `BundleId`, `DirectoryId`, or
  `WorkspaceIds`, can be specified at a time.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the `NextToken`
  response member contains a token that you pass in the next call to this
  operation to retrieve the next set of items.
  """
  def describe_workspaces(client, input, options \\ []) do
    request(client, "DescribeWorkspaces", input, options)
  end

  @doc """
  Describes the connection status of a specified WorkSpace.
  """
  def describe_workspaces_connection_status(client, input, options \\ []) do
    request(client, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
  Modifies the WorkSpace properties, including the RunningMode and AutoStop
  time.
  """
  def modify_workspace_properties(client, input, options \\ []) do
    request(client, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
  Reboots the specified WorkSpaces.

  To be able to reboot a WorkSpace, the WorkSpace must have a **State** of
  `AVAILABLE`, `IMPAIRED`, or `INOPERABLE`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have rebooted.

  </note>
  """
  def reboot_workspaces(client, input, options \\ []) do
    request(client, "RebootWorkspaces", input, options)
  end

  @doc """
  Rebuilds the specified WorkSpaces.

  Rebuilding a WorkSpace is a potentially destructive action that can result
  in the loss of data. Rebuilding a WorkSpace causes the following to occur:

  <ul> <li> The system is restored to the image of the bundle that the
  WorkSpace is created from. Any applications that have been installed, or
  system settings that have been made since the WorkSpace was created will be
  lost.

  </li> <li> The data drive (D drive) is re-created from the last automatic
  snapshot taken of the data drive. The current contents of the data drive
  are overwritten. Automatic snapshots of the data drive are taken every 12
  hours, so the snapshot can be as much as 12 hours old.

  </li> </ul> To be able to rebuild a WorkSpace, the WorkSpace must have a
  **State** of `AVAILABLE` or `ERROR`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have been completely rebuilt.

  </note>
  """
  def rebuild_workspaces(client, input, options \\ []) do
    request(client, "RebuildWorkspaces", input, options)
  end

  @doc """
  Starts the specified WorkSpaces. The API only works with WorkSpaces that
  have RunningMode configured as AutoStop and the State set to “STOPPED.”
  """
  def start_workspaces(client, input, options \\ []) do
    request(client, "StartWorkspaces", input, options)
  end

  @doc """
  Stops the specified WorkSpaces. The API only works with WorkSpaces that
  have RunningMode configured as AutoStop and the State set to AVAILABLE,
  IMPAIRED, UNHEALTHY, or ERROR.
  """
  def stop_workspaces(client, input, options \\ []) do
    request(client, "StopWorkspaces", input, options)
  end

  @doc """
  Terminates the specified WorkSpaces.

  Terminating a WorkSpace is a permanent action and cannot be undone. The
  user's data is not maintained and will be destroyed. If you need to archive
  any user data, contact Amazon Web Services before terminating the
  WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  <note> This operation is asynchronous and returns before the WorkSpaces
  have been completely terminated.

  </note>
  """
  def terminate_workspaces(client, input, options \\ []) do
    request(client, "TerminateWorkspaces", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "workspaces"}
    host = get_host("workspaces", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "WorkspacesService.#{action}"}]
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
