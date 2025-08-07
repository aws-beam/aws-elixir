# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkspacesInstances do
  @moduledoc """
  Amazon WorkSpaces Instances provides an API framework for managing virtual
  workspace environments across multiple AWS regions, enabling programmatic
  creation and configuration of desktop infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      ena_srd_specification_request() :: %{
        "EnaSrdEnabled" => [boolean()],
        "EnaSrdUdpSpecification" => ena_srd_udp_specification_request()
      }
      
  """
  @type ena_srd_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_network_performance_options_request() :: %{
        "BandwidthWeighting" => list(any())
      }
      
  """
  @type instance_network_performance_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_managed_instance() :: %{
        "InstanceId" => [String.t() | atom()]
      }
      
  """
  @type ec2_managed_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()),
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spot_market_options() :: %{
        "BlockDurationMinutes" => integer(),
        "InstanceInterruptionBehavior" => list(any()),
        "MaxPrice" => String.t() | atom(),
        "SpotInstanceType" => list(any()),
        "ValidUntilUtc" => [non_neg_integer()]
      }
      
  """
  @type spot_market_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_metadata_options_request() :: %{
        "HttpEndpoint" => list(any()),
        "HttpProtocolIpv6" => list(any()),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => list(any()),
        "InstanceMetadataTags" => list(any())
      }
      
  """
  @type instance_metadata_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_volume_response() :: %{}
      
  """
  @type disassociate_volume_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_volume_request() :: %{
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type delete_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_market_options_request() :: %{
        "MarketType" => list(any()),
        "SpotOptions" => spot_market_options()
      }
      
  """
  @type instance_market_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_volume_response() :: %{}
      
  """
  @type associate_volume_response() :: %{}

  @typedoc """

  ## Example:
      
      create_workspace_instance_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ManagedInstance") => managed_instance_request()
      }
      
  """
  @type create_workspace_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_workspace_instances_response() :: %{
        "NextToken" => String.t() | atom(),
        "WorkspaceInstances" => list(workspace_instance())
      }
      
  """
  @type list_workspace_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_reservation_target() :: %{
        "CapacityReservationId" => String.t() | atom(),
        "CapacityReservationResourceGroupArn" => String.t() | atom()
      }
      
  """
  @type capacity_reservation_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cpu_options_request() :: %{
        "AmdSevSnp" => list(any()),
        "CoreCount" => integer(),
        "ThreadsPerCore" => integer()
      }
      
  """
  @type cpu_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_tracking_specification_request() :: %{
        "TcpEstablishedTimeout" => integer(),
        "UdpStreamTimeout" => integer(),
        "UdpTimeout" => integer()
      }
      
  """
  @type connection_tracking_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom()),
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ipv6_prefix_specification_request() :: %{
        "Ipv6Prefix" => String.t() | atom()
      }
      
  """
  @type ipv6_prefix_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enclave_options_request() :: %{
        "Enabled" => [boolean()]
      }
      
  """
  @type enclave_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_volume_request() :: %{
        required("Device") => String.t() | atom(),
        required("VolumeId") => String.t() | atom(),
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type associate_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      credit_specification_request() :: %{
        "CpuCredits" => list(any())
      }
      
  """
  @type credit_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workspace_instance_request() :: %{
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type get_workspace_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ena_srd_udp_specification_request() :: %{
        "EnaSrdUdpEnabled" => [boolean()]
      }
      
  """
  @type ena_srd_udp_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      region() :: %{
        "RegionName" => String.t() | atom()
      }
      
  """
  @type region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_instance_request() :: %{
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type delete_workspace_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ipv4_prefix_specification_request() :: %{
        "Ipv4Prefix" => String.t() | atom()
      }
      
  """
  @type ipv4_prefix_specification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      private_ip_address_specification() :: %{
        "Primary" => [boolean()],
        "PrivateIpAddress" => String.t() | atom()
      }
      
  """
  @type private_ip_address_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hibernation_options_request() :: %{
        "Configured" => [boolean()]
      }
      
  """
  @type hibernation_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_volume_request() :: %{
        optional("Device") => String.t() | atom(),
        optional("DisassociateMode") => list(any()),
        required("VolumeId") => String.t() | atom(),
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type disassociate_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()],
        "QuotaCode" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()],
        "ServiceCode" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      private_dns_name_options_request() :: %{
        "EnableResourceNameDnsAAAARecord" => [boolean()],
        "EnableResourceNameDnsARecord" => [boolean()],
        "HostnameType" => list(any())
      }
      
  """
  @type private_dns_name_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workspace_instance_response() :: %{
        "EC2InstanceErrors" => list(ec2_instance_error()),
        "EC2ManagedInstance" => ec2_managed_instance(),
        "ProvisionState" => list(any()),
        "WorkspaceInstanceErrors" => list(workspace_instance_error()),
        "WorkspaceInstanceId" => String.t() | atom()
      }
      
  """
  @type get_workspace_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_instance() :: %{
        "EC2ManagedInstance" => ec2_managed_instance(),
        "ProvisionState" => list(any()),
        "WorkspaceInstanceId" => String.t() | atom()
      }
      
  """
  @type workspace_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_regions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_regions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      block_device_mapping_request() :: %{
        "DeviceName" => String.t() | atom(),
        "Ebs" => ebs_block_device(),
        "NoDevice" => String.t() | atom(),
        "VirtualName" => String.t() | atom()
      }
      
  """
  @type block_device_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_volume_response() :: %{
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type create_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()],
        "Reason" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_instance_request() :: %{
        "BlockDeviceMappings" => list(block_device_mapping_request()),
        "CapacityReservationSpecification" => capacity_reservation_specification(),
        "CpuOptions" => cpu_options_request(),
        "CreditSpecification" => credit_specification_request(),
        "DisableApiStop" => [boolean()],
        "EbsOptimized" => [boolean()],
        "EnablePrimaryIpv6" => [boolean()],
        "EnclaveOptions" => enclave_options_request(),
        "HibernationOptions" => hibernation_options_request(),
        "IamInstanceProfile" => iam_instance_profile_specification(),
        "ImageId" => String.t() | atom(),
        "InstanceMarketOptions" => instance_market_options_request(),
        "InstanceType" => String.t() | atom(),
        "Ipv6AddressCount" => integer(),
        "Ipv6Addresses" => list(instance_ipv6_address()),
        "KernelId" => String.t() | atom(),
        "KeyName" => String.t() | atom(),
        "LicenseSpecifications" => list(license_configuration_request()),
        "MaintenanceOptions" => instance_maintenance_options_request(),
        "MetadataOptions" => instance_metadata_options_request(),
        "Monitoring" => run_instances_monitoring_enabled(),
        "NetworkInterfaces" => list(instance_network_interface_specification()),
        "NetworkPerformanceOptions" => instance_network_performance_options_request(),
        "Placement" => placement(),
        "PrivateDnsNameOptions" => private_dns_name_options_request(),
        "PrivateIpAddress" => String.t() | atom(),
        "RamdiskId" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SecurityGroups" => list(String.t() | atom()),
        "SubnetId" => String.t() | atom(),
        "TagSpecifications" => list(tag_specification()),
        "UserData" => String.t() | atom()
      }
      
  """
  @type managed_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ebs_block_device() :: %{
        "Encrypted" => [boolean()],
        "Iops" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "Throughput" => integer(),
        "VolumeSize" => integer(),
        "VolumeType" => list(any())
      }
      
  """
  @type ebs_block_device() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_reservation_specification() :: %{
        "CapacityReservationPreference" => list(any()),
        "CapacityReservationTarget" => capacity_reservation_target()
      }
      
  """
  @type capacity_reservation_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      placement() :: %{
        "Affinity" => String.t() | atom(),
        "AvailabilityZone" => String.t() | atom(),
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "HostId" => String.t() | atom(),
        "HostResourceGroupArn" => String.t() | atom(),
        "PartitionNumber" => integer(),
        "Tenancy" => list(any())
      }
      
  """
  @type placement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workspace_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProvisionStates") => list(list(any())())
      }
      
  """
  @type list_workspace_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t() | atom()],
        "RetryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_response() :: %{}
      
  """
  @type delete_volume_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_workspace_instance_response() :: %{}
      
  """
  @type delete_workspace_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      create_workspace_instance_response() :: %{
        "WorkspaceInstanceId" => String.t() | atom()
      }
      
  """
  @type create_workspace_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_instance_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "ErrorMessage" => [String.t() | atom()]
      }
      
  """
  @type workspace_instance_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_instance_profile_specification() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type iam_instance_profile_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_specification() :: %{
        "ResourceType" => list(any()),
        "Tags" => list(tag())
      }
      
  """
  @type tag_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_instance_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_instance_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      license_configuration_request() :: %{
        "LicenseConfigurationArn" => String.t() | atom()
      }
      
  """
  @type license_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_type_info() :: %{
        "InstanceType" => String.t() | atom()
      }
      
  """
  @type instance_type_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_volume_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Encrypted") => [boolean()],
        optional("Iops") => integer(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("SizeInGB") => integer(),
        optional("SnapshotId") => String.t() | atom(),
        optional("TagSpecifications") => list(tag_specification()),
        optional("Throughput") => integer(),
        optional("VolumeType") => list(any()),
        required("AvailabilityZone") => String.t() | atom()
      }
      
  """
  @type create_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("WorkspaceInstanceId") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t() | atom()],
        "QuotaCode" => [String.t() | atom()],
        "RetryAfterSeconds" => [integer()],
        "ServiceCode" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_error() :: %{
        "EC2ErrorCode" => [String.t() | atom()],
        "EC2ErrorMessage" => [String.t() | atom()],
        "EC2ExceptionType" => [String.t() | atom()]
      }
      
  """
  @type ec2_instance_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_regions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Regions" => list(region())
      }
      
  """
  @type list_regions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_maintenance_options_request() :: %{
        "AutoRecovery" => list(any())
      }
      
  """
  @type instance_maintenance_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_instance_types_response() :: %{
        "InstanceTypes" => list(instance_type_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_instance_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_instances_monitoring_enabled() :: %{
        "Enabled" => [boolean()]
      }
      
  """
  @type run_instances_monitoring_enabled() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_ipv6_address() :: %{
        "Ipv6Address" => String.t() | atom(),
        "IsPrimaryIpv6" => [boolean()]
      }
      
  """
  @type instance_ipv6_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_network_interface_specification() :: %{
        "AssociateCarrierIpAddress" => [boolean()],
        "AssociatePublicIpAddress" => [boolean()],
        "ConnectionTrackingSpecification" => connection_tracking_specification_request(),
        "Description" => String.t() | atom(),
        "DeviceIndex" => integer(),
        "EnaSrdSpecification" => ena_srd_specification_request(),
        "Groups" => list(String.t() | atom()),
        "InterfaceType" => list(any()),
        "Ipv4PrefixCount" => integer(),
        "Ipv4Prefixes" => list(ipv4_prefix_specification_request()),
        "Ipv6AddressCount" => integer(),
        "Ipv6Addresses" => list(instance_ipv6_address()),
        "Ipv6PrefixCount" => integer(),
        "Ipv6Prefixes" => list(ipv6_prefix_specification_request()),
        "NetworkCardIndex" => integer(),
        "NetworkInterfaceId" => String.t() | atom(),
        "PrimaryIpv6" => [boolean()],
        "PrivateIpAddress" => String.t() | atom(),
        "PrivateIpAddresses" => list(private_ip_address_specification()),
        "SecondaryPrivateIpAddressCount" => integer(),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type instance_network_interface_specification() :: %{(String.t() | atom()) => any()}

  @type associate_volume_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_volume_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workspace_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_volume_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_volume_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_workspace_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_instance_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_regions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workspace_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "workspaces-instances",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Workspaces Instances",
      signature_version: "v4",
      signing_name: "workspaces-instances",
      target_prefix: "EUCMIFrontendAPIService"
    }
  end

  @doc """
  Attaches a volume to a WorkSpace Instance.
  """
  @spec associate_volume(map(), associate_volume_request(), list()) ::
          {:ok, associate_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_volume_errors()}
  def associate_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateVolume", input, options)
  end

  @doc """
  Creates a new volume for WorkSpace Instances.
  """
  @spec create_volume(map(), create_volume_request(), list()) ::
          {:ok, create_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_volume_errors()}
  def create_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVolume", input, options)
  end

  @doc """
  Launches a new WorkSpace Instance with specified configuration parameters,
  enabling programmatic workspace deployment.
  """
  @spec create_workspace_instance(map(), create_workspace_instance_request(), list()) ::
          {:ok, create_workspace_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_instance_errors()}
  def create_workspace_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaceInstance", input, options)
  end

  @doc """
  Deletes a specified volume.
  """
  @spec delete_volume(map(), delete_volume_request(), list()) ::
          {:ok, delete_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_volume_errors()}
  def delete_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
  Deletes the specified WorkSpace
  """
  @spec delete_workspace_instance(map(), delete_workspace_instance_request(), list()) ::
          {:ok, delete_workspace_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_instance_errors()}
  def delete_workspace_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkspaceInstance", input, options)
  end

  @doc """
  Detaches a volume from a WorkSpace Instance.
  """
  @spec disassociate_volume(map(), disassociate_volume_request(), list()) ::
          {:ok, disassociate_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_volume_errors()}
  def disassociate_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateVolume", input, options)
  end

  @doc """
  Retrieves detailed information about a specific WorkSpace Instance.
  """
  @spec get_workspace_instance(map(), get_workspace_instance_request(), list()) ::
          {:ok, get_workspace_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workspace_instance_errors()}
  def get_workspace_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkspaceInstance", input, options)
  end

  @doc """
  Retrieves a list of instance types supported by Amazon WorkSpaces Instances,
  enabling precise workspace infrastructure configuration.
  """
  @spec list_instance_types(map(), list_instance_types_request(), list()) ::
          {:ok, list_instance_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instance_types_errors()}
  def list_instance_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceTypes", input, options)
  end

  @doc """
  Retrieves a list of AWS regions supported by Amazon WorkSpaces Instances,
  enabling region discovery for workspace deployments.
  """
  @spec list_regions(map(), list_regions_request(), list()) ::
          {:ok, list_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_regions_errors()}
  def list_regions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegions", input, options)
  end

  @doc """
  Retrieves tags for a WorkSpace Instance.
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
  Retrieves a collection of WorkSpaces Instances based on specified filters.
  """
  @spec list_workspace_instances(map(), list_workspace_instances_request(), list()) ::
          {:ok, list_workspace_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workspace_instances_errors()}
  def list_workspace_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkspaceInstances", input, options)
  end

  @doc """
  Adds tags to a WorkSpace Instance.
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
  Removes tags from a WorkSpace Instance.
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
