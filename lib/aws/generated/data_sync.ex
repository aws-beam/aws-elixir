# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataSync do
  @moduledoc """
  DataSync

  DataSync is an online data movement and discovery service that simplifies data
  migration
  and helps you quickly, easily, and securely transfer your file or object data
  to, from, and
  between Amazon Web Services storage services.

  This API interface reference includes documentation for using DataSync
  programmatically. For complete information, see the *
  [DataSync User Guide](https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)

  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  you want DataSync Discovery to collect
  information about.
  """
  def add_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "AddStorageSystem", input, options)
  end

  @doc """
  Stops an DataSync task execution that's in progress.

  The transfer of some
  files are abruptly interrupted. File contents that're transferred to the
  destination might be
  incomplete or inconsistent with the source files.

  However, if you start a new task execution using the same task and allow it to
  finish,
  file content on the destination will be complete and consistent. This applies to
  other
  unexpected failures that interrupt a task execution. In all of these cases,
  DataSync
  successfully completes the transfer when you start the next task execution.
  """
  def cancel_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelTaskExecution", input, options)
  end

  @doc """
  Activates an DataSync agent that you've deployed in your storage
  environment.

  The activation process associates the agent with your Amazon Web Services
  account.

  If you haven't deployed an agent yet, see the following topics to learn more:

    *

  [Agent requirements](https://docs.aws.amazon.com/datasync/latest/userguide/agent-requirements.html)

    *

  [Create an agent](https://docs.aws.amazon.com/datasync/latest/userguide/configure-agent.html)

  If you're transferring between Amazon Web Services storage services, you don't
  need a
  DataSync agent.
  """
  def create_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAgent", input, options)
  end

  @doc """
  Creates a transfer *location* for a Microsoft Azure Blob Storage
  container.

  DataSync can use this location as a transfer source or
  destination.

  Before you begin, make sure you know [how DataSync accesses Azure Blob Storage](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access)
  and works with [access tiers](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers)
  and [blob types](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types).
  You also need a [DataSync agent](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent)
  that can connect to your
  container.
  """
  def create_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationAzureBlob", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon EFS file system.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you understand how DataSync
  [accesses Amazon EFS file
  systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access).
  """
  def create_location_efs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationEfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for Lustre file system.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for Lustre file systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access).
  """
  def create_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxLustre", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for NetApp ONTAP file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for ONTAP file systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access).
  """
  def create_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxOntap", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for OpenZFS file system.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for OpenZFS file systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access).

  Request parameters related to `SMB` aren't supported with the
  `CreateLocationFsxOpenZfs` operation.
  """
  def create_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxOpenZfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for Windows File Server file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for Windows File Server file
  systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access).
  """
  def create_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationFsxWindows", input, options)
  end

  @doc """
  Creates a transfer *location* for a Hadoop Distributed File System
  (HDFS).

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses HDFS
  clusters](https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs).
  """
  def create_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationHdfs", input, options)
  end

  @doc """
  Creates a transfer *location* for a Network File System (NFS) file
  server.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses NFS file
  servers](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs).

  If you're copying data to or from an Snowcone device, you can also use
  `CreateLocationNfs` to create your transfer location. For more information, see
  [Configuring transfers with Snowcone](https://docs.aws.amazon.com/datasync/latest/userguide/nfs-on-snowcone.html).
  """
  def create_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationNfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an object storage system.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you understand the
  [prerequisites](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites)
  for DataSync to work with object storage systems.
  """
  def create_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationObjectStorage", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon S3 bucket.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you read the following topics:

    

  [Storage class considerations with Amazon S3
  locations](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

    

  [Evaluating S3 request costs when using DataSync](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)

  For more information, see [Configuring transfers with Amazon S3](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html).
  """
  def create_location_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationS3", input, options)
  end

  @doc """
  Creates a transfer *location* for a Server Message Block (SMB) file
  server.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses SMB file
  servers](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb).
  """
  def create_location_smb(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocationSmb", input, options)
  end

  @doc """
  Configures a transfer task, which defines where and how DataSync moves your
  data.

  A task includes a source location, destination location, and the options for how
  and
  when you want to transfer your data (such as bandwidth limits, scheduling, among
  other
  options).

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request
  charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  and the [DataSync pricing page](http://aws.amazon.com/datasync/pricing/) before
  you begin.
  """
  def create_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTask", input, options)
  end

  @doc """
  Removes an DataSync agent resource from your Amazon Web Services account.

  Keep in mind that this operation (which can't be undone) doesn't remove the
  agent's
  virtual machine (VM) or Amazon EC2 instance from your storage environment. For
  next
  steps, you can delete the VM or instance from your storage environment or reuse
  it to [activate a new agent](https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html).
  """
  def delete_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAgent", input, options)
  end

  @doc """
  Deletes a transfer location resource from DataSync.
  """
  def delete_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """
  Deletes a transfer task resource from DataSync.
  """
  def delete_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTask", input, options)
  end

  @doc """
  Returns information about an DataSync agent, such as its name, service endpoint
  type, and status.
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
  Provides details about how an DataSync transfer location for Microsoft Azure
  Blob Storage is configured.
  """
  def describe_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationAzureBlob", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon EFS file
  system is configured.
  """
  def describe_location_efs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationEfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  Lustre file system is configured.
  """
  def describe_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxLustre", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  NetApp ONTAP file system is configured.

  If your location uses SMB, the `DescribeLocationFsxOntap` operation doesn't
  actually return a `Password`.
  """
  def describe_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOntap", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  OpenZFS file system is configured.

  Response elements related to `SMB` aren't supported with the
  `DescribeLocationFsxOpenZfs` operation.
  """
  def describe_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOpenZfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  Windows File Server file system is configured.
  """
  def describe_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationFsxWindows", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Hadoop
  Distributed File System (HDFS) is configured.
  """
  def describe_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationHdfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Network
  File System (NFS) file server is configured.
  """
  def describe_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationNfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an object
  storage system is configured.
  """
  def describe_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationObjectStorage", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an S3 bucket
  is configured.
  """
  def describe_location_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocationS3", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Server
  Message Block (SMB) file server is configured.
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
  DataSync Discovery
  collects about a specific resource in your-premises storage system.
  """
  def describe_storage_system_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeStorageSystemResourceMetrics", input, options)
  end

  @doc """
  Returns information that DataSync Discovery collects about resources in your
  on-premises storage
  system.
  """
  def describe_storage_system_resources(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "DescribeStorageSystemResources", input, options)
  end

  @doc """
  Provides information about an DataSync transfer task.
  """
  def describe_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTask", input, options)
  end

  @doc """
  Provides information about an execution of your DataSync task.

  You can
  use this operation to help monitor the progress of an ongoing transfer or check
  the results of
  the transfer.
  """
  def describe_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskExecution", input, options)
  end

  @doc """
  Creates recommendations about where to migrate your data to in Amazon Web
  Services.

  Recommendations are generated based on information that DataSync Discovery
  collects about your
  on-premises storage system's resources. For more information, see
  [Recommendations provided by DataSync
  Discovery](https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html).

  Once generated, you can view your recommendations by using the
  [DescribeStorageSystemResources](https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeStorageSystemResources.html)
  operation.
  """
  def generate_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "GenerateRecommendations", input, options)
  end

  @doc """
  Returns a list of DataSync agents that belong to an Amazon Web Services account
  in the Amazon Web Services Region specified in the request.

  With pagination, you can reduce the number of agents returned in a response. If
  you get
  a truncated list of agents in a response, the response contains a marker that
  you can specify
  in your next request to fetch the next page of agents.

  `ListAgents` is eventually consistent. This means the result of running the
  operation might not reflect that you just created or deleted an agent. For
  example, if you
  create an agent with
  [CreateAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html) and then
  immediately run `ListAgents`, that agent might not show up in the list right
  away.
  In situations like this, you can always confirm whether an agent has been
  created (or deleted)
  by using
  [DescribeAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html).
  """
  def list_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgents", input, options)
  end

  @doc """
  Provides a list of the existing discovery jobs in the Amazon Web Services Region
  and
  Amazon Web Services account where you're using DataSync Discovery.
  """
  def list_discovery_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "ListDiscoveryJobs", input, options)
  end

  @doc """
  Returns a list of source and destination locations.

  If you have more locations than are returned in a response (that is, the
  response
  returns only a truncated list of your agents), the response contains a token
  that you can
  specify in your next request to fetch the next page of locations.
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
  Returns a list of executions for an DataSync transfer task.
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
  the associated
  discovery jobs, collected data, and recommendations.
  """
  def remove_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "RemoveStorageSystem", input, options)
  end

  @doc """
  Runs a DataSync discovery job on your on-premises storage system.

  If you haven't added the
  storage system to DataSync Discovery yet, do this first by using the
  [AddStorageSystem](https://docs.aws.amazon.com/datasync/latest/userguide/API_AddStorageSystem.html)
  operation.
  """
  def start_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "StartDiscoveryJob", input, options)
  end

  @doc """
  Starts an DataSync transfer task.

  For each task, you can only run one task
  execution at a time.

  There are several phases to a task execution. For more information, see [Task execution
  statuses](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses).

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request
  charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
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
  to end
  likely will provide you some information about your on-premises storage system
  resources. To
  get recommendations for a stopped job, you must use the
  [GenerateRecommendations](https://docs.aws.amazon.com/datasync/latest/userguide/API_GenerateRecommendations.html)
  operation.
  """
  def stop_discovery_job(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "StopDiscoveryJob", input, options)
  end

  @doc """
  Applies a *tag* to an Amazon Web Services resource.

  Tags are
  key-value pairs that can help you manage, filter, and search for your resources.

  These include DataSync resources, such as locations, tasks, and task
  executions.
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
  Updates the name of an DataSync agent.
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
  Modifies some configurations of the Microsoft Azure Blob Storage transfer
  location that you're using with DataSync.
  """
  def update_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationAzureBlob", input, options)
  end

  @doc """
  Updates some parameters of a previously created location for a Hadoop
  Distributed File
  System cluster.
  """
  def update_location_hdfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationHdfs", input, options)
  end

  @doc """
  Modifies some configurations of the Network File System (NFS) transfer location
  that
  you're using with DataSync.

  For more information, see [Configuring transfers to or from an NFS file
  server](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).
  """
  def update_location_nfs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationNfs", input, options)
  end

  @doc """
  Updates some parameters of an existing object storage location that DataSync
  accesses for a transfer.

  For information about creating a self-managed object storage
  location, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
  """
  def update_location_object_storage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationObjectStorage", input, options)
  end

  @doc """
  Updates some of the parameters of a Server Message Block
  (SMB) file server location that you can use for DataSync transfers.
  """
  def update_location_smb(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLocationSmb", input, options)
  end

  @doc """
  Modifies some configurations of an on-premises storage system resource that
  you're using
  with DataSync Discovery.
  """
  def update_storage_system(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "discovery-")

    Request.request_post(client, meta, "UpdateStorageSystem", input, options)
  end

  @doc """
  Updates the configuration of an DataSync transfer task.
  """
  def update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTask", input, options)
  end

  @doc """
  Updates the configuration of a running DataSync task execution.

  Currently, the only `Option` that you can modify with
  `UpdateTaskExecution` is

  ```

  [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)

  ```

  , which throttles bandwidth for a running or queued
  task execution.
  """
  def update_task_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskExecution", input, options)
  end
end
