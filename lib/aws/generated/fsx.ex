# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FSx do
  @moduledoc """
  Amazon FSx is a fully managed service that makes it easy for storage and
  application administrators to launch and use shared file storage.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-03-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fsx",
      global?: false,
      protocol: "json",
      service_id: "FSx",
      signature_version: "v4",
      signing_name: "fsx",
      target_prefix: "AWSSimbaAPIService_v20180301"
    }
  end

  @doc """
  Use this action to associate one or more Domain Name Server (DNS) aliases with
  an existing Amazon FSx for Windows File Server file system.

  A file systen can have a maximum of 50 DNS aliases associated with it at any one
  time. If you try to associate a DNS alias that is already associated with the
  file system, FSx takes no action on that alias in the request. For more
  information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  and [Walkthrough 5: Using DNS aliases to access your file system](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
  including additional steps you must take to be able to access your file system
  using a DNS alias.

  The system response shows the DNS aliases that Amazon FSx is attempting to
  associate with the file system. Use the API operation to monitor the status of
  the aliases Amazon FSx is associating with the file system.
  """
  def associate_file_system_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateFileSystemAliases", input, options)
  end

  @doc """
  Cancels an existing Amazon FSx for Lustre data repository task if that task is
  in either the `PENDING` or `EXECUTING` state.

  When you cancel a task, Amazon FSx does the following.

    * Any files that FSx has already exported are not reverted.

    * FSx continues to export any files that are "in-flight" when the
  cancel operation is received.

    * FSx does not export any files that have not yet been exported.
  """
  def cancel_data_repository_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelDataRepositoryTask", input, options)
  end

  @doc """
  Creates a backup of an existing Amazon FSx file system.

  Creating regular backups for your file system is a best practice, enabling you
  to restore a file system from a backup if an issue arises with the original file
  system.

  For Amazon FSx for Lustre file systems, you can create a backup only for file
  systems with the following configuration:

    * a Persistent deployment type

    * is *not* linked to a data respository.

  For more information about backing up Amazon FSx for Lustre file systems, see
  [Working with FSx for Lustre backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

  For more information about backing up Amazon FSx for Windows file systems, see
  [Working with FSx for Windows backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

  If a backup with the specified client request token exists, and the parameters
  match, this operation returns the description of the existing backup. If a
  backup specified client request token exists, and the parameters don't match,
  this operation returns `IncompatibleParameterError`. If a backup with the
  specified client request token doesn't exist, `CreateBackup` does the following:

    * Creates a new Amazon FSx backup with an assigned ID, and an
  initial lifecycle state of `CREATING`.

    * Returns the description of the backup.

  By using the idempotent operation, you can retry a `CreateBackup` operation
  without the risk of creating an extra backup. This approach can be useful when
  an initial call fails in a way that makes it unclear whether a backup was
  created. If you use the same client request token and the initial call created a
  backup, the operation returns a successful result because all the parameters are
  the same.

  The `CreateBackup` operation returns while the backup's lifecycle state is still
  `CREATING`. You can check the backup creation status by calling the
  `DescribeBackups` operation, which returns the backup state along with other
  information.
  """
  def create_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateBackup", input, options)
  end

  @doc """
  Creates an Amazon FSx for Lustre data repository task.

  You use data repository tasks to perform bulk operations between your Amazon FSx
  file system and its linked data repository. An example of a data repository task
  is exporting any data and metadata changes, including POSIX metadata, to files,
  directories, and symbolic links (symlinks) from your FSx file system to its
  linked data repository. A `CreateDataRepositoryTask` operation will fail if a
  data repository is not linked to the FSx file system. To learn more about data
  repository tasks, see [Data Repository Tasks](https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
  To learn more about linking a data repository to your file system, see [Linking your file system to an S3
  bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-fs-linked-data-repo.html).
  """
  def create_data_repository_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataRepositoryTask", input, options)
  end

  @doc """
  Creates a new, empty Amazon FSx file system.

  If a file system with the specified client request token exists and the
  parameters match, `CreateFileSystem` returns the description of the existing
  file system. If a file system specified client request token exists and the
  parameters don't match, this call returns `IncompatibleParameterError`. If a
  file system with the specified client request token doesn't exist,
  `CreateFileSystem` does the following:

    * Creates a new, empty Amazon FSx file system with an assigned ID,
  and an initial lifecycle state of `CREATING`.

    * Returns the description of the file system.

  This operation requires a client request token in the request that Amazon FSx
  uses to ensure idempotent creation. This means that calling the operation
  multiple times with the same client request token has no effect. By using the
  idempotent operation, you can retry a `CreateFileSystem` operation without the
  risk of creating an extra file system. This approach can be useful when an
  initial call fails in a way that makes it unclear whether a file system was
  created. Examples are if a transport level timeout occurred, or your connection
  was reset. If you use the same client request token and the initial call created
  a file system, the client receives success as long as the parameters are the
  same.

  The `CreateFileSystem` call returns while the file system's lifecycle state is
  still `CREATING`. You can check the file-system creation status by calling the
  `DescribeFileSystems` operation, which returns the file system state along with
  other information.
  """
  def create_file_system(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFileSystem", input, options)
  end

  @doc """
  Creates a new Amazon FSx file system from an existing Amazon FSx backup.

  If a file system with the specified client request token exists and the
  parameters match, this operation returns the description of the file system. If
  a client request token specified by the file system exists and the parameters
  don't match, this call returns `IncompatibleParameterError`. If a file system
  with the specified client request token doesn't exist, this operation does the
  following:

    * Creates a new Amazon FSx file system from backup with an assigned
  ID, and an initial lifecycle state of `CREATING`.

    * Returns the description of the file system.

  Parameters like Active Directory, default share name, automatic backup, and
  backup settings default to the parameters of the file system that was backed up,
  unless overridden. You can explicitly supply other settings.

  By using the idempotent operation, you can retry a `CreateFileSystemFromBackup`
  call without the risk of creating an extra file system. This approach can be
  useful when an initial call fails in a way that makes it unclear whether a file
  system was created. Examples are if a transport level timeout occurred, or your
  connection was reset. If you use the same client request token and the initial
  call created a file system, the client receives success as long as the
  parameters are the same.

  The `CreateFileSystemFromBackup` call returns while the file system's lifecycle
  state is still `CREATING`. You can check the file-system creation status by
  calling the `DescribeFileSystems` operation, which returns the file system state
  along with other information.
  """
  def create_file_system_from_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFileSystemFromBackup", input, options)
  end

  @doc """
  Deletes an Amazon FSx backup, deleting its contents.

  After deletion, the backup no longer exists, and its data is gone.

  The `DeleteBackup` call returns instantly. The backup will not show up in later
  `DescribeBackups` calls.

  The data in a deleted backup is also deleted and can't be recovered by any
  means.
  """
  def delete_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBackup", input, options)
  end

  @doc """
  Deletes a file system, deleting its contents.

  After deletion, the file system no longer exists, and its data is gone. Any
  existing automatic backups will also be deleted.

  By default, when you delete an Amazon FSx for Windows File Server file system, a
  final backup is created upon deletion. This final backup is not subject to the
  file system's retention policy, and must be manually deleted.

  The `DeleteFileSystem` action returns while the file system has the `DELETING`
  status. You can check the file system deletion status by calling the
  `DescribeFileSystems` action, which returns a list of file systems in your
  account. If you pass the file system ID for a deleted file system, the
  `DescribeFileSystems` returns a `FileSystemNotFound` error.

  Deleting an Amazon FSx for Lustre file system will fail with a 400 BadRequest if
  a data repository task is in a `PENDING` or `EXECUTING` state.

  The data in a deleted file system is also deleted and can't be recovered by any
  means.
  """
  def delete_file_system(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFileSystem", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx backups, if a `BackupIds` value
  is provided for that backup.

  Otherwise, it returns all backups owned by your AWS account in the AWS Region of
  the endpoint that you're calling.

  When retrieving all backups, you can optionally specify the `MaxResults`
  parameter to limit the number of backups in a response. If more backups remain,
  Amazon FSx returns a `NextToken` value in the response. In this case, send a
  later request with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.

  This action is used in an iterative process to retrieve a list of your backups.
  `DescribeBackups` is called first without a `NextToken`value. Then the action
  continues to be called with the `NextToken` parameter set to the value of the
  last `NextToken` value until a response has no `NextToken`.

  When using this action, keep the following in mind:

    * The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

    * The order of backups returned in the response of one
  `DescribeBackups` call and the order of backups returned across the responses of
  a multi-call iteration is unspecified.
  """
  def describe_backups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBackups", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx for Lustre data repository tasks,
  if one or more `TaskIds` values are provided in the request, or if filters are
  used in the request.

  You can use filters to narrow the response to include just tasks for specific
  file systems, or tasks in a specific lifecycle state. Otherwise, it returns all
  data repository tasks owned by your AWS account in the AWS Region of the
  endpoint that you're calling.

  When retrieving all tasks, you can paginate the response by using the optional
  `MaxResults` parameter to limit the number of tasks returned in a response. If
  more tasks remain, Amazon FSx returns a `NextToken` value in the response. In
  this case, send a later request with the `NextToken` request parameter set to
  the value of `NextToken` from the last response.
  """
  def describe_data_repository_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataRepositoryTasks", input, options)
  end

  @doc """
  Returns the DNS aliases that are associated with the specified Amazon FSx for
  Windows File Server file system.

  A history of all DNS aliases that have been associated with and disassociated
  from the file system is available in the list of `AdministrativeAction` provided
  in the `DescribeFileSystems` operation response.
  """
  def describe_file_system_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFileSystemAliases", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx file systems, if a
  `FileSystemIds` value is provided for that file system.

  Otherwise, it returns descriptions of all file systems owned by your AWS account
  in the AWS Region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify the
  `MaxResults` parameter to limit the number of descriptions in a response. If
  more file system descriptions remain, Amazon FSx returns a `NextToken` value in
  the response. In this case, send a later request with the `NextToken` request
  parameter set to the value of `NextToken` from the last response.

  This action is used in an iterative process to retrieve a list of your file
  system descriptions. `DescribeFileSystems` is called first without a
  `NextToken`value. Then the action continues to be called with the `NextToken`
  parameter set to the value of the last `NextToken` value until a response has no
  `NextToken`.

  When using this action, keep the following in mind:

    * The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

    * The order of file systems returned in the response of one
  `DescribeFileSystems` call and the order of file systems returned across the
  responses of a multicall iteration is unspecified.
  """
  def describe_file_systems(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFileSystems", input, options)
  end

  @doc """
  Use this action to disassociate, or remove, one or more Domain Name Service
  (DNS) aliases from an Amazon FSx for Windows File Server file system.

  If you attempt to disassociate a DNS alias that is not associated with the file
  system, Amazon FSx responds with a 400 Bad Request. For more information, see
  [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

  The system generated response showing the DNS aliases that Amazon FSx is
  attempting to disassociate from the file system. Use the API operation to
  monitor the status of the aliases Amazon FSx is disassociating with the file
  system.
  """
  def disassociate_file_system_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateFileSystemAliases", input, options)
  end

  @doc """
  Lists tags for an Amazon FSx file systems and backups in the case of Amazon FSx
  for Windows File Server.

  When retrieving all tags, you can optionally specify the `MaxResults` parameter
  to limit the number of tags in a response. If more tags remain, Amazon FSx
  returns a `NextToken` value in the response. In this case, send a later request
  with the `NextToken` request parameter set to the value of `NextToken` from the
  last response.

  This action is used in an iterative process to retrieve a list of your tags.
  `ListTagsForResource` is called first without a `NextToken`value. Then the
  action continues to be called with the `NextToken` parameter set to the value of
  the last `NextToken` value until a response has no `NextToken`.

  When using this action, keep the following in mind:

    * The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken` value.

    * The order of tags returned in the response of one
  `ListTagsForResource` call and the order of tags returned across the responses
  of a multi-call iteration is unspecified.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Tags an Amazon FSx resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  This action removes a tag from an Amazon FSx resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Use this operation to update the configuration of an existing Amazon FSx file
  system.

  You can update multiple properties in a single request.

  For Amazon FSx for Windows File Server file systems, you can update the
  following properties:

    * AutomaticBackupRetentionDays

    * DailyAutomaticBackupStartTime

    * SelfManagedActiveDirectoryConfiguration

    * StorageCapacity

    * ThroughputCapacity

    * WeeklyMaintenanceStartTime

  For Amazon FSx for Lustre file systems, you can update the following properties:

    * AutoImportPolicy

    * AutomaticBackupRetentionDays

    * DailyAutomaticBackupStartTime

    * StorageCapacity

    * WeeklyMaintenanceStartTime
  """
  def update_file_system(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFileSystem", input, options)
  end
end