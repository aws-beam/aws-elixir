# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DirectoryService do
  @moduledoc """
  AWS Directory Service

  This is the *AWS Directory Service API Reference*. This guide provides
  detailed information about AWS Directory Service operations, data types,
  parameters, and errors.
  """

  @doc """
  Creates an AD Connector to connect an on-premises directory.
  """
  def connect_directory(client, input, options \\ []) do
    request(client, "ConnectDirectory", input, options)
  end

  @doc """
  Creates an alias for a directory and assigns the alias to the directory.
  The alias is used to construct the access URL for the directory, such as
  `http://&#x3C;alias&#x3E;.awsapps.com`.

  <important> After an alias has been created, it cannot be deleted or
  reused, so this operation should only be used when absolutely necessary.

  </important>
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a computer account in the specified directory, and joins the
  computer to the directory.
  """
  def create_computer(client, input, options \\ []) do
    request(client, "CreateComputer", input, options)
  end

  @doc """
  Creates a Simple AD directory.
  """
  def create_directory(client, input, options \\ []) do
    request(client, "CreateDirectory", input, options)
  end

  @doc """
  Creates a snapshot of an existing directory.

  You cannot take snapshots of extended or connected directories.
  """
  def create_snapshot(client, input, options \\ []) do
    request(client, "CreateSnapshot", input, options)
  end

  @doc """
  Deletes an AWS Directory Service directory.
  """
  def delete_directory(client, input, options \\ []) do
    request(client, "DeleteDirectory", input, options)
  end

  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(client, input, options \\ []) do
    request(client, "DeleteSnapshot", input, options)
  end

  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the
  directory identifiers in the *DirectoryIds* parameter. Otherwise, all
  directories that belong to the current account are returned.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeDirectoriesResult.NextToken* member contains a token that you pass
  in the next call to `DescribeDirectories` to retrieve the next set of
  items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_directories(client, input, options \\ []) do
    request(client, "DescribeDirectories", input, options)
  end

  @doc """
  Obtains information about the directory snapshots that belong to this
  account.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeSnapshots.NextToken* member contains a token that you pass in the
  next call to `DescribeSnapshots` to retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_snapshots(client, input, options \\ []) do
    request(client, "DescribeSnapshots", input, options)
  end

  @doc """
  Disables multi-factor authentication (MFA) with Remote Authentication Dial
  In User Service (RADIUS) for an AD Connector directory.
  """
  def disable_radius(client, input, options \\ []) do
    request(client, "DisableRadius", input, options)
  end

  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(client, input, options \\ []) do
    request(client, "DisableSso", input, options)
  end

  @doc """
  Enables multi-factor authentication (MFA) with Remote Authentication Dial
  In User Service (RADIUS) for an AD Connector directory.
  """
  def enable_radius(client, input, options \\ []) do
    request(client, "EnableRadius", input, options)
  end

  @doc """
  Enables single-sign on for a directory.
  """
  def enable_sso(client, input, options \\ []) do
    request(client, "EnableSso", input, options)
  end

  @doc """
  Obtains directory limit information for the current region.
  """
  def get_directory_limits(client, input, options \\ []) do
    request(client, "GetDirectoryLimits", input, options)
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(client, input, options \\ []) do
    request(client, "GetSnapshotLimits", input, options)
  end

  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the
  directory after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the progress of the restore operation by calling the
  `DescribeDirectories` operation with the directory identifier. When the
  **DirectoryDescription.Stage** value changes to `Active`, the restore
  operation is complete.
  """
  def restore_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector directory.
  """
  def update_radius(client, input, options \\ []) do
    request(client, "UpdateRadius", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "ds"}
    host = "ds.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "DirectoryService_20150416.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end

