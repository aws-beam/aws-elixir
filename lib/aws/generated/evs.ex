# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Evs do
  @moduledoc """
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
        required("resourceArn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check() :: %{
        "impairedSince" => [non_neg_integer()],
        "result" => list(any()),
        "type" => list(any())
      }
      
  """
  @type check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_hosts_response() :: %{
        "environmentHosts" => list(host()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_hosts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_vlans_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_vlans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host_info_for_create() :: %{
        "dedicatedHostId" => String.t(),
        "hostName" => String.t(),
        "instanceType" => list(any()),
        "keyName" => String.t(),
        "placementGroupId" => String.t()
      }
      
  """
  @type host_info_for_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_host_response() :: %{
        "environmentSummary" => environment_summary(),
        "host" => host()
      }
      
  """
  @type delete_environment_host_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t(),
        "environmentId" => String.t(),
        "environmentName" => String.t(),
        "environmentState" => list(any()),
        "environmentStatus" => list(any()),
        "modifiedAt" => [non_neg_integer()],
        "vcfVersion" => list(any())
      }
      
  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_request() :: %{}
      
  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_host_request() :: %{
        optional("clientToken") => String.t(),
        required("environmentId") => String.t(),
        required("host") => host_info_for_create()
      }
      
  """
  @type create_environment_host_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "networkInterfaceId" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

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
  @type initial_vlans() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initial_vlan_info() :: %{
        "cidr" => String.t()
      }
      
  """
  @type initial_vlan_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type tag_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_access_security_groups() :: %{
        "securityGroups" => list(String.t()())
      }
      
  """
  @type service_access_security_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connectivity_info() :: %{
        "privateRouteServerPeerings" => list(String.t()())
      }
      
  """
  @type connectivity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "checks" => list(check()()),
        "connectivityInfo" => connectivity_info(),
        "createdAt" => [non_neg_integer()],
        "credentials" => list(secret()()),
        "environmentArn" => String.t(),
        "environmentId" => String.t(),
        "environmentName" => String.t(),
        "environmentState" => list(any()),
        "environmentStatus" => list(any()),
        "kmsKeyId" => [String.t()],
        "licenseInfo" => list(license_info()()),
        "modifiedAt" => [non_neg_integer()],
        "serviceAccessSecurityGroups" => service_access_security_groups(),
        "serviceAccessSubnetId" => String.t(),
        "siteId" => [String.t()],
        "stateDetails" => String.t(),
        "termsAccepted" => [boolean()],
        "vcfHostnames" => vcf_hostnames(),
        "vcfVersion" => list(any()),
        "vpcId" => String.t()
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret() :: %{
        "secretArn" => [String.t()]
      }
      
  """
  @type secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_vlans_response() :: %{
        "environmentVlans" => list(vlan()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environment_vlans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => list(list(any())())
      }
      
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vcf_hostnames() :: %{
        "cloudBuilder" => String.t(),
        "nsx" => String.t(),
        "nsxEdge1" => String.t(),
        "nsxEdge2" => String.t(),
        "nsxManager1" => String.t(),
        "nsxManager2" => String.t(),
        "nsxManager3" => String.t(),
        "sddcManager" => String.t(),
        "vCenter" => String.t()
      }
      
  """
  @type vcf_hostnames() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_info() :: %{
        "solutionKey" => String.t(),
        "vsanKey" => String.t()
      }
      
  """
  @type license_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host() :: %{
        "createdAt" => [non_neg_integer()],
        "dedicatedHostId" => String.t(),
        "ec2InstanceId" => [String.t()],
        "hostName" => String.t(),
        "hostState" => list(any()),
        "instanceType" => list(any()),
        "ipAddress" => String.t(),
        "keyName" => String.t(),
        "modifiedAt" => [non_neg_integer()],
        "networkInterfaces" => list(network_interface()()),
        "placementGroupId" => String.t(),
        "stateDetails" => String.t()
      }
      
  """
  @type host() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_hosts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_hosts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_host_response() :: %{
        "environmentSummary" => environment_summary(),
        "host" => host()
      }
      
  """
  @type create_environment_host_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_response() :: %{
        "environmentSummaries" => list(environment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_request() :: %{
        optional("clientToken") => String.t(),
        optional("environmentName") => String.t(),
        optional("kmsKeyId") => [String.t()],
        optional("serviceAccessSecurityGroups") => service_access_security_groups(),
        optional("tags") => map(),
        required("connectivityInfo") => connectivity_info(),
        required("hosts") => list(host_info_for_create()()),
        required("initialVlans") => initial_vlans(),
        required("licenseInfo") => list(license_info()()),
        required("serviceAccessSubnetId") => String.t(),
        required("siteId") => [String.t()],
        required("termsAccepted") => [boolean()],
        required("vcfHostnames") => vcf_hostnames(),
        required("vcfVersion") => list(any()),
        required("vpcId") => String.t()
      }
      
  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vlan() :: %{
        "availabilityZone" => [String.t()],
        "cidr" => String.t(),
        "createdAt" => [non_neg_integer()],
        "functionName" => [String.t()],
        "modifiedAt" => [non_neg_integer()],
        "stateDetails" => String.t(),
        "subnetId" => String.t(),
        "vlanId" => integer(),
        "vlanState" => list(any())
      }
      
  """
  @type vlan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type delete_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_host_request() :: %{
        optional("clientToken") => String.t(),
        required("environmentId") => String.t(),
        required("hostName") => String.t()
      }
      
  """
  @type delete_environment_host_request() :: %{String.t() => any()}

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
          too_many_tags_exception() | resource_not_found_exception() | tag_policy_exception()

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
  Creates an Amazon EVS environment that runs VCF software, such as SDDC Manager,
  NSX Manager, and vCenter Server.

  During environment creation, Amazon EVS performs validations on DNS settings,
  provisions VLAN subnets and hosts, and deploys the supplied version of VCF.

  It can take several hours to create an environment. After the deployment
  completes, you can configure VCF according to your unique requirements.

  You cannot use the `dedicatedHostId` and `placementGroupId` parameters together
  in the same `CreateEnvironment` action. This results in a `ValidationException`
  response.

  EC2 instances created through Amazon EVS do not support associating an IAM
  instance profile.
  """
  @spec create_environment(map(), create_environment_request(), list()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironment", input, options)
  end

  @doc """
  Creates an ESXi host and adds it to an Amazon EVS environment.

  Amazon EVS supports 4-16 hosts per environment.

  This action can only be used after the Amazon EVS environment is deployed. All
  Amazon EVS hosts are created with the latest AMI release version for the
  respective VCF version of the environment.

  You can use the `dedicatedHostId` parameter to specify an Amazon EC2 Dedicated
  Host for ESXi host creation.

  You can use the `placementGroupId` parameter to specify a cluster or partition
  placement group to launch EC2 instances into.

  You cannot use the `dedicatedHostId` and `placementGroupId` parameters together
  in the same `CreateEnvironmentHost` action. This results in a
  `ValidationException` response.

  EC2 instances created through Amazon EVS do not support associating an IAM
  instance profile.
  """
  @spec create_environment_host(map(), create_environment_host_request(), list()) ::
          {:ok, create_environment_host_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_host_errors()}
  def create_environment_host(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentHost", input, options)
  end

  @doc """
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
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
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
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentHost", input, options)
  end

  @doc """
  Returns a description of the specified environment.
  """
  @spec get_environment(map(), get_environment_request(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironment", input, options)
  end

  @doc """
  List the hosts within an environment.
  """
  @spec list_environment_hosts(map(), list_environment_hosts_request(), list()) ::
          {:ok, list_environment_hosts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_hosts_errors()}
  def list_environment_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentHosts", input, options)
  end

  @doc """
  Lists environment VLANs that are associated with the specified environment.
  """
  @spec list_environment_vlans(map(), list_environment_vlans_request(), list()) ::
          {:ok, list_environment_vlans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_vlans_errors()}
  def list_environment_vlans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentVlans", input, options)
  end

  @doc """
  Lists the Amazon EVS environments in your Amazon Web Services account in the
  specified Amazon Web Services Region.
  """
  @spec list_environments(map(), list_environments_request(), list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  Lists the tags for an Amazon EVS resource.
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
  Associates the specified tags to an Amazon EVS resource with the specified
  `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  aren't changed. When a resource is deleted, the tags associated with that
  resource are also deleted. Tags that you create for Amazon EVS resources don't
  propagate to any other resources associated with the environment. For example,
  if you tag an environment with this operation, that tag doesn't automatically
  propagate to the VLAN subnets and hosts associated with the environment.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from an Amazon EVS resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
