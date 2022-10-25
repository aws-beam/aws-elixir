# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataSync do
  @moduledoc """
  DataSync

  DataSync is a managed data transfer service that makes it simpler for you to
  automate moving data between on-premises storage and Amazon Web Services storage
  services.

  You also can use DataSync to transfer data between other cloud providers and
  Amazon Web Services storage services.

  This API interface reference includes documentation for using DataSync
  programmatically. For complete information, see the * [DataSync User Guide](https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "DataSync",
      api_version: "2018-11-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datasync",
      global?: false,
      protocol: "json",
      service_id: "DataSync",
      signature_version: "v4",
      signing_name: "datasync",
      target_prefix: "FmrsService"
    }
  end

  @doc """
  Stops an DataSync task execution that's in progress.

  The transfer of some files are abruptly interrupted. File contents that're
  transferred to the destination might be incomplete or inconsistent with the
  source files.

  However, if you start a new task execution using the same task and allow it to
  finish, file content on the destination will be complete and consistent. This
  applies to other unexpected failures that interrupt a task execution. In all of
  these cases, DataSync successfully completes the transfer when you start the
  next task execution.
  """
  def cancel_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelTaskExecution", input, options)
  end

  @doc """
  Activates an DataSync agent that you have deployed in your storage environment.

  The activation process associates your agent with your account. In the
  activation process, you specify information such as the Amazon Web Services
  Region that you want to activate the agent in. You activate the agent in the
  Amazon Web Services Region where your target locations (in Amazon S3 or Amazon
  EFS) reside. Your tasks are created in this Amazon Web Services Region.

  You can activate the agent in a VPC (virtual private cloud) or provide the agent
  access to a VPC endpoint so you can run tasks without going over the public
  internet.

  You can use an agent for more than one location. If a task uses multiple agents,
  all of them need to have status AVAILABLE for the task to run. If you use
  multiple agents for a source location, the status of all the agents must be
  AVAILABLE for the task to run.

  Agents are automatically updated by Amazon Web Services on a regular basis,
  using a mechanism that ensures minimal interruption to your tasks.
  """
  def create_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAgent", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon EFS file system that DataSync can access for a
  transfer.

  For more information, see [Creating a location for Amazon EFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html).
  """
  def create_location_efs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationEfs", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon FSx for Lustre file system.
  """
  def create_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxLustre", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon FSx for NetApp ONTAP file system that DataSync
  can access for a transfer.

  For more information, see [Creating a location for FSx for ONTAP](https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html).
  """
  def create_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxOntap", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon FSx for OpenZFS file system that DataSync can
  access for a transfer.

  For more information, see [Creating a location for FSx for OpenZFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html).

  Request parameters related to `SMB` aren't supported with the
  `CreateLocationFsxOpenZfs` operation.
  """
  def create_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxOpenZfs", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon FSx for Windows File Server file system.
  """
  def create_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxWindows", input, options)
  end

  @doc """
  Creates an endpoint for a Hadoop Distributed File System (HDFS).
  """
  def create_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationHdfs", input, options)
  end

  @doc """
  Defines a file system on a Network File System (NFS) server that can be read
  from or written to.
  """
  def create_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationNfs", input, options)
  end

  @doc """
  Creates an endpoint for an object storage system that DataSync can access for a
  transfer.

  For more information, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
  """
  def create_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationObjectStorage", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon S3 bucket that DataSync can access for a
  transfer.

  For more information, see [Create an Amazon S3 location](https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli)
  in the *DataSync User Guide*.
  """
  def create_location_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationS3", input, options)
  end

  @doc """
  Defines a file system on a Server Message Block (SMB) server that can be read
  from or written to.
  """
  def create_location_smb(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationSmb", input, options)
  end

  @doc """
  Configures a task, which defines where and how DataSync transfers your data.

  A task includes a source location, a destination location, and the preferences
  for how and when you want to transfer your data (such as bandwidth limits,
  scheduling, among other options).

  When you create a task that transfers data between Amazon Web Services services
  in different Amazon Web Services Regions, one of your locations must reside in
  the Region where you're using DataSync.

  For more information, see the following topics:

    * [Working with DataSync locations](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html)

    * [Configure DataSync task settings](https://docs.aws.amazon.com/datasync/latest/userguide/create-task.html)
  """
  def create_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTask", input, options)
  end

  @doc """
  Deletes an agent.

  To specify which agent to delete, use the Amazon Resource Name (ARN) of the
  agent in your request. The operation disassociates the agent from your Amazon
  Web Services account. However, it doesn't delete the agent virtual machine (VM)
  from your on-premises environment.
  """
  def delete_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAgent", input, options)
  end

  @doc """
  Deletes the configuration of a location used by DataSync.
  """
  def delete_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """
  Deletes a task.
  """
  def delete_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTask", input, options)
  end

  @doc """
  Returns metadata such as the name, the network interfaces, and the status (that
  is, whether the agent is running or not) for an agent.

  To specify which agent to describe, use the Amazon Resource Name (ARN) of the
  agent in your request.
  """
  def describe_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgent", input, options)
  end

  @doc """
  Returns metadata about your DataSync location for an Amazon EFS file system.
  """
  def describe_location_efs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationEfs", input, options)
  end

  @doc """
  Provides details about how an DataSync location for an Amazon FSx for Lustre
  file system is configured.
  """
  def describe_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxLustre", input, options)
  end

  @doc """
  Provides details about how an DataSync location for an Amazon FSx for NetApp
  ONTAP file system is configured.

  If your location uses SMB, the `DescribeLocationFsxOntap` operation doesn't
  actually return a `Password`.
  """
  def describe_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOntap", input, options)
  end

  @doc """
  Provides details about how an DataSync location for an Amazon FSx for OpenZFS
  file system is configured.

  Response elements related to `SMB` aren't supported with the
  `DescribeLocationFsxOpenZfs` operation.
  """
  def describe_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOpenZfs", input, options)
  end

  @doc """
  Returns metadata about an Amazon FSx for Windows File Server location, such as
  information about its path.
  """
  def describe_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxWindows", input, options)
  end

  @doc """
  Returns metadata, such as the authentication information about the Hadoop
  Distributed File System (HDFS) location.
  """
  def describe_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationHdfs", input, options)
  end

  @doc """
  Returns metadata, such as the path information, about an NFS location.
  """
  def describe_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationNfs", input, options)
  end

  @doc """
  Returns metadata about your DataSync location for an object storage system.
  """
  def describe_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationObjectStorage", input, options)
  end

  @doc """
  Returns metadata, such as bucket name, about an Amazon S3 bucket location.
  """
  def describe_location_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationS3", input, options)
  end

  @doc """
  Returns metadata, such as the path and user information about an SMB location.
  """
  def describe_location_smb(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationSmb", input, options)
  end

  @doc """
  Returns metadata about a task.
  """
  def describe_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTask", input, options)
  end

  @doc """
  Returns detailed metadata about a task that is being executed.
  """
  def describe_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskExecution", input, options)
  end

  @doc """
  Returns a list of agents owned by an Amazon Web Services account in the Amazon
  Web Services Region specified in the request.

  The returned list is ordered by agent Amazon Resource Name (ARN).

  By default, this operation returns a maximum of 100 agents. This operation
  supports pagination that enables you to optionally reduce the number of agents
  returned in a response.

  If you have more agents than are returned in a response (that is, the response
  returns only a truncated list of your agents), the response contains a marker
  that you can specify in your next request to fetch the next page of agents.
  """
  def list_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgents", input, options)
  end

  @doc """
  Returns a list of source and destination locations.

  If you have more locations than are returned in a response (that is, the
  response returns only a truncated list of your agents), the response contains a
  token that you can specify in your next request to fetch the next page of
  locations.
  """
  def list_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLocations", input, options)
  end

  @doc """
  Returns all the tags associated with a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of executed tasks.
  """
  def list_task_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskExecutions", input, options)
  end

  @doc """
  Returns a list of the DataSync tasks you created.
  """
  def list_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTasks", input, options)
  end

  @doc """
  Starts a specific invocation of a task.

  A `TaskExecution` value represents an individual run of a task. Each task can
  have at most one `TaskExecution` at a time.

  `TaskExecution` has the following transition phases: INITIALIZING | PREPARING |
  TRANSFERRING | VERIFYING | SUCCESS/FAILURE.

  For detailed information, see the Task Execution section in the Components and
  Terminology topic in the *DataSync User Guide*.
  """
  def start_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTaskExecution", input, options)
  end

  @doc """
  Applies a key-value pair to an Amazon Web Services resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from an Amazon Web Services resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the name of an agent.
  """
  def update_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAgent", input, options)
  end

  @doc """
  Updates some parameters of a previously created location for a Hadoop
  Distributed File System cluster.
  """
  def update_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationHdfs", input, options)
  end

  @doc """
  Updates some of the parameters of a previously created location for Network File
  System (NFS) access.

  For information about creating an NFS location, see [Creating a location for NFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).
  """
  def update_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationNfs", input, options)
  end

  @doc """
  Updates some parameters of an existing object storage location that DataSync
  accesses for a transfer.

  For information about creating a self-managed object storage location, see
  [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
  """
  def update_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationObjectStorage", input, options)
  end

  @doc """
  Updates some of the parameters of a previously created location for Server
  Message Block (SMB) file system access.

  For information about creating an SMB location, see [Creating a location for SMB](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).
  """
  def update_location_smb(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationSmb", input, options)
  end

  @doc """
  Updates the metadata associated with a task.
  """
  def update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTask", input, options)
  end

  @doc """
  Updates execution of a task.

  You can modify bandwidth throttling for a task execution that is running or
  queued. For more information, see [Adjusting Bandwidth Throttling for a Task Execution](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling).

  The only `Option` that can be modified by `UpdateTaskExecution` is `
  [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)
  `.
  """
  def update_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskExecution", input, options)
  end
end
