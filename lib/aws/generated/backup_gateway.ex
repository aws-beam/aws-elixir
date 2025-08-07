# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BackupGateway do
  @moduledoc """
  Backup gateway

  Backup gateway connects Backup to your hypervisor, so you can
  create, store, and restore backups of your virtual machines (VMs) anywhere,
  whether
  on-premises or in the VMware Cloud (VMC) on Amazon Web Services.

  Add on-premises resources by connecting to a hypervisor through a gateway.
  Backup will automatically discover the resources in your hypervisor.

  Use Backup to assign virtual or on-premises resources to a backup plan, or run
  on-demand backups. Once you have backed up your resources, you can view them and
  restore them
  like any resource supported by Backup.

  To download the Amazon Web Services software to get started, navigate to the
  Backup console, choose **Gateways**, then choose **Create gateway**.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      maintenance_start_time() :: %{
        "DayOfMonth" => integer(),
        "DayOfWeek" => integer(),
        "HourOfDay" => integer(),
        "MinuteOfHour" => integer()
      }
      
  """
  @type maintenance_start_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_bandwidth_rate_limit_schedule_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type put_bandwidth_rate_limit_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      gateway_details() :: %{
        "GatewayArn" => String.t() | atom(),
        "GatewayDisplayName" => String.t() | atom(),
        "GatewayType" => String.t() | atom(),
        "HypervisorId" => String.t() | atom(),
        "LastSeenTime" => non_neg_integer(),
        "MaintenanceStartTime" => maintenance_start_time(),
        "NextUpdateAvailabilityTime" => non_neg_integer(),
        "VpcEndpoint" => String.t() | atom()
      }
      
  """
  @type gateway_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_hypervisor_property_mappings_input() :: %{
        required("HypervisorArn") => String.t() | atom(),
        required("IamRoleArn") => String.t() | atom(),
        required("VmwareToAwsTagMappings") => list(vmware_to_aws_tag_mapping())
      }
      
  """
  @type put_hypervisor_property_mappings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_hypervisor_output() :: %{
        optional("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type update_hypervisor_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_gateway_from_server_input() :: %{
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type disassociate_gateway_from_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bandwidth_rate_limit_schedule_output() :: %{
        optional("BandwidthRateLimitIntervals") => list(bandwidth_rate_limit_interval()),
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type get_bandwidth_rate_limit_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_bandwidth_rate_limit_schedule_input() :: %{
        required("BandwidthRateLimitIntervals") => list(bandwidth_rate_limit_interval()),
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type put_bandwidth_rate_limit_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      virtual_machine() :: %{
        "HostName" => String.t() | atom(),
        "HypervisorId" => String.t() | atom(),
        "LastBackupDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "ResourceArn" => String.t() | atom()
      }
      
  """
  @type virtual_machine() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vmware_to_aws_tag_mapping() :: %{
        "AwsTagKey" => String.t() | atom(),
        "AwsTagValue" => String.t() | atom(),
        "VmwareCategory" => String.t() | atom(),
        "VmwareTagName" => String.t() | atom()
      }
      
  """
  @type vmware_to_aws_tag_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_hypervisor_property_mappings_input() :: %{
        required("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type get_hypervisor_property_mappings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_hypervisor_configuration_input() :: %{
        optional("Password") => String.t() | atom(),
        optional("Username") => String.t() | atom(),
        required("GatewayArn") => String.t() | atom(),
        required("Host") => String.t() | atom()
      }
      
  """
  @type test_hypervisor_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_gateway_from_server_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type disassociate_gateway_from_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_hypervisor_configuration_output() :: %{}
      
  """
  @type test_hypervisor_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      get_hypervisor_property_mappings_output() :: %{
        optional("HypervisorArn") => String.t() | atom(),
        optional("IamRoleArn") => String.t() | atom(),
        optional("VmwareToAwsTagMappings") => list(vmware_to_aws_tag_mapping())
      }
      
  """
  @type get_hypervisor_property_mappings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_gateway_to_server_input() :: %{
        required("GatewayArn") => String.t() | atom(),
        required("ServerArn") => String.t() | atom()
      }
      
  """
  @type associate_gateway_to_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        optional("ResourceArn") => String.t() | atom(),
        optional("Tags") => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bandwidth_rate_limit_schedule_input() :: %{
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type get_bandwidth_rate_limit_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_hypervisor_output() :: %{
        optional("Hypervisor") => hypervisor_details()
      }
      
  """
  @type get_hypervisor_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_virtual_machines_output() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("VirtualMachines") => list(virtual_machine())
      }
      
  """
  @type list_virtual_machines_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_gateway_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type create_gateway_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      gateway() :: %{
        "GatewayArn" => String.t() | atom(),
        "GatewayDisplayName" => String.t() | atom(),
        "GatewayType" => String.t() | atom(),
        "HypervisorId" => String.t() | atom(),
        "LastSeenTime" => non_neg_integer()
      }
      
  """
  @type gateway() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_hypervisor_output() :: %{
        optional("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type delete_hypervisor_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_hypervisor_input() :: %{
        required("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type get_hypervisor_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_maintenance_start_time_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type put_maintenance_start_time_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type update_gateway_information_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
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
      
      update_hypervisor_input() :: %{
        optional("Host") => String.t() | atom(),
        optional("LogGroupArn") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Password") => String.t() | atom(),
        optional("Username") => String.t() | atom(),
        required("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type update_hypervisor_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bandwidth_rate_limit_interval() :: %{
        "AverageUploadRateLimitInBitsPerSec" => float(),
        "DaysOfWeek" => list(integer()),
        "EndHourOfDay" => integer(),
        "EndMinuteOfHour" => integer(),
        "StartHourOfDay" => integer(),
        "StartMinuteOfHour" => integer()
      }
      
  """
  @type bandwidth_rate_limit_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_gateways_output() :: %{
        optional("Gateways") => list(gateway()),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_gateways_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_maintenance_start_time_input() :: %{
        optional("DayOfMonth") => integer(),
        optional("DayOfWeek") => integer(),
        required("GatewayArn") => String.t() | atom(),
        required("HourOfDay") => integer(),
        required("MinuteOfHour") => integer()
      }
      
  """
  @type put_maintenance_start_time_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_input() :: %{
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type delete_gateway_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hypervisor_details() :: %{
        "Host" => String.t() | atom(),
        "HypervisorArn" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom(),
        "LastSuccessfulMetadataSyncTime" => non_neg_integer(),
        "LatestMetadataSyncStatus" => String.t() | atom(),
        "LatestMetadataSyncStatusMessage" => String.t() | atom(),
        "LogGroupArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom()
      }
      
  """
  @type hypervisor_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_hypervisor_configuration_output() :: %{
        optional("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type import_hypervisor_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_gateway_output() :: %{
        optional("Gateway") => gateway_details()
      }
      
  """
  @type get_gateway_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_gateway_to_server_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type associate_gateway_to_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_hypervisor_configuration_input() :: %{
        optional("KmsKeyArn") => String.t() | atom(),
        optional("Password") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("Username") => String.t() | atom(),
        required("Host") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type import_hypervisor_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_virtual_machines_input() :: %{
        optional("HypervisorArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_virtual_machines_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{
        optional("ResourceARN") => String.t() | atom()
      }
      
  """
  @type tag_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_input() :: %{
        optional("GatewayDisplayName") => String.t() | atom(),
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type update_gateway_information_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_virtual_machine_input() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_virtual_machine_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_hypervisor_input() :: %{
        required("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type delete_hypervisor_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      virtual_machine_details() :: %{
        "HostName" => String.t() | atom(),
        "HypervisorId" => String.t() | atom(),
        "LastBackupDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "VmwareTags" => list(vmware_tag())
      }
      
  """
  @type virtual_machine_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_gateways_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_gateways_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vmware_tag() :: %{
        "VmwareCategory" => String.t() | atom(),
        "VmwareTagDescription" => String.t() | atom(),
        "VmwareTagName" => String.t() | atom()
      }
      
  """
  @type vmware_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_hypervisors_output() :: %{
        optional("Hypervisors") => list(hypervisor()),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_hypervisors_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{
        optional("ResourceARN") => String.t() | atom()
      }
      
  """
  @type untag_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type delete_gateway_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_gateway_input() :: %{
        optional("Tags") => list(tag()),
        required("ActivationKey") => String.t() | atom(),
        required("GatewayDisplayName") => String.t() | atom(),
        required("GatewayType") => String.t() | atom()
      }
      
  """
  @type create_gateway_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_hypervisors_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_hypervisors_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_virtual_machine_output() :: %{
        optional("VirtualMachine") => virtual_machine_details()
      }
      
  """
  @type get_virtual_machine_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_output() :: %{
        optional("GatewayArn") => String.t() | atom()
      }
      
  """
  @type update_gateway_software_now_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_gateway_input() :: %{
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type get_gateway_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_virtual_machines_metadata_sync_input() :: %{
        required("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type start_virtual_machines_metadata_sync_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_input() :: %{
        required("GatewayArn") => String.t() | atom()
      }
      
  """
  @type update_gateway_software_now_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hypervisor() :: %{
        "Host" => String.t() | atom(),
        "HypervisorArn" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom()
      }
      
  """
  @type hypervisor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_hypervisor_property_mappings_output() :: %{
        optional("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type put_hypervisor_property_mappings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_virtual_machines_metadata_sync_output() :: %{
        optional("HypervisorArn") => String.t() | atom()
      }
      
  """
  @type start_virtual_machines_metadata_sync_output() :: %{(String.t() | atom()) => any()}

  @type associate_gateway_to_server_errors() :: conflict_exception()

  @type delete_gateway_errors() :: resource_not_found_exception()

  @type delete_hypervisor_errors() ::
          access_denied_exception() | resource_not_found_exception() | conflict_exception()

  @type disassociate_gateway_from_server_errors() ::
          resource_not_found_exception() | conflict_exception()

  @type get_bandwidth_rate_limit_schedule_errors() :: resource_not_found_exception()

  @type get_gateway_errors() :: resource_not_found_exception()

  @type get_hypervisor_errors() :: resource_not_found_exception()

  @type get_hypervisor_property_mappings_errors() :: resource_not_found_exception()

  @type get_virtual_machine_errors() :: resource_not_found_exception()

  @type import_hypervisor_configuration_errors() ::
          access_denied_exception() | conflict_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type put_bandwidth_rate_limit_schedule_errors() :: resource_not_found_exception()

  @type put_hypervisor_property_mappings_errors() ::
          access_denied_exception() | resource_not_found_exception() | conflict_exception()

  @type put_maintenance_start_time_errors() ::
          resource_not_found_exception() | conflict_exception()

  @type start_virtual_machines_metadata_sync_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type tag_resource_errors() :: resource_not_found_exception()

  @type test_hypervisor_configuration_errors() ::
          resource_not_found_exception() | conflict_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_gateway_information_errors() ::
          resource_not_found_exception() | conflict_exception()

  @type update_gateway_software_now_errors() :: resource_not_found_exception()

  @type update_hypervisor_errors() ::
          access_denied_exception() | resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "backup-gateway",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Backup Gateway",
      signature_version: "v4",
      signing_name: "backup-gateway",
      target_prefix: "BackupOnPremises_v20210101"
    }
  end

  @doc """
  Associates a backup gateway with your server.

  After you complete the association process,
  you can back up and restore your VMs through the gateway.
  """
  @spec associate_gateway_to_server(map(), associate_gateway_to_server_input(), list()) ::
          {:ok, associate_gateway_to_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_gateway_to_server_errors()}
  def associate_gateway_to_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateGatewayToServer", input, options)
  end

  @doc """
  Creates a backup gateway.

  After you create a gateway, you can associate it with a server
  using the `AssociateGatewayToServer` operation.
  """
  @spec create_gateway(map(), create_gateway_input(), list()) ::
          {:ok, create_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGateway", input, options)
  end

  @doc """
  Deletes a backup gateway.
  """
  @spec delete_gateway(map(), delete_gateway_input(), list()) ::
          {:ok, delete_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGateway", input, options)
  end

  @doc """
  Deletes a hypervisor.
  """
  @spec delete_hypervisor(map(), delete_hypervisor_input(), list()) ::
          {:ok, delete_hypervisor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hypervisor_errors()}
  def delete_hypervisor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHypervisor", input, options)
  end

  @doc """
  Disassociates a backup gateway from the specified server.

  After the disassociation process
  finishes, the gateway can no longer access the virtual machines on the server.
  """
  @spec disassociate_gateway_from_server(map(), disassociate_gateway_from_server_input(), list()) ::
          {:ok, disassociate_gateway_from_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_gateway_from_server_errors()}
  def disassociate_gateway_from_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateGatewayFromServer", input, options)
  end

  @doc """
  Retrieves the bandwidth rate limit schedule for a specified gateway.

  By default, gateways do not have bandwidth rate limit schedules, which means
  no bandwidth rate limiting is in effect. Use this to get a gateway's
  bandwidth rate limit schedule.
  """
  @spec get_bandwidth_rate_limit_schedule(
          map(),
          get_bandwidth_rate_limit_schedule_input(),
          list()
        ) ::
          {:ok, get_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bandwidth_rate_limit_schedule_errors()}
  def get_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  By providing the ARN (Amazon Resource Name), this
  API returns the gateway.
  """
  @spec get_gateway(map(), get_gateway_input(), list()) ::
          {:ok, get_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gateway_errors()}
  def get_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGateway", input, options)
  end

  @doc """
  This action requests information about the specified hypervisor to which the
  gateway will connect.

  A hypervisor is hardware, software, or firmware that creates and manages virtual
  machines,
  and allocates resources to them.
  """
  @spec get_hypervisor(map(), get_hypervisor_input(), list()) ::
          {:ok, get_hypervisor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hypervisor_errors()}
  def get_hypervisor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHypervisor", input, options)
  end

  @doc """
  This action retrieves the property mappings for the specified hypervisor.

  A hypervisor property mapping displays the relationship of entity properties
  available from the on-premises hypervisor to the properties available in Amazon
  Web Services.
  """
  @spec get_hypervisor_property_mappings(map(), get_hypervisor_property_mappings_input(), list()) ::
          {:ok, get_hypervisor_property_mappings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hypervisor_property_mappings_errors()}
  def get_hypervisor_property_mappings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHypervisorPropertyMappings", input, options)
  end

  @doc """
  By providing the ARN (Amazon Resource Name), this API returns the virtual
  machine.
  """
  @spec get_virtual_machine(map(), get_virtual_machine_input(), list()) ::
          {:ok, get_virtual_machine_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_virtual_machine_errors()}
  def get_virtual_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVirtualMachine", input, options)
  end

  @doc """
  Connect to a hypervisor by importing its configuration.
  """
  @spec import_hypervisor_configuration(map(), import_hypervisor_configuration_input(), list()) ::
          {:ok, import_hypervisor_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_hypervisor_configuration_errors()}
  def import_hypervisor_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportHypervisorConfiguration", input, options)
  end

  @doc """
  Lists backup gateways owned by an Amazon Web Services account in an Amazon Web
  Services Region.

  The returned list is ordered by gateway Amazon Resource Name (ARN).
  """
  @spec list_gateways(map(), list_gateways_input(), list()) ::
          {:ok, list_gateways_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGateways", input, options)
  end

  @doc """
  Lists your hypervisors.
  """
  @spec list_hypervisors(map(), list_hypervisors_input(), list()) ::
          {:ok, list_hypervisors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_hypervisors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHypervisors", input, options)
  end

  @doc """
  Lists the tags applied to the resource identified by its Amazon Resource Name
  (ARN).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists your virtual machines.
  """
  @spec list_virtual_machines(map(), list_virtual_machines_input(), list()) ::
          {:ok, list_virtual_machines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_virtual_machines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVirtualMachines", input, options)
  end

  @doc """
  This action sets the bandwidth rate limit schedule for a specified gateway.

  By default, gateways do not have a bandwidth rate limit schedule, which means
  no bandwidth rate limiting is in effect. Use this to initiate a
  gateway's bandwidth rate limit schedule.
  """
  @spec put_bandwidth_rate_limit_schedule(
          map(),
          put_bandwidth_rate_limit_schedule_input(),
          list()
        ) ::
          {:ok, put_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_bandwidth_rate_limit_schedule_errors()}
  def put_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  This action sets the property mappings for the specified hypervisor.

  A hypervisor property mapping displays the relationship of entity properties
  available from the on-premises hypervisor to the properties available in Amazon
  Web Services.
  """
  @spec put_hypervisor_property_mappings(map(), put_hypervisor_property_mappings_input(), list()) ::
          {:ok, put_hypervisor_property_mappings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_hypervisor_property_mappings_errors()}
  def put_hypervisor_property_mappings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutHypervisorPropertyMappings", input, options)
  end

  @doc """
  Set the maintenance start time for a gateway.
  """
  @spec put_maintenance_start_time(map(), put_maintenance_start_time_input(), list()) ::
          {:ok, put_maintenance_start_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_maintenance_start_time_errors()}
  def put_maintenance_start_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutMaintenanceStartTime", input, options)
  end

  @doc """
  This action sends a request to sync metadata across the specified virtual
  machines.
  """
  @spec start_virtual_machines_metadata_sync(
          map(),
          start_virtual_machines_metadata_sync_input(),
          list()
        ) ::
          {:ok, start_virtual_machines_metadata_sync_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_virtual_machines_metadata_sync_errors()}
  def start_virtual_machines_metadata_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartVirtualMachinesMetadataSync", input, options)
  end

  @doc """
  Tag the resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests your hypervisor configuration to validate that backup gateway can connect
  with the
  hypervisor and its resources.
  """
  @spec test_hypervisor_configuration(map(), test_hypervisor_configuration_input(), list()) ::
          {:ok, test_hypervisor_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_hypervisor_configuration_errors()}
  def test_hypervisor_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestHypervisorConfiguration", input, options)
  end

  @doc """
  Removes tags from the resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a gateway's name.

  Specify which gateway to update using the Amazon Resource Name
  (ARN) of the gateway in your request.
  """
  @spec update_gateway_information(map(), update_gateway_information_input(), list()) ::
          {:ok, update_gateway_information_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_information_errors()}
  def update_gateway_information(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGatewayInformation", input, options)
  end

  @doc """
  Updates the gateway virtual machine (VM) software.

  The request immediately triggers the software update.

  When you make this request, you get a `200 OK`
  success response immediately. However, it might take some
  time for the update to complete.
  """
  @spec update_gateway_software_now(map(), update_gateway_software_now_input(), list()) ::
          {:ok, update_gateway_software_now_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_software_now_errors()}
  def update_gateway_software_now(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGatewaySoftwareNow", input, options)
  end

  @doc """
  Updates a hypervisor metadata, including its host, username, and password.

  Specify which
  hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in
  your
  request.
  """
  @spec update_hypervisor(map(), update_hypervisor_input(), list()) ::
          {:ok, update_hypervisor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hypervisor_errors()}
  def update_hypervisor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHypervisor", input, options)
  end
end
