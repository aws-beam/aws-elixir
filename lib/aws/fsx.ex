# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FSx do
  @moduledoc """
  Amazon FSx is a fully managed service that makes it easy for storage and
  application administrators to launch and use shared file storage.
  """

  @doc """
  Cancels an existing Amazon FSx for Lustre data repository task if that task
  is in either the `PENDING` or `EXECUTING` state. When you cancel a task,
  Amazon FSx does the following.

  <ul> <li> Any files that FSx has already exported are not reverted.

  </li> <li> FSx continues to export any files that are "in-flight" when the
  cancel operation is received.

  </li> <li> FSx does not export any files that have not yet been exported.

  </li> </ul>
  """
  def cancel_data_repository_task(client, input, options \\ []) do
    request(client, "CancelDataRepositoryTask", input, options)
  end

  @doc """
  Creates a backup of an existing Amazon FSx file system. Creating regular
  backups for your file system is a best practice, enabling you to restore a
  file system from a backup if an issue arises with the original file system.

  For Amazon FSx for Lustre file systems, you can create a backup only for
  file systems with the following configuration:

  <ul> <li> a Persistent deployment type

  </li> <li> is *not* linked to a data respository.

  </li> </ul> For more information about backing up Amazon FSx for Lustre
  file systems, see [Working with FSx for Lustre
  backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

  For more information about backing up Amazon FSx for Lustre file systems,
  see [Working with FSx for Windows
  backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

  If a backup with the specified client request token exists, and the
  parameters match, this operation returns the description of the existing
  backup. If a backup specified client request token exists, and the
  parameters don't match, this operation returns
  `IncompatibleParameterError`. If a backup with the specified client request
  token doesn't exist, `CreateBackup` does the following:

  <ul> <li> Creates a new Amazon FSx backup with an assigned ID, and an
  initial lifecycle state of `CREATING`.

  </li> <li> Returns the description of the backup.

  </li> </ul> By using the idempotent operation, you can retry a
  `CreateBackup` operation without the risk of creating an extra backup. This
  approach can be useful when an initial call fails in a way that makes it
  unclear whether a backup was created. If you use the same client request
  token and the initial call created a backup, the operation returns a
  successful result because all the parameters are the same.

  The `CreateBackup` operation returns while the backup's lifecycle state is
  still `CREATING`. You can check the backup creation status by calling the
  `DescribeBackups` operation, which returns the backup state along with
  other information.
  """
  def create_backup(client, input, options \\ []) do
    request(client, "CreateBackup", input, options)
  end

  @doc """
  Creates an Amazon FSx for Lustre data repository task. You use data
  repository tasks to perform bulk operations between your Amazon FSx file
  system and its linked data repository. An example of a data repository task
  is exporting any data and metadata changes, including POSIX metadata, to
  files, directories, and symbolic links (symlinks) from your FSx file system
  to its linked data repository. A `CreateDataRepositoryTask` operation will
  fail if a data repository is not linked to the FSx file system. To learn
  more about data repository tasks, see [Using Data Repository
  Tasks](https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
  To learn more about linking a data repository to your file system, see
  [Setting the Export
  Prefix](https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repository.html#export-prefix).
  """
  def create_data_repository_task(client, input, options \\ []) do
    request(client, "CreateDataRepositoryTask", input, options)
  end

  @doc """
  Creates a new, empty Amazon FSx file system.

  If a file system with the specified client request token exists and the
  parameters match, `CreateFileSystem` returns the description of the
  existing file system. If a file system specified client request token
  exists and the parameters don't match, this call returns
  `IncompatibleParameterError`. If a file system with the specified client
  request token doesn't exist, `CreateFileSystem` does the following:

  <ul> <li> Creates a new, empty Amazon FSx file system with an assigned ID,
  and an initial lifecycle state of `CREATING`.

  </li> <li> Returns the description of the file system.

  </li> </ul> This operation requires a client request token in the request
  that Amazon FSx uses to ensure idempotent creation. This means that calling
  the operation multiple times with the same client request token has no
  effect. By using the idempotent operation, you can retry a
  `CreateFileSystem` operation without the risk of creating an extra file
  system. This approach can be useful when an initial call fails in a way
  that makes it unclear whether a file system was created. Examples are if a
  transport level timeout occurred, or your connection was reset. If you use
  the same client request token and the initial call created a file system,
  the client receives success as long as the parameters are the same.

  <note> The `CreateFileSystem` call returns while the file system's
  lifecycle state is still `CREATING`. You can check the file-system creation
  status by calling the `DescribeFileSystems` operation, which returns the
  file system state along with other information.

  </note>
  """
  def create_file_system(client, input, options \\ []) do
    request(client, "CreateFileSystem", input, options)
  end

  @doc """
  Creates a new Amazon FSx file system from an existing Amazon FSx backup.

  If a file system with the specified client request token exists and the
  parameters match, this operation returns the description of the file
  system. If a client request token specified by the file system exists and
  the parameters don't match, this call returns `IncompatibleParameterError`.
  If a file system with the specified client request token doesn't exist,
  this operation does the following:

  <ul> <li> Creates a new Amazon FSx file system from backup with an assigned
  ID, and an initial lifecycle state of `CREATING`.

  </li> <li> Returns the description of the file system.

  </li> </ul> Parameters like Active Directory, default share name, automatic
  backup, and backup settings default to the parameters of the file system
  that was backed up, unless overridden. You can explicitly supply other
  settings.

  By using the idempotent operation, you can retry a
  `CreateFileSystemFromBackup` call without the risk of creating an extra
  file system. This approach can be useful when an initial call fails in a
  way that makes it unclear whether a file system was created. Examples are
  if a transport level timeout occurred, or your connection was reset. If you
  use the same client request token and the initial call created a file
  system, the client receives success as long as the parameters are the same.

  <note> The `CreateFileSystemFromBackup` call returns while the file
  system's lifecycle state is still `CREATING`. You can check the file-system
  creation status by calling the `DescribeFileSystems` operation, which
  returns the file system state along with other information.

  </note>
  """
  def create_file_system_from_backup(client, input, options \\ []) do
    request(client, "CreateFileSystemFromBackup", input, options)
  end

  @doc """
  Deletes an Amazon FSx backup, deleting its contents. After deletion, the
  backup no longer exists, and its data is gone.

  The `DeleteBackup` call returns instantly. The backup will not show up in
  later `DescribeBackups` calls.

  <important> The data in a deleted backup is also deleted and can't be
  recovered by any means.

  </important>
  """
  def delete_backup(client, input, options \\ []) do
    request(client, "DeleteBackup", input, options)
  end

  @doc """
  Deletes a file system, deleting its contents. After deletion, the file
  system no longer exists, and its data is gone. Any existing automatic
  backups will also be deleted.

  By default, when you delete an Amazon FSx for Windows File Server file
  system, a final backup is created upon deletion. This final backup is not
  subject to the file system's retention policy, and must be manually
  deleted.

  The `DeleteFileSystem` action returns while the file system has the
  `DELETING` status. You can check the file system deletion status by calling
  the `DescribeFileSystems` action, which returns a list of file systems in
  your account. If you pass the file system ID for a deleted file system, the
  `DescribeFileSystems` returns a `FileSystemNotFound` error.

  <note> Deleting an Amazon FSx for Lustre file system will fail with a 400
  BadRequest if a data repository task is in a `PENDING` or `EXECUTING`
  state.

  </note> <important> The data in a deleted file system is also deleted and
  can't be recovered by any means.

  </important>
  """
  def delete_file_system(client, input, options \\ []) do
    request(client, "DeleteFileSystem", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx backups, if a `BackupIds`
  value is provided for that backup. Otherwise, it returns all backups owned
  by your AWS account in the AWS Region of the endpoint that you're calling.

  When retrieving all backups, you can optionally specify the `MaxResults`
  parameter to limit the number of backups in a response. If more backups
  remain, Amazon FSx returns a `NextToken` value in the response. In this
  case, send a later request with the `NextToken` request parameter set to
  the value of `NextToken` from the last response.

  This action is used in an iterative process to retrieve a list of your
  backups. `DescribeBackups` is called first without a `NextToken`value. Then
  the action continues to be called with the `NextToken` parameter set to the
  value of the last `NextToken` value until a response has no `NextToken`.

  When using this action, keep the following in mind:

  <ul> <li> The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

  </li> <li> The order of backups returned in the response of one
  `DescribeBackups` call and the order of backups returned across the
  responses of a multi-call iteration is unspecified.

  </li> </ul>
  """
  def describe_backups(client, input, options \\ []) do
    request(client, "DescribeBackups", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx for Lustre data repository
  tasks, if one or more `TaskIds` values are provided in the request, or if
  filters are used in the request. You can use filters to narrow the response
  to include just tasks for specific file systems, or tasks in a specific
  lifecycle state. Otherwise, it returns all data repository tasks owned by
  your AWS account in the AWS Region of the endpoint that you're calling.

  When retrieving all tasks, you can paginate the response by using the
  optional `MaxResults` parameter to limit the number of tasks returned in a
  response. If more tasks remain, Amazon FSx returns a `NextToken` value in
  the response. In this case, send a later request with the `NextToken`
  request parameter set to the value of `NextToken` from the last response.
  """
  def describe_data_repository_tasks(client, input, options \\ []) do
    request(client, "DescribeDataRepositoryTasks", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx file systems, if a
  `FileSystemIds` value is provided for that file system. Otherwise, it
  returns descriptions of all file systems owned by your AWS account in the
  AWS Region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify
  the `MaxResults` parameter to limit the number of descriptions in a
  response. If more file system descriptions remain, Amazon FSx returns a
  `NextToken` value in the response. In this case, send a later request with
  the `NextToken` request parameter set to the value of `NextToken` from the
  last response.

  This action is used in an iterative process to retrieve a list of your file
  system descriptions. `DescribeFileSystems` is called first without a
  `NextToken`value. Then the action continues to be called with the
  `NextToken` parameter set to the value of the last `NextToken` value until
  a response has no `NextToken`.

  When using this action, keep the following in mind:

  <ul> <li> The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

  </li> <li> The order of file systems returned in the response of one
  `DescribeFileSystems` call and the order of file systems returned across
  the responses of a multicall iteration is unspecified.

  </li> </ul>
  """
  def describe_file_systems(client, input, options \\ []) do
    request(client, "DescribeFileSystems", input, options)
  end

  @doc """
  Lists tags for an Amazon FSx file systems and backups in the case of Amazon
  FSx for Windows File Server.

  When retrieving all tags, you can optionally specify the `MaxResults`
  parameter to limit the number of tags in a response. If more tags remain,
  Amazon FSx returns a `NextToken` value in the response. In this case, send
  a later request with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.

  This action is used in an iterative process to retrieve a list of your
  tags. `ListTagsForResource` is called first without a `NextToken`value.
  Then the action continues to be called with the `NextToken` parameter set
  to the value of the last `NextToken` value until a response has no
  `NextToken`.

  When using this action, keep the following in mind:

  <ul> <li> The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

  </li> <li> The order of tags returned in the response of one
  `ListTagsForResource` call and the order of tags returned across the
  responses of a multi-call iteration is unspecified.

  </li> </ul>
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Tags an Amazon FSx resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  This action removes a tag from an Amazon FSx resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Use this operation to update the configuration of an existing Amazon FSx
  file system. You can update multiple properties in a single request.

  For Amazon FSx for Windows File Server file systems, you can update the
  following properties:

  <ul> <li> AutomaticBackupRetentionDays

  </li> <li> DailyAutomaticBackupStartTime

  </li> <li> SelfManagedActiveDirectoryConfiguration

  </li> <li> StorageCapacity

  </li> <li> ThroughputCapacity

  </li> <li> WeeklyMaintenanceStartTime

  </li> </ul> For Amazon FSx for Lustre file systems, you can update the
  following properties:

  <ul> <li> AutoImportPolicy

  </li> <li> AutomaticBackupRetentionDays

  </li> <li> DailyAutomaticBackupStartTime

  </li> <li> WeeklyMaintenanceStartTime

  </li> </ul>
  """
  def update_file_system(client, input, options \\ []) do
    request(client, "UpdateFileSystem", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "fsx"}
    host = build_host("fsx", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSSimbaAPIService_v20180301.#{action}"}
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
