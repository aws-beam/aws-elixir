# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataSync do
  @moduledoc """
  AWS DataSync

  AWS DataSync is a managed data transfer service that makes it simpler for you to
  automate moving data between on-premises storage and Amazon Simple Storage
  Service (Amazon S3) or Amazon Elastic File System (Amazon EFS).

  This API interface reference for AWS DataSync contains documentation for a
  programming interface that you can use to manage AWS DataSync.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Cancels execution of a task.

  When you cancel a task execution, the transfer of some files is abruptly
  interrupted. The contents of files that are transferred to the destination might
  be incomplete or inconsistent with the source files. However, if you start a new
  task execution on the same task and you allow the task execution to complete,
  file content on the destination is complete and consistent. This applies to
  other unexpected failures that interrupt a task execution. In all of these
  cases, AWS DataSync successfully complete the transfer when you start the next
  task execution.
  """
  def cancel_task_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelTaskExecution", input, options)
  end

  @doc """
  Activates an AWS DataSync agent that you have deployed on your host.

  The activation process associates your agent with your account. In the
  activation process, you specify information such as the AWS Region that you want
  to activate the agent in. You activate the agent in the AWS Region where your
  target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in
  this AWS Region.

  You can activate the agent in a VPC (virtual private cloud) or provide the agent
  access to a VPC endpoint so you can run tasks without going over the public
  internet.

  You can use an agent for more than one location. If a task uses multiple agents,
  all of them need to have status AVAILABLE for the task to run. If you use
  multiple agents for a source location, the status of all the agents must be
  AVAILABLE for the task to run.

  Agents are automatically updated by AWS on a regular basis, using a mechanism
  that ensures minimal interruption to your tasks.
  """
  def create_agent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAgent", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon EFS file system.
  """
  def create_location_efs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationEfs", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon FSx for Windows file system.
  """
  def create_location_fsx_windows(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationFsxWindows", input, options)
  end

  @doc """
  Defines a file system on a Network File System (NFS) server that can be read
  from or written to.
  """
  def create_location_nfs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationNfs", input, options)
  end

  @doc """
  Creates an endpoint for a self-managed object storage bucket.

  For more information about self-managed object storage locations, see
  `create-object-location`.
  """
  def create_location_object_storage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationObjectStorage", input, options)
  end

  @doc """
  Creates an endpoint for an Amazon S3 bucket.

  For more information, see
  https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli
  in the *AWS DataSync User Guide*.
  """
  def create_location_s3(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationS3", input, options)
  end

  @doc """
  Defines a file system on a Server Message Block (SMB) server that can be read
  from or written to.
  """
  def create_location_smb(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLocationSmb", input, options)
  end

  @doc """
  Creates a task.

  A task is a set of two locations (source and destination) and a set of Options
  that you use to control the behavior of a task. If you don't specify Options
  when you create a task, AWS DataSync populates them with service defaults.

  When you create a task, it first enters the CREATING state. During CREATING AWS
  DataSync attempts to mount the on-premises Network File System (NFS) location.
  The task transitions to the AVAILABLE state without waiting for the AWS location
  to become mounted. If required, AWS DataSync mounts the AWS location before each
  task execution.

  If an agent that is associated with a source (NFS) location goes offline, the
  task transitions to the UNAVAILABLE status. If the status of the task remains in
  the CREATING status for more than a few minutes, it means that your agent might
  be having trouble mounting the source NFS file system. Check the task's
  ErrorCode and ErrorDetail. Mount issues are often caused by either a
  misconfigured firewall or a mistyped NFS server hostname.
  """
  def create_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTask", input, options)
  end

  @doc """
  Deletes an agent.

  To specify which agent to delete, use the Amazon Resource Name (ARN) of the
  agent in your request. The operation disassociates the agent from your AWS
  account. However, it doesn't delete the agent virtual machine (VM) from your
  on-premises environment.
  """
  def delete_agent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAgent", input, options)
  end

  @doc """
  Deletes the configuration of a location used by AWS DataSync.
  """
  def delete_location(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLocation", input, options)
  end

  @doc """
  Deletes a task.
  """
  def delete_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTask", input, options)
  end

  @doc """
  Returns metadata such as the name, the network interfaces, and the status (that
  is, whether the agent is running or not) for an agent.

  To specify which agent to describe, use the Amazon Resource Name (ARN) of the
  agent in your request.
  """
  def describe_agent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAgent", input, options)
  end

  @doc """
  Returns metadata, such as the path information about an Amazon EFS location.
  """
  def describe_location_efs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationEfs", input, options)
  end

  @doc """
  Returns metadata, such as the path information about an Amazon FSx for Windows
  location.
  """
  def describe_location_fsx_windows(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationFsxWindows", input, options)
  end

  @doc """
  Returns metadata, such as the path information, about an NFS location.
  """
  def describe_location_nfs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationNfs", input, options)
  end

  @doc """
  Returns metadata about a self-managed object storage server location.

  For more information about self-managed object storage locations, see
  `create-object-location`.
  """
  def describe_location_object_storage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationObjectStorage", input, options)
  end

  @doc """
  Returns metadata, such as bucket name, about an Amazon S3 bucket location.
  """
  def describe_location_s3(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationS3", input, options)
  end

  @doc """
  Returns metadata, such as the path and user information about an SMB location.
  """
  def describe_location_smb(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLocationSmb", input, options)
  end

  @doc """
  Returns metadata about a task.
  """
  def describe_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTask", input, options)
  end

  @doc """
  Returns detailed metadata about a task that is being executed.
  """
  def describe_task_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTaskExecution", input, options)
  end

  @doc """
  Returns a list of agents owned by an AWS account in the AWS Region specified in
  the request.

  The returned list is ordered by agent Amazon Resource Name (ARN).

  By default, this operation returns a maximum of 100 agents. This operation
  supports pagination that enables you to optionally reduce the number of agents
  returned in a response.

  If you have more agents than are returned in a response (that is, the response
  returns only a truncated list of your agents), the response contains a marker
  that you can specify in your next request to fetch the next page of agents.
  """
  def list_agents(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAgents", input, options)
  end

  @doc """
  Returns a list of source and destination locations.

  If you have more locations than are returned in a response (that is, the
  response returns only a truncated list of your agents), the response contains a
  token that you can specify in your next request to fetch the next page of
  locations.
  """
  def list_locations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLocations", input, options)
  end

  @doc """
  Returns all the tags associated with a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of executed tasks.
  """
  def list_task_executions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTaskExecutions", input, options)
  end

  @doc """
  Returns a list of all the tasks.
  """
  def list_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTasks", input, options)
  end

  @doc """
  Starts a specific invocation of a task.

  A `TaskExecution` value represents an individual run of a task. Each task can
  have at most one `TaskExecution` at a time.

  `TaskExecution` has the following transition phases: INITIALIZING | PREPARING |
  TRANSFERRING | VERIFYING | SUCCESS/FAILURE.

  For detailed information, see the Task Execution section in the Components and
  Terminology topic in the *AWS DataSync User Guide*.
  """
  def start_task_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartTaskExecution", input, options)
  end

  @doc """
  Applies a key-value pair to an AWS resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes a tag from an AWS resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the name of an agent.
  """
  def update_agent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAgent", input, options)
  end

  @doc """
  Updates the metadata associated with a task.
  """
  def update_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTask", input, options)
  end

  @doc """
  Updates execution of a task.

  You can modify bandwidth throttling for a task execution that is running or
  queued. For more information, see [Adjusting Bandwidth Throttling for a Task Execution](https://docs.aws.amazon.com/datasync/latest/working-with-task-executions.html#adjust-bandwidth-throttling).

  The only `Option` that can be modified by `UpdateTaskExecution` is `
  [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)
  `.
  """
  def update_task_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTaskExecution", input, options)
  end
end