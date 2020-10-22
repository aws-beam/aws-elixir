# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EKS do
  @moduledoc """
  Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that
  makes it easy for you to run Kubernetes on AWS without needing to stand up
  or maintain your own Kubernetes control plane. Kubernetes is an open-source
  system for automating the deployment, scaling, and management of
  containerized applications.

  Amazon EKS runs up-to-date versions of the open-source Kubernetes software,
  so you can use all the existing plugins and tooling from the Kubernetes
  community. Applications running on Amazon EKS are fully compatible with
  applications running on any standard Kubernetes environment, whether
  running in on-premises data centers or public clouds. This means that you
  can easily migrate any standard Kubernetes application to Amazon EKS
  without any code modification required.
  """

  @doc """
  Creates an Amazon EKS control plane.

  The Amazon EKS control plane consists of control plane instances that run
  the Kubernetes software, such as `etcd` and the API server. The control
  plane runs in an account managed by AWS, and the Kubernetes API is exposed
  via the Amazon EKS API server endpoint. Each Amazon EKS cluster control
  plane is single-tenant and unique and runs on its own set of Amazon EC2
  instances.

  The cluster control plane is provisioned across multiple Availability Zones
  and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS
  also provisions elastic network interfaces in your VPC subnets to provide
  connectivity from the control plane instances to the worker nodes (for
  example, to support `kubectl exec`, `logs`, and `proxy` data flows).

  Amazon EKS worker nodes run in your AWS account and connect to your
  cluster's control plane via the Kubernetes API server endpoint and a
  certificate file that is created for your cluster.

  You can use the `endpointPublicAccess` and `endpointPrivateAccess`
  parameters to enable or disable public and private access to your cluster's
  Kubernetes API server endpoint. By default, public access is enabled, and
  private access is disabled. For more information, see [Amazon EKS Cluster
  Endpoint Access
  Control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the * *Amazon EKS User Guide* *.

  You can use the `logging` parameter to enable or disable exporting the
  Kubernetes control plane logs for your cluster to CloudWatch Logs. By
  default, cluster control plane logs aren't exported to CloudWatch Logs. For
  more information, see [Amazon EKS Cluster Control Plane
  Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the * *Amazon EKS User Guide* *.

  <note> CloudWatch Logs ingestion, archive storage, and data scanning rates
  apply to exported control plane logs. For more information, see [Amazon
  CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  </note> Cluster creation typically takes between 10 and 15 minutes. After
  you create an Amazon EKS cluster, you must configure your Kubernetes
  tooling to communicate with the API server and launch worker nodes into
  your cluster. For more information, see [Managing Cluster
  Authentication](https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)
  and [Launching Amazon EKS Worker
  Nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)
  in the *Amazon EKS User Guide*.
  """
  def create_cluster(client, input, options \\ []) do
    path_ = "/clusters"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an AWS Fargate profile for your Amazon EKS cluster. You must have
  at least one Fargate profile in a cluster to be able to run pods on
  Fargate.

  The Fargate profile allows an administrator to declare which pods run on
  Fargate and specify which pods run on which Fargate profile. This
  declaration is done through the profile’s selectors. Each profile can have
  up to five selectors that contain a namespace and labels. A namespace is
  required for every selector. The label field consists of multiple optional
  key-value pairs. Pods that match the selectors are scheduled on Fargate. If
  a to-be-scheduled pod matches any of the selectors in the Fargate profile,
  then that pod is run on Fargate.

  When you create a Fargate profile, you must specify a pod execution role to
  use with the pods that are scheduled with the profile. This role is added
  to the cluster's Kubernetes [Role Based Access
  Control](https://kubernetes.io/docs/admin/authorization/rbac/) (RBAC) for
  authorization so that the `kubelet` that is running on the Fargate
  infrastructure can register with your Amazon EKS cluster so that it can
  appear in your cluster as a node. The pod execution role also provides IAM
  permissions to the Fargate infrastructure to allow read access to Amazon
  ECR image repositories. For more information, see [Pod Execution
  Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
  in the *Amazon EKS User Guide*.

  Fargate profiles are immutable. However, you can create a new updated
  profile to replace an existing profile and then delete the original after
  the updated profile has finished creating.

  If any Fargate profiles in a cluster are in the `DELETING` status, you must
  wait for that Fargate profile to finish deleting before you can create any
  other profiles in that cluster.

  For more information, see [AWS Fargate
  Profile](https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html)
  in the *Amazon EKS User Guide*.
  """
  def create_fargate_profile(client, cluster_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/fargate-profiles"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a managed worker node group for an Amazon EKS cluster. You can only
  create a node group for your cluster that is equal to the current
  Kubernetes version for the cluster. All node groups are created with the
  latest AMI release version for the respective minor Kubernetes version of
  the cluster, unless you deploy a custom AMI using a launch template. For
  more information about using launch templates, see [Launch template
  support](https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html).

  An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and
  associated Amazon EC2 instances that are managed by AWS for an Amazon EKS
  cluster. Each node group uses a version of the Amazon EKS-optimized Amazon
  Linux 2 AMI. For more information, see [Managed Node
  Groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
  in the *Amazon EKS User Guide*.
  """
  def create_nodegroup(client, cluster_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the Amazon EKS cluster control plane.

  If you have active services in your cluster that are associated with a load
  balancer, you must delete those services before deleting the cluster so
  that the load balancers are deleted properly. Otherwise, you can have
  orphaned resources in your VPC that prevent you from being able to delete
  the VPC. For more information, see [Deleting a
  Cluster](https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
  in the *Amazon EKS User Guide*.

  If you have managed node groups or Fargate profiles attached to the
  cluster, you must delete them first. For more information, see
  `DeleteNodegroup` and `DeleteFargateProfile`.
  """
  def delete_cluster(client, name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an AWS Fargate profile.

  When you delete a Fargate profile, any pods running on Fargate that were
  created with the profile are deleted. If those pods match another Fargate
  profile, then they are scheduled on Fargate with that profile. If they no
  longer match any Fargate profiles, then they are not scheduled on Fargate
  and they may remain in a pending state.

  Only one Fargate profile in a cluster can be in the `DELETING` status at a
  time. You must wait for a Fargate profile to finish deleting before you can
  delete any other profiles in that cluster.
  """
  def delete_fargate_profile(client, cluster_name, fargate_profile_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/fargate-profiles/#{URI.encode(fargate_profile_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an Amazon EKS node group for a cluster.
  """
  def delete_nodegroup(client, cluster_name, nodegroup_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups/#{URI.encode(nodegroup_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns descriptive information about an Amazon EKS cluster.

  The API server endpoint and certificate authority data returned by this
  operation are required for `kubelet` and `kubectl` to communicate with your
  Kubernetes API server. For more information, see [Create a kubeconfig for
  Amazon
  EKS](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

  <note> The API server endpoint and certificate authority data aren't
  available until the cluster reaches the `ACTIVE` state.

  </note>
  """
  def describe_cluster(client, name, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an AWS Fargate profile.
  """
  def describe_fargate_profile(client, cluster_name, fargate_profile_name, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/fargate-profiles/#{URI.encode(fargate_profile_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an Amazon EKS node group.
  """
  def describe_nodegroup(client, cluster_name, nodegroup_name, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups/#{URI.encode(nodegroup_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an update against your Amazon EKS
  cluster or associated managed node group.

  When the status of the update is `Succeeded`, the update is complete. If an
  update fails, the status is `Failed`, and an error detail explains the
  reason for the failure.
  """
  def describe_update(client, name, update_id, nodegroup_name \\ nil, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}/updates/#{URI.encode(update_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(nodegroup_name) do
      [{"nodegroupName", nodegroup_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon EKS clusters in your AWS account in the specified Region.
  """
  def list_clusters(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/clusters"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the AWS Fargate profiles associated with the specified cluster in
  your AWS account in the specified Region.
  """
  def list_fargate_profiles(client, cluster_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/fargate-profiles"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon EKS managed node groups associated with the specified
  cluster in your AWS account in the specified Region. Self-managed node
  groups are not listed.
  """
  def list_nodegroups(client, cluster_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the tags for an Amazon EKS resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the updates associated with an Amazon EKS cluster or managed node
  group in your AWS account, in the specified Region.
  """
  def list_updates(client, name, max_results \\ nil, next_token \\ nil, nodegroup_name \\ nil, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}/updates"
    headers = []
    query_ = []
    query_ = if !is_nil(nodegroup_name) do
      [{"nodegroupName", nodegroup_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Associates the specified tags to a resource with the specified
  `resourceArn`. If existing tags on a resource are not specified in the
  request parameters, they are not changed. When a resource is deleted, the
  tags associated with that resource are deleted as well. Tags that you
  create for Amazon EKS resources do not propagate to any other resources
  associated with the cluster. For example, if you tag a cluster with this
  operation, that tag does not automatically propagate to the subnets and
  worker nodes associated with the cluster.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an Amazon EKS cluster configuration. Your cluster continues to
  function during the update. The response output includes an update ID that
  you can use to track the status of your cluster update with the
  `DescribeUpdate` API operation.

  You can use this API operation to enable or disable exporting the
  Kubernetes control plane logs for your cluster to CloudWatch Logs. By
  default, cluster control plane logs aren't exported to CloudWatch Logs. For
  more information, see [Amazon EKS Cluster Control Plane
  Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the * *Amazon EKS User Guide* *.

  <note> CloudWatch Logs ingestion, archive storage, and data scanning rates
  apply to exported control plane logs. For more information, see [Amazon
  CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  </note> You can also use this API operation to enable or disable public and
  private access to your cluster's Kubernetes API server endpoint. By
  default, public access is enabled, and private access is disabled. For more
  information, see [Amazon EKS Cluster Endpoint Access
  Control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the * *Amazon EKS User Guide* *.

  <important> At this time, you can not update the subnets or security group
  IDs for an existing cluster.

  </important> Cluster updates are asynchronous, and they should finish
  within a few minutes. During an update, the cluster status moves to
  `UPDATING` (this status transition is eventually consistent). When the
  update is complete (either `Failed` or `Successful`), the cluster status
  moves to `Active`.
  """
  def update_cluster_config(client, name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}/update-config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an Amazon EKS cluster to the specified Kubernetes version. Your
  cluster continues to function during the update. The response output
  includes an update ID that you can use to track the status of your cluster
  update with the `DescribeUpdate` API operation.

  Cluster updates are asynchronous, and they should finish within a few
  minutes. During an update, the cluster status moves to `UPDATING` (this
  status transition is eventually consistent). When the update is complete
  (either `Failed` or `Successful`), the cluster status moves to `Active`.

  If your cluster has managed node groups attached to it, all of your node
  groups’ Kubernetes versions must match the cluster’s Kubernetes version in
  order to update the cluster to a new Kubernetes version.
  """
  def update_cluster_version(client, name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(name)}/updates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an Amazon EKS managed node group configuration. Your node group
  continues to function during the update. The response output includes an
  update ID that you can use to track the status of your node group update
  with the `DescribeUpdate` API operation. Currently you can update the
  Kubernetes labels for a node group or the scaling configuration.
  """
  def update_nodegroup_config(client, cluster_name, nodegroup_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups/#{URI.encode(nodegroup_name)}/update-config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the Kubernetes version or AMI version of an Amazon EKS managed node
  group.

  You can update a node group using a launch template only if the node group
  was originally deployed with a launch template. If you need to update a
  custom AMI in a node group that was deployed with a launch template, then
  update your custom AMI, specify the new ID in a new version of the launch
  template, and then update the node group to the new version of the launch
  template.

  If you update without a launch template, then you can update to the latest
  available AMI version of a node group's current Kubernetes version by not
  specifying a Kubernetes version in the request. You can update to the
  latest AMI version of your cluster's current Kubernetes version by
  specifying your cluster's Kubernetes version in the request. For more
  information, see [Amazon EKS-Optimized Linux AMI
  Versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
  in the *Amazon EKS User Guide*.

  You cannot roll back a node group to an earlier Kubernetes version or AMI
  version.

  When a node in a managed node group is terminated due to a scaling action
  or update, the pods in that node are drained first. Amazon EKS attempts to
  drain the nodes gracefully and will fail if it is unable to do so. You can
  `force` the update if Amazon EKS is unable to drain the nodes as a result
  of a pod disruption budget issue.
  """
  def update_nodegroup_version(client, cluster_name, nodegroup_name, input, options \\ []) do
    path_ = "/clusters/#{URI.encode(cluster_name)}/node-groups/#{URI.encode(nodegroup_name)}/update-version"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "eks"}
    host = build_host("eks", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
