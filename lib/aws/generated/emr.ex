# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMR do
  @moduledoc """
  Amazon EMR is a web service that makes it easier to process large amounts of
  data efficiently.

  Amazon EMR uses Hadoop processing combined with several Amazon Web Services
  services to do tasks such as web indexing, data mining, log file analysis,
  machine learning, scientific simulation, and data warehouse management.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Amazon EMR",
      api_version: "2009-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elasticmapreduce",
      global?: false,
      protocol: "json",
      service_id: "EMR",
      signature_version: "v4",
      signing_name: "elasticmapreduce",
      target_prefix: "ElasticMapReduce"
    }
  end

  @doc """
  Adds an instance fleet to a running cluster.

  The instance fleet configuration is available only in Amazon EMR versions 4.8.0
  and later, excluding 5.0.x.
  """
  def add_instance_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddInstanceFleet", input, options)
  end

  @doc """
  Adds one or more instance groups to a running cluster.
  """
  def add_instance_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddInstanceGroups", input, options)
  end

  @doc """
  AddJobFlowSteps adds new steps to a running cluster.

  A maximum of 256 steps are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex, you
  may require more than 256 steps to process your data. You can bypass the
  256-step limitation in various ways, including using SSH to connect to the
  master node and submitting queries directly to the software running on the
  master node, such as Hive and Hadoop. For more information on how to do this,
  see [Add More than 256 Steps to a Cluster](https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  A step specifies the location of a JAR file stored either on the master node of
  the cluster or in Amazon S3. Each step is performed by the main function of the
  main class of the JAR file. The main class can be specified either in the
  manifest of the JAR or by using the MainFunction parameter of the step.

  Amazon EMR executes each step in the order listed. For a step to be considered
  complete, the main function must exit with a zero exit code and all Hadoop jobs
  started while the step was running must have completed and run successfully.

  You can only add steps to a cluster that is in one of the following states:
  STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

  The string values passed into `HadoopJarStep` object cannot exceed a total of
  10240 characters.
  """
  def add_job_flow_steps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddJobFlowSteps", input, options)
  end

  @doc """
  Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR Studio.

  Tags make it easier to associate resources in various ways, such as grouping
  clusters to track your Amazon EMR resource allocation costs. For more
  information, see [Tag Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTags", input, options)
  end

  @doc """
  Cancels a pending step or steps in a running cluster.

  Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0.
  A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is
  idempotent but asynchronous; it does not guarantee that a step will be canceled,
  even if the request is successfully submitted. When you use Amazon EMR versions
  5.28.0 and later, you can cancel steps that are in a `PENDING` or `RUNNING`
  state. In earlier versions of Amazon EMR, you can only cancel steps that are in
  a `PENDING` state.
  """
  def cancel_steps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelSteps", input, options)
  end

  @doc """
  Creates a security configuration, which is stored in the service and can be
  specified when a cluster is created.
  """
  def create_security_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Creates a new Amazon EMR Studio.
  """
  def create_studio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateStudio", input, options)
  end

  @doc """
  Maps a user or group to the Amazon EMR Studio specified by `StudioId`, and
  applies a session policy to refine Studio permissions for that user or group.

  Use `CreateStudioSessionMapping` to assign users to a Studio when you use Amazon
  Web Services SSO authentication. For instructions on how to assign users to a
  Studio when you use IAM authentication, see [Assign a user or group to your EMR Studio](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups).
  """
  def create_studio_session_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateStudioSessionMapping", input, options)
  end

  @doc """
  Deletes a security configuration.
  """
  def delete_security_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Removes an Amazon EMR Studio from the Studio metadata store.
  """
  def delete_studio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteStudio", input, options)
  end

  @doc """
  Removes a user or group from an Amazon EMR Studio.
  """
  def delete_studio_session_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteStudioSessionMapping", input, options)
  end

  @doc """
  Provides cluster-level details including status, hardware and software
  configuration, VPC settings, and so on.
  """
  def describe_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCluster", input, options)
  end

  @doc """
  This API is no longer supported and will eventually be removed.

  We recommend you use `ListClusters`, `DescribeCluster`, `ListSteps`,
  `ListInstanceGroups` and `ListBootstrapActions` instead.

  DescribeJobFlows returns a list of job flows that match all of the supplied
  parameters. The parameters can include a list of job flow IDs, job flow states,
  and restrictions on job flow creation date and time.

  Regardless of supplied parameters, only job flows created within the last two
  months are returned.

  If no parameters are supplied, then job flows matching either of the following
  criteria are returned:

    * Job flows created and completed in the last two weeks

    * Job flows created within the last two months that are in one of
  the following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`

  Amazon EMR can return a maximum of 512 job flow descriptions.
  """
  def describe_job_flows(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeJobFlows", input, options)
  end

  @doc """
  Provides details of a notebook execution.
  """
  def describe_notebook_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeNotebookExecution", input, options)
  end

  @doc """
  Provides EMR release label details, such as releases available the region where
  the API request is run, and the available applications for a specific EMR
  release label.

  Can also list EMR release versions that support a specified version of Spark.
  """
  def describe_release_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReleaseLabel", input, options)
  end

  @doc """
  Provides the details of a security configuration by returning the configuration
  JSON.
  """
  def describe_security_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSecurityConfiguration", input, options)
  end

  @doc """
  Provides more detail about the cluster step.
  """
  def describe_step(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeStep", input, options)
  end

  @doc """
  Returns details for the specified Amazon EMR Studio including ID, Name, VPC,
  Studio access URL, and so on.
  """
  def describe_studio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeStudio", input, options)
  end

  @doc """
  Returns the auto-termination policy for an Amazon EMR cluster.
  """
  def get_auto_termination_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAutoTerminationPolicy", input, options)
  end

  @doc """
  Returns the Amazon EMR block public access configuration for your Amazon Web
  Services account in the current Region.

  For more information see [Configure Block Public Access for Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR Management Guide*.
  """
  def get_block_public_access_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Fetches the attached managed scaling policy for an Amazon EMR cluster.
  """
  def get_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetManagedScalingPolicy", input, options)
  end

  @doc """
  Fetches mapping details for the specified Amazon EMR Studio and identity (user
  or group).
  """
  def get_studio_session_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetStudioSessionMapping", input, options)
  end

  @doc """
  Provides information about the bootstrap actions associated with a cluster.
  """
  def list_bootstrap_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBootstrapActions", input, options)
  end

  @doc """
  Provides the status of all clusters visible to this Amazon Web Services account.

  Allows you to filter the list of clusters based on certain criteria; for
  example, filtering by cluster creation date and time or by status. This call
  returns a maximum of 50 clusters in unsorted order per call, but returns a
  marker to track the paging of the cluster list across multiple ListClusters
  calls.
  """
  def list_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListClusters", input, options)
  end

  @doc """
  Lists all available details about the instance fleets in a cluster.

  The instance fleet configuration is available only in Amazon EMR versions 4.8.0
  and later, excluding 5.0.x versions.
  """
  def list_instance_fleets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceFleets", input, options)
  end

  @doc """
  Provides all available details about the instance groups in a cluster.
  """
  def list_instance_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceGroups", input, options)
  end

  @doc """
  Provides information for all active EC2 instances and EC2 instances terminated
  in the last 30 days, up to a maximum of 2,000.

  EC2 instances in any of the following states are considered active:
  AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
  """
  def list_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstances", input, options)
  end

  @doc """
  Provides summaries of all notebook executions.

  You can filter the list based on multiple criteria such as status, time range,
  and editor id. Returns a maximum of 50 notebook executions and a marker to track
  the paging of a longer notebook execution list across multiple
  `ListNotebookExecution` calls.
  """
  def list_notebook_executions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListNotebookExecutions", input, options)
  end

  @doc """
  Retrieves release labels of EMR services in the region where the API is called.
  """
  def list_release_labels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReleaseLabels", input, options)
  end

  @doc """
  Lists all the security configurations visible to this account, providing their
  creation dates and times, and their names.

  This call returns a maximum of 50 clusters per call, but returns a marker to
  track the paging of the cluster list across multiple ListSecurityConfigurations
  calls.
  """
  def list_security_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSecurityConfigurations", input, options)
  end

  @doc """
  Provides a list of steps for the cluster in reverse order unless you specify
  `stepIds` with the request or filter by `StepStates`.

  You can specify a maximum of 10 `stepIDs`. The CLI automatically paginates
  results to return a list greater than 50 steps. To return more than 50 steps
  using the CLI, specify a `Marker`, which is a pagination token that indicates
  the next set of steps to retrieve.
  """
  def list_steps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSteps", input, options)
  end

  @doc """
  Returns a list of all user or group session mappings for the Amazon EMR Studio
  specified by `StudioId`.
  """
  def list_studio_session_mappings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStudioSessionMappings", input, options)
  end

  @doc """
  Returns a list of all Amazon EMR Studios associated with the Amazon Web Services
  account.

  The list includes details such as ID, Studio Access URL, and creation time for
  each Studio.
  """
  def list_studios(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStudios", input, options)
  end

  @doc """
  Modifies the number of steps that can be executed concurrently for the cluster
  specified using ClusterID.
  """
  def modify_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyCluster", input, options)
  end

  @doc """
  Modifies the target On-Demand and target Spot capacities for the instance fleet
  with the specified InstanceFleetID within the cluster specified using ClusterID.

  The call either succeeds or fails atomically.

  The instance fleet configuration is available only in Amazon EMR versions 4.8.0
  and later, excluding 5.0.x versions.
  """
  def modify_instance_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyInstanceFleet", input, options)
  end

  @doc """
  ModifyInstanceGroups modifies the number of nodes and configuration settings of
  an instance group.

  The input parameters include the new target instance count for the group and the
  instance group ID. The call will either succeed or fail atomically.
  """
  def modify_instance_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyInstanceGroups", input, options)
  end

  @doc """
  Creates or updates an automatic scaling policy for a core instance group or task
  instance group in an Amazon EMR cluster.

  The automatic scaling policy defines how an instance group dynamically adds and
  terminates EC2 instances in response to the value of a CloudWatch metric.
  """
  def put_auto_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAutoScalingPolicy", input, options)
  end

  @doc """
  Auto-termination is supported in Amazon EMR versions 5.30.0 and 6.1.0 and later.

  For more information, see [Using an auto-termination policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html).

  Creates or updates an auto-termination policy for an Amazon EMR cluster. An
  auto-termination policy defines the amount of idle time in seconds after which a
  cluster automatically terminates. For alternative cluster termination options,
  see [Control cluster termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html).
  """
  def put_auto_termination_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAutoTerminationPolicy", input, options)
  end

  @doc """
  Creates or updates an Amazon EMR block public access configuration for your
  Amazon Web Services account in the current Region.

  For more information see [Configure Block Public Access for Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR Management Guide*.
  """
  def put_block_public_access_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Creates or updates a managed scaling policy for an Amazon EMR cluster.

  The managed scaling policy defines the limits for resources, such as EC2
  instances that can be added or terminated from a cluster. The policy only
  applies to the core and task nodes. The master node cannot be scaled after
  initial configuration.
  """
  def put_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutManagedScalingPolicy", input, options)
  end

  @doc """
  Removes an automatic scaling policy from a specified instance group within an
  EMR cluster.
  """
  def remove_auto_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveAutoScalingPolicy", input, options)
  end

  @doc """
  Removes an auto-termination policy from an Amazon EMR cluster.
  """
  def remove_auto_termination_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveAutoTerminationPolicy", input, options)
  end

  @doc """
  Removes a managed scaling policy from a specified EMR cluster.
  """
  def remove_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveManagedScalingPolicy", input, options)
  end

  @doc """
  Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR
  Studio.

  Tags make it easier to associate resources in various ways, such as grouping
  clusters to track your Amazon EMR resource allocation costs. For more
  information, see [Tag Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

  The following example removes the stack tag with value Prod from a cluster:
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTags", input, options)
  end

  @doc """
  RunJobFlow creates and starts running a new cluster (job flow).

  The cluster runs the steps specified. After the steps complete, the cluster
  stops and the HDFS partition is lost. To prevent loss of data, configure the
  last step of the job flow to store results in Amazon S3. If the
  `JobFlowInstancesConfig` `KeepJobFlowAliveWhenNoSteps` parameter is set to
  `TRUE`, the cluster transitions to the WAITING state rather than shutting down
  after the steps have completed.

  For additional protection, you can set the `JobFlowInstancesConfig`
  `TerminationProtected` parameter to `TRUE` to lock the cluster and prevent it
  from being terminated by API call, user intervention, or in the event of a job
  flow error.

  A maximum of 256 steps are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex, you
  may require more than 256 steps to process your data. You can bypass the
  256-step limitation in various ways, including using the SSH shell to connect to
  the master node and submitting queries directly to the software running on the
  master node, such as Hive and Hadoop. For more information on how to do this,
  see [Add More than 256 Steps to a Cluster](https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  For long running clusters, we recommend that you periodically store your
  results.

  The instance fleets configuration is available only in Amazon EMR versions 4.8.0
  and later, excluding 5.0.x versions. The RunJobFlow request can contain
  InstanceFleets parameters or InstanceGroups parameters, but not both.
  """
  def run_job_flow(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RunJobFlow", input, options)
  end

  @doc """
  SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the
  cluster cannot be terminated by user intervention, an API call, or in the event
  of a job-flow error.

  The cluster still terminates upon successful completion of the job flow. Calling
  `SetTerminationProtection` on a cluster is similar to calling the Amazon EC2
  `DisableAPITermination` API on all EC2 instances in a cluster.

  `SetTerminationProtection` is used to prevent accidental termination of a
  cluster and to ensure that in the event of an error, the instances persist so
  that you can recover any data stored in their ephemeral instance storage.

  To terminate a cluster that has been locked by setting
  `SetTerminationProtection` to `true`, you must first unlock the job flow by a
  subsequent call to `SetTerminationProtection` in which you set the value to
  `false`.

  For more information, see[Managing Cluster Termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
  in the *Amazon EMR Management Guide*.
  """
  def set_termination_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetTerminationProtection", input, options)
  end

  @doc """
  The SetVisibleToAllUsers parameter is no longer supported.

  Your cluster may be visible to all users in your account. To restrict cluster
  access using an IAM policy, see [Identity and Access Management for EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-iam.html).

  Sets the `Cluster$VisibleToAllUsers` value for an EMR cluster. When `true`, IAM
  principals in the Amazon Web Services account can perform EMR cluster actions
  that their IAM policies allow. When `false`, only the IAM principal that created
  the cluster and the Amazon Web Services account root user can perform EMR
  actions on the cluster, regardless of IAM permissions policies attached to other
  IAM principals.

  This action works on running clusters. When you create a cluster, use the
  `RunJobFlowInput$VisibleToAllUsers` parameter.

  For more information, see [Understanding the EMR Cluster VisibleToAllUsers Setting](https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_iam_emr-with-iam.html#security_set_visible_to_all_users)
  in the *Amazon EMRManagement Guide*.
  """
  def set_visible_to_all_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetVisibleToAllUsers", input, options)
  end

  @doc """
  Starts a notebook execution.
  """
  def start_notebook_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartNotebookExecution", input, options)
  end

  @doc """
  Stops a notebook execution.
  """
  def stop_notebook_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopNotebookExecution", input, options)
  end

  @doc """
  TerminateJobFlows shuts a list of clusters (job flows) down.

  When a job flow is shut down, any step not yet completed is canceled and the EC2
  instances on which the cluster is running are stopped. Any log files not already
  saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was
  created.

  The maximum number of clusters allowed is 10. The call to `TerminateJobFlows` is
  asynchronous. Depending on the configuration of the cluster, it may take up to
  1-5 minutes for the cluster to completely terminate and release allocated
  resources, such as Amazon EC2 instances.
  """
  def terminate_job_flows(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TerminateJobFlows", input, options)
  end

  @doc """
  Updates an Amazon EMR Studio configuration, including attributes such as name,
  description, and subnets.
  """
  def update_studio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateStudio", input, options)
  end

  @doc """
  Updates the session policy attached to the user or group for the specified
  Amazon EMR Studio.
  """
  def update_studio_session_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateStudioSessionMapping", input, options)
  end
end
