# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Panorama do
  @moduledoc """
  AWS Panorama

  ## Overview

  This is the *AWS Panorama API Reference*.

  For an introduction to the service, see [What is AWS Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html)
  in the
  *AWS Panorama Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_node_from_template_job_request() :: %{
        optional("JobTags") => list(job_resource_tags()),
        optional("NodeDescription") => String.t() | Atom.t(),
        required("NodeName") => String.t() | Atom.t(),
        required("OutputPackageName") => String.t() | Atom.t(),
        required("OutputPackageVersion") => String.t() | Atom.t(),
        required("TemplateParameters") => map(),
        required("TemplateType") => String.t() | Atom.t()
      }

  """
  @type create_node_from_template_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      device_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "DeviceId" => String.t() | Atom.t(),
        "DeviceName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "JobType" => String.t() | Atom.t()
      }

  """
  @type device_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_devices_request() :: %{
        optional("DeviceAggregatedStatusFilter") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NameFilter") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("SortBy") => String.t() | Atom.t(),
        optional("SortOrder") => String.t() | Atom.t()
      }

  """
  @type list_devices_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      provision_device_response() :: %{
        optional("Certificates") => binary(),
        optional("DeviceId") => String.t() | Atom.t(),
        optional("IotThingName") => String.t() | Atom.t(),
        required("Arn") => String.t() | Atom.t(),
        required("Status") => String.t() | Atom.t()
      }

  """
  @type provision_device_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_package_import_job_request() :: %{
        optional("JobTags") => list(job_resource_tags()),
        required("ClientToken") => String.t() | Atom.t(),
        required("InputConfig") => package_import_job_input_config(),
        required("JobType") => String.t() | Atom.t(),
        required("OutputConfig") => package_import_job_output_config()
      }

  """
  @type create_package_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      provision_device_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("NetworkingConfiguration") => network_payload(),
        optional("Tags") => map(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type provision_device_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_instance() :: %{
        "CurrentStatus" => String.t() | Atom.t(),
        "NodeId" => String.t() | Atom.t(),
        "NodeInstanceId" => String.t() | Atom.t(),
        "NodeName" => String.t() | Atom.t(),
        "PackageName" => String.t() | Atom.t(),
        "PackagePatchVersion" => String.t() | Atom.t(),
        "PackageVersion" => String.t() | Atom.t()
      }

  """
  @type node_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_application_instance_details_response() :: %{
        optional("ApplicationInstanceId") => String.t() | Atom.t(),
        optional("ApplicationInstanceIdToReplace") => String.t() | Atom.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("DefaultRuntimeContextDevice") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("ManifestOverridesPayload") => list(),
        optional("ManifestPayload") => list(),
        optional("Name") => String.t() | Atom.t()
      }

  """
  @type describe_application_instance_details_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_node_from_template_jobs_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("NodeFromTemplateJobs") => list(node_from_template_job())
      }

  """
  @type list_node_from_template_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_package_request() :: %{
        optional("Tags") => map(),
        required("PackageName") => String.t() | Atom.t()
      }

  """
  @type create_package_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_application_instance_request() :: %{
        optional("ApplicationInstanceIdToReplace") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("ManifestOverridesPayload") => list(),
        optional("Name") => String.t() | Atom.t(),
        optional("RuntimeRoleArn") => String.t() | Atom.t(),
        optional("Tags") => map(),
        required("DefaultRuntimeContextDevice") => String.t() | Atom.t(),
        required("ManifestPayload") => list()
      }

  """
  @type create_application_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_status() :: %{
        "Ethernet0Status" => ethernet_status(),
        "Ethernet1Status" => ethernet_status(),
        "LastUpdatedTime" => non_neg_integer(),
        "NtpStatus" => ntp_status()
      }

  """
  @type network_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reported_runtime_context_state() :: %{
        "DesiredState" => String.t() | Atom.t(),
        "DeviceReportedStatus" => String.t() | Atom.t(),
        "DeviceReportedTime" => non_neg_integer(),
        "RuntimeContextName" => String.t() | Atom.t()
      }

  """
  @type reported_runtime_context_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_package_import_jobs_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("PackageImportJobs") => list(package_import_job())
      }

  """
  @type list_package_import_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_version_input_config() :: %{
        "S3Location" => s3_location()
      }

  """
  @type package_version_input_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_device_job_response() :: %{
        optional("CreatedTime") => non_neg_integer(),
        optional("DeviceArn") => String.t() | Atom.t(),
        optional("DeviceId") => String.t() | Atom.t(),
        optional("DeviceName") => String.t() | Atom.t(),
        optional("DeviceType") => String.t() | Atom.t(),
        optional("ImageVersion") => String.t() | Atom.t(),
        optional("JobId") => String.t() | Atom.t(),
        optional("JobType") => String.t() | Atom.t(),
        optional("Status") => String.t() | Atom.t()
      }

  """
  @type describe_device_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_application_instance_response() :: %{
        optional("ApplicationInstanceId") => String.t() | Atom.t(),
        optional("ApplicationInstanceIdToReplace") => String.t() | Atom.t(),
        optional("Arn") => String.t() | Atom.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("DefaultRuntimeContextDevice") => String.t() | Atom.t(),
        optional("DefaultRuntimeContextDeviceName") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("HealthStatus") => String.t() | Atom.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t() | Atom.t(),
        optional("RuntimeContextStates") => list(reported_runtime_context_state()),
        optional("RuntimeRoleArn") => String.t() | Atom.t(),
        optional("Status") => String.t() | Atom.t(),
        optional("StatusDescription") => String.t() | Atom.t(),
        optional("Tags") => map()
      }

  """
  @type describe_application_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_job_for_devices_response() :: %{
        required("Jobs") => list(job())
      }

  """
  @type create_job_for_devices_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_input_port() :: %{
        "DefaultValue" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "MaxConnections" => integer(),
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type node_input_port() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_import_job_request() :: %{}

  """
  @type describe_package_import_job_request() :: %{}

  @typedoc """

  ## Example:

      list_packages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_packages_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_device_metadata_response() :: %{
        optional("DeviceId") => String.t() | Atom.t()
      }

  """
  @type update_device_metadata_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ethernet_status() :: %{
        "ConnectionStatus" => String.t() | Atom.t(),
        "HwAddress" => String.t() | Atom.t(),
        "IpAddress" => String.t() | Atom.t()
      }

  """
  @type ethernet_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_response() :: %{
        optional("ReadAccessPrincipalArns") => list(String.t() | Atom.t()),
        optional("WriteAccessPrincipalArns") => list(String.t() | Atom.t()),
        required("Arn") => String.t() | Atom.t(),
        required("CreatedTime") => non_neg_integer(),
        required("PackageId") => String.t() | Atom.t(),
        required("PackageName") => String.t() | Atom.t(),
        required("StorageLocation") => storage_location(),
        required("Tags") => map()
      }

  """
  @type describe_package_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_object() :: %{
        "Name" => String.t() | Atom.t(),
        "PackageVersion" => String.t() | Atom.t(),
        "PatchVersion" => String.t() | Atom.t()
      }

  """
  @type package_object() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_device_request() :: %{}

  """
  @type delete_device_request() :: %{}

  @typedoc """

  ## Example:

      list_application_instance_dependencies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_application_instance_dependencies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      signal_application_instance_node_instances_response() :: %{
        required("ApplicationInstanceId") => String.t() | Atom.t()
      }

  """
  @type signal_application_instance_node_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_device_metadata_request() :: %{
        optional("Description") => String.t() | Atom.t()
      }

  """
  @type update_device_metadata_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_application_instances_response() :: %{
        optional("ApplicationInstances") => list(application_instance()),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_application_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_output_port() :: %{
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type node_output_port() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      panorama_node() :: %{
        "Category" => String.t() | Atom.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "NodeId" => String.t() | Atom.t(),
        "OwnerAccount" => String.t() | Atom.t(),
        "PackageArn" => String.t() | Atom.t(),
        "PackageId" => String.t() | Atom.t(),
        "PackageName" => String.t() | Atom.t(),
        "PackageVersion" => String.t() | Atom.t(),
        "PatchVersion" => String.t() | Atom.t()
      }

  """
  @type panorama_node() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_list_item() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedTime" => non_neg_integer(),
        "PackageId" => String.t() | Atom.t(),
        "PackageName" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type package_list_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_from_template_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "JobId" => String.t() | Atom.t(),
        "NodeName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t(),
        "TemplateType" => String.t() | Atom.t()
      }

  """
  @type node_from_template_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_node_from_template_job_request() :: %{}

  """
  @type describe_node_from_template_job_request() :: %{}

  @typedoc """

  ## Example:

      describe_node_response() :: %{
        optional("AssetName") => String.t() | Atom.t(),
        optional("PackageArn") => String.t() | Atom.t(),
        required("Category") => String.t() | Atom.t(),
        required("CreatedTime") => non_neg_integer(),
        required("Description") => String.t() | Atom.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("Name") => String.t() | Atom.t(),
        required("NodeId") => String.t() | Atom.t(),
        required("NodeInterface") => node_interface(),
        required("OwnerAccount") => String.t() | Atom.t(),
        required("PackageId") => String.t() | Atom.t(),
        required("PackageName") => String.t() | Atom.t(),
        required("PackageVersion") => String.t() | Atom.t(),
        required("PatchVersion") => String.t() | Atom.t()
      }

  """
  @type describe_node_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_import_job_output_config() :: %{
        "PackageVersionOutputConfig" => package_version_output_config()
      }

  """
  @type package_import_job_output_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ntp_status() :: %{
        "ConnectionStatus" => String.t() | Atom.t(),
        "IpAddress" => String.t() | Atom.t(),
        "NtpServerName" => String.t() | Atom.t()
      }

  """
  @type ntp_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ethernet_payload() :: %{
        "ConnectionType" => String.t() | Atom.t(),
        "StaticIpConnectionInfo" => static_ip_connection_info()
      }

  """
  @type ethernet_payload() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ErrorArguments" => list(conflict_exception_error_argument()),
        "ErrorId" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_package_response() :: %{}

  """
  @type delete_package_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_error_argument() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type validation_exception_error_argument() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_package_import_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_package_import_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deregister_package_version_request() :: %{
        optional("OwnerAccount") => String.t() | Atom.t(),
        optional("UpdatedLatestPatchVersion") => String.t() | Atom.t()
      }

  """
  @type deregister_package_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_signal() :: %{
        "NodeInstanceId" => String.t() | Atom.t(),
        "Signal" => String.t() | Atom.t()
      }

  """
  @type node_signal() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_import_job_input_config() :: %{
        "PackageVersionInputConfig" => package_version_input_config()
      }

  """
  @type package_import_job_input_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      application_instance() :: %{
        "ApplicationInstanceId" => String.t() | Atom.t(),
        "Arn" => String.t() | Atom.t(),
        "CreatedTime" => non_neg_integer(),
        "DefaultRuntimeContextDevice" => String.t() | Atom.t(),
        "DefaultRuntimeContextDeviceName" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "HealthStatus" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RuntimeContextStates" => list(reported_runtime_context_state()),
        "Status" => String.t() | Atom.t(),
        "StatusDescription" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type application_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_device_request() :: %{}

  """
  @type describe_device_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "QuotaCode" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t(),
        "ServiceCode" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_node_from_template_job_response() :: %{
        required("JobId") => String.t() | Atom.t()
      }

  """
  @type create_node_from_template_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_payload() :: %{
        "Ethernet0" => ethernet_payload(),
        "Ethernet1" => ethernet_payload(),
        "Ntp" => ntp_payload()
      }

  """
  @type network_payload() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ntp_payload() :: %{
        "NtpServers" => list(String.t() | Atom.t())
      }

  """
  @type ntp_payload() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      node_interface() :: %{
        "Inputs" => list(node_input_port()),
        "Outputs" => list(node_output_port())
      }

  """
  @type node_interface() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      static_ip_connection_info() :: %{
        "DefaultGateway" => String.t() | Atom.t(),
        "Dns" => list(String.t() | Atom.t()),
        "IpAddress" => String.t() | Atom.t(),
        "Mask" => String.t() | Atom.t()
      }

  """
  @type static_ip_connection_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_nodes_request() :: %{
        optional("Category") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("OwnerAccount") => String.t() | Atom.t(),
        optional("PackageName") => String.t() | Atom.t(),
        optional("PackageVersion") => String.t() | Atom.t(),
        optional("PatchVersion") => String.t() | Atom.t()
      }

  """
  @type list_nodes_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_application_instance_request() :: %{}

  """
  @type describe_application_instance_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_version_response() :: %{
        optional("OwnerAccount") => String.t() | Atom.t(),
        optional("PackageArn") => String.t() | Atom.t(),
        optional("RegisteredTime") => non_neg_integer(),
        optional("StatusDescription") => String.t() | Atom.t(),
        required("IsLatestPatch") => boolean(),
        required("PackageId") => String.t() | Atom.t(),
        required("PackageName") => String.t() | Atom.t(),
        required("PackageVersion") => String.t() | Atom.t(),
        required("PatchVersion") => String.t() | Atom.t(),
        required("Status") => String.t() | Atom.t()
      }

  """
  @type describe_package_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_devices_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("Devices") => list(device())
      }

  """
  @type list_devices_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      register_package_version_response() :: %{}

  """
  @type register_package_version_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_device_job_request() :: %{}

  """
  @type describe_device_job_request() :: %{}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "BucketName" => String.t() | Atom.t(),
        "ObjectKey" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t()
      }

  """
  @type s3_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_node_from_template_job_response() :: %{
        optional("JobTags") => list(job_resource_tags()),
        optional("NodeDescription") => String.t() | Atom.t(),
        required("CreatedTime") => non_neg_integer(),
        required("JobId") => String.t() | Atom.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("NodeName") => String.t() | Atom.t(),
        required("OutputPackageName") => String.t() | Atom.t(),
        required("OutputPackageVersion") => String.t() | Atom.t(),
        required("Status") => String.t() | Atom.t(),
        required("StatusMessage") => String.t() | Atom.t(),
        required("TemplateParameters") => map(),
        required("TemplateType") => String.t() | Atom.t()
      }

  """
  @type describe_node_from_template_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_device_response() :: %{
        optional("DeviceId") => String.t() | Atom.t()
      }

  """
  @type delete_device_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_devices_jobs_request() :: %{
        optional("DeviceId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_devices_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_application_instance_details_request() :: %{}

  """
  @type describe_application_instance_details_request() :: %{}

  @typedoc """

  ## Example:

      list_node_from_template_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_node_from_template_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_application_instance_request() :: %{}

  """
  @type remove_application_instance_request() :: %{}

  @typedoc """

  ## Example:

      create_application_instance_response() :: %{
        required("ApplicationInstanceId") => String.t() | Atom.t()
      }

  """
  @type create_application_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_package_import_job_response() :: %{
        required("JobId") => String.t() | Atom.t()
      }

  """
  @type create_package_import_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_devices_jobs_response() :: %{
        optional("DeviceJobs") => list(device_job()),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_devices_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_import_job_output() :: %{
        "OutputS3Location" => out_put_s3_location(),
        "PackageId" => String.t() | Atom.t(),
        "PackageVersion" => String.t() | Atom.t(),
        "PatchVersion" => String.t() | Atom.t()
      }

  """
  @type package_import_job_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      out_put_s3_location() :: %{
        "BucketName" => String.t() | Atom.t(),
        "ObjectKey" => String.t() | Atom.t()
      }

  """
  @type out_put_s3_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_package_request() :: %{
        optional("ForceDelete") => boolean()
      }

  """
  @type delete_package_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_import_job_response() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("JobTags") => list(job_resource_tags()),
        required("CreatedTime") => non_neg_integer(),
        required("InputConfig") => package_import_job_input_config(),
        required("JobId") => String.t() | Atom.t(),
        required("JobType") => String.t() | Atom.t(),
        required("LastUpdatedTime") => non_neg_integer(),
        required("Output") => package_import_job_output(),
        required("OutputConfig") => package_import_job_output_config(),
        required("Status") => String.t() | Atom.t(),
        required("StatusMessage") => String.t() | Atom.t()
      }

  """
  @type describe_package_import_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      storage_location() :: %{
        "BinaryPrefixLocation" => String.t() | Atom.t(),
        "Bucket" => String.t() | Atom.t(),
        "GeneratedPrefixLocation" => String.t() | Atom.t(),
        "ManifestPrefixLocation" => String.t() | Atom.t(),
        "RepoPrefixLocation" => String.t() | Atom.t()
      }

  """
  @type storage_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      signal_application_instance_node_instances_request() :: %{
        required("NodeSignals") => list(node_signal())
      }

  """
  @type signal_application_instance_node_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      alternate_software_metadata() :: %{
        "Version" => String.t() | Atom.t()
      }

  """
  @type alternate_software_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      job_resource_tags() :: %{
        "ResourceType" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type job_resource_tags() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "ErrorArguments" => list(validation_exception_error_argument()),
        "ErrorId" => String.t() | Atom.t(),
        "Fields" => list(validation_exception_field()),
        "Message" => String.t() | Atom.t(),
        "Reason" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      job() :: %{
        "DeviceId" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t()
      }

  """
  @type job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception_error_argument() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type conflict_exception_error_argument() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_application_instance_dependencies_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PackageObjects") => list(package_object())
      }

  """
  @type list_application_instance_dependencies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_request() :: %{}

  """
  @type describe_package_request() :: %{}

  @typedoc """

  ## Example:

      list_application_instance_node_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_application_instance_node_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_package_response() :: %{
        optional("Arn") => String.t() | Atom.t(),
        optional("PackageId") => String.t() | Atom.t(),
        required("StorageLocation") => storage_location()
      }

  """
  @type create_package_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deregister_package_version_response() :: %{}

  """
  @type deregister_package_version_response() :: %{}

  @typedoc """

  ## Example:

      ota_job_config() :: %{
        "AllowMajorVersionUpdate" => boolean(),
        "ImageVersion" => String.t() | Atom.t()
      }

  """
  @type ota_job_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_node_request() :: %{
        optional("OwnerAccount") => String.t() | Atom.t()
      }

  """
  @type describe_node_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      device() :: %{
        "Brand" => String.t() | Atom.t(),
        "CreatedTime" => non_neg_integer(),
        "CurrentSoftware" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "DeviceAggregatedStatus" => String.t() | Atom.t(),
        "DeviceId" => String.t() | Atom.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "LatestDeviceJob" => latest_device_job(),
        "LeaseExpirationTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "ProvisioningStatus" => String.t() | Atom.t(),
        "Tags" => map(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type device() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      latest_device_job() :: %{
        "ImageVersion" => String.t() | Atom.t(),
        "JobType" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type latest_device_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_package_version_request() :: %{
        optional("OwnerAccount") => String.t() | Atom.t(),
        optional("PatchVersion") => String.t() | Atom.t()
      }

  """
  @type describe_package_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_job_for_devices_request() :: %{
        optional("DeviceJobConfig") => device_job_config(),
        required("DeviceIds") => list(String.t() | Atom.t()),
        required("JobType") => String.t() | Atom.t()
      }

  """
  @type create_job_for_devices_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      register_package_version_request() :: %{
        optional("MarkLatest") => boolean(),
        optional("OwnerAccount") => String.t() | Atom.t()
      }

  """
  @type register_package_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_application_instance_node_instances_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("NodeInstances") => list(node_instance())
      }

  """
  @type list_application_instance_node_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_packages_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("Packages") => list(package_list_item())
      }

  """
  @type list_packages_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_application_instance_response() :: %{}

  """
  @type remove_application_instance_response() :: %{}

  @typedoc """

  ## Example:

      list_nodes_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("Nodes") => list(node())
      }

  """
  @type list_nodes_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      device_job_config() :: %{
        "OTAJobConfig" => ota_job_config()
      }

  """
  @type device_job_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_version_output_config() :: %{
        "MarkLatest" => boolean(),
        "PackageName" => String.t() | Atom.t(),
        "PackageVersion" => String.t() | Atom.t()
      }

  """
  @type package_version_output_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      package_import_job() :: %{
        "CreatedTime" => non_neg_integer(),
        "JobId" => String.t() | Atom.t(),
        "JobType" => String.t() | Atom.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Status" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type package_import_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_application_instances_request() :: %{
        optional("DeviceId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StatusFilter") => String.t() | Atom.t()
      }

  """
  @type list_application_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_device_response() :: %{
        optional("AlternateSoftwares") => list(alternate_software_metadata()),
        optional("Arn") => String.t() | Atom.t(),
        optional("Brand") => String.t() | Atom.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("CurrentNetworkingStatus") => network_status(),
        optional("CurrentSoftware") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("DeviceAggregatedStatus") => String.t() | Atom.t(),
        optional("DeviceConnectionStatus") => String.t() | Atom.t(),
        optional("DeviceId") => String.t() | Atom.t(),
        optional("LatestAlternateSoftware") => String.t() | Atom.t(),
        optional("LatestDeviceJob") => latest_device_job(),
        optional("LatestSoftware") => String.t() | Atom.t(),
        optional("LeaseExpirationTime") => non_neg_integer(),
        optional("Name") => String.t() | Atom.t(),
        optional("NetworkingConfiguration") => network_payload(),
        optional("ProvisioningStatus") => String.t() | Atom.t(),
        optional("SerialNumber") => String.t() | Atom.t(),
        optional("Tags") => map(),
        optional("Type") => String.t() | Atom.t()
      }

  """
  @type describe_device_response() :: %{String.t() | Atom.t() => any()}

  @type create_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_job_for_devices_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_node_from_template_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_package_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_application_instance_details_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_device_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_node_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_node_from_template_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_package_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_package_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_application_instance_dependencies_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_application_instance_node_instances_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_application_instances_errors() ::
          access_denied_exception() | internal_server_exception()

  @type list_devices_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_devices_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_node_from_template_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_nodes_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type list_package_import_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type provision_device_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type register_package_version_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type remove_application_instance_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type signal_application_instance_node_instances_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_device_metadata_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-07-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "panorama",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Panorama",
      signature_version: "v4",
      signing_name: "panorama",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application instance and deploys it to a device.
  """
  @spec create_application_instance(map(), create_application_instance_request(), list()) ::
          {:ok, create_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_instance_errors()}
  def create_application_instance(%Client{} = client, input, options \\ []) do
    url_path = "/application-instances"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a job to run on a device.

  A job can update a device's software or reboot it.
  """
  @spec create_job_for_devices(map(), create_job_for_devices_request(), list()) ::
          {:ok, create_job_for_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_for_devices_errors()}
  def create_job_for_devices(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a camera stream node.
  """
  @spec create_node_from_template_job(map(), create_node_from_template_job_request(), list()) ::
          {:ok, create_node_from_template_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_node_from_template_job_errors()}
  def create_node_from_template_job(%Client{} = client, input, options \\ []) do
    url_path = "/packages/template-job"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a package and storage location in an Amazon S3 access point.
  """
  @spec create_package(map(), create_package_request(), list()) ::
          {:ok, create_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_package_errors()}
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/packages"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Imports a node package.
  """
  @spec create_package_import_job(map(), create_package_import_job_request(), list()) ::
          {:ok, create_package_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_package_import_job_errors()}
  def create_package_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/packages/import-jobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a device.
  """
  @spec delete_device(map(), String.t() | Atom.t(), delete_device_request(), list()) ::
          {:ok, delete_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_device_errors()}
  def delete_device(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a package.

  To delete a package, you need permission to call `s3:DeleteObject` in addition
  to permissions for
  the AWS Panorama API.
  """
  @spec delete_package(map(), String.t() | Atom.t(), delete_package_request(), list()) ::
          {:ok, delete_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ForceDelete", "ForceDelete"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deregisters a package version.
  """
  @spec deregister_package_version(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          deregister_package_version_request(),
          list()
        ) ::
          {:ok, deregister_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_package_version_errors()}
  def deregister_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"OwnerAccount", "OwnerAccount"},
        {"UpdatedLatestPatchVersion", "UpdatedLatestPatchVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about an application instance on a device.
  """
  @spec describe_application_instance(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_instance_errors()}
  def describe_application_instance(%Client{} = client, application_instance_id, options \\ []) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an application instance's configuration manifest.
  """
  @spec describe_application_instance_details(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_application_instance_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_instance_details_errors()}
  def describe_application_instance_details(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/details"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a device.
  """
  @spec describe_device(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a device job.
  """
  @spec describe_device_job(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_device_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_device_job_errors()}
  def describe_device_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a node.
  """
  @spec describe_node(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, describe_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_node_errors()}
  def describe_node(%Client{} = client, node_id, owner_account \\ nil, options \\ []) do
    url_path = "/nodes/#{AWS.Util.encode_uri(node_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner_account) do
        [{"OwnerAccount", owner_account} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a job to create a camera stream node.
  """
  @spec describe_node_from_template_job(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_node_from_template_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_node_from_template_job_errors()}
  def describe_node_from_template_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/template-job/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a package.
  """
  @spec describe_package(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_errors()}
  def describe_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/packages/metadata/#{AWS.Util.encode_uri(package_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a package import job.
  """
  @spec describe_package_import_job(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_package_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_import_job_errors()}
  def describe_package_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/import-jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a package version.
  """
  @spec describe_package_version(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, describe_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_version_errors()}
  def describe_package_version(
        %Client{} = client,
        package_id,
        package_version,
        owner_account \\ nil,
        patch_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/packages/metadata/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(patch_version) do
        [{"PatchVersion", patch_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owner_account) do
        [{"OwnerAccount", owner_account} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of application instance dependencies.
  """
  @spec list_application_instance_dependencies(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_application_instance_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_instance_dependencies_errors()}
  def list_application_instance_dependencies(
        %Client{} = client,
        application_instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/package-dependencies"

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
  Returns a list of application node instances.
  """
  @spec list_application_instance_node_instances(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_application_instance_node_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_instance_node_instances_errors()}
  def list_application_instance_node_instances(
        %Client{} = client,
        application_instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/node-instances"

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
  Returns a list of application instances.
  """
  @spec list_application_instances(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_application_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_instances_errors()}
  def list_application_instances(
        %Client{} = client,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path = "/application-instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"statusFilter", status_filter} | query_params]
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
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of devices.
  """
  @spec list_devices(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_devices_errors()}
  def list_devices(
        %Client{} = client,
        device_aggregated_status_filter \\ nil,
        max_results \\ nil,
        name_filter \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"SortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"SortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_filter) do
        [{"NameFilter", name_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_aggregated_status_filter) do
        [{"DeviceAggregatedStatusFilter", device_aggregated_status_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of jobs.
  """
  @spec list_devices_jobs(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_devices_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_devices_jobs_errors()}
  def list_devices_jobs(
        %Client{} = client,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_id) do
        [{"DeviceId", device_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of camera stream node jobs.
  """
  @spec list_node_from_template_jobs(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_node_from_template_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_node_from_template_jobs_errors()}
  def list_node_from_template_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packages/template-job"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of nodes.
  """
  @spec list_nodes(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_nodes_errors()}
  def list_nodes(
        %Client{} = client,
        category \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owner_account \\ nil,
        package_name \\ nil,
        package_version \\ nil,
        patch_version \\ nil,
        options \\ []
      ) do
    url_path = "/nodes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(patch_version) do
        [{"patchVersion", patch_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version) do
        [{"packageVersion", package_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_name) do
        [{"packageName", package_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owner_account) do
        [{"ownerAccount", owner_account} | query_params]
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
      if !is_nil(category) do
        [{"category", category} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of package import jobs.
  """
  @spec list_package_import_jobs(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_package_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_import_jobs_errors()}
  def list_package_import_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packages/import-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of packages.
  """
  @spec list_packages(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_packages_errors()}
  def list_packages(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/packages"
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
  Returns a list of tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a device and returns a configuration archive.

  The configuration archive is a ZIP file that contains a
  provisioning certificate that is valid for 5 minutes. Name the configuration
  archive
  `certificates-omni_*device-name*.zip` and transfer it to the device within 5
  minutes. Use the included USB storage device and connect it to the USB 3.0 port
  next to the HDMI output.
  """
  @spec provision_device(map(), provision_device_request(), list()) ::
          {:ok, provision_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, provision_device_errors()}
  def provision_device(%Client{} = client, input, options \\ []) do
    url_path = "/devices"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Registers a package version.
  """
  @spec register_package_version(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          register_package_version_request(),
          list()
        ) ::
          {:ok, register_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_package_version_errors()}
  def register_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an application instance.
  """
  @spec remove_application_instance(
          map(),
          String.t() | Atom.t(),
          remove_application_instance_request(),
          list()
        ) ::
          {:ok, remove_application_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_application_instance_errors()}
  def remove_application_instance(
        %Client{} = client,
        application_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Signal camera nodes to stop or resume.
  """
  @spec signal_application_instance_node_instances(
          map(),
          String.t() | Atom.t(),
          signal_application_instance_node_instances_request(),
          list()
        ) ::
          {:ok, signal_application_instance_node_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, signal_application_instance_node_instances_errors()}
  def signal_application_instance_node_instances(
        %Client{} = client,
        application_instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/node-signals"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tags a resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a device's metadata.
  """
  @spec update_device_metadata(
          map(),
          String.t() | Atom.t(),
          update_device_metadata_request(),
          list()
        ) ::
          {:ok, update_device_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_device_metadata_errors()}
  def update_device_metadata(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
