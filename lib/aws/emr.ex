# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMR do
  @moduledoc """
  Amazon EMR is a web service that makes it easy to process large amounts of
  data efficiently. Amazon EMR uses Hadoop processing combined with several
  AWS products to do tasks such as web indexing, data mining, log file
  analysis, machine learning, scientific simulation, and data warehousing.
  """

  @doc """
  Adds an instance fleet to a running cluster.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x.

  </note>
  """
  def add_instance_fleet(client, input, options \\ []) do
    request(client, "AddInstanceFleet", input, options)
  end

  @doc """
  Adds one or more instance groups to a running cluster.
  """
  def add_instance_groups(client, input, options \\ []) do
    request(client, "AddInstanceGroups", input, options)
  end

  @doc """
  AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps
  are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex,
  you may require more than 256 steps to process your data. You can bypass
  the 256-step limitation in various ways, including using SSH to connect to
  the master node and submitting queries directly to the software running on
  the master node, such as Hive and Hadoop. For more information on how to do
  this, see [Add More than 256 Steps to a
  Cluster](https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  A step specifies the location of a JAR file stored either on the master
  node of the cluster or in Amazon S3. Each step is performed by the main
  function of the main class of the JAR file. The main class can be specified
  either in the manifest of the JAR or by using the MainFunction parameter of
  the step.

  Amazon EMR executes each step in the order listed. For a step to be
  considered complete, the main function must exit with a zero exit code and
  all Hadoop jobs started while the step was running must have completed and
  run successfully.

  You can only add steps to a cluster that is in one of the following states:
  STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
  """
  def add_job_flow_steps(client, input, options \\ []) do
    request(client, "AddJobFlowSteps", input, options)
  end

  @doc """
  Adds tags to an Amazon EMR resource. Tags make it easier to associate
  clusters in various ways, such as grouping clusters to track your Amazon
  EMR resource allocation costs. For more information, see [Tag
  Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Cancels a pending step or steps in a running cluster. Available only in
  Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of
  256 steps are allowed in each CancelSteps request. CancelSteps is
  idempotent but asynchronous; it does not guarantee a step will be canceled,
  even if the request is successfully submitted. You can only cancel steps
  that are in a `PENDING` state.
  """
  def cancel_steps(client, input, options \\ []) do
    request(client, "CancelSteps", input, options)
  end

  @doc """
  Creates a security configuration, which is stored in the service and can be
  specified when a cluster is created.
  """
  def create_security_configuration(client, input, options \\ []) do
    request(client, "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Deletes a security configuration.
  """
  def delete_security_configuration(client, input, options \\ []) do
    request(client, "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Provides cluster-level details including status, hardware and software
  configuration, VPC settings, and so on.
  """
  def describe_cluster(client, input, options \\ []) do
    request(client, "DescribeCluster", input, options)
  end

  @doc """
  This API is deprecated and will eventually be removed. We recommend you use
  `ListClusters`, `DescribeCluster`, `ListSteps`, `ListInstanceGroups` and
  `ListBootstrapActions` instead.

  DescribeJobFlows returns a list of job flows that match all of the supplied
  parameters. The parameters can include a list of job flow IDs, job flow
  states, and restrictions on job flow creation date and time.

  Regardless of supplied parameters, only job flows created within the last
  two months are returned.

  If no parameters are supplied, then job flows matching either of the
  following criteria are returned:

  <ul> <li> Job flows created and completed in the last two weeks

  </li> <li> Job flows created within the last two months that are in one of
  the following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`

  </li> </ul> Amazon EMR can return a maximum of 512 job flow descriptions.
  """
  def describe_job_flows(client, input, options \\ []) do
    request(client, "DescribeJobFlows", input, options)
  end

  @doc """
  Provides details of a notebook execution.
  """
  def describe_notebook_execution(client, input, options \\ []) do
    request(client, "DescribeNotebookExecution", input, options)
  end

  @doc """
  Provides the details of a security configuration by returning the
  configuration JSON.
  """
  def describe_security_configuration(client, input, options \\ []) do
    request(client, "DescribeSecurityConfiguration", input, options)
  end

  @doc """
  Provides more detail about the cluster step.
  """
  def describe_step(client, input, options \\ []) do
    request(client, "DescribeStep", input, options)
  end

  @doc """
  Returns the Amazon EMR block public access configuration for your AWS
  account in the current Region. For more information see [Configure Block
  Public Access for Amazon
  EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR Management Guide*.
  """
  def get_block_public_access_configuration(client, input, options \\ []) do
    request(client, "GetBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Fetches the attached managed scaling policy for an Amazon EMR cluster.
  """
  def get_managed_scaling_policy(client, input, options \\ []) do
    request(client, "GetManagedScalingPolicy", input, options)
  end

  @doc """
  Provides information about the bootstrap actions associated with a cluster.
  """
  def list_bootstrap_actions(client, input, options \\ []) do
    request(client, "ListBootstrapActions", input, options)
  end

  @doc """
  Provides the status of all clusters visible to this AWS account. Allows you
  to filter the list of clusters based on certain criteria; for example,
  filtering by cluster creation date and time or by status. This call returns
  a maximum of 50 clusters per call, but returns a marker to track the paging
  of the cluster list across multiple ListClusters calls.
  """
  def list_clusters(client, input, options \\ []) do
    request(client, "ListClusters", input, options)
  end

  @doc """
  Lists all available details about the instance fleets in a cluster.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions.

  </note>
  """
  def list_instance_fleets(client, input, options \\ []) do
    request(client, "ListInstanceFleets", input, options)
  end

  @doc """
  Provides all available details about the instance groups in a cluster.
  """
  def list_instance_groups(client, input, options \\ []) do
    request(client, "ListInstanceGroups", input, options)
  end

  @doc """
  Provides information for all active EC2 instances and EC2 instances
  terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in
  any of the following states are considered active: AWAITING_FULFILLMENT,
  PROVISIONING, BOOTSTRAPPING, RUNNING.
  """
  def list_instances(client, input, options \\ []) do
    request(client, "ListInstances", input, options)
  end

  @doc """
  Provides summaries of all notebook executions. You can filter the list
  based on multiple criteria such as status, time range, and editor id.
  Returns a maximum of 50 notebook executions and a marker to track the
  paging of a longer notebook execution list across multiple
  `ListNotebookExecution` calls.
  """
  def list_notebook_executions(client, input, options \\ []) do
    request(client, "ListNotebookExecutions", input, options)
  end

  @doc """
  Lists all the security configurations visible to this account, providing
  their creation dates and times, and their names. This call returns a
  maximum of 50 clusters per call, but returns a marker to track the paging
  of the cluster list across multiple ListSecurityConfigurations calls.
  """
  def list_security_configurations(client, input, options \\ []) do
    request(client, "ListSecurityConfigurations", input, options)
  end

  @doc """
  Provides a list of steps for the cluster in reverse order unless you
  specify `stepIds` with the request of filter by `StepStates`. You can
  specify a maximum of ten `stepIDs`.
  """
  def list_steps(client, input, options \\ []) do
    request(client, "ListSteps", input, options)
  end

  @doc """
  Modifies the number of steps that can be executed concurrently for the
  cluster specified using ClusterID.
  """
  def modify_cluster(client, input, options \\ []) do
    request(client, "ModifyCluster", input, options)
  end

  @doc """
  Modifies the target On-Demand and target Spot capacities for the instance
  fleet with the specified InstanceFleetID within the cluster specified using
  ClusterID. The call either succeeds or fails atomically.

  <note> The instance fleet configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions.

  </note>
  """
  def modify_instance_fleet(client, input, options \\ []) do
    request(client, "ModifyInstanceFleet", input, options)
  end

  @doc """
  ModifyInstanceGroups modifies the number of nodes and configuration
  settings of an instance group. The input parameters include the new target
  instance count for the group and the instance group ID. The call will
  either succeed or fail atomically.
  """
  def modify_instance_groups(client, input, options \\ []) do
    request(client, "ModifyInstanceGroups", input, options)
  end

  @doc """
  Creates or updates an automatic scaling policy for a core instance group or
  task instance group in an Amazon EMR cluster. The automatic scaling policy
  defines how an instance group dynamically adds and terminates EC2 instances
  in response to the value of a CloudWatch metric.
  """
  def put_auto_scaling_policy(client, input, options \\ []) do
    request(client, "PutAutoScalingPolicy", input, options)
  end

  @doc """
  Creates or updates an Amazon EMR block public access configuration for your
  AWS account in the current Region. For more information see [Configure
  Block Public Access for Amazon
  EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR Management Guide*.
  """
  def put_block_public_access_configuration(client, input, options \\ []) do
    request(client, "PutBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Creates or updates a managed scaling policy for an Amazon EMR cluster. The
  managed scaling policy defines the limits for resources, such as EC2
  instances that can be added or terminated from a cluster. The policy only
  applies to the core and task nodes. The master node cannot be scaled after
  initial configuration.
  """
  def put_managed_scaling_policy(client, input, options \\ []) do
    request(client, "PutManagedScalingPolicy", input, options)
  end

  @doc """
  Removes an automatic scaling policy from a specified instance group within
  an EMR cluster.
  """
  def remove_auto_scaling_policy(client, input, options \\ []) do
    request(client, "RemoveAutoScalingPolicy", input, options)
  end

  @doc """
  Removes a managed scaling policy from a specified EMR cluster.
  """
  def remove_managed_scaling_policy(client, input, options \\ []) do
    request(client, "RemoveManagedScalingPolicy", input, options)
  end

  @doc """
  Removes tags from an Amazon EMR resource. Tags make it easier to associate
  clusters in various ways, such as grouping clusters to track your Amazon
  EMR resource allocation costs. For more information, see [Tag
  Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

  The following example removes the stack tag with value Prod from a cluster:
  """
  def remove_tags(client, input, options \\ []) do
    request(client, "RemoveTags", input, options)
  end

  @doc """
  RunJobFlow creates and starts running a new cluster (job flow). The cluster
  runs the steps specified. After the steps complete, the cluster stops and
  the HDFS partition is lost. To prevent loss of data, configure the last
  step of the job flow to store results in Amazon S3. If the
  `JobFlowInstancesConfig` `KeepJobFlowAliveWhenNoSteps` parameter is set to
  `TRUE`, the cluster transitions to the WAITING state rather than shutting
  down after the steps have completed.

  For additional protection, you can set the `JobFlowInstancesConfig`
  `TerminationProtected` parameter to `TRUE` to lock the cluster and prevent
  it from being terminated by API call, user intervention, or in the event of
  a job flow error.

  A maximum of 256 steps are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex,
  you may require more than 256 steps to process your data. You can bypass
  the 256-step limitation in various ways, including using the SSH shell to
  connect to the master node and submitting queries directly to the software
  running on the master node, such as Hive and Hadoop. For more information
  on how to do this, see [Add More than 256 Steps to a
  Cluster](https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html)
  in the *Amazon EMR Management Guide*.

  For long running clusters, we recommend that you periodically store your
  results.

  <note> The instance fleets configuration is available only in Amazon EMR
  versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request
  can contain InstanceFleets parameters or InstanceGroups parameters, but not
  both.

  </note>
  """
  def run_job_flow(client, input, options \\ []) do
    request(client, "RunJobFlow", input, options)
  end

  @doc """
  SetTerminationProtection locks a cluster (job flow) so the EC2 instances in
  the cluster cannot be terminated by user intervention, an API call, or in
  the event of a job-flow error. The cluster still terminates upon successful
  completion of the job flow. Calling `SetTerminationProtection` on a cluster
  is similar to calling the Amazon EC2 `DisableAPITermination` API on all EC2
  instances in a cluster.

  `SetTerminationProtection` is used to prevent accidental termination of a
  cluster and to ensure that in the event of an error, the instances persist
  so that you can recover any data stored in their ephemeral instance
  storage.

  To terminate a cluster that has been locked by setting
  `SetTerminationProtection` to `true`, you must first unlock the job flow by
  a subsequent call to `SetTerminationProtection` in which you set the value
  to `false`.

  For more information, see[Managing Cluster
  Termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
  in the *Amazon EMR Management Guide*.
  """
  def set_termination_protection(client, input, options \\ []) do
    request(client, "SetTerminationProtection", input, options)
  end

  @doc """
  Sets the `Cluster$VisibleToAllUsers` value, which determines whether the
  cluster is visible to all IAM users of the AWS account associated with the
  cluster. Only the IAM user who created the cluster or the AWS account root
  user can call this action. The default value, `true`, indicates that all
  IAM users in the AWS account can perform cluster actions if they have the
  proper IAM policy permissions. If set to `false`, only the IAM user that
  created the cluster can perform actions. This action works on running
  clusters. You can override the default `true` setting when you create a
  cluster by using the `VisibleToAllUsers` parameter with `RunJobFlow`.
  """
  def set_visible_to_all_users(client, input, options \\ []) do
    request(client, "SetVisibleToAllUsers", input, options)
  end

  @doc """
  Starts a notebook execution.
  """
  def start_notebook_execution(client, input, options \\ []) do
    request(client, "StartNotebookExecution", input, options)
  end

  @doc """
  Stops a notebook execution.
  """
  def stop_notebook_execution(client, input, options \\ []) do
    request(client, "StopNotebookExecution", input, options)
  end

  @doc """
  TerminateJobFlows shuts a list of clusters (job flows) down. When a job
  flow is shut down, any step not yet completed is canceled and the EC2
  instances on which the cluster is running are stopped. Any log files not
  already saved are uploaded to Amazon S3 if a LogUri was specified when the
  cluster was created.

  The maximum number of clusters allowed is 10. The call to
  `TerminateJobFlows` is asynchronous. Depending on the configuration of the
  cluster, it may take up to 1-5 minutes for the cluster to completely
  terminate and release allocated resources, such as Amazon EC2 instances.
  """
  def terminate_job_flows(client, input, options \\ []) do
    request(client, "TerminateJobFlows", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "elasticmapreduce"}
    host = build_host("elasticmapreduce", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "ElasticMapReduce.#{action}"}
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
