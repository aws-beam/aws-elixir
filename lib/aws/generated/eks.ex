# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EKS do
  @moduledoc """
  Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes
  it easy
  for you to run Kubernetes on Amazon Web Services without needing to setup or
  maintain your own
  Kubernetes control plane.

  Kubernetes is an open-source system for automating the deployment,
  scaling, and management of containerized applications.

  Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so
  you
  can use all the existing plugins and tooling from the Kubernetes community.
  Applications
  running on Amazon EKS are fully compatible with applications running on any
  standard Kubernetes environment, whether running in on-premises data centers or
  public
  clouds. This means that you can easily migrate any standard Kubernetes
  application to Amazon EKS without any code modification required.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_nodegroups_response() :: %{
        "nextToken" => String.t(),
        "nodegroups" => list(String.t()())
      }

  """
  @type list_nodegroups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_cluster_request() :: %{}

  """
  @type describe_cluster_request() :: %{}

  @typedoc """

  ## Example:

      delete_fargate_profile_response() :: %{
        "fargateProfile" => fargate_profile()
      }

  """
  @type delete_fargate_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_response() :: %{
        "accessPolicies" => list(access_policy()()),
        "nextToken" => String.t()
      }

  """
  @type list_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_summary() :: %{
        "category" => list(any()),
        "description" => String.t(),
        "id" => String.t(),
        "insightStatus" => insight_status(),
        "kubernetesVersion" => String.t(),
        "lastRefreshTime" => non_neg_integer(),
        "lastTransitionTime" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_policy() :: %{
        "arn" => String.t(),
        "name" => String.t()
      }

  """
  @type access_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      addon_issue() :: %{
        "code" => list(any()),
        "message" => String.t(),
        "resourceIds" => list(String.t()())
      }

  """
  @type addon_issue() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_insights_request() :: %{
        optional("filter") => insights_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_insight_response() :: %{
        "insight" => insight()
      }

  """
  @type describe_insight_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "provider" => provider(),
        "resources" => list(String.t()())
      }

  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_labels_payload() :: %{
        "addOrUpdateLabels" => map(),
        "removeLabels" => list(String.t()())
      }

  """
  @type update_labels_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_eks_anywhere_subscription_response() :: %{
        "subscription" => eks_anywhere_subscription()
      }

  """
  @type describe_eks_anywhere_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outpost_config_response() :: %{
        "controlPlaneInstanceType" => String.t(),
        "controlPlanePlacement" => control_plane_placement_response(),
        "outpostArns" => list(String.t()())
      }

  """
  @type outpost_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compatibility() :: %{
        "clusterVersion" => String.t(),
        "defaultVersion" => boolean(),
        "platformVersions" => list(String.t()())
      }

  """
  @type compatibility() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_response() :: %{
        "addon" => addon()
      }

  """
  @type describe_addon_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_nodegroup_request() :: %{
        optional("amiType") => list(any()),
        optional("capacityType") => list(any()),
        optional("clientRequestToken") => String.t(),
        optional("diskSize") => integer(),
        optional("instanceTypes") => list(String.t()()),
        optional("labels") => map(),
        optional("launchTemplate") => launch_template_specification(),
        optional("releaseVersion") => String.t(),
        optional("remoteAccess") => remote_access_config(),
        optional("scalingConfig") => nodegroup_scaling_config(),
        optional("tags") => map(),
        optional("taints") => list(taint()()),
        optional("updateConfig") => nodegroup_update_config(),
        optional("version") => String.t(),
        required("nodeRole") => String.t(),
        required("nodegroupName") => String.t(),
        required("subnets") => list(String.t()())
      }

  """
  @type create_nodegroup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_addon_request() :: %{
        optional("preserve") => boolean()
      }

  """
  @type delete_addon_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_cluster_response() :: %{
        "cluster" => cluster()
      }

  """
  @type describe_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_availability_zone_exception() :: %{
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "validZones" => list(String.t()())
      }

  """
  @type unsupported_availability_zone_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_cluster_request() :: %{}

  """
  @type deregister_cluster_request() :: %{}

  @typedoc """

  ## Example:

      update_nodegroup_config_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("labels") => update_labels_payload(),
        optional("scalingConfig") => nodegroup_scaling_config(),
        optional("taints") => update_taints_payload(),
        optional("updateConfig") => nodegroup_update_config()
      }

  """
  @type update_nodegroup_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_scope() :: %{
        "namespaces" => list(String.t()()),
        "type" => list(any())
      }

  """
  @type access_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_access_policies_response() :: %{
        "associatedAccessPolicies" => list(associated_access_policy()()),
        "clusterName" => String.t(),
        "nextToken" => String.t(),
        "principalArn" => String.t()
      }

  """
  @type list_associated_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_addon_response() :: %{
        "addon" => addon()
      }

  """
  @type delete_addon_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_fargate_profile_response() :: %{
        "fargateProfile" => fargate_profile()
      }

  """
  @type create_fargate_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_response() :: %{
        "cluster" => cluster()
      }

  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pod_identity_association() :: %{
        "associationArn" => String.t(),
        "associationId" => String.t(),
        "clusterName" => String.t(),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "namespace" => String.t(),
        "roleArn" => String.t(),
        "serviceAccount" => String.t(),
        "tags" => map()
      }

  """
  @type pod_identity_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_provider_config_request() :: %{
        required("identityProviderConfig") => identity_provider_config()
      }

  """
  @type describe_identity_provider_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_configuration_response() :: %{
        "addonName" => String.t(),
        "addonVersion" => String.t(),
        "configurationSchema" => String.t()
      }

  """
  @type describe_addon_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity() :: %{
        "oidc" => o_id_c()
      }

  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nodegroup_update_config() :: %{
        "maxUnavailable" => integer(),
        "maxUnavailablePercentage" => integer()
      }

  """
  @type nodegroup_update_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_identity_provider_config_response() :: %{
        "tags" => map(),
        "update" => update()
      }

  """
  @type associate_identity_provider_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_provider_config() :: %{
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type identity_provider_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_access_policy_request() :: %{}

  """
  @type disassociate_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_access_entry_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("kubernetesGroups") => list(String.t()()),
        optional("username") => String.t()
      }

  """
  @type update_access_entry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nodegroup() :: %{
        "amiType" => list(any()),
        "capacityType" => list(any()),
        "clusterName" => String.t(),
        "createdAt" => non_neg_integer(),
        "diskSize" => integer(),
        "health" => nodegroup_health(),
        "instanceTypes" => list(String.t()()),
        "labels" => map(),
        "launchTemplate" => launch_template_specification(),
        "modifiedAt" => non_neg_integer(),
        "nodeRole" => String.t(),
        "nodegroupArn" => String.t(),
        "nodegroupName" => String.t(),
        "releaseVersion" => String.t(),
        "remoteAccess" => remote_access_config(),
        "resources" => nodegroup_resources(),
        "scalingConfig" => nodegroup_scaling_config(),
        "status" => list(any()),
        "subnets" => list(String.t()()),
        "tags" => map(),
        "taints" => list(taint()()),
        "updateConfig" => nodegroup_update_config(),
        "version" => String.t()
      }

  """
  @type nodegroup() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nodegroup_scaling_config() :: %{
        "desiredSize" => integer(),
        "maxSize" => integer(),
        "minSize" => integer()
      }

  """
  @type nodegroup_scaling_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_cluster_response() :: %{
        "cluster" => cluster()
      }

  """
  @type deregister_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eks_anywhere_subscriptions_request() :: %{
        optional("includeStatus") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_eks_anywhere_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_insights_response() :: %{
        "insights" => list(insight_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_provider_config_response() :: %{
        "oidc" => oidc_identity_provider_config()
      }

  """
  @type identity_provider_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_config_request() :: %{
        "authenticationMode" => list(any()),
        "bootstrapClusterCreatorAdminPermissions" => boolean()
      }

  """
  @type create_access_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_eks_anywhere_subscription_request() :: %{}

  """
  @type delete_eks_anywhere_subscription_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_cluster_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("connectorConfig") => connector_config_request(),
        required("name") => String.t()
      }

  """
  @type register_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_plane_placement_response() :: %{
        "groupName" => String.t()
      }

  """
  @type control_plane_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_status() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }

  """
  @type insight_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_access_policy_response() :: %{}

  """
  @type disassociate_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_pod_identity_associations_response() :: %{
        "associations" => list(pod_identity_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_pod_identity_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_addons_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_addons_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_versions_request() :: %{
        optional("addonName") => String.t(),
        optional("kubernetesVersion") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owners") => list(String.t()()),
        optional("publishers") => list(String.t()()),
        optional("types") => list(String.t()())
      }

  """
  @type describe_addon_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      addon() :: %{
        "addonArn" => String.t(),
        "addonName" => String.t(),
        "addonVersion" => String.t(),
        "clusterName" => String.t(),
        "configurationValues" => String.t(),
        "createdAt" => non_neg_integer(),
        "health" => addon_health(),
        "marketplaceInformation" => marketplace_information(),
        "modifiedAt" => non_neg_integer(),
        "owner" => String.t(),
        "publisher" => String.t(),
        "serviceAccountRoleArn" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type addon() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_taints_payload() :: %{
        "addOrUpdateTaints" => list(taint()()),
        "removeTaints" => list(taint()())
      }

  """
  @type update_taints_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_entry() :: %{
        "accessEntryArn" => String.t(),
        "clusterName" => String.t(),
        "createdAt" => non_neg_integer(),
        "kubernetesGroups" => list(String.t()()),
        "modifiedAt" => non_neg_integer(),
        "principalArn" => String.t(),
        "tags" => map(),
        "type" => String.t(),
        "username" => String.t()
      }

  """
  @type access_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_fargate_profile_request() :: %{}

  """
  @type describe_fargate_profile_request() :: %{}

  @typedoc """

  ## Example:

      provider() :: %{
        "keyArn" => String.t()
      }

  """
  @type provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_anywhere_subscription_term() :: %{
        "duration" => integer(),
        "unit" => list(any())
      }

  """
  @type eks_anywhere_subscription_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_entry_response() :: %{
        "accessEntry" => access_entry()
      }

  """
  @type update_access_entry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_eks_anywhere_subscription_request() :: %{
        optional("autoRenew") => boolean(),
        optional("clientRequestToken") => String.t(),
        optional("licenseQuantity") => integer(),
        optional("licenseType") => list(any()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("term") => eks_anywhere_subscription_term()
      }

  """
  @type create_eks_anywhere_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_request() :: %{
        optional("accessConfig") => create_access_config_request(),
        optional("clientRequestToken") => String.t(),
        optional("encryptionConfig") => list(encryption_config()()),
        optional("kubernetesNetworkConfig") => kubernetes_network_config_request(),
        optional("logging") => logging(),
        optional("outpostConfig") => outpost_config_request(),
        optional("tags") => map(),
        optional("version") => String.t(),
        required("name") => String.t(),
        required("resourcesVpcConfig") => vpc_config_request(),
        required("roleArn") => String.t()
      }

  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update() :: %{
        "createdAt" => non_neg_integer(),
        "errors" => list(error_detail()()),
        "id" => String.t(),
        "params" => list(update_param()()),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insights_filter() :: %{
        "categories" => list(list(any())()),
        "kubernetesVersions" => list(String.t()()),
        "statuses" => list(list(any())())
      }

  """
  @type insights_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_encryption_config_response() :: %{
        "update" => update()
      }

  """
  @type associate_encryption_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "fargateProfileName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_addon_request() :: %{
        optional("addonVersion") => String.t(),
        optional("clientRequestToken") => String.t(),
        optional("configurationValues") => String.t(),
        optional("resolveConflicts") => list(any()),
        optional("serviceAccountRoleArn") => String.t()
      }

  """
  @type update_addon_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pod_identity_association_response() :: %{
        "association" => pod_identity_association()
      }

  """
  @type update_pod_identity_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outpost_config_request() :: %{
        "controlPlaneInstanceType" => String.t(),
        "controlPlanePlacement" => control_plane_placement_request(),
        "outpostArns" => list(String.t()())
      }

  """
  @type outpost_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_fargate_profile_response() :: %{
        "fargateProfile" => fargate_profile()
      }

  """
  @type describe_fargate_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deprecation_detail() :: %{
        "clientStats" => list(client_stat()()),
        "replacedWith" => String.t(),
        "startServingReplacementVersion" => String.t(),
        "stopServingVersion" => String.t(),
        "usage" => String.t()
      }

  """
  @type deprecation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_encryption_config_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("encryptionConfig") => list(encryption_config()())
      }

  """
  @type associate_encryption_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      issue() :: %{
        "code" => list(any()),
        "message" => String.t(),
        "resourceIds" => list(String.t()())
      }

  """
  @type issue() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_eks_anywhere_subscription_response() :: %{
        "subscription" => eks_anywhere_subscription()
      }

  """
  @type create_eks_anywhere_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster() :: %{
        "accessConfig" => access_config_response(),
        "arn" => String.t(),
        "certificateAuthority" => certificate(),
        "clientRequestToken" => String.t(),
        "connectorConfig" => connector_config_response(),
        "createdAt" => non_neg_integer(),
        "encryptionConfig" => list(encryption_config()()),
        "endpoint" => String.t(),
        "health" => cluster_health(),
        "id" => String.t(),
        "identity" => identity(),
        "kubernetesNetworkConfig" => kubernetes_network_config_response(),
        "logging" => logging(),
        "name" => String.t(),
        "outpostConfig" => outpost_config_response(),
        "platformVersion" => String.t(),
        "resourcesVpcConfig" => vpc_config_response(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_config_response() :: %{
        "update" => update()
      }

  """
  @type update_cluster_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pod_identity_association_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("roleArn") => String.t()
      }

  """
  @type update_pod_identity_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_updates_response() :: %{
        "nextToken" => String.t(),
        "updateIds" => list(String.t()())
      }

  """
  @type list_updates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_versions_response() :: %{
        "addons" => list(addon_info()()),
        "nextToken" => String.t()
      }

  """
  @type describe_addon_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_config_response() :: %{
        "authenticationMode" => list(any()),
        "bootstrapClusterCreatorAdminPermissions" => boolean()
      }

  """
  @type access_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_updates_request() :: %{
        optional("addonName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("nodegroupName") => String.t()
      }

  """
  @type list_updates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_addon_request() :: %{
        optional("addonVersion") => String.t(),
        optional("clientRequestToken") => String.t(),
        optional("configurationValues") => String.t(),
        optional("resolveConflicts") => list(any()),
        optional("serviceAccountRoleArn") => String.t(),
        optional("tags") => map(),
        required("addonName") => String.t()
      }

  """
  @type create_addon_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_configuration_request() :: %{
        required("addonName") => String.t(),
        required("addonVersion") => String.t()
      }

  """
  @type describe_addon_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_nodegroup_request() :: %{}

  """
  @type describe_nodegroup_request() :: %{}

  @typedoc """

  ## Example:

      describe_access_entry_response() :: %{
        "accessEntry" => access_entry()
      }

  """
  @type describe_access_entry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pod_identity_association_response() :: %{
        "association" => pod_identity_association()
      }

  """
  @type delete_pod_identity_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_insight_request() :: %{}

  """
  @type describe_insight_request() :: %{}

  @typedoc """

  ## Example:

      list_nodegroups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_nodegroups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_request() :: %{
        "endpointPrivateAccess" => boolean(),
        "endpointPublicAccess" => boolean(),
        "publicAccessCidrs" => list(String.t()()),
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type vpc_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pod_identity_association_summary() :: %{
        "associationArn" => String.t(),
        "associationId" => String.t(),
        "clusterName" => String.t(),
        "namespace" => String.t(),
        "serviceAccount" => String.t()
      }

  """
  @type pod_identity_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_identity_provider_config_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("oidc") => oidc_identity_provider_config_request()
      }

  """
  @type associate_identity_provider_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_nodegroup_response() :: %{
        "nodegroup" => nodegroup()
      }

  """
  @type create_nodegroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_identity_provider_config_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("identityProviderConfig") => identity_provider_config()
      }

  """
  @type disassociate_identity_provider_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_id_c() :: %{
        "issuer" => String.t()
      }

  """
  @type o_id_c() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_response() :: %{
        "clusters" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_response() :: %{
        "cluster" => cluster()
      }

  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fargate_profiles_response() :: %{
        "fargateProfileNames" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_fargate_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fargate_profile_request() :: %{}

  """
  @type delete_fargate_profile_request() :: %{}

  @typedoc """

  ## Example:

      associate_access_policy_response() :: %{
        "associatedAccessPolicy" => associated_access_policy(),
        "clusterName" => String.t(),
        "principalArn" => String.t()
      }

  """
  @type associate_access_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_addon_response() :: %{
        "update" => update()
      }

  """
  @type update_addon_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_request() :: %{
        optional("include") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_nodegroup_config_response() :: %{
        "update" => update()
      }

  """
  @type update_nodegroup_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_nodegroup_version_response() :: %{
        "update" => update()
      }

  """
  @type update_nodegroup_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_network_config_request() :: %{
        "ipFamily" => list(any()),
        "serviceIpv4Cidr" => String.t()
      }

  """
  @type kubernetes_network_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_plane_placement_request() :: %{
        "groupName" => String.t()
      }

  """
  @type control_plane_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "data" => String.t()
      }

  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      marketplace_information() :: %{
        "productId" => String.t(),
        "productUrl" => String.t()
      }

  """
  @type marketplace_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_resource_detail() :: %{
        "arn" => String.t(),
        "insightStatus" => insight_status(),
        "kubernetesResourceUri" => String.t()
      }

  """
  @type insight_resource_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_entry_response() :: %{
        "accessEntry" => access_entry()
      }

  """
  @type create_access_entry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_access_policy() :: %{
        "accessScope" => access_scope(),
        "associatedAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "policyArn" => String.t()
      }

  """
  @type associated_access_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_request() :: %{}

  """
  @type delete_cluster_request() :: %{}

  @typedoc """

  ## Example:

      delete_eks_anywhere_subscription_response() :: %{
        "subscription" => eks_anywhere_subscription()
      }

  """
  @type delete_eks_anywhere_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fargate_profile_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("selectors") => list(fargate_profile_selector()()),
        optional("subnets") => list(String.t()()),
        optional("tags") => map(),
        required("fargateProfileName") => String.t(),
        required("podExecutionRoleArn") => String.t()
      }

  """
  @type create_fargate_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_eks_anywhere_subscription_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("autoRenew") => boolean()
      }

  """
  @type update_eks_anywhere_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "resourceIds" => list(String.t()())
      }

  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_param() :: %{
        "type" => list(any()),
        "value" => String.t()
      }

  """
  @type update_param() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_anywhere_subscription() :: %{
        "arn" => String.t(),
        "autoRenew" => boolean(),
        "createdAt" => non_neg_integer(),
        "effectiveDate" => non_neg_integer(),
        "expirationDate" => non_neg_integer(),
        "id" => String.t(),
        "licenseArns" => list(String.t()()),
        "licenseQuantity" => integer(),
        "licenseType" => list(any()),
        "status" => String.t(),
        "tags" => map(),
        "term" => eks_anywhere_subscription_term()
      }

  """
  @type eks_anywhere_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "fargateProfileName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pod_identity_association_request() :: %{}

  """
  @type delete_pod_identity_association_request() :: %{}

  @typedoc """

  ## Example:

      cluster_health() :: %{
        "issues" => list(cluster_issue()())
      }

  """
  @type cluster_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      remote_access_config() :: %{
        "ec2SshKey" => String.t(),
        "sourceSecurityGroups" => list(String.t()())
      }

  """
  @type remote_access_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_provider_configs_response() :: %{
        "identityProviderConfigs" => list(identity_provider_config()()),
        "nextToken" => String.t()
      }

  """
  @type list_identity_provider_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_access_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_associated_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oidc_identity_provider_config_request() :: %{
        "clientId" => String.t(),
        "groupsClaim" => String.t(),
        "groupsPrefix" => String.t(),
        "identityProviderConfigName" => String.t(),
        "issuerUrl" => String.t(),
        "requiredClaims" => map(),
        "usernameClaim" => String.t(),
        "usernamePrefix" => String.t()
      }

  """
  @type oidc_identity_provider_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_entry_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("kubernetesGroups") => list(String.t()()),
        optional("tags") => map(),
        optional("type") => String.t(),
        optional("username") => String.t(),
        required("principalArn") => String.t()
      }

  """
  @type create_access_entry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      taint() :: %{
        "effect" => list(any()),
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type taint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_scaling_group() :: %{
        "name" => String.t()
      }

  """
  @type auto_scaling_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      addon_health() :: %{
        "issues" => list(addon_issue()())
      }

  """
  @type addon_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_update_request() :: %{
        optional("addonName") => String.t(),
        optional("nodegroupName") => String.t()
      }

  """
  @type describe_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oidc_identity_provider_config() :: %{
        "clientId" => String.t(),
        "clusterName" => String.t(),
        "groupsClaim" => String.t(),
        "groupsPrefix" => String.t(),
        "identityProviderConfigArn" => String.t(),
        "identityProviderConfigName" => String.t(),
        "issuerUrl" => String.t(),
        "requiredClaims" => map(),
        "status" => list(any()),
        "tags" => map(),
        "usernameClaim" => String.t(),
        "usernamePrefix" => String.t()
      }

  """
  @type oidc_identity_provider_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nodegroup_health() :: %{
        "issues" => list(issue()())
      }

  """
  @type nodegroup_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_nodegroup_version_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("force") => boolean(),
        optional("launchTemplate") => launch_template_specification(),
        optional("releaseVersion") => String.t(),
        optional("version") => String.t()
      }

  """
  @type update_nodegroup_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_config_request() :: %{
        "provider" => list(any()),
        "roleArn" => String.t()
      }

  """
  @type connector_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_entry_request() :: %{}

  """
  @type describe_access_entry_request() :: %{}

  @typedoc """

  ## Example:

      delete_nodegroup_response() :: %{
        "nodegroup" => nodegroup()
      }

  """
  @type delete_nodegroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_stat() :: %{
        "lastRequestTime" => non_neg_integer(),
        "numberOfRequestsLast30Days" => integer(),
        "userAgent" => String.t()
      }

  """
  @type client_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_config_response() :: %{
        "activationCode" => String.t(),
        "activationExpiry" => non_neg_integer(),
        "activationId" => String.t(),
        "provider" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type connector_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nodegroup_resources() :: %{
        "autoScalingGroups" => list(auto_scaling_group()()),
        "remoteAccessSecurityGroup" => String.t()
      }

  """
  @type nodegroup_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_identity_provider_config_response() :: %{
        "update" => update()
      }

  """
  @type disassociate_identity_provider_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_exception() :: %{
        "addonName" => String.t(),
        "clusterName" => String.t(),
        "message" => String.t(),
        "nodegroupName" => String.t(),
        "subscriptionId" => String.t()
      }

  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_network_config_response() :: %{
        "ipFamily" => list(any()),
        "serviceIpv4Cidr" => String.t(),
        "serviceIpv6Cidr" => String.t()
      }

  """
  @type kubernetes_network_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fargate_profile() :: %{
        "clusterName" => String.t(),
        "createdAt" => non_neg_integer(),
        "fargateProfileArn" => String.t(),
        "fargateProfileName" => String.t(),
        "podExecutionRoleArn" => String.t(),
        "selectors" => list(fargate_profile_selector()()),
        "status" => list(any()),
        "subnets" => list(String.t()()),
        "tags" => map()
      }

  """
  @type fargate_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_config_request() :: %{
        "authenticationMode" => list(any())
      }

  """
  @type update_access_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      addon_info() :: %{
        "addonName" => String.t(),
        "addonVersions" => list(addon_version_info()()),
        "marketplaceInformation" => marketplace_information(),
        "owner" => String.t(),
        "publisher" => String.t(),
        "type" => String.t()
      }

  """
  @type addon_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eks_anywhere_subscriptions_response() :: %{
        "nextToken" => String.t(),
        "subscriptions" => list(eks_anywhere_subscription()())
      }

  """
  @type list_eks_anywhere_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pod_identity_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("namespace") => String.t(),
        optional("nextToken") => String.t(),
        optional("serviceAccount") => String.t()
      }

  """
  @type list_pod_identity_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_version_response() :: %{
        "update" => update()
      }

  """
  @type update_cluster_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_access_policy_request() :: %{
        required("accessScope") => access_scope(),
        required("policyArn") => String.t()
      }

  """
  @type associate_access_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_template_specification() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "version" => String.t()
      }

  """
  @type launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_response() :: %{
        "clusterSecurityGroupId" => String.t(),
        "endpointPrivateAccess" => boolean(),
        "endpointPublicAccess" => boolean(),
        "publicAccessCidrs" => list(String.t()()),
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }

  """
  @type vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_eks_anywhere_subscription_response() :: %{
        "subscription" => eks_anywhere_subscription()
      }

  """
  @type update_eks_anywhere_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fargate_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_fargate_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_pod_identity_association_request() :: %{}

  """
  @type describe_pod_identity_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_access_entry_request() :: %{}

  """
  @type delete_access_entry_request() :: %{}

  @typedoc """

  ## Example:

      insight() :: %{
        "additionalInfo" => map(),
        "category" => list(any()),
        "categorySpecificSummary" => insight_category_specific_summary(),
        "description" => String.t(),
        "id" => String.t(),
        "insightStatus" => insight_status(),
        "kubernetesVersion" => String.t(),
        "lastRefreshTime" => non_neg_integer(),
        "lastTransitionTime" => non_neg_integer(),
        "name" => String.t(),
        "recommendation" => String.t(),
        "resources" => list(insight_resource_detail()())
      }

  """
  @type insight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_config_request() :: %{
        optional("accessConfig") => update_access_config_request(),
        optional("clientRequestToken") => String.t(),
        optional("logging") => logging(),
        optional("resourcesVpcConfig") => vpc_config_request()
      }

  """
  @type update_cluster_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_issue() :: %{
        "code" => list(any()),
        "message" => String.t(),
        "resourceIds" => list(String.t()())
      }

  """
  @type cluster_issue() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_addon_request() :: %{}

  """
  @type describe_addon_request() :: %{}

  @typedoc """

  ## Example:

      list_addons_response() :: %{
        "addons" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_addons_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_category_specific_summary() :: %{
        "deprecationDetails" => list(deprecation_detail()())
      }

  """
  @type insight_category_specific_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_setup() :: %{
        "enabled" => boolean(),
        "types" => list(list(any())())
      }

  """
  @type log_setup() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_addon_response() :: %{
        "addon" => addon()
      }

  """
  @type create_addon_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_cluster_response() :: %{
        "cluster" => cluster()
      }

  """
  @type register_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_nodegroup_response() :: %{
        "nodegroup" => nodegroup()
      }

  """
  @type describe_nodegroup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_entries_response() :: %{
        "accessEntries" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_access_entries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pod_identity_association_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("namespace") => String.t(),
        required("roleArn") => String.t(),
        required("serviceAccount") => String.t()
      }

  """
  @type create_pod_identity_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_provider_config_response() :: %{
        "identityProviderConfig" => identity_provider_config_response()
      }

  """
  @type describe_identity_provider_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fargate_profile_selector() :: %{
        "labels" => map(),
        "namespace" => String.t()
      }

  """
  @type fargate_profile_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_entries_request() :: %{
        optional("associatedPolicyArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_access_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_pod_identity_association_response() :: %{
        "association" => pod_identity_association()
      }

  """
  @type describe_pod_identity_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging() :: %{
        "clusterLogging" => list(log_setup()())
      }

  """
  @type logging() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_provider_configs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_identity_provider_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_version_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("version") => String.t()
      }

  """
  @type update_cluster_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_propagation_delay_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_propagation_delay_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_eks_anywhere_subscription_request() :: %{}

  """
  @type describe_eks_anywhere_subscription_request() :: %{}

  @typedoc """

  ## Example:

      delete_access_entry_response() :: %{}

  """
  @type delete_access_entry_response() :: %{}

  @typedoc """

  ## Example:

      describe_update_response() :: %{
        "update" => update()
      }

  """
  @type describe_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pod_identity_association_response() :: %{
        "association" => pod_identity_association()
      }

  """
  @type create_pod_identity_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      addon_version_info() :: %{
        "addonVersion" => String.t(),
        "architecture" => list(String.t()()),
        "compatibilities" => list(compatibility()()),
        "requiresConfiguration" => boolean()
      }

  """
  @type addon_version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_nodegroup_request() :: %{}

  """
  @type delete_nodegroup_request() :: %{}

  @type associate_access_policy_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type associate_encryption_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type associate_identity_provider_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type create_access_entry_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_addon_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type create_cluster_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | client_exception()
          | resource_in_use_exception()
          | unsupported_availability_zone_exception()

  @type create_eks_anywhere_subscription_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | client_exception()

  @type create_fargate_profile_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | unsupported_availability_zone_exception()

  @type create_nodegroup_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | resource_in_use_exception()

  @type create_pod_identity_association_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_access_entry_errors() ::
          server_exception() | invalid_request_exception() | resource_not_found_exception()

  @type delete_addon_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()

  @type delete_cluster_errors() ::
          server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type delete_eks_anywhere_subscription_errors() ::
          server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()

  @type delete_fargate_profile_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()

  @type delete_nodegroup_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type delete_pod_identity_association_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type deregister_cluster_errors() ::
          server_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type describe_access_entry_errors() ::
          server_exception() | invalid_request_exception() | resource_not_found_exception()

  @type describe_addon_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_addon_configuration_errors() ::
          server_exception() | invalid_parameter_exception() | resource_not_found_exception()

  @type describe_addon_versions_errors() ::
          server_exception() | invalid_parameter_exception() | resource_not_found_exception()

  @type describe_cluster_errors() ::
          server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_eks_anywhere_subscription_errors() ::
          server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_fargate_profile_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_identity_provider_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_insight_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_nodegroup_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type describe_pod_identity_association_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_update_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()

  @type disassociate_access_policy_errors() ::
          server_exception() | invalid_request_exception() | resource_not_found_exception()

  @type disassociate_identity_provider_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type list_access_entries_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_access_policies_errors() :: server_exception()

  @type list_addons_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()

  @type list_associated_access_policies_errors() ::
          server_exception() | invalid_request_exception() | resource_not_found_exception()

  @type list_clusters_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | client_exception()

  @type list_eks_anywhere_subscriptions_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | client_exception()

  @type list_fargate_profiles_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()

  @type list_identity_provider_configs_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type list_insights_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_nodegroups_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | client_exception()

  @type list_pod_identity_associations_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: bad_request_exception() | not_found_exception()

  @type list_updates_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()

  @type register_cluster_errors() ::
          resource_propagation_delay_exception()
          | server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | client_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() :: bad_request_exception() | not_found_exception()

  @type untag_resource_errors() :: bad_request_exception() | not_found_exception()

  @type update_access_entry_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_addon_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type update_cluster_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type update_cluster_version_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type update_eks_anywhere_subscription_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()

  @type update_nodegroup_config_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type update_nodegroup_version_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | resource_in_use_exception()

  @type update_pod_identity_association_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "eks",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EKS",
      signature_version: "v4",
      signing_name: "eks",
      target_prefix: nil
    }
  end

  @doc """
  Associates an access policy and its scope to an access entry.

  For more information
  about associating access policies, see [Associating and disassociating access policies to and from access
  entries](https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html)
  in the *Amazon EKS User Guide*.
  """
  @spec associate_access_policy(
          map(),
          String.t(),
          String.t(),
          associate_access_policy_request(),
          list()
        ) ::
          {:ok, associate_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_access_policy_errors()}
  def associate_access_policy(
        %Client{} = client,
        cluster_name,
        principal_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}/access-policies"

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
      200
    )
  end

  @doc """
  Associates an encryption configuration to an existing cluster.

  Use this API to enable encryption on existing clusters that don't already have
  encryption enabled. This allows you to implement a defense-in-depth security
  strategy
  without migrating applications to new Amazon EKS clusters.
  """
  @spec associate_encryption_config(
          map(),
          String.t(),
          associate_encryption_config_request(),
          list()
        ) ::
          {:ok, associate_encryption_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_encryption_config_errors()}
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
      200
    )
  end

  @doc """
  Associates an identity provider configuration to a cluster.

  If you want to authenticate identities using an identity provider, you can
  create an
  identity provider configuration and associate it to your cluster. After
  configuring
  authentication to your cluster you can create Kubernetes `Role` and
  `ClusterRole` objects, assign permissions to them, and then bind them to
  the identities using Kubernetes `RoleBinding` and `ClusterRoleBinding`
  objects. For more information see [Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) in
  the Kubernetes documentation.
  """
  @spec associate_identity_provider_config(
          map(),
          String.t(),
          associate_identity_provider_config_request(),
          list()
        ) ::
          {:ok, associate_identity_provider_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_identity_provider_config_errors()}
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
      200
    )
  end

  @doc """
  Creates an access entry.

  An access entry allows an IAM principal to access your cluster. Access
  entries can replace the need to maintain entries in the `aws-auth`
  `ConfigMap` for authentication. You have the following options for
  authorizing an IAM principal to access Kubernetes objects on your cluster:
  Kubernetes
  role-based access control (RBAC), Amazon EKS, or both. Kubernetes RBAC
  authorization
  requires you to create and manage Kubernetes `Role`, `ClusterRole`,
  `RoleBinding`, and `ClusterRoleBinding` objects, in addition
  to managing access entries. If you use Amazon EKS authorization exclusively, you
  don't need to create and manage Kubernetes `Role`, `ClusterRole`,
  `RoleBinding`, and `ClusterRoleBinding` objects.

  For more information about access entries, see [Access entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html)
  in the
  *Amazon EKS User Guide*.
  """
  @spec create_access_entry(map(), String.t(), create_access_entry_request(), list()) ::
          {:ok, create_access_entry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_entry_errors()}
  def create_access_entry(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries"
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
      200
    )
  end

  @doc """
  Creates an Amazon EKS add-on.

  Amazon EKS add-ons help to automate the provisioning and lifecycle management
  of common operational software for Amazon EKS clusters. For more information,
  see [Amazon EKS add-ons](https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html) in
  the *Amazon EKS User Guide*.
  """
  @spec create_addon(map(), String.t(), create_addon_request(), list()) ::
          {:ok, create_addon_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_addon_errors()}
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
      200
    )
  end

  @doc """
  Creates an Amazon EKS control plane.

  The Amazon EKS control plane consists of control plane instances that run the
  Kubernetes software, such as `etcd` and the API server. The control plane runs
  in
  an account managed by Amazon Web Services, and the Kubernetes API is exposed by
  the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is
  single tenant and unique. It runs on its own set of Amazon EC2 instances.

  The cluster control plane is provisioned across multiple Availability Zones and
  fronted by an Elastic Load Balancing
  Network Load Balancer. Amazon EKS also provisions elastic network interfaces in
  your VPC subnets to provide connectivity from the control plane instances to the
  nodes
  (for example, to support `kubectl exec`, `logs`, and
  `proxy` data flows).

  Amazon EKS nodes run in your Amazon Web Services account and connect to your
  cluster's control plane over the Kubernetes API server endpoint and a
  certificate file that
  is created for your cluster.

  You can use the `endpointPublicAccess` and
  `endpointPrivateAccess` parameters to enable or disable public and
  private access to your cluster's Kubernetes API server endpoint. By default,
  public access is
  enabled, and private access is disabled. For more information, see [Amazon EKS Cluster Endpoint Access
  Control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the
  *
  *Amazon EKS User Guide*
  *.

  You can use the `logging` parameter to enable or disable exporting the
  Kubernetes control plane logs for your cluster to CloudWatch Logs. By default,
  cluster
  control plane logs aren't exported to CloudWatch Logs. For more information, see
  [Amazon EKS Cluster Control Plane Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the
  *
  *Amazon EKS User Guide*
  *.

  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
  exported control plane logs. For more information, see [CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  In most cases, it takes several minutes to create a cluster. After you create an
  Amazon EKS cluster, you must configure your Kubernetes tooling to communicate
  with the API server and launch nodes into your cluster. For more information,
  see [Managing Cluster Authentication](https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)
  and [Launching Amazon EKS nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html) in
  the
  *Amazon EKS User Guide*.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
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
      200
    )
  end

  @doc """
  Creates an EKS Anywhere subscription.

  When a subscription is created, it is a contract
  agreement for the length of the term specified in the request. Licenses that are
  used to
  validate support are provisioned in Amazon Web Services License Manager and the
  caller account is
  granted access to EKS Anywhere Curated Packages.
  """
  @spec create_eks_anywhere_subscription(
          map(),
          create_eks_anywhere_subscription_request(),
          list()
        ) ::
          {:ok, create_eks_anywhere_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_eks_anywhere_subscription_errors()}
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
      200
    )
  end

  @doc """
  Creates an Fargate profile for your Amazon EKS cluster.

  You
  must have at least one Fargate profile in a cluster to be able to run
  pods on Fargate.

  The Fargate profile allows an administrator to declare which pods run
  on Fargate and specify which pods run on which Fargate
  profile. This declaration is done through the profile’s selectors. Each profile
  can have
  up to five selectors that contain a namespace and labels. A namespace is
  required for
  every selector. The label field consists of multiple optional key-value pairs.
  Pods that
  match the selectors are scheduled on Fargate. If a to-be-scheduled pod
  matches any of the selectors in the Fargate profile, then that pod is run
  on Fargate.

  When you create a Fargate profile, you must specify a pod execution
  role to use with the pods that are scheduled with the profile. This role is
  added to the
  cluster's Kubernetes [Role Based Access Control](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
  (RBAC) for authorization so that the `kubelet`
  that is running on the Fargate infrastructure can register with your
  Amazon EKS cluster so that it can appear in your cluster as a node. The pod
  execution role also provides IAM permissions to the Fargate infrastructure to
  allow read access to Amazon ECR image repositories. For
  more information, see [Pod Execution Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
  in the *Amazon EKS User Guide*.

  Fargate profiles are immutable. However, you can create a new updated
  profile to replace an existing profile and then delete the original after the
  updated
  profile has finished creating.

  If any Fargate profiles in a cluster are in the `DELETING`
  status, you must wait for that Fargate profile to finish deleting before
  you can create any other profiles in that cluster.

  For more information, see [Fargate profile](https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html)
  in the
  *Amazon EKS User Guide*.
  """
  @spec create_fargate_profile(map(), String.t(), create_fargate_profile_request(), list()) ::
          {:ok, create_fargate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fargate_profile_errors()}
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
      200
    )
  end

  @doc """
  Creates a managed node group for an Amazon EKS cluster.

  You can only create a node group for your cluster that is equal to the current
  Kubernetes
  version for the cluster. All node groups are created with the latest AMI release
  version
  for the respective minor Kubernetes version of the cluster, unless you deploy a
  custom AMI
  using a launch template. For more information about using launch templates, see
  [Launch template
  support](https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html).

  An Amazon EKS managed node group is an Amazon EC2
  Auto Scaling group and associated Amazon EC2 instances that are managed by
  Amazon Web Services for an Amazon EKS cluster. For more information, see
  [Managed node groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
  in the *Amazon EKS User Guide*.

  Windows AMI types are only supported for commercial Amazon Web Services Regions
  that support Windows on Amazon EKS.
  """
  @spec create_nodegroup(map(), String.t(), create_nodegroup_request(), list()) ::
          {:ok, create_nodegroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_nodegroup_errors()}
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
      200
    )
  end

  @doc """
  Creates an EKS Pod Identity association between a service account in an Amazon
  EKS cluster and an IAM role
  with *EKS Pod Identity*.

  Use EKS Pod Identity to give temporary IAM credentials to
  pods and the credentials are rotated automatically.

  Amazon EKS Pod Identity associations provide the ability to manage credentials
  for your applications, similar to the way that Amazon EC2 instance profiles
  provide credentials to Amazon EC2 instances.

  If a pod uses a service account that has an association, Amazon EKS sets
  environment variables
  in the containers of the pod. The environment variables configure the Amazon Web
  Services SDKs,
  including the Command Line Interface, to use the EKS Pod Identity credentials.

  Pod Identity is a simpler method than *IAM roles for service
  accounts*, as this method doesn't use OIDC identity providers.
  Additionally, you can configure a role for Pod Identity once, and reuse it
  across
  clusters.
  """
  @spec create_pod_identity_association(
          map(),
          String.t(),
          create_pod_identity_association_request(),
          list()
        ) ::
          {:ok, create_pod_identity_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pod_identity_association_errors()}
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
      200
    )
  end

  @doc """
  Deletes an access entry.

  Deleting an access entry of a type other than `Standard` can cause your
  cluster to function improperly. If you delete an access entry in error, you can
  recreate
  it.
  """
  @spec delete_access_entry(map(), String.t(), String.t(), delete_access_entry_request(), list()) ::
          {:ok, delete_access_entry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_entry_errors()}
  def delete_access_entry(%Client{} = client, cluster_name, principal_arn, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}"

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
      200
    )
  end

  @doc """
  Deletes an Amazon EKS add-on.

  When you remove an add-on, it's deleted from the cluster. You can always
  manually
  start an add-on on the cluster using the Kubernetes API.
  """
  @spec delete_addon(map(), String.t(), String.t(), delete_addon_request(), list()) ::
          {:ok, delete_addon_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_addon_errors()}
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
      200
    )
  end

  @doc """
  Deletes an Amazon EKS cluster control plane.

  If you have active services in your cluster that are associated with a load
  balancer,
  you must delete those services before deleting the cluster so that the load
  balancers
  are deleted properly. Otherwise, you can have orphaned resources in your VPC
  that
  prevent you from being able to delete the VPC. For more information, see
  [Deleting a cluster](https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
  in the *Amazon EKS User Guide*.

  If you have managed node groups or Fargate profiles attached to the
  cluster, you must delete them first. For more information, see
  `DeleteNodgroup` and `DeleteFargateProfile`.
  """
  @spec delete_cluster(map(), String.t(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}
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
      200
    )
  end

  @doc """
  Deletes an expired or inactive subscription.

  Deleting inactive subscriptions removes
  them from the Amazon Web Services Management Console view and from list/describe
  API responses.
  Subscriptions can only be cancelled within 7 days of creation and are cancelled
  by
  creating a ticket in the Amazon Web Services Support Center.
  """
  @spec delete_eks_anywhere_subscription(
          map(),
          String.t(),
          delete_eks_anywhere_subscription_request(),
          list()
        ) ::
          {:ok, delete_eks_anywhere_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_eks_anywhere_subscription_errors()}
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
      200
    )
  end

  @doc """
  Deletes an Fargate profile.

  When you delete a Fargate profile, any `Pod` running on
  Fargate that was created with the profile is deleted. If the
  `Pod` matches another Fargate profile, then it is
  scheduled on Fargate with that profile. If it no longer matches any
  Fargate profiles, then it's not scheduled on Fargate
  and may remain in a pending state.

  Only one Fargate profile in a cluster can be in the
  `DELETING` status at a time. You must wait for a Fargate
  profile to finish deleting before you can delete any other profiles in that
  cluster.
  """
  @spec delete_fargate_profile(
          map(),
          String.t(),
          String.t(),
          delete_fargate_profile_request(),
          list()
        ) ::
          {:ok, delete_fargate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fargate_profile_errors()}
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
      200
    )
  end

  @doc """
  Deletes a managed node group.
  """
  @spec delete_nodegroup(map(), String.t(), String.t(), delete_nodegroup_request(), list()) ::
          {:ok, delete_nodegroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_nodegroup_errors()}
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
      200
    )
  end

  @doc """
  Deletes a EKS Pod Identity association.

  The temporary Amazon Web Services credentials from the previous IAM role session
  might still be valid until the session expiry. If you need to immediately revoke
  the temporary session credentials, then go to the role in the IAM console.
  """
  @spec delete_pod_identity_association(
          map(),
          String.t(),
          String.t(),
          delete_pod_identity_association_request(),
          list()
        ) ::
          {:ok, delete_pod_identity_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pod_identity_association_errors()}
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
      200
    )
  end

  @doc """
  Deregisters a connected cluster to remove it from the Amazon EKS control
  plane.

  A connected cluster is a Kubernetes cluster that you've connected to your
  control plane
  using the [Amazon EKS Connector](https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html).
  """
  @spec deregister_cluster(map(), String.t(), deregister_cluster_request(), list()) ::
          {:ok, deregister_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_cluster_errors()}
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
      200
    )
  end

  @doc """
  Describes an access entry.
  """
  @spec describe_access_entry(map(), String.t(), String.t(), list()) ::
          {:ok, describe_access_entry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_access_entry_errors()}
  def describe_access_entry(%Client{} = client, cluster_name, principal_arn, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Amazon EKS add-on.
  """
  @spec describe_addon(map(), String.t(), String.t(), list()) ::
          {:ok, describe_addon_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_addon_errors()}
  def describe_addon(%Client{} = client, addon_name, cluster_name, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/addons/#{AWS.Util.encode_uri(addon_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns configuration options.
  """
  @spec describe_addon_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, describe_addon_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_addon_configuration_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the versions for an add-on.

  Information such as the Kubernetes versions that you can use the add-on with,
  the
  `owner`, `publisher`, and the `type` of the add-on
  are returned.
  """
  @spec describe_addon_versions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_addon_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_addon_versions_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Amazon EKS cluster.

  The API server endpoint and certificate authority data returned by this
  operation are
  required for `kubelet` and `kubectl` to communicate with your
  Kubernetes API server. For more information, see [Creating or updating a `kubeconfig` file for an Amazon EKS
  cluster](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

  The API server endpoint and certificate authority data aren't available until
  the
  cluster reaches the `ACTIVE` state.
  """
  @spec describe_cluster(map(), String.t(), list()) ::
          {:ok, describe_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_errors()}
  def describe_cluster(%Client{} = client, name, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns descriptive information about a subscription.
  """
  @spec describe_eks_anywhere_subscription(map(), String.t(), list()) ::
          {:ok, describe_eks_anywhere_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_eks_anywhere_subscription_errors()}
  def describe_eks_anywhere_subscription(%Client{} = client, id, options \\ []) do
    url_path = "/eks-anywhere-subscriptions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Fargate profile.
  """
  @spec describe_fargate_profile(map(), String.t(), String.t(), list()) ::
          {:ok, describe_fargate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fargate_profile_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an identity provider configuration.
  """
  @spec describe_identity_provider_config(
          map(),
          String.t(),
          describe_identity_provider_config_request(),
          list()
        ) ::
          {:ok, describe_identity_provider_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_provider_config_errors()}
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
      200
    )
  end

  @doc """
  Returns details about an insight that you specify using its ID.
  """
  @spec describe_insight(map(), String.t(), String.t(), list()) ::
          {:ok, describe_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_insight_errors()}
  def describe_insight(%Client{} = client, cluster_name, id, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/insights/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a managed node group.
  """
  @spec describe_nodegroup(map(), String.t(), String.t(), list()) ::
          {:ok, describe_nodegroup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_nodegroup_errors()}
  def describe_nodegroup(%Client{} = client, cluster_name, nodegroup_name, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/node-groups/#{AWS.Util.encode_uri(nodegroup_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns descriptive information about an EKS Pod Identity association.

  This action requires the ID of the association. You can get the ID from the
  response to
  the `CreatePodIdentityAssocation` for newly created associations. Or, you can
  list the IDs for associations with `ListPodIdentityAssociations` and filter the
  list by namespace or service account.
  """
  @spec describe_pod_identity_association(map(), String.t(), String.t(), list()) ::
          {:ok, describe_pod_identity_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pod_identity_association_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an update to an Amazon EKS resource.

  When the status of the update is `Succeeded`, the update is complete. If an
  update fails, the status is `Failed`, and an error detail explains the reason
  for the failure.
  """
  @spec describe_update(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_update_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates an access policy from an access entry.
  """
  @spec disassociate_access_policy(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_access_policy_request(),
          list()
        ) ::
          {:ok, disassociate_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_access_policy_errors()}
  def disassociate_access_policy(
        %Client{} = client,
        cluster_name,
        policy_arn,
        principal_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}/access-policies/#{AWS.Util.encode_uri(policy_arn)}"

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
      200
    )
  end

  @doc """
  Disassociates an identity provider configuration from a cluster.

  If you disassociate an identity provider from your cluster, users included in
  the
  provider can no longer access the cluster. However, you can still access the
  cluster
  with IAM principals.
  """
  @spec disassociate_identity_provider_config(
          map(),
          String.t(),
          disassociate_identity_provider_config_request(),
          list()
        ) ::
          {:ok, disassociate_identity_provider_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_identity_provider_config_errors()}
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
      200
    )
  end

  @doc """
  Lists the access entries for your cluster.
  """
  @spec list_access_entries(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_access_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_entries_errors()}
  def list_access_entries(
        %Client{} = client,
        cluster_name,
        associated_policy_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries"
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
      if !is_nil(associated_policy_arn) do
        [{"associatedPolicyArn", associated_policy_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available access policies.
  """
  @spec list_access_policies(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_policies_errors()}
  def list_access_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/access-policies"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the installed add-ons.
  """
  @spec list_addons(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_addons_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_addons_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the access policies associated with an access entry.
  """
  @spec list_associated_access_policies(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_associated_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_access_policies_errors()}
  def list_associated_access_policies(
        %Client{} = client,
        cluster_name,
        principal_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}/access-policies"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon EKS clusters in your Amazon Web Services account in the
  specified Amazon Web Services Region.
  """
  @spec list_clusters(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the full description of the subscription.
  """
  @spec list_eks_anywhere_subscriptions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_eks_anywhere_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_eks_anywhere_subscriptions_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Fargate profiles associated with the specified cluster in
  your Amazon Web Services account in the specified Amazon Web Services Region.
  """
  @spec list_fargate_profiles(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_fargate_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fargate_profiles_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the identity provider configurations for your cluster.
  """
  @spec list_identity_provider_configs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_identity_provider_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_provider_configs_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all insights checked for against the specified cluster.

  You can filter which insights are returned by category, associated Kubernetes
  version, and status.
  """
  @spec list_insights(map(), String.t(), list_insights_request(), list()) ::
          {:ok, list_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_insights_errors()}
  def list_insights(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/insights"
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
      200
    )
  end

  @doc """
  Lists the managed node groups associated with the specified cluster in your
  Amazon Web Services account in the specified Amazon Web Services Region.

  Self-managed node
  groups aren't listed.
  """
  @spec list_nodegroups(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_nodegroups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_nodegroups_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the EKS Pod Identity associations in a cluster.

  You can filter the list by the namespace that the
  association is in or the service account that the association uses.
  """
  @spec list_pod_identity_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_pod_identity_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pod_identity_associations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags for an Amazon EKS resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the updates associated with an Amazon EKS resource in your Amazon Web
  Services account, in the specified Amazon Web Services Region.
  """
  @spec list_updates(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_updates_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Connects a Kubernetes cluster to the Amazon EKS control plane.

  Any Kubernetes cluster can be connected to the Amazon EKS control plane to view
  current information about the cluster and its nodes.

  Cluster connection requires two steps. First, send a

  ```

  `RegisterClusterRequest`

  ```

  to add it to the Amazon EKS
  control plane.

  Second, a
  [Manifest](https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml)
  containing the `activationID` and
  `activationCode` must be applied to the Kubernetes cluster through it's native
  provider to provide visibility.

  After the manifest is updated and applied, the connected cluster is visible to
  the
  Amazon EKS control plane. If the manifest isn't applied within three days,
  the connected cluster will no longer be visible and must be deregistered using
  `DeregisterCluster`.
  """
  @spec register_cluster(map(), register_cluster_request(), list()) ::
          {:ok, register_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_cluster_errors()}
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
      200
    )
  end

  @doc """
  Associates the specified tags to an Amazon EKS resource with the specified
  `resourceArn`.

  If existing tags on a resource are not specified in the
  request parameters, they aren't changed. When a resource is deleted, the tags
  associated
  with that resource are also deleted. Tags that you create for Amazon EKS
  resources don't propagate to any other resources associated with the cluster.
  For
  example, if you tag a cluster with this operation, that tag doesn't
  automatically
  propagate to the subnets and nodes associated with the cluster.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
      200
    )
  end

  @doc """
  Deletes specified tags from an Amazon EKS resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
      200
    )
  end

  @doc """
  Updates an access entry.
  """
  @spec update_access_entry(map(), String.t(), String.t(), update_access_entry_request(), list()) ::
          {:ok, update_access_entry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_access_entry_errors()}
  def update_access_entry(%Client{} = client, cluster_name, principal_arn, input, options \\ []) do
    url_path =
      "/clusters/#{AWS.Util.encode_uri(cluster_name)}/access-entries/#{AWS.Util.encode_uri(principal_arn)}"

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
      200
    )
  end

  @doc """
  Updates an Amazon EKS add-on.
  """
  @spec update_addon(map(), String.t(), String.t(), update_addon_request(), list()) ::
          {:ok, update_addon_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_addon_errors()}
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
      200
    )
  end

  @doc """
  Updates an Amazon EKS cluster configuration.

  Your cluster continues to
  function during the update. The response output includes an update ID that you
  can use
  to track the status of your cluster update with `DescribeUpdate`"/>.

  You can use this API operation to enable or disable exporting the Kubernetes
  control plane
  logs for your cluster to CloudWatch Logs. By default, cluster control plane logs
  aren't exported to CloudWatch Logs. For more information, see [Amazon EKS Cluster control plane
  logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
  in the
  *
  *Amazon EKS User Guide*
  *.

  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
  exported control plane logs. For more information, see [CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  You can also use this API operation to enable or disable public and private
  access to
  your cluster's Kubernetes API server endpoint. By default, public access is
  enabled, and
  private access is disabled. For more information, see [Amazon EKS cluster endpoint access
  control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
  in the
  *
  *Amazon EKS User Guide*
  *.

  You can also use this API operation to choose different subnets and security
  groups
  for the cluster. You must specify at least two subnets that are in different
  Availability Zones. You can't change which VPC the subnets are from, the subnets
  must be
  in the same VPC as the subnets that the cluster was created with. For more
  information
  about the VPC requirements, see
  [https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
  in the *
  *Amazon EKS User Guide*
  *.

  Cluster updates are asynchronous, and they should finish within a few minutes.
  During
  an update, the cluster status moves to `UPDATING` (this status transition is
  eventually consistent). When the update is complete (either `Failed` or
  `Successful`), the cluster status moves to `Active`.
  """
  @spec update_cluster_config(map(), String.t(), update_cluster_config_request(), list()) ::
          {:ok, update_cluster_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_config_errors()}
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
      200
    )
  end

  @doc """
  Updates an Amazon EKS cluster to the specified Kubernetes version.

  Your cluster
  continues to function during the update. The response output includes an update
  ID that
  you can use to track the status of your cluster update with the `DescribeUpdate`
  API operation.

  Cluster updates are asynchronous, and they should finish within a few minutes.
  During
  an update, the cluster status moves to `UPDATING` (this status transition is
  eventually consistent). When the update is complete (either `Failed` or
  `Successful`), the cluster status moves to `Active`.

  If your cluster has managed node groups attached to it, all of your node groups’
  Kubernetes
  versions must match the cluster’s Kubernetes version in order to update the
  cluster to a new
  Kubernetes version.
  """
  @spec update_cluster_version(map(), String.t(), update_cluster_version_request(), list()) ::
          {:ok, update_cluster_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_version_errors()}
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
      200
    )
  end

  @doc """
  Update an EKS Anywhere Subscription.

  Only auto renewal and tags can be updated after
  subscription creation.
  """
  @spec update_eks_anywhere_subscription(
          map(),
          String.t(),
          update_eks_anywhere_subscription_request(),
          list()
        ) ::
          {:ok, update_eks_anywhere_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_eks_anywhere_subscription_errors()}
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
      200
    )
  end

  @doc """
  Updates an Amazon EKS managed node group configuration.

  Your node group
  continues to function during the update. The response output includes an update
  ID that
  you can use to track the status of your node group update with the
  `DescribeUpdate` API operation. Currently you can update the Kubernetes labels
  for a node group or the scaling configuration.
  """
  @spec update_nodegroup_config(
          map(),
          String.t(),
          String.t(),
          update_nodegroup_config_request(),
          list()
        ) ::
          {:ok, update_nodegroup_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_nodegroup_config_errors()}
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
      200
    )
  end

  @doc """
  Updates the Kubernetes version or AMI version of an Amazon EKS managed node
  group.

  You can update a node group using a launch template only if the node group was
  originally deployed with a launch template. If you need to update a custom AMI
  in a node
  group that was deployed with a launch template, then update your custom AMI,
  specify the
  new ID in a new version of the launch template, and then update the node group
  to the
  new version of the launch template.

  If you update without a launch template, then you can update to the latest
  available
  AMI version of a node group's current Kubernetes version by not specifying a
  Kubernetes version in
  the request. You can update to the latest AMI version of your cluster's current
  Kubernetes
  version by specifying your cluster's Kubernetes version in the request. For
  information about
  Linux versions, see [Amazon EKS optimized Amazon Linux AMI versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
  in the
  *Amazon EKS User Guide*. For information about Windows versions, see [Amazon EKS optimized Windows AMI
  versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html)
  in the
  *Amazon EKS User Guide*.

  You cannot roll back a node group to an earlier Kubernetes version or AMI
  version.

  When a node in a managed node group is terminated due to a scaling action or
  update,
  every `Pod` on that node is drained first. Amazon EKS attempts to
  drain the nodes gracefully and will fail if it is unable to do so. You can
  `force` the update if Amazon EKS is unable to drain the nodes as
  a result of a `Pod` disruption budget issue.
  """
  @spec update_nodegroup_version(
          map(),
          String.t(),
          String.t(),
          update_nodegroup_version_request(),
          list()
        ) ::
          {:ok, update_nodegroup_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_nodegroup_version_errors()}
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
      200
    )
  end

  @doc """
  Updates a EKS Pod Identity association.

  Only the IAM role can be changed; an association can't be moved
  between clusters, namespaces, or service accounts. If you need to edit the
  namespace
  or service account, you need to delete the association and then create a new
  association with your desired settings.
  """
  @spec update_pod_identity_association(
          map(),
          String.t(),
          String.t(),
          update_pod_identity_association_request(),
          list()
        ) ::
          {:ok, update_pod_identity_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pod_identity_association_errors()}
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
      200
    )
  end
end
