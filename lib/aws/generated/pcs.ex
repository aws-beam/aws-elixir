# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PCS do
  @moduledoc """
  Amazon Web Services Parallel Computing Service (Amazon Web Services PCS) is a
  managed service that makes it easier for you to run and scale your high
  performance computing (HPC) workloads, and build scientific and engineering
  models on Amazon Web Services using Slurm.

  For more information, see the [Amazon Web Services Parallel Computing Service User Guide](https://docs.aws.amazon.com/pcs/latest/userguide).

  This reference describes the actions and data types of the service management
  API. You can use the Amazon Web Services SDKs to call the API actions in
  software, or use the Command Line Interface (CLI) to call the API actions
  manually. These API actions manage the service through an Amazon Web Services
  account.

  The API actions operate on Amazon Web Services PCS resources. A *resource* is an
  entity in Amazon Web Services that you can work with. Amazon Web Services
  services create resources when you use the features of the service. Examples of
  Amazon Web Services PCS resources include clusters, compute node groups, and
  queues. For more information about resources in Amazon Web Services, see
  [Resource](https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-resource)
  in the *Resource Explorer User Guide*.

  An Amazon Web Services PCS *compute node* is an Amazon EC2 instance. You don't
  launch compute nodes directly. Amazon Web Services PCS uses configuration
  information that you provide to launch compute nodes in your Amazon Web Services
  account. You receive billing charges for your running compute nodes. Amazon Web
  Services PCS automatically terminates your compute nodes when you delete the
  Amazon Web Services PCS resources related to those compute nodes.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_queue_response() :: %{
        "queue" => queue()
      }
      
  """
  @type get_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_queues_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()],
        required("clusterIdentifier") => String.t() | atom()
      }
      
  """
  @type list_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_compute_node_group_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("clusterIdentifier") => String.t() | atom(),
        required("computeNodeGroupIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_compute_node_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      slurm_custom_setting() :: %{
        "parameterName" => [String.t() | atom()],
        "parameterValue" => [String.t() | atom()]
      }
      
  """
  @type slurm_custom_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accounting() :: %{
        "defaultPurgeTimeInDays" => [integer()],
        "mode" => list(any())
      }
      
  """
  @type accounting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_node_group_configuration() :: %{
        "computeNodeGroupId" => [String.t() | atom()]
      }
      
  """
  @type compute_node_group_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      networking() :: %{
        "networkType" => list(any()),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom())
      }
      
  """
  @type networking() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type get_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      queue() :: %{
        "arn" => [String.t() | atom()],
        "clusterId" => [String.t() | atom()],
        "computeNodeGroupConfigurations" => list(compute_node_group_configuration()),
        "createdAt" => [non_neg_integer()],
        "errorInfo" => list(error_info()),
        "id" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type queue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_info() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }
      
  """
  @type error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_queue_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("computeNodeGroupConfigurations") => list(compute_node_group_configuration()),
        required("clusterIdentifier") => String.t() | atom(),
        required("queueIdentifier") => String.t() | atom()
      }
      
  """
  @type update_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_slurm_configuration() :: %{
        "accounting" => accounting(),
        "authKey" => slurm_auth_key(),
        "scaleDownIdleTimeInSeconds" => [integer()],
        "slurmCustomSettings" => list(slurm_custom_setting())
      }
      
  """
  @type cluster_slurm_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_node_group_response() :: %{
        "computeNodeGroup" => compute_node_group()
      }
      
  """
  @type get_compute_node_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      queue_summary() :: %{
        "arn" => [String.t() | atom()],
        "clusterId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type queue_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_summary() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "name" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type cluster_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduler_request() :: %{
        "type" => list(any()),
        "version" => [String.t() | atom()]
      }
      
  """
  @type scheduler_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_node_group() :: %{
        "amiId" => String.t() | atom(),
        "arn" => [String.t() | atom()],
        "clusterId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "customLaunchTemplate" => custom_launch_template(),
        "errorInfo" => list(error_info()),
        "iamInstanceProfileArn" => String.t() | atom(),
        "id" => [String.t() | atom()],
        "instanceConfigs" => list(instance_config()),
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "purchaseOption" => list(any()),
        "scalingConfiguration" => scaling_configuration(),
        "slurmConfiguration" => compute_node_group_slurm_configuration(),
        "spotOptions" => spot_options(),
        "status" => list(any()),
        "subnetIds" => list(String.t() | atom())
      }
      
  """
  @type compute_node_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("slurmConfiguration") => cluster_slurm_configuration_request(),
        optional("tags") => map(),
        required("clusterName") => String.t() | atom(),
        required("networking") => networking_request(),
        required("scheduler") => scheduler_request(),
        required("size") => list(any())
      }
      
  """
  @type create_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_compute_node_group_instance_response() :: %{
        "endpoints" => list(endpoint()),
        "nodeID" => [String.t() | atom()],
        "sharedSecret" => String.t() | atom()
      }
      
  """
  @type register_compute_node_group_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_queue_request() :: %{
        required("clusterIdentifier") => String.t() | atom(),
        required("queueIdentifier") => String.t() | atom()
      }
      
  """
  @type get_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "endpoints" => list(endpoint()),
        "errorInfo" => list(error_info()),
        "id" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "name" => [String.t() | atom()],
        "networking" => networking(),
        "scheduler" => scheduler(),
        "size" => list(any()),
        "slurmConfiguration" => cluster_slurm_configuration(),
        "status" => list(any())
      }
      
  """
  @type cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_request() :: %{
        "maxInstanceCount" => [integer()],
        "minInstanceCount" => [integer()]
      }
      
  """
  @type scaling_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_compute_node_group_slurm_configuration_request() :: %{
        "slurmCustomSettings" => list(slurm_custom_setting())
      }
      
  """
  @type update_compute_node_group_slurm_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      register_compute_node_group_instance_request() :: %{
        required("bootstrapId") => String.t() | atom(),
        required("clusterIdentifier") => String.t() | atom()
      }
      
  """
  @type register_compute_node_group_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_compute_node_groups_response() :: %{
        "computeNodeGroups" => list(compute_node_group_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_compute_node_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_node_group_request() :: %{
        required("clusterIdentifier") => String.t() | atom(),
        required("computeNodeGroupIdentifier") => String.t() | atom()
      }
      
  """
  @type get_compute_node_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_compute_node_group_request() :: %{
        optional("amiId") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("customLaunchTemplate") => custom_launch_template(),
        optional("iamInstanceProfileArn") => String.t() | atom(),
        optional("purchaseOption") => list(any()),
        optional("scalingConfiguration") => scaling_configuration_request(),
        optional("slurmConfiguration") => update_compute_node_group_slurm_configuration_request(),
        optional("spotOptions") => spot_options(),
        optional("subnetIds") => list([String.t() | atom()]()),
        required("clusterIdentifier") => String.t() | atom(),
        required("computeNodeGroupIdentifier") => String.t() | atom()
      }
      
  """
  @type update_compute_node_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_node_group_slurm_configuration_request() :: %{
        "slurmCustomSettings" => list(slurm_custom_setting())
      }
      
  """
  @type compute_node_group_slurm_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spot_options() :: %{
        "allocationStrategy" => list(any())
      }
      
  """
  @type spot_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_queue_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("computeNodeGroupConfigurations") => list(compute_node_group_configuration()),
        optional("tags") => map(),
        required("clusterIdentifier") => String.t() | atom(),
        required("queueName") => String.t() | atom()
      }
      
  """
  @type create_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_clusters_response() :: %{
        "clusters" => list(cluster_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_clusters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_compute_node_group_response() :: %{
        "computeNodeGroup" => compute_node_group()
      }
      
  """
  @type update_compute_node_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{}
      
  """
  @type delete_cluster_response() :: %{}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "ipv6Address" => [String.t() | atom()],
        "port" => [String.t() | atom()],
        "privateIpAddress" => [String.t() | atom()],
        "publicIpAddress" => [String.t() | atom()],
        "type" => list(any())
      }
      
  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_clusters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_node_group_slurm_configuration() :: %{
        "slurmCustomSettings" => list(slurm_custom_setting())
      }
      
  """
  @type compute_node_group_slurm_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("clusterIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accounting_request() :: %{
        "defaultPurgeTimeInDays" => [integer()],
        "mode" => list(any())
      }
      
  """
  @type accounting_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration() :: %{
        "maxInstanceCount" => [integer()],
        "minInstanceCount" => [integer()]
      }
      
  """
  @type scaling_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_slurm_configuration_request() :: %{
        "accounting" => accounting_request(),
        "scaleDownIdleTimeInSeconds" => [integer()],
        "slurmCustomSettings" => list(slurm_custom_setting())
      }
      
  """
  @type cluster_slurm_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduler() :: %{
        "type" => list(any()),
        "version" => [String.t() | atom()]
      }
      
  """
  @type scheduler() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_compute_node_group_response() :: %{
        "computeNodeGroup" => compute_node_group()
      }
      
  """
  @type create_compute_node_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_config() :: %{
        "instanceType" => [String.t() | atom()]
      }
      
  """
  @type instance_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_compute_node_group_response() :: %{}
      
  """
  @type delete_compute_node_group_response() :: %{}

  @typedoc """

  ## Example:
      
      list_queues_response() :: %{
        "nextToken" => [String.t() | atom()],
        "queues" => list(queue_summary())
      }
      
  """
  @type list_queues_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_compute_node_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()],
        required("clusterIdentifier") => String.t() | atom()
      }
      
  """
  @type list_compute_node_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_queue_response() :: %{
        "queue" => queue()
      }
      
  """
  @type update_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_queue_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("clusterIdentifier") => String.t() | atom(),
        required("queueIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      networking_request() :: %{
        "networkType" => list(any()),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom())
      }
      
  """
  @type networking_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_compute_node_group_request() :: %{
        optional("amiId") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("purchaseOption") => list(any()),
        optional("slurmConfiguration") => compute_node_group_slurm_configuration_request(),
        optional("spotOptions") => spot_options(),
        optional("tags") => map(),
        required("clusterIdentifier") => String.t() | atom(),
        required("computeNodeGroupName") => String.t() | atom(),
        required("customLaunchTemplate") => custom_launch_template(),
        required("iamInstanceProfileArn") => String.t() | atom(),
        required("instanceConfigs") => list(instance_config()),
        required("scalingConfiguration") => scaling_configuration_request(),
        required("subnetIds") => list([String.t() | atom()]())
      }
      
  """
  @type create_compute_node_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_queue_response() :: %{}
      
  """
  @type delete_queue_response() :: %{}

  @typedoc """

  ## Example:
      
      compute_node_group_summary() :: %{
        "arn" => [String.t() | atom()],
        "clusterId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type compute_node_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cluster_request() :: %{
        required("clusterIdentifier") => String.t() | atom()
      }
      
  """
  @type get_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      slurm_auth_key() :: %{
        "secretArn" => [String.t() | atom()],
        "secretVersion" => [String.t() | atom()]
      }
      
  """
  @type slurm_auth_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_launch_template() :: %{
        "id" => [String.t() | atom()],
        "version" => [String.t() | atom()]
      }
      
  """
  @type custom_launch_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_queue_response() :: %{
        "queue" => queue()
      }
      
  """
  @type create_queue_response() :: %{(String.t() | atom()) => any()}

  @type create_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_compute_node_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_queue_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_compute_node_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_queue_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_compute_node_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_queue_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_compute_node_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_queues_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type register_compute_node_group_instance_errors() ::
          access_denied_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_compute_node_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_queue_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-02-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "pcs",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "PCS",
      signature_version: "v4",
      signing_name: "pcs",
      target_prefix: "AWSParallelComputingService"
    }
  end

  @doc """
  Creates a cluster in your account.

  Amazon Web Services PCS creates the cluster controller in a service-owned
  account. The cluster controller communicates with the cluster resources in your
  account. The subnets and security groups for the cluster must already exist
  before you use this API action.

  It takes time for Amazon Web Services PCS to create the cluster. The cluster is
  in a `Creating` state until it is ready to use. There can only be 1 cluster in a
  `Creating` state per Amazon Web Services Region per Amazon Web Services account.
  `CreateCluster` fails with a `ServiceQuotaExceededException` if there is already
  a cluster in a `Creating` state.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a managed set of compute nodes.

  You associate a compute node group with a cluster through 1 or more Amazon Web
  Services PCS queues or as part of the login fleet. A compute node group includes
  the definition of the compute properties and lifecycle management. Amazon Web
  Services PCS uses the information you provide to this API action to launch
  compute nodes in your account. You can only specify subnets in the same Amazon
  VPC as your cluster. You receive billing charges for the compute nodes that
  Amazon Web Services PCS launches in your account. You must already have a launch
  template before you call this API. For more information, see [Launch an instance from a launch
  template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  in the *Amazon Elastic Compute Cloud User Guide for Linux Instances*.
  """
  @spec create_compute_node_group(map(), create_compute_node_group_request(), list()) ::
          {:ok, create_compute_node_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_compute_node_group_errors()}
  def create_compute_node_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateComputeNodeGroup", input, options)
  end

  @doc """
  Creates a job queue.

  You must associate 1 or more compute node groups with the queue. You can
  associate 1 compute node group with multiple queues.
  """
  @spec create_queue(map(), create_queue_request(), list()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateQueue", input, options)
  end

  @doc """
  Deletes a cluster and all its linked resources.

  You must delete all queues and compute node groups associated with the cluster
  before you can delete the cluster.
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a compute node group.

  You must delete all queues associated with the compute node group first.
  """
  @spec delete_compute_node_group(map(), delete_compute_node_group_request(), list()) ::
          {:ok, delete_compute_node_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_compute_node_group_errors()}
  def delete_compute_node_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteComputeNodeGroup", input, options)
  end

  @doc """
  Deletes a job queue.

  If the compute node group associated with this queue isn't associated with any
  other queues, Amazon Web Services PCS terminates all the compute nodes for this
  queue.
  """
  @spec delete_queue(map(), delete_queue_request(), list()) ::
          {:ok, delete_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteQueue", input, options)
  end

  @doc """
  Returns detailed information about a running cluster in your account.

  This API action provides networking information, endpoint information for
  communication with the scheduler, and provisioning status.
  """
  @spec get_cluster(map(), get_cluster_request(), list()) ::
          {:ok, get_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_errors()}
  def get_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCluster", input, options)
  end

  @doc """
  Returns detailed information about a compute node group.

  This API action provides networking information, EC2 instance type, compute node
  group status, and scheduler (such as Slurm) configuration.
  """
  @spec get_compute_node_group(map(), get_compute_node_group_request(), list()) ::
          {:ok, get_compute_node_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compute_node_group_errors()}
  def get_compute_node_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComputeNodeGroup", input, options)
  end

  @doc """
  Returns detailed information about a queue.

  The information includes the compute node groups that the queue uses to schedule
  jobs.
  """
  @spec get_queue(map(), get_queue_request(), list()) ::
          {:ok, get_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_errors()}
  def get_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueue", input, options)
  end

  @doc """
  Returns a list of running clusters in your account.
  """
  @spec list_clusters(map(), list_clusters_request(), list()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Returns a list of all compute node groups associated with a cluster.
  """
  @spec list_compute_node_groups(map(), list_compute_node_groups_request(), list()) ::
          {:ok, list_compute_node_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_compute_node_groups_errors()}
  def list_compute_node_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComputeNodeGroups", input, options)
  end

  @doc """
  Returns a list of all queues associated with a cluster.
  """
  @spec list_queues(map(), list_queues_request(), list()) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queues_errors()}
  def list_queues(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQueues", input, options)
  end

  @doc """
  Returns a list of all tags on an Amazon Web Services PCS resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  This API action isn't intended for you to use.

  Amazon Web Services PCS uses this API action to register the compute nodes it
  launches in your account.
  """
  @spec register_compute_node_group_instance(
          map(),
          register_compute_node_group_instance_request(),
          list()
        ) ::
          {:ok, register_compute_node_group_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_compute_node_group_instance_errors()}
  def register_compute_node_group_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterComputeNodeGroupInstance", input, options)
  end

  @doc """
  Adds or edits tags on an Amazon Web Services PCS resource.

  Each tag consists of a tag key and a tag value. The tag key and tag value are
  case-sensitive strings. The tag value can be an empty (null) string. To add a
  tag, specify a new tag key and a tag value. To edit a tag, specify an existing
  tag key and a new tag value.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes tags from an Amazon Web Services PCS resource.

  To delete a tag, specify the tag key and the Amazon Resource Name (ARN) of the
  Amazon Web Services PCS resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a compute node group.

  You can update many of the fields related to your compute node group including
  the configurations for networking, compute nodes, and settings specific to your
  scheduler (such as Slurm).
  """
  @spec update_compute_node_group(map(), update_compute_node_group_request(), list()) ::
          {:ok, update_compute_node_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_compute_node_group_errors()}
  def update_compute_node_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComputeNodeGroup", input, options)
  end

  @doc """
  Updates the compute node group configuration of a queue.

  Use this API to change the compute node groups that the queue can send jobs to.
  """
  @spec update_queue(map(), update_queue_request(), list()) ::
          {:ok, update_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_errors()}
  def update_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateQueue", input, options)
  end
end
