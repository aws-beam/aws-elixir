# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EKS do
  @moduledoc """
  Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes
  it easy for you to run Kubernetes on Amazon Web Services without needing to
  stand up or maintain your own Kubernetes control plane.

  Kubernetes is an open-source system for automating the deployment, scaling, and
  management of containerized applications.

  Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so
  you can use all the existing plugins and tooling from the Kubernetes community.
  Applications running on Amazon EKS are fully compatible with applications
  running on any standard Kubernetes environment, whether running in on-premises
  data centers or public clouds. This means that you can easily migrate any
  standard Kubernetes application to Amazon EKS without any code modification
  required.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "eks",
      global?: false,
      protocol: "rest-json",
      service_id: "EKS",
      signature_version: "v4",
      signing_name: "eks",
      target_prefix: nil
    }
  end

  @doc """
  Associate encryption configuration to an existing cluster.

  You can use this API to enable encryption on existing clusters which do not have
  encryption already enabled. This allows you to implement a defense-in-depth
  security strategy without migrating applications to new Amazon EKS clusters.
  """
  def associate_encryption_config(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/encryption-config/associate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associate an identity provider configuration to a cluster.

  If you want to authenticate identities using an identity provider, you can
  create an identity provider configuration and associate it to your cluster.
  After configuring authentication to your cluster you can create Kubernetes
  `roles` and `clusterroles` to assign permissions to the roles, and then bind the
  roles to the identities using Kubernetes `rolebindings` and
  `clusterrolebindings`. For more information see [Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) in
  the Kubernetes documentation.
  """
  def associate_identity_provider_config(%Client{} = client, cluster_name, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/identity-provider-configs/associate"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an Amazon EKS add-on.

  Amazon EKS add-ons help to automate the provisioning and lifecycle management of
  common operational software for Amazon EKS clusters. For more information, see
  [Amazon EKS add-ons](https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html) in
  the *Amazon EKS User Guide*.
  """
  def create_addon(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an Amazon EKS control plane.

  The Amazon EKS control plane consists of control plane instances that run the
  Kubernetes software, such as `etcd` and the API server. The control plane runs
  in an account managed by Amazon Web Services, and the Kubernetes API is exposed
  by the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is
  single tenant and unique. It runs on its own set of Amazon EC2 instances.

  The cluster control plane is provisioned across multiple Availability Zones and
  fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also
  provisions elastic network interfaces in your VPC subnets to provide
  connectivity from the control plane instances to the nodes (for example, to
  support `kubectl exec`, `logs`, and `proxy` data flows).

  Amazon EKS nodes run in your Amazon Web Services account and connect to your
  cluster's control plane over the Kubernetes API server endpoint and a
  certificate file that is created for your cluster.

  You can use the `endpointPublicAccess` and `endpointPrivateAccess` parameters to
  enable or disable public and private access to your cluster's Kubernetes API
  server endpoint. By default, public access is enabled, and private access is
  disabled. For more information, see [Amazon EKS Cluster Endpoint Access Control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the * *Amazon EKS User Guide* *.

  You can use the `logging` parameter to enable or disable exporting the
  Kubernetes control plane logs for your cluster to CloudWatch Logs. By default,
  cluster control plane logs aren't exported to CloudWatch Logs. For more
  information, see [Amazon EKS Cluster Control Plane Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the * *Amazon EKS User Guide* *.

  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
  exported control plane logs. For more information, see [CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  In most cases, it takes several minutes to create a cluster. After you create an
  Amazon EKS cluster, you must configure your Kubernetes tooling to communicate
  with the API server and launch nodes into your cluster. For more information,
  see [Managing Cluster Authentication](https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)
  and [Launching Amazon EKS nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html) in
  the *Amazon EKS User Guide*.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/clusters"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an EKS Anywhere subscription.

  When a subscription is created, it is a contract agreement for the length of the
  term specified in the request. Licenses that are used to validate support are
  provisioned in Amazon Web Services License Manager and the caller account is
  granted access to EKS Anywhere Curated Packages.
  """
  def create_eks_anywhere_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/eks-anywhere-subscriptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an Fargate profile for your Amazon EKS cluster.

  You must have at least one Fargate profile in a cluster to be able to run pods
  on Fargate.

  The Fargate profile allows an administrator to declare which pods run on Fargate
  and specify which pods run on which Fargate profile. This declaration is done
  through the profile’s selectors. Each profile can have up to five selectors that
  contain a namespace and labels. A namespace is required for every selector. The
  label field consists of multiple optional key-value pairs. Pods that match the
  selectors are scheduled on Fargate. If a to-be-scheduled pod matches any of the
  selectors in the Fargate profile, then that pod is run on Fargate.

  When you create a Fargate profile, you must specify a pod execution role to use
  with the pods that are scheduled with the profile. This role is added to the
  cluster's Kubernetes [Role Based Access Control](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) (RBAC)
  for authorization so that the `kubelet` that is running on the Fargate
  infrastructure can register with your Amazon EKS cluster so that it can appear
  in your cluster as a node. The pod execution role also provides IAM permissions
  to the Fargate infrastructure to allow read access to Amazon ECR image
  repositories. For more information, see [Pod Execution Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
  in the *Amazon EKS User Guide*.

  Fargate profiles are immutable. However, you can create a new updated profile to
  replace an existing profile and then delete the original after the updated
  profile has finished creating.

  If any Fargate profiles in a cluster are in the `DELETING` status, you must wait
  for that Fargate profile to finish deleting before you can create any other
  profiles in that cluster.

  For more information, see [Fargate Profile](https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html)
  in the *Amazon EKS User Guide*.
  """
  def create_fargate_profile(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/fargate-profiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a managed node group for an Amazon EKS cluster.

  You can only create a node group for your cluster that is equal to the current
  Kubernetes version for the cluster.

  An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and
  associated Amazon EC2 instances that are managed by Amazon Web Services for an
  Amazon EKS cluster. For more information, see [Managed node groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
  in the *Amazon EKS User Guide*.

  Windows AMI types are only supported for commercial Regions that support Windows
  Amazon EKS.
  """
  def create_nodegroup(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an EKS Pod Identity association between a service account in an Amazon
  EKS cluster and an IAM role with *EKS Pod Identity*.

  Use EKS Pod Identity to give temporary IAM credentials to pods and the
  credentials are rotated automatically.

  Amazon EKS Pod Identity associations provide the ability to manage credentials
  for your applications, similar to the way that 7EC2l instance profiles provide
  credentials to Amazon EC2 instances.

  If a pod uses a service account that has an association, Amazon EKS sets
  environment variables in the containers of the pod. The environment variables
  configure the Amazon Web Services SDKs, including the Command Line Interface, to
  use the EKS Pod Identity credentials.

  Pod Identity is a simpler method than *IAM roles for service accounts*, as this
  method doesn't use OIDC identity providers. Additionally, you can configure a
  role for Pod Identity once, and reuse it across clusters.
  """
  def create_pod_identity_association(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/pod-identity-associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Delete an Amazon EKS add-on.

  When you remove the add-on, it will also be deleted from the cluster. You can
  always manually start an add-on on the cluster using the Kubernetes API.
  """
  def delete_addon(%Client{} = client, addon_name, cluster_name, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons/#{AWS.Util.encode_uri(addon_name)}"

    headers = []

    {query_params, input} =
      [
        {"preserve", "preserve"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the Amazon EKS cluster control plane.

  If you have active services in your cluster that are associated with a load
  balancer, you must delete those services before deleting the cluster so that the
  load balancers are deleted properly. Otherwise, you can have orphaned resources
  in your VPC that prevent you from being able to delete the VPC. For more
  information, see [Deleting a Cluster](https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
  in the *Amazon EKS User Guide*.

  If you have managed node groups or Fargate profiles attached to the cluster, you
  must delete them first. For more information, see `DeleteNodegroup` and
  `DeleteFargateProfile`.
  """
  def delete_cluster(%Client{} = client, name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an expired or inactive subscription.

  Deleting inactive subscriptions removes them from the Amazon Web Services
  Management Console view and from list/describe API responses. Subscriptions can
  only be cancelled within 7 days of creation and are cancelled by creating a
  ticket in the Amazon Web Services Support Center.
  """
  def delete_eks_anywhere_subscription(%Client{} = client, id, input, options \\ []) do
    url_path = "/eks-anywhere-subscriptions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an Fargate profile.

  When you delete a Fargate profile, any pods running on Fargate that were created
  with the profile are deleted. If those pods match another Fargate profile, then
  they are scheduled on Fargate with that profile. If they no longer match any
  Fargate profiles, then they are not scheduled on Fargate and they may remain in
  a pending state.

  Only one Fargate profile in a cluster can be in the `DELETING` status at a time.
  You must wait for a Fargate profile to finish deleting before you can delete any
  other profiles in that cluster.
  """
  def delete_fargate_profile(
        %Client{} = client,
        cluster_name,
        fargate_profile_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/fargate-profiles/#{AWS.Util.encode_uri(fargate_profile_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an Amazon EKS node group for a cluster.
  """
  def delete_nodegroup(%Client{} = client, cluster_name, nodegroup_name, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups/#{AWS.Util.encode_uri(nodegroup_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a EKS Pod Identity association.

  The temporary Amazon Web Services credentials from the previous IAM role session
  might still be valid until the session expiry. If you need to immediately revoke
  the temporary session credentials, then go to the role in the IAM console.
  """
  def delete_pod_identity_association(
        %Client{} = client,
        association_id,
        cluster_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/pod-identity-associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deregisters a connected cluster to remove it from the Amazon EKS control plane.
  """
  def deregister_cluster(%Client{} = client, name, input, options \\ []) do
    url_path = "/cluster-registrations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes an Amazon EKS add-on.
  """
  def describe_addon(%Client{} = client, addon_name, cluster_name, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons/#{AWS.Util.encode_uri(addon_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns configuration options.
  """
  def describe_addon_configuration(%Client{} = client, addon_name, addon_version, options \\ []) do
    url_path = "/addons/configuration-schemas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(addon_version) do
        [{"addonVersion", addon_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(addon_name) do
        [{"addonName", addon_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the versions for an add-on.

  Information such as the Kubernetes versions that you can use the add-on with,
  the `owner`, `publisher`, and the `type` of the add-on are returned.
  """
  def describe_addon_versions(
        %Client{} = client,
        addon_name \\ nil,
        kubernetes_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owners \\ nil,
        publishers \\ nil,
        types \\ nil,
        options \\ []
      ) do
    url_path = "/addons/supported-versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(types) do
        [{"types", types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(publishers) do
        [{"publishers", publishers} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owners) do
        [{"owners", owners} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(kubernetes_version) do
        [{"kubernetesVersion", kubernetes_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(addon_name) do
        [{"addonName", addon_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an Amazon EKS cluster.

  The API server endpoint and certificate authority data returned by this
  operation are required for `kubelet` and `kubectl` to communicate with your
  Kubernetes API server. For more information, see [Create a kubeconfig for Amazon EKS](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

  The API server endpoint and certificate authority data aren't available until
  the cluster reaches the `ACTIVE` state.
  """
  def describe_cluster(%Client{} = client, name, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about a subscription.
  """
  def describe_eks_anywhere_subscription(%Client{} = client, id, options \\ []) do
    url_path = "/eks-anywhere-subscriptions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an Fargate profile.
  """
  def describe_fargate_profile(
        %Client{} = client,
        cluster_name,
        fargate_profile_name,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/fargate-profiles/#{AWS.Util.encode_uri(fargate_profile_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an identity provider configuration.
  """
  def describe_identity_provider_config(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/identity-provider-configs/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns descriptive information about an Amazon EKS node group.
  """
  def describe_nodegroup(%Client{} = client, cluster_name, nodegroup_name, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups/#{AWS.Util.encode_uri(nodegroup_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an EKS Pod Identity association.

  This action requires the ID of the association. You can get the ID from the
  response to the `CreatePodIdentityAssocation` for newly created associations.
  Or, you can list the IDs for associations with `ListPodIdentityAssociations` and
  filter the list by namespace or service account.
  """
  def describe_pod_identity_association(
        %Client{} = client,
        association_id,
        cluster_name,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/pod-identity-associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns descriptive information about an update against your Amazon EKS cluster
  or associated managed node group or Amazon EKS add-on.

  When the status of the update is `Succeeded`, the update is complete. If an
  update fails, the status is `Failed`, and an error detail explains the reason
  for the failure.
  """
  def describe_update(
        %Client{} = client,
        name,
        update_id,
        addon_name \\ nil,
        nodegroup_name \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}/updates/#{AWS.Util.encode_uri(update_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(nodegroup_name) do
        [{"nodegroupName", nodegroup_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(addon_name) do
        [{"addonName", addon_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Disassociates an identity provider configuration from a cluster.

  If you disassociate an identity provider from your cluster, users included in
  the provider can no longer access the cluster. However, you can still access the
  cluster with [IAM principals](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html).
  """
  def disassociate_identity_provider_config(
        %Client{} = client,
        cluster_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/identity-provider-configs/disassociate"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the installed add-ons.
  """
  def list_addons(
        %Client{} = client,
        cluster_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon EKS clusters in your Amazon Web Services account in the
  specified Region.
  """
  def list_clusters(
        %Client{} = client,
        include \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include) do
        [{"include", include} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Displays the full description of the subscription.
  """
  def list_eks_anywhere_subscriptions(
        %Client{} = client,
        include_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/eks-anywhere-subscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_status) do
        [{"includeStatus", include_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the Fargate profiles associated with the specified cluster in your Amazon
  Web Services account in the specified Region.
  """
  def list_fargate_profiles(
        %Client{} = client,
        cluster_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/fargate-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  A list of identity provider configurations.
  """
  def list_identity_provider_configs(
        %Client{} = client,
        cluster_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/identity-provider-configs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon EKS managed node groups associated with the specified cluster
  in your Amazon Web Services account in the specified Region.

  Self-managed node groups are not listed.
  """
  def list_nodegroups(
        %Client{} = client,
        cluster_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the EKS Pod Identity associations in a cluster.

  You can filter the list by the namespace that the association is in or the
  service account that the association uses.
  """
  def list_pod_identity_associations(
        %Client{} = client,
        cluster_name,
        max_results \\ nil,
        namespace \\ nil,
        next_token \\ nil,
        service_account \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/pod-identity-associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_account) do
        [{"serviceAccount", service_account} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the tags for an Amazon EKS resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the updates associated with an Amazon EKS cluster or managed node group in
  your Amazon Web Services account, in the specified Region.
  """
  def list_updates(
        %Client{} = client,
        name,
        addon_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        nodegroup_name \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}/updates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(nodegroup_name) do
        [{"nodegroupName", nodegroup_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(addon_name) do
        [{"addonName", addon_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Connects a Kubernetes cluster to the Amazon EKS control plane.

  Any Kubernetes cluster can be connected to the Amazon EKS control plane to view
  current information about the cluster and its nodes.

  Cluster connection requires two steps. First, send a ` `RegisterClusterRequest`
  ` to add it to the Amazon EKS control plane.

  Second, a
  [Manifest](https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml)
  containing the `activationID` and `activationCode` must be applied to the
  Kubernetes cluster through it's native provider to provide visibility.

  After the Manifest is updated and applied, then the connected cluster is visible
  to the Amazon EKS control plane. If the Manifest is not applied within three
  days, then the connected cluster will no longer be visible and must be
  deregistered. See `DeregisterCluster`.
  """
  def register_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster-registrations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are deleted as well. Tags that you create for Amazon EKS resources do
  not propagate to any other resources associated with the cluster. For example,
  if you tag a cluster with this operation, that tag does not automatically
  propagate to the subnets and nodes associated with the cluster.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an Amazon EKS add-on.
  """
  def update_addon(%Client{} = client, addon_name, cluster_name, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons/#{AWS.Util.encode_uri(addon_name)}/update"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an Amazon EKS cluster configuration.

  Your cluster continues to function during the update. The response output
  includes an update ID that you can use to track the status of your cluster
  update with the `DescribeUpdate` API operation.

  You can use this API operation to enable or disable exporting the Kubernetes
  control plane logs for your cluster to CloudWatch Logs. By default, cluster
  control plane logs aren't exported to CloudWatch Logs. For more information, see
  [Amazon EKS Cluster Control Plane Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the * *Amazon EKS User Guide* *.

  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
  exported control plane logs. For more information, see [CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  You can also use this API operation to enable or disable public and private
  access to your cluster's Kubernetes API server endpoint. By default, public
  access is enabled, and private access is disabled. For more information, see
  [Amazon EKS cluster endpoint access control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the * *Amazon EKS User Guide* *.

  You can also use this API operation to choose different subnets and security
  groups for the cluster. You must specify at least two subnets that are in
  different Availability Zones. You can't change which VPC the subnets are from,
  the subnets must be in the same VPC as the subnets that the cluster was created
  with. For more information about the VPC requirements, see
  [https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
  in the * *Amazon EKS User Guide* *.

  Cluster updates are asynchronous, and they should finish within a few minutes.
  During an update, the cluster status moves to `UPDATING` (this status transition
  is eventually consistent). When the update is complete (either `Failed` or
  `Successful`), the cluster status moves to `Active`.
  """
  def update_cluster_config(%Client{} = client, name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}/update-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an Amazon EKS cluster to the specified Kubernetes version.

  Your cluster continues to function during the update. The response output
  includes an update ID that you can use to track the status of your cluster
  update with the `DescribeUpdate` API operation.

  Cluster updates are asynchronous, and they should finish within a few minutes.
  During an update, the cluster status moves to `UPDATING` (this status transition
  is eventually consistent). When the update is complete (either `Failed` or
  `Successful`), the cluster status moves to `Active`.

  If your cluster has managed node groups attached to it, all of your node groups’
  Kubernetes versions must match the cluster’s Kubernetes version in order to
  update the cluster to a new Kubernetes version.
  """
  def update_cluster_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}/updates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update an EKS Anywhere Subscription.

  Only auto renewal and tags can be updated after subscription creation.
  """
  def update_eks_anywhere_subscription(%Client{} = client, id, input, options \\ []) do
    url_path = "/eks-anywhere-subscriptions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an Amazon EKS managed node group configuration.

  Your node group continues to function during the update. The response output
  includes an update ID that you can use to track the status of your node group
  update with the `DescribeUpdate` API operation. Currently you can update the
  Kubernetes labels for a node group or the scaling configuration.
  """
  def update_nodegroup_config(
        %Client{} = client,
        cluster_name,
        nodegroup_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups/#{AWS.Util.encode_uri(nodegroup_name)}/update-config"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the Kubernetes version or AMI version of an Amazon EKS managed node
  group.

  You can update a node group using a launch template only if the node group was
  originally deployed with a launch template. If you need to update a custom AMI
  in a node group that was deployed with a launch template, then update your
  custom AMI, specify the new ID in a new version of the launch template, and then
  update the node group to the new version of the launch template.

  If you update without a launch template, then you can update to the latest
  available AMI version of a node group's current Kubernetes version by not
  specifying a Kubernetes version in the request. You can update to the latest AMI
  version of your cluster's current Kubernetes version by specifying your
  cluster's Kubernetes version in the request. For information about Linux
  versions, see [Amazon EKS optimized Amazon Linux AMI versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
  in the *Amazon EKS User Guide*. For information about Windows versions, see
  [Amazon EKS optimized Windows AMI versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html)
  in the *Amazon EKS User Guide*.

  You cannot roll back a node group to an earlier Kubernetes version or AMI
  version.

  When a node in a managed node group is terminated due to a scaling action or
  update, the pods in that node are drained first. Amazon EKS attempts to drain
  the nodes gracefully and will fail if it is unable to do so. You can `force` the
  update if Amazon EKS is unable to drain the nodes as a result of a pod
  disruption budget issue.
  """
  def update_nodegroup_version(
        %Client{} = client,
        cluster_name,
        nodegroup_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups/#{AWS.Util.encode_uri(nodegroup_name)}/update-version"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a EKS Pod Identity association.

  Only the IAM role can be changed; an association can't be moved between
  clusters, namespaces, or service accounts. If you need to edit the namespace or
  service account, you need to remove the association and then create a new
  association with your desired settings.
  """
  def update_pod_identity_association(
        %Client{} = client,
        association_id,
        cluster_name,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/pod-identity-associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
