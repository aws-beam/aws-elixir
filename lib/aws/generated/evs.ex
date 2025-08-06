# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Evs do
  @moduledoc """
  Amazon EVS is in public preview release and is subject to change.

  Amazon Elastic VMware Service (Amazon EVS) is a service that you can use to
  deploy a VMware Cloud Foundation (VCF) software environment directly on EC2 bare
  metal instances within an Amazon Virtual Private Cloud (VPC).

  Workloads running on Amazon EVS are fully compatible with workloads running on
  any standard VMware vSphere environment. This means that you can migrate any
  VMware-based workload to Amazon EVS without workload modification.
  """

  alias AWS.Client
  alias AWS.Request

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
      
      check() :: %{
        "impairedSince" => [non_neg_integer()],
        "result" => list(any()),
        "type" => list(any())
      }
      
  """
  @type check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environment_hosts_response() :: %{
        "environmentHosts" => list(host()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_environment_hosts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_vlans_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_environment_vlans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host_info_for_create() :: %{
        "dedicatedHostId" => String.t() | atom(),
        "hostName" => String.t() | atom(),
        "instanceType" => list(any()),
        "keyName" => String.t() | atom(),
        "placementGroupId" => String.t() | atom()
      }
      
  """
  @type host_info_for_create() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_environment_host_response() :: %{
        "environmentSummary" => environment_summary(),
        "host" => host()
      }
      
  """
  @type delete_environment_host_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentName" => String.t() | atom(),
        "environmentState" => list(any()),
        "environmentStatus" => list(any()),
        "modifiedAt" => [non_neg_integer()],
        "vcfVersion" => list(any())
      }
      
  """
  @type environment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_environment_request() :: %{}
      
  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_host_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("environmentId") => String.t() | atom(),
        required("host") => host_info_for_create()
      }
      
  """
  @type create_environment_host_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "networkInterfaceId" => String.t() | atom()
      }
      
  """
  @type network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initial_vlans() :: %{
        "edgeVTep" => initial_vlan_info(),
        "expansionVlan1" => initial_vlan_info(),
        "expansionVlan2" => initial_vlan_info(),
        "hcx" => initial_vlan_info(),
        "nsxUplink" => initial_vlan_info(),
        "vMotion" => initial_vlan_info(),
        "vSan" => initial_vlan_info(),
        "vTep" => initial_vlan_info(),
        "vmManagement" => initial_vlan_info(),
        "vmkManagement" => initial_vlan_info()
      }
      
  """
  @type initial_vlans() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initial_vlan_info() :: %{
        "cidr" => String.t() | atom()
      }
      
  """
  @type initial_vlan_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type tag_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type get_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_access_security_groups() :: %{
        "securityGroups" => list(String.t() | atom())
      }
      
  """
  @type service_access_security_groups() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connectivity_info() :: %{
        "privateRouteServerPeerings" => list(String.t() | atom())
      }
      
  """
  @type connectivity_info() :: %{(String.t() | atom()) => any()}

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
      
      environment() :: %{
        "checks" => list(check()),
        "connectivityInfo" => connectivity_info(),
        "createdAt" => [non_neg_integer()],
        "credentials" => list(secret()),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentName" => String.t() | atom(),
        "environmentState" => list(any()),
        "environmentStatus" => list(any()),
        "kmsKeyId" => [String.t() | atom()],
        "licenseInfo" => list(license_info()),
        "modifiedAt" => [non_neg_integer()],
        "serviceAccessSecurityGroups" => service_access_security_groups(),
        "serviceAccessSubnetId" => String.t() | atom(),
        "siteId" => [String.t() | atom()],
        "stateDetails" => String.t() | atom(),
        "termsAccepted" => [boolean()],
        "vcfHostnames" => vcf_hostnames(),
        "vcfVersion" => list(any()),
        "vpcId" => String.t() | atom()
      }
      
  """
  @type environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      secret() :: %{
        "secretArn" => [String.t() | atom()]
      }
      
  """
  @type secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environment_vlans_response() :: %{
        "environmentVlans" => list(vlan()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_environment_vlans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("state") => list(list(any())())
      }
      
  """
  @type list_environments_request() :: %{(String.t() | atom()) => any()}

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
      
      vcf_hostnames() :: %{
        "cloudBuilder" => String.t() | atom(),
        "nsx" => String.t() | atom(),
        "nsxEdge1" => String.t() | atom(),
        "nsxEdge2" => String.t() | atom(),
        "nsxManager1" => String.t() | atom(),
        "nsxManager2" => String.t() | atom(),
        "nsxManager3" => String.t() | atom(),
        "sddcManager" => String.t() | atom(),
        "vCenter" => String.t() | atom()
      }
      
  """
  @type vcf_hostnames() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      license_info() :: %{
        "solutionKey" => String.t() | atom(),
        "vsanKey" => String.t() | atom()
      }
      
  """
  @type license_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host() :: %{
        "createdAt" => [non_neg_integer()],
        "dedicatedHostId" => String.t() | atom(),
        "ec2InstanceId" => [String.t() | atom()],
        "hostName" => String.t() | atom(),
        "hostState" => list(any()),
        "instanceType" => list(any()),
        "ipAddress" => String.t() | atom(),
        "keyName" => String.t() | atom(),
        "modifiedAt" => [non_neg_integer()],
        "networkInterfaces" => list(network_interface()),
        "placementGroupId" => String.t() | atom(),
        "stateDetails" => String.t() | atom()
      }
      
  """
  @type host() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environment_hosts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_environment_hosts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type create_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{
        optional("clientToken") => String.t() | atom()
      }
      
  """
  @type delete_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_environment_host_response() :: %{
        "environmentSummary" => environment_summary(),
        "host" => host()
      }
      
  """
  @type create_environment_host_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

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
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environments_response() :: %{
        "environmentSummaries" => list(environment_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_environment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("environmentName") => String.t() | atom(),
        optional("kmsKeyId") => [String.t() | atom()],
        optional("serviceAccessSecurityGroups") => service_access_security_groups(),
        optional("tags") => map(),
        required("connectivityInfo") => connectivity_info(),
        required("hosts") => list(host_info_for_create()),
        required("initialVlans") => initial_vlans(),
        required("licenseInfo") => list(license_info()),
        required("serviceAccessSubnetId") => String.t() | atom(),
        required("siteId") => [String.t() | atom()],
        required("termsAccepted") => [boolean()],
        required("vcfHostnames") => vcf_hostnames(),
        required("vcfVersion") => list(any()),
        required("vpcId") => String.t() | atom()
      }
      
  """
  @type create_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vlan() :: %{
        "availabilityZone" => [String.t() | atom()],
        "cidr" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "functionName" => [String.t() | atom()],
        "modifiedAt" => [non_neg_integer()],
        "stateDetails" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "vlanId" => integer(),
        "vlanState" => list(any())
      }
      
  """
  @type vlan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type delete_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_environment_host_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("environmentId") => String.t() | atom(),
        required("hostName") => String.t() | atom()
      }
      
  """
  @type delete_environment_host_request() :: %{(String.t() | atom()) => any()}

  @type create_environment_errors() :: validation_exception()

  @type create_environment_host_errors() :: throttling_exception() | validation_exception()

  @type delete_environment_errors() :: validation_exception() | resource_not_found_exception()

  @type delete_environment_host_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_environment_errors() :: validation_exception() | resource_not_found_exception()

  @type list_environment_hosts_errors() :: validation_exception() | resource_not_found_exception()

  @type list_environment_vlans_errors() :: validation_exception() | resource_not_found_exception()

  @type list_environments_errors() :: validation_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | tag_policy_exception()

  @type untag_resource_errors() :: resource_not_found_exception() | tag_policy_exception()

  def metadata do
    %{
      api_version: "2023-07-27",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "evs",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "evs",
      signature_version: "v4",
      signing_name: "evs",
      target_prefix: "AmazonElasticVMwareService"
    }
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Creates an Amazon EVS environment that runs VCF software, such as SDDC Manager,
  NSX Manager, and vCenter Server.

  During environment creation, Amazon EVS performs validations on DNS settings,
  provisions VLAN subnets and hosts, and deploys the supplied version of VCF.

  It can take several hours to create an environment. After the deployment
  completes, you can configure VCF in the vSphere user interface according to your
  needs.

  You cannot use the `dedicatedHostId` and `placementGroupId` parameters together
  in the same `CreateEnvironment` action. This results in a `ValidationException`
  response.
  """
  @spec create_environment(map(), create_environment_request(), list()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEnvironment", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Creates an ESXi host and adds it to an Amazon EVS environment. Amazon EVS
  supports 4-16 hosts per environment.

  This action can only be used after the Amazon EVS environment is deployed. All
  Amazon EVS hosts are created with the latest AMI release version for the
  respective VCF version of the environment. Amazon EVS hosts are commissioned in
  the SDDC Manager inventory as unassigned hosts.

  You can use the `dedicatedHostId` parameter to specify an Amazon EC2 Dedicated
  Host for ESXi host creation.

  You can use the `placementGroupId` parameter to specify a cluster or partition
  placement group to launch EC2 instances into.

  You cannot use the `dedicatedHostId` and `placementGroupId` parameters together
  in the same `CreateEnvironmentHost` action. This results in a
  `ValidationException` response.
  """
  @spec create_environment_host(map(), create_environment_host_request(), list()) ::
          {:ok, create_environment_host_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_host_errors()}
  def create_environment_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEnvironmentHost", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Deletes an Amazon EVS environment.

  Amazon EVS environments will only be enabled for deletion once the hosts are
  deleted. You can delete hosts using the `DeleteEnvironmentHost` action.

  Environment deletion also deletes the associated Amazon EVS VLAN subnets. Other
  associated Amazon Web Services resources are not deleted. These resources may
  continue to incur costs.
  """
  @spec delete_environment(map(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Deletes a host from an Amazon EVS environment.

  Before deleting a host, you must unassign and decommission the host from within
  the SDDC Manager user interface. Not doing so could impact the availability of
  your virtual machines or result in data loss.
  """
  @spec delete_environment_host(map(), delete_environment_host_request(), list()) ::
          {:ok, delete_environment_host_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_host_errors()}
  def delete_environment_host(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEnvironmentHost", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Returns a description of the specified environment.
  """
  @spec get_environment(map(), get_environment_request(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEnvironment", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  List the hosts within an environment.
  """
  @spec list_environment_hosts(map(), list_environment_hosts_request(), list()) ::
          {:ok, list_environment_hosts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_hosts_errors()}
  def list_environment_hosts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEnvironmentHosts", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Lists environment VLANs that are associated with the specified environment.
  """
  @spec list_environment_vlans(map(), list_environment_vlans_request(), list()) ::
          {:ok, list_environment_vlans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_vlans_errors()}
  def list_environment_vlans(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEnvironmentVlans", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Lists the Amazon EVS environments in your Amazon Web Services account in the
  specified Amazon Web Services Region.
  """
  @spec list_environments(map(), list_environments_request(), list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Lists the tags for an Amazon EVS resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Associates the specified tags to an Amazon EVS resource with the specified
  `resourceArn`. If existing tags on a resource are not specified in the request
  parameters, they aren't changed. When a resource is deleted, the tags associated
  with that resource are also deleted. Tags that you create for Amazon EVS
  resources don't propagate to any other resources associated with the
  environment. For example, if you tag an environment with this operation, that
  tag doesn't automatically propagate to the VLAN subnets and hosts associated
  with the environment.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Amazon EVS is in public preview release and is subject to change.

  Deletes specified tags from an Amazon EVS resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
