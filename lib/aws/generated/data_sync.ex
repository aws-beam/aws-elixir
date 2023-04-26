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
  Creates an Amazon Web Services resource for an on-premises storage system that
  you want DataSync Discovery to collect information about.
  """
  def add_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "AddStorageSystem", input, options)
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
  A *location* is an endpoint for an Amazon S3 bucket.

  DataSync can use the location as a source or destination for copying data.

  Before you create your location, make sure that you read the following sections:

     [Storage class considerations with Amazon S3 locations](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

     [Evaluating S3 request costs when using DataSync](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)

  For more information, see [Creating an Amazon S3 location](https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli).
  """
  def create_location_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationS3", input, options)
  end

  @doc """
  Creates an endpoint for a Server Message Block (SMB) file server that DataSync
  can access for a transfer.

  For more information, see [Creating an SMB location](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).
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

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  and the [DataSync pricing page](http://aws.amazon.com/datasync/pricing/) before
  you begin.
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
  Deletes an DataSync task.
  """
  def delete_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTask", input, options)
  end

  @doc """
  Returns metadata about an DataSync agent, such as its name, endpoint type, and
  status.
  """
  def describe_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgent", input, options)
  end

  @doc """
  Returns information about a DataSync discovery job.
  """
  def describe_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeDiscoveryJob", input, options)
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
  Returns information about an on-premises storage system that you're using with
  DataSync Discovery.
  """
  def describe_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeStorageSystem", input, options)
  end

  @doc """
  Returns information, including performance data and capacity usage, which
  DataSync Discovery collects about a specific resource in your-premises storage
  system.
  """
  def describe_storage_system_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeStorageSystemResourceMetrics", input, options)
  end

  @doc """
  Returns information that DataSync Discovery collects about resources in your
  on-premises storage system.
  """
  def describe_storage_system_resources(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeStorageSystemResources", input, options)
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
  Creates recommendations about where to migrate your data to in Amazon Web
  Services.

  Recommendations are generated based on information that DataSync Discovery
  collects about your on-premises storage system's resources. For more
  information, see [Recommendations provided by DataSync Discovery](https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html).

  Once generated, you can view your recommendations by using the
  [DescribeStorageSystemResources](https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeStorageSystemResources.html) operation.

  If your [discovery job completes
  successfully](https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#discovery-job-statuses-table),
  you don't need to use this operation. DataSync Discovery generates the
  recommendations for you automatically.
  """
  def generate_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "GenerateRecommendations", input, options)
  end

  @doc """
  Returns a list of DataSync agents that belong to an Amazon Web Services account
  in the Amazon Web Services Region specified in the request.

  With pagination, you can reduce the number of agents returned in a response. If
  you get a truncated list of agents in a response, the response contains a marker
  that you can specify in your next request to fetch the next page of agents.

  `ListAgents` is eventually consistent. This means the result of running the
  operation might not reflect that you just created or deleted an agent. For
  example, if you create an agent with
  [CreateAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html) and then immediately run `ListAgents`, that agent might not show up in the list
  right away. In situations like this, you can always confirm whether an agent has
  been created (or deleted) by using
  [DescribeAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html).
  """
  def list_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgents", input, options)
  end

  @doc """
  Provides a list of the existing discovery jobs in the Amazon Web Services Region
  and Amazon Web Services account where you're using DataSync Discovery.
  """
  def list_discovery_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "ListDiscoveryJobs", input, options)
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
  Lists the on-premises storage systems that you're using with DataSync Discovery.
  """
  def list_storage_systems(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "ListStorageSystems", input, options)
  end

  @doc """
  Returns all the tags associated with an Amazon Web Services resource.
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
  Permanently removes a storage system resource from DataSync Discovery, including
  the associated discovery jobs, collected data, and recommendations.
  """
  def remove_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "RemoveStorageSystem", input, options)
  end

  @doc """
  Runs a DataSync discovery job on your on-premises storage system.

  If you haven't added the storage system to DataSync Discovery yet, do this first
  by using the
  [AddStorageSystem](https://docs.aws.amazon.com/datasync/latest/userguide/API_AddStorageSystem.html)
  operation.
  """
  def start_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "StartDiscoveryJob", input, options)
  end

  @doc """
  Starts an DataSync task.

  For each task, you can only run one task execution at a time.

  There are several phases to a task execution. For more information, see [Task execution
  statuses](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses).

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  and the [DataSync pricing page](http://aws.amazon.com/datasync/pricing/) before
  you begin.
  """
  def start_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTaskExecution", input, options)
  end

  @doc """
  Stops a running DataSync discovery job.

  You can stop a discovery job anytime. A job that's stopped before it's scheduled
  to end likely will provide you some information about your on-premises storage
  system resources. To get recommendations for a stopped job, you must use the
  [GenerateRecommendations](https://docs.aws.amazon.com/datasync/latest/userguide/API_GenerateRecommendations.html)
  operation.
  """
  def stop_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "StopDiscoveryJob", input, options)
  end

  @doc """
  Applies a *tag* to an Amazon Web Services resource.

  Tags are key-value pairs that can help you manage, filter, and search for your
  resources.

  These include DataSync resources, such as locations, tasks, and task executions.
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
  Updates the name of an agent.
  """
  def update_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAgent", input, options)
  end

  @doc """
  Edits a DataSync discovery job configuration.
  """
  def update_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "UpdateDiscoveryJob", input, options)
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
  Modifies some configurations of an on-premises storage system resource that
  you're using with DataSync Discovery.
  """
  def update_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "UpdateStorageSystem", input, options)
  end

  @doc """
  Updates the metadata associated with a task.
  """
  def update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTask", input, options)
  end

  @doc """
  Modifies a running DataSync task.

  Currently, the only `Option` that you can modify with `UpdateTaskExecution` is `
  [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)
  `, which throttles bandwidth for a running or queued task.
  """
  def update_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskExecution", input, options)
  end
end
