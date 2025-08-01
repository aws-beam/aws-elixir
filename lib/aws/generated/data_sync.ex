# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataSync do
  @moduledoc """
  DataSync

  DataSync is an online data movement service that simplifies data
  migration and helps you quickly, easily, and securely transfer your file or
  object data to,
  from, and between Amazon Web Services storage services.

  This API interface reference includes documentation for using DataSync
  programmatically. For complete information, see the *
  [DataSync User Guide](https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)

  *.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_location_azure_blob_request() :: %{
        optional("AccessTier") => list(any()),
        optional("AgentArns") => list(String.t() | atom()),
        optional("AuthenticationType") => list(any()),
        optional("BlobType") => list(any()),
        optional("CmkSecretConfig") => cmk_secret_config(),
        optional("CustomSecretConfig") => custom_secret_config(),
        optional("SasConfiguration") => azure_blob_sas_configuration(),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_azure_blob_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_task_execution_response() :: %{
        "TaskExecutionArn" => String.t() | atom()
      }
      
  """
  @type start_task_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      private_link_config() :: %{
        "PrivateLinkEndpoint" => String.t() | atom(),
        "SecurityGroupArns" => list(String.t() | atom()),
        "SubnetArns" => list(String.t() | atom()),
        "VpcEndpointId" => String.t() | atom()
      }
      
  """
  @type private_link_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_object_storage_request() :: %{
        optional("AccessKey") => String.t() | atom(),
        optional("AgentArns") => list(String.t() | atom()),
        optional("CmkSecretConfig") => cmk_secret_config(),
        optional("CustomSecretConfig") => custom_secret_config(),
        optional("SecretKey") => String.t() | atom(),
        optional("ServerCertificate") => binary(),
        optional("ServerPort") => integer(),
        optional("ServerProtocol") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("BucketName") => String.t() | atom(),
        required("ServerHostname") => String.t() | atom()
      }
      
  """
  @type create_location_object_storage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_execution_files_failed_detail() :: %{
        "Delete" => float(),
        "Prepare" => float(),
        "Transfer" => float(),
        "Verify" => float()
      }
      
  """
  @type task_execution_files_failed_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fsx_protocol_nfs() :: %{
        "MountOptions" => nfs_mount_options()
      }
      
  """
  @type fsx_protocol_nfs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_schedule_details() :: %{
        "DisabledBy" => list(any()),
        "DisabledReason" => String.t() | atom(),
        "StatusUpdateTime" => non_neg_integer()
      }
      
  """
  @type task_schedule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag_list_entry())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_open_zfs_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_open_zfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_request() :: %{
        required("TaskArn") => String.t() | atom()
      }
      
  """
  @type describe_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_task_execution_request() :: %{
        required("TaskExecutionArn") => String.t() | atom()
      }
      
  """
  @type cancel_task_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_ontap_request() :: %{
        optional("Protocol") => fsx_update_protocol(),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_fsx_ontap_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_lustre_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_fsx_lustre_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agents_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_agents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      nfs_mount_options() :: %{
        "Version" => list(any())
      }
      
  """
  @type nfs_mount_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fsx_update_protocol() :: %{
        "NFS" => fsx_protocol_nfs(),
        "SMB" => fsx_update_protocol_smb()
      }
      
  """
  @type fsx_update_protocol() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_execution_request() :: %{
        required("Options") => options(),
        required("TaskExecutionArn") => String.t() | atom()
      }
      
  """
  @type update_task_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_location_fsx_windows_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Domain" => String.t() | atom(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "SecurityGroupArns" => list(String.t() | atom()),
        "User" => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_windows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_nfs_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_nfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cmk_secret_config() :: %{
        "KmsKeyArn" => String.t() | atom(),
        "SecretArn" => String.t() | atom()
      }
      
  """
  @type cmk_secret_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agents_response() :: %{
        "Agents" => list(agent_list_entry()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_agents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter_rule() :: %{
        "FilterType" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type filter_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_agent_request() :: %{
        optional("AgentName") => String.t() | atom(),
        optional("SecurityGroupArns") => list(String.t() | atom()),
        optional("SubnetArns") => list(String.t() | atom()),
        optional("Tags") => list(tag_list_entry()),
        optional("VpcEndpointId") => String.t() | atom(),
        required("ActivationKey") => String.t() | atom()
      }
      
  """
  @type create_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_destination() :: %{
        "S3" => report_destination_s3()
      }
      
  """
  @type report_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_nfs_request() :: %{
        optional("MountOptions") => nfs_mount_options(),
        optional("Tags") => list(tag_list_entry()),
        required("OnPremConfig") => on_prem_config(),
        required("ServerHostname") => String.t() | atom(),
        required("Subdirectory") => String.t() | atom()
      }
      
  """
  @type create_location_nfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_ontap_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_ontap_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_hdfs_request() :: %{
        optional("AgentArns") => list(String.t() | atom()),
        optional("AuthenticationType") => list(any()),
        optional("BlockSize") => integer(),
        optional("KerberosKeytab") => binary(),
        optional("KerberosKrb5Conf") => binary(),
        optional("KerberosPrincipal") => String.t() | atom(),
        optional("KmsKeyProviderUri") => String.t() | atom(),
        optional("NameNodes") => list(hdfs_name_node()),
        optional("QopConfiguration") => qop_configuration(),
        optional("ReplicationFactor") => integer(),
        optional("SimpleUser") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_hdfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type location_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_task_request() :: %{
        optional("CloudWatchLogGroupArn") => String.t() | atom(),
        optional("Excludes") => list(filter_rule()),
        optional("Includes") => list(filter_rule()),
        optional("ManifestConfig") => manifest_config(),
        optional("Name") => String.t() | atom(),
        optional("Options") => options(),
        optional("Schedule") => task_schedule(),
        optional("Tags") => list(tag_list_entry()),
        optional("TaskMode") => list(any()),
        optional("TaskReportConfig") => task_report_config(),
        required("DestinationLocationArn") => String.t() | atom(),
        required("SourceLocationArn") => String.t() | atom()
      }
      
  """
  @type create_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_schedule() :: %{
        "ScheduleExpression" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type task_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_result() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorDetail" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type report_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_list_entry() :: %{
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "TaskArn" => String.t() | atom(),
        "TaskMode" => list(any())
      }
      
  """
  @type task_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_task_execution_response() :: %{}
      
  """
  @type cancel_task_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_location_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type delete_location_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_object_storage_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_object_storage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_nfs_response() :: %{}
      
  """
  @type update_location_nfs_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_location_fsx_lustre_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "SecurityGroupArns" => list(String.t() | atom())
      }
      
  """
  @type describe_location_fsx_lustre_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_execution_result_detail() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorDetail" => String.t() | atom(),
        "PrepareDuration" => float(),
        "PrepareStatus" => list(any()),
        "TotalDuration" => float(),
        "TransferDuration" => float(),
        "TransferStatus" => list(any()),
        "VerifyDuration" => float(),
        "VerifyStatus" => list(any())
      }
      
  """
  @type task_execution_result_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("Keys") => list(String.t() | atom()),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_efs_response() :: %{
        "AccessPointArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "Ec2Config" => ec2_config(),
        "FileSystemAccessRoleArn" => String.t() | atom(),
        "InTransitEncryption" => list(any()),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom()
      }
      
  """
  @type describe_location_efs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_secret_config() :: %{
        "SecretArn" => String.t() | atom()
      }
      
  """
  @type managed_secret_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      qop_configuration() :: %{
        "DataTransferProtection" => list(any()),
        "RpcProtection" => list(any())
      }
      
  """
  @type qop_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_smb_response() :: %{}
      
  """
  @type update_location_smb_response() :: %{}

  @typedoc """

  ## Example:
      
      fsx_protocol() :: %{
        "NFS" => fsx_protocol_nfs(),
        "SMB" => fsx_protocol_smb()
      }
      
  """
  @type fsx_protocol() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_overrides() :: %{
        "Deleted" => report_override(),
        "Skipped" => report_override(),
        "Transferred" => report_override(),
        "Verified" => report_override()
      }
      
  """
  @type report_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agent_list_entry() :: %{
        "AgentArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Platform" => platform(),
        "Status" => list(any())
      }
      
  """
  @type agent_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_azure_blob_request() :: %{
        optional("AccessTier") => list(any()),
        optional("AgentArns") => list(String.t() | atom()),
        optional("BlobType") => list(any()),
        optional("CmkSecretConfig") => cmk_secret_config(),
        optional("CustomSecretConfig") => custom_secret_config(),
        optional("SasConfiguration") => azure_blob_sas_configuration(),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("AuthenticationType") => list(any()),
        required("ContainerUrl") => String.t() | atom()
      }
      
  """
  @type create_location_azure_blob_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_agent_response() :: %{
        "AgentArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "EndpointType" => list(any()),
        "LastConnectionTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Platform" => platform(),
        "PrivateLinkConfig" => private_link_config(),
        "Status" => list(any())
      }
      
  """
  @type describe_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      options() :: %{
        "Atime" => list(any()),
        "BytesPerSecond" => float(),
        "Gid" => list(any()),
        "LogLevel" => list(any()),
        "Mtime" => list(any()),
        "ObjectTags" => list(any()),
        "OverwriteMode" => list(any()),
        "PosixPermissions" => list(any()),
        "PreserveDeletedFiles" => list(any()),
        "PreserveDevices" => list(any()),
        "SecurityDescriptorCopyFlags" => list(any()),
        "TaskQueueing" => list(any()),
        "TransferMode" => list(any()),
        "Uid" => list(any()),
        "VerifyMode" => list(any())
      }
      
  """
  @type options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_report_config() :: %{
        "Destination" => report_destination(),
        "ObjectVersionIds" => list(any()),
        "OutputType" => list(any()),
        "Overrides" => report_overrides(),
        "ReportLevel" => list(any())
      }
      
  """
  @type task_report_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_lustre_response() :: %{}
      
  """
  @type update_location_fsx_lustre_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_manifest_config() :: %{
        "BucketAccessRoleArn" => String.t() | atom(),
        "ManifestObjectPath" => String.t() | atom(),
        "ManifestObjectVersionId" => String.t() | atom(),
        "S3BucketArn" => String.t() | atom()
      }
      
  """
  @type s3_manifest_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_smb_request() :: %{
        optional("AgentArns") => list(String.t() | atom()),
        optional("AuthenticationType") => list(any()),
        optional("DnsIpAddresses") => list(String.t() | atom()),
        optional("Domain") => String.t() | atom(),
        optional("KerberosKeytab") => binary(),
        optional("KerberosKrb5Conf") => binary(),
        optional("KerberosPrincipal") => String.t() | atom(),
        optional("MountOptions") => smb_mount_options(),
        optional("Password") => String.t() | atom(),
        optional("ServerHostname") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        optional("User") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_smb_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_agent_response() :: %{
        "AgentArn" => String.t() | atom()
      }
      
  """
  @type create_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_azure_blob_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_azure_blob_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_nfs_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_nfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_ontap_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FsxFilesystemArn" => String.t() | atom(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "Protocol" => fsx_protocol(),
        "SecurityGroupArns" => list(String.t() | atom()),
        "StorageVirtualMachineArn" => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_ontap_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_list_entry() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_response() :: %{}
      
  """
  @type update_task_response() :: %{}

  @typedoc """

  ## Example:
      
      update_location_efs_response() :: %{}
      
  """
  @type update_location_efs_response() :: %{}

  @typedoc """

  ## Example:
      
      update_agent_response() :: %{}
      
  """
  @type update_agent_response() :: %{}

  @typedoc """

  ## Example:
      
      fsx_update_protocol_smb() :: %{
        "Domain" => String.t() | atom(),
        "MountOptions" => smb_mount_options(),
        "Password" => String.t() | atom(),
        "User" => String.t() | atom()
      }
      
  """
  @type fsx_update_protocol_smb() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_override() :: %{
        "ReportLevel" => list(any())
      }
      
  """
  @type report_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "datasyncErrorCode" => String.t() | atom(),
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_executions_response() :: %{
        "NextToken" => String.t() | atom(),
        "TaskExecutions" => list(task_execution_list_entry())
      }
      
  """
  @type list_task_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      on_prem_config() :: %{
        "AgentArns" => list(String.t() | atom())
      }
      
  """
  @type on_prem_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform() :: %{
        "Version" => String.t() | atom()
      }
      
  """
  @type platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_open_zfs_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_fsx_open_zfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "BucketAccessRoleArn" => String.t() | atom()
      }
      
  """
  @type s3_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_executions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TaskArn") => String.t() | atom()
      }
      
  """
  @type list_task_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_ontap_request() :: %{
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("Protocol") => fsx_protocol(),
        required("SecurityGroupArns") => list(String.t() | atom()),
        required("StorageVirtualMachineArn") => String.t() | atom()
      }
      
  """
  @type create_location_fsx_ontap_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_hdfs_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_hdfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_response() :: %{
        "CloudWatchLogGroupArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "CurrentTaskExecutionArn" => String.t() | atom(),
        "DestinationLocationArn" => String.t() | atom(),
        "DestinationNetworkInterfaceArns" => list(String.t() | atom()),
        "ErrorCode" => String.t() | atom(),
        "ErrorDetail" => String.t() | atom(),
        "Excludes" => list(filter_rule()),
        "Includes" => list(filter_rule()),
        "ManifestConfig" => manifest_config(),
        "Name" => String.t() | atom(),
        "Options" => options(),
        "Schedule" => task_schedule(),
        "ScheduleDetails" => task_schedule_details(),
        "SourceLocationArn" => String.t() | atom(),
        "SourceNetworkInterfaceArns" => list(String.t() | atom()),
        "Status" => list(any()),
        "TaskArn" => String.t() | atom(),
        "TaskMode" => list(any()),
        "TaskReportConfig" => task_report_config()
      }
      
  """
  @type describe_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_smb_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_smb_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_lustre_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_lustre_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_s3_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_s3_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_execution_list_entry() :: %{
        "Status" => list(any()),
        "TaskExecutionArn" => String.t() | atom(),
        "TaskMode" => list(any())
      }
      
  """
  @type task_execution_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_open_zfs_response() :: %{}
      
  """
  @type update_location_fsx_open_zfs_response() :: %{}

  @typedoc """

  ## Example:
      
      update_location_object_storage_response() :: %{}
      
  """
  @type update_location_object_storage_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_location_nfs_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "MountOptions" => nfs_mount_options(),
        "OnPremConfig" => on_prem_config()
      }
      
  """
  @type describe_location_nfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag_list_entry())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_open_zfs_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "Protocol" => fsx_protocol(),
        "SecurityGroupArns" => list(String.t() | atom())
      }
      
  """
  @type describe_location_fsx_open_zfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_locations_request() :: %{
        optional("Filters") => list(location_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_locations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_s3_request() :: %{
        optional("AgentArns") => list(String.t() | atom()),
        optional("S3StorageClass") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("S3BucketArn") => String.t() | atom(),
        required("S3Config") => s3_config()
      }
      
  """
  @type create_location_s3_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_efs_request() :: %{
        optional("AccessPointArn") => String.t() | atom(),
        optional("FileSystemAccessRoleArn") => String.t() | atom(),
        optional("InTransitEncryption") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("Ec2Config") => ec2_config(),
        required("EfsFilesystemArn") => String.t() | atom()
      }
      
  """
  @type create_location_efs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_agent_response() :: %{}
      
  """
  @type delete_agent_response() :: %{}

  @typedoc """

  ## Example:
      
      update_task_request() :: %{
        optional("CloudWatchLogGroupArn") => String.t() | atom(),
        optional("Excludes") => list(filter_rule()),
        optional("Includes") => list(filter_rule()),
        optional("ManifestConfig") => manifest_config(),
        optional("Name") => String.t() | atom(),
        optional("Options") => options(),
        optional("Schedule") => task_schedule(),
        optional("TaskReportConfig") => task_report_config(),
        required("TaskArn") => String.t() | atom()
      }
      
  """
  @type update_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_azure_blob_response() :: %{}
      
  """
  @type update_location_azure_blob_response() :: %{}

  @typedoc """

  ## Example:
      
      source_manifest_config() :: %{
        "S3" => s3_manifest_config()
      }
      
  """
  @type source_manifest_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_execution_files_listed_detail() :: %{
        "AtDestinationForDelete" => float(),
        "AtSource" => float()
      }
      
  """
  @type task_execution_files_listed_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_smb_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_smb_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_open_zfs_request() :: %{
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("FsxFilesystemArn") => String.t() | atom(),
        required("Protocol") => fsx_protocol(),
        required("SecurityGroupArns") => list(String.t() | atom())
      }
      
  """
  @type create_location_fsx_open_zfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_execution_response() :: %{
        "BytesCompressed" => float(),
        "BytesTransferred" => float(),
        "BytesWritten" => float(),
        "EndTime" => non_neg_integer(),
        "EstimatedBytesToTransfer" => float(),
        "EstimatedFilesToDelete" => float(),
        "EstimatedFilesToTransfer" => float(),
        "Excludes" => list(filter_rule()),
        "FilesDeleted" => float(),
        "FilesFailed" => task_execution_files_failed_detail(),
        "FilesListed" => task_execution_files_listed_detail(),
        "FilesPrepared" => float(),
        "FilesSkipped" => float(),
        "FilesTransferred" => float(),
        "FilesVerified" => float(),
        "Includes" => list(filter_rule()),
        "LaunchTime" => non_neg_integer(),
        "ManifestConfig" => manifest_config(),
        "Options" => options(),
        "ReportResult" => report_result(),
        "Result" => task_execution_result_detail(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "TaskExecutionArn" => String.t() | atom(),
        "TaskMode" => list(any()),
        "TaskReportConfig" => task_report_config()
      }
      
  """
  @type describe_task_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_s3_response() :: %{}
      
  """
  @type update_location_s3_response() :: %{}

  @typedoc """

  ## Example:
      
      create_location_fsx_windows_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_fsx_windows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_windows_request() :: %{
        optional("Domain") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("FsxFilesystemArn") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("SecurityGroupArns") => list(String.t() | atom()),
        required("User") => String.t() | atom()
      }
      
  """
  @type create_location_fsx_windows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_execution_response() :: %{}
      
  """
  @type update_task_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      create_location_smb_request() :: %{
        optional("AuthenticationType") => list(any()),
        optional("DnsIpAddresses") => list(String.t() | atom()),
        optional("Domain") => String.t() | atom(),
        optional("KerberosKeytab") => binary(),
        optional("KerberosKrb5Conf") => binary(),
        optional("KerberosPrincipal") => String.t() | atom(),
        optional("MountOptions") => smb_mount_options(),
        optional("Password") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        optional("User") => String.t() | atom(),
        required("AgentArns") => list(String.t() | atom()),
        required("ServerHostname") => String.t() | atom(),
        required("Subdirectory") => String.t() | atom()
      }
      
  """
  @type create_location_smb_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_location_response() :: %{}
      
  """
  @type delete_location_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_agent_request() :: %{
        required("AgentArn") => String.t() | atom()
      }
      
  """
  @type describe_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_lustre_request() :: %{
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_fsx_lustre_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_destination_s3() :: %{
        "BucketAccessRoleArn" => String.t() | atom(),
        "S3BucketArn" => String.t() | atom(),
        "Subdirectory" => String.t() | atom()
      }
      
  """
  @type report_destination_s3() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_efs_request() :: %{
        optional("AccessPointArn") => String.t() | atom(),
        optional("FileSystemAccessRoleArn") => String.t() | atom(),
        optional("InTransitEncryption") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_efs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_azure_blob_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_azure_blob_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      azure_blob_sas_configuration() :: %{
        "Token" => String.t() | atom()
      }
      
  """
  @type azure_blob_sas_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location_list_entry() :: %{
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom()
      }
      
  """
  @type location_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type internal_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_s3_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_s3_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_location_hdfs_request() :: %{
        optional("BlockSize") => integer(),
        optional("KerberosKeytab") => binary(),
        optional("KerberosKrb5Conf") => binary(),
        optional("KerberosPrincipal") => String.t() | atom(),
        optional("KmsKeyProviderUri") => String.t() | atom(),
        optional("QopConfiguration") => qop_configuration(),
        optional("ReplicationFactor") => integer(),
        optional("SimpleUser") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("AgentArns") => list(String.t() | atom()),
        required("AuthenticationType") => list(any()),
        required("NameNodes") => list(hdfs_name_node())
      }
      
  """
  @type create_location_hdfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_hdfs_response() :: %{}
      
  """
  @type update_location_hdfs_response() :: %{}

  @typedoc """

  ## Example:
      
      update_agent_request() :: %{
        optional("Name") => String.t() | atom(),
        required("AgentArn") => String.t() | atom()
      }
      
  """
  @type update_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_agent_request() :: %{
        required("AgentArn") => String.t() | atom()
      }
      
  """
  @type delete_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_request() :: %{
        required("TaskArn") => String.t() | atom()
      }
      
  """
  @type delete_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_nfs_request() :: %{
        optional("MountOptions") => nfs_mount_options(),
        optional("OnPremConfig") => on_prem_config(),
        optional("ServerHostname") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_nfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_lustre_request() :: %{
        optional("Subdirectory") => String.t() | atom(),
        optional("Tags") => list(tag_list_entry()),
        required("FsxFilesystemArn") => String.t() | atom(),
        required("SecurityGroupArns") => list(String.t() | atom())
      }
      
  """
  @type create_location_fsx_lustre_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_ontap_response() :: %{}
      
  """
  @type update_location_fsx_ontap_response() :: %{}

  @typedoc """

  ## Example:
      
      create_task_response() :: %{
        "TaskArn" => String.t() | atom()
      }
      
  """
  @type create_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_s3_request() :: %{
        optional("S3Config") => s3_config(),
        optional("S3StorageClass") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_s3_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_windows_request() :: %{
        optional("Domain") => String.t() | atom(),
        optional("Password") => String.t() | atom(),
        optional("Subdirectory") => String.t() | atom(),
        optional("User") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_fsx_windows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_object_storage_request() :: %{
        optional("AccessKey") => String.t() | atom(),
        optional("AgentArns") => list(String.t() | atom()),
        optional("CmkSecretConfig") => cmk_secret_config(),
        optional("CustomSecretConfig") => custom_secret_config(),
        optional("SecretKey") => String.t() | atom(),
        optional("ServerCertificate") => binary(),
        optional("ServerHostname") => String.t() | atom(),
        optional("ServerPort") => integer(),
        optional("ServerProtocol") => list(any()),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_object_storage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tasks_request() :: %{
        optional("Filters") => list(task_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fsx_protocol_smb() :: %{
        "Domain" => String.t() | atom(),
        "MountOptions" => smb_mount_options(),
        "Password" => String.t() | atom(),
        "User" => String.t() | atom()
      }
      
  """
  @type fsx_protocol_smb() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_execution_request() :: %{
        required("TaskExecutionArn") => String.t() | atom()
      }
      
  """
  @type describe_task_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hdfs_name_node() :: %{
        "Hostname" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type hdfs_name_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      smb_mount_options() :: %{
        "Version" => list(any())
      }
      
  """
  @type smb_mount_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_locations_response() :: %{
        "Locations" => list(location_list_entry()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_locations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_hdfs_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_hdfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_efs_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_efs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tasks_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tasks" => list(task_list_entry())
      }
      
  """
  @type list_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_windows_response() :: %{}
      
  """
  @type update_location_fsx_windows_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_location_azure_blob_response() :: %{
        "AccessTier" => list(any()),
        "AgentArns" => list(String.t() | atom()),
        "AuthenticationType" => list(any()),
        "BlobType" => list(any()),
        "CmkSecretConfig" => cmk_secret_config(),
        "CreationTime" => non_neg_integer(),
        "CustomSecretConfig" => custom_secret_config(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "ManagedSecretConfig" => managed_secret_config()
      }
      
  """
  @type describe_location_azure_blob_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_efs_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_efs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type task_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_location_fsx_open_zfs_request() :: %{
        optional("Protocol") => fsx_protocol(),
        optional("Subdirectory") => String.t() | atom(),
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type update_location_fsx_open_zfs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_config() :: %{
        "SecurityGroupArns" => list(String.t() | atom()),
        "SubnetArn" => String.t() | atom()
      }
      
  """
  @type ec2_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_hdfs_response() :: %{
        "AgentArns" => list(String.t() | atom()),
        "AuthenticationType" => list(any()),
        "BlockSize" => integer(),
        "CreationTime" => non_neg_integer(),
        "KerberosPrincipal" => String.t() | atom(),
        "KmsKeyProviderUri" => String.t() | atom(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "NameNodes" => list(hdfs_name_node()),
        "QopConfiguration" => qop_configuration(),
        "ReplicationFactor" => integer(),
        "SimpleUser" => String.t() | atom()
      }
      
  """
  @type describe_location_hdfs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_fsx_windows_request() :: %{
        required("LocationArn") => String.t() | atom()
      }
      
  """
  @type describe_location_fsx_windows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_object_storage_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_object_storage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_object_storage_response() :: %{
        "AccessKey" => String.t() | atom(),
        "AgentArns" => list(String.t() | atom()),
        "CmkSecretConfig" => cmk_secret_config(),
        "CreationTime" => non_neg_integer(),
        "CustomSecretConfig" => custom_secret_config(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "ManagedSecretConfig" => managed_secret_config(),
        "ServerCertificate" => binary(),
        "ServerPort" => integer(),
        "ServerProtocol" => list(any())
      }
      
  """
  @type describe_location_object_storage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_smb_response() :: %{
        "AgentArns" => list(String.t() | atom()),
        "AuthenticationType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DnsIpAddresses" => list(String.t() | atom()),
        "Domain" => String.t() | atom(),
        "KerberosPrincipal" => String.t() | atom(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "MountOptions" => smb_mount_options(),
        "User" => String.t() | atom()
      }
      
  """
  @type describe_location_smb_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      manifest_config() :: %{
        "Action" => list(any()),
        "Format" => list(any()),
        "Source" => source_manifest_config()
      }
      
  """
  @type manifest_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_response() :: %{}
      
  """
  @type delete_task_response() :: %{}

  @typedoc """

  ## Example:
      
      custom_secret_config() :: %{
        "SecretAccessRoleArn" => String.t() | atom(),
        "SecretArn" => String.t() | atom()
      }
      
  """
  @type custom_secret_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_location_s3_response() :: %{
        "AgentArns" => list(String.t() | atom()),
        "CreationTime" => non_neg_integer(),
        "LocationArn" => String.t() | atom(),
        "LocationUri" => String.t() | atom(),
        "S3Config" => s3_config(),
        "S3StorageClass" => list(any())
      }
      
  """
  @type describe_location_s3_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_task_execution_request() :: %{
        optional("Excludes") => list(filter_rule()),
        optional("Includes") => list(filter_rule()),
        optional("ManifestConfig") => manifest_config(),
        optional("OverrideOptions") => options(),
        optional("Tags") => list(tag_list_entry()),
        optional("TaskReportConfig") => task_report_config(),
        required("TaskArn") => String.t() | atom()
      }
      
  """
  @type start_task_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_fsx_ontap_response() :: %{
        "LocationArn" => String.t() | atom()
      }
      
  """
  @type create_location_fsx_ontap_response() :: %{(String.t() | atom()) => any()}

  @type cancel_task_execution_errors() :: internal_exception() | invalid_request_exception()

  @type create_agent_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_azure_blob_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_efs_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_fsx_lustre_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_fsx_ontap_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_fsx_open_zfs_errors() ::
          internal_exception() | invalid_request_exception()

  @type create_location_fsx_windows_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_hdfs_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_nfs_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_object_storage_errors() ::
          internal_exception() | invalid_request_exception()

  @type create_location_s3_errors() :: internal_exception() | invalid_request_exception()

  @type create_location_smb_errors() :: internal_exception() | invalid_request_exception()

  @type create_task_errors() :: internal_exception() | invalid_request_exception()

  @type delete_agent_errors() :: internal_exception() | invalid_request_exception()

  @type delete_location_errors() :: internal_exception() | invalid_request_exception()

  @type delete_task_errors() :: internal_exception() | invalid_request_exception()

  @type describe_agent_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_azure_blob_errors() ::
          internal_exception() | invalid_request_exception()

  @type describe_location_efs_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_fsx_lustre_errors() ::
          internal_exception() | invalid_request_exception()

  @type describe_location_fsx_ontap_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_fsx_open_zfs_errors() ::
          internal_exception() | invalid_request_exception()

  @type describe_location_fsx_windows_errors() ::
          internal_exception() | invalid_request_exception()

  @type describe_location_hdfs_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_nfs_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_object_storage_errors() ::
          internal_exception() | invalid_request_exception()

  @type describe_location_s3_errors() :: internal_exception() | invalid_request_exception()

  @type describe_location_smb_errors() :: internal_exception() | invalid_request_exception()

  @type describe_task_errors() :: internal_exception() | invalid_request_exception()

  @type describe_task_execution_errors() :: internal_exception() | invalid_request_exception()

  @type list_agents_errors() :: internal_exception() | invalid_request_exception()

  @type list_locations_errors() :: internal_exception() | invalid_request_exception()

  @type list_tags_for_resource_errors() :: internal_exception() | invalid_request_exception()

  @type list_task_executions_errors() :: internal_exception() | invalid_request_exception()

  @type list_tasks_errors() :: internal_exception() | invalid_request_exception()

  @type start_task_execution_errors() :: internal_exception() | invalid_request_exception()

  @type tag_resource_errors() :: internal_exception() | invalid_request_exception()

  @type untag_resource_errors() :: internal_exception() | invalid_request_exception()

  @type update_agent_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_azure_blob_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_efs_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_fsx_lustre_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_fsx_ontap_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_fsx_open_zfs_errors() ::
          internal_exception() | invalid_request_exception()

  @type update_location_fsx_windows_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_hdfs_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_nfs_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_object_storage_errors() ::
          internal_exception() | invalid_request_exception()

  @type update_location_s3_errors() :: internal_exception() | invalid_request_exception()

  @type update_location_smb_errors() :: internal_exception() | invalid_request_exception()

  @type update_task_errors() :: internal_exception() | invalid_request_exception()

  @type update_task_execution_errors() :: internal_exception() | invalid_request_exception()

  def metadata do
    %{
      api_version: "2018-11-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datasync",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "DataSync",
      signature_version: "v4",
      signing_name: "datasync",
      target_prefix: "FmrsService"
    }
  end

  @doc """
  Stops an DataSync task execution that's in progress.

  The transfer of some
  files are abruptly interrupted. File contents that're transferred to the
  destination might be
  incomplete or inconsistent with the source files.

  However, if you start a new task execution using the same task and allow it to
  finish,
  file content on the destination will be complete and consistent. This applies to
  other
  unexpected failures that interrupt a task execution. In all of these cases,
  DataSync
  successfully completes the transfer when you start the next task execution.
  """
  @spec cancel_task_execution(map(), cancel_task_execution_request(), list()) ::
          {:ok, cancel_task_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_task_execution_errors()}
  def cancel_task_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelTaskExecution", input, options)
  end

  @doc """
  Activates an DataSync agent that you deploy in your storage environment.

  The activation process associates the agent with your Amazon Web Services
  account.

  If you haven't deployed an agent yet, see [Do I need a DataSync agent?](https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html)
  """
  @spec create_agent(map(), create_agent_request(), list()) ::
          {:ok, create_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agent_errors()}
  def create_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAgent", input, options)
  end

  @doc """
  Creates a transfer *location* for a Microsoft Azure Blob Storage
  container.

  DataSync can use this location as a transfer source or destination.
  You can make transfers with or without a [DataSync agent](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent)
  that connects to your
  container.

  Before you begin, make sure you know [how DataSync accesses Azure Blob Storage](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access)
  and works with [access tiers](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers)
  and [blob types](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types).
  """
  @spec create_location_azure_blob(map(), create_location_azure_blob_request(), list()) ::
          {:ok, create_location_azure_blob_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_azure_blob_errors()}
  def create_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationAzureBlob", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon EFS file system.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you understand how DataSync
  [accesses Amazon EFS file
  systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access).
  """
  @spec create_location_efs(map(), create_location_efs_request(), list()) ::
          {:ok, create_location_efs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_efs_errors()}
  def create_location_efs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationEfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for Lustre file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for Lustre file systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access).
  """
  @spec create_location_fsx_lustre(map(), create_location_fsx_lustre_request(), list()) ::
          {:ok, create_location_fsx_lustre_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_fsx_lustre_errors()}
  def create_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationFsxLustre", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for NetApp ONTAP file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for ONTAP file systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access).
  """
  @spec create_location_fsx_ontap(map(), create_location_fsx_ontap_request(), list()) ::
          {:ok, create_location_fsx_ontap_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_fsx_ontap_errors()}
  def create_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationFsxOntap", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for OpenZFS file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for OpenZFS file
  systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access).

  Request parameters related to `SMB` aren't supported with the
  `CreateLocationFsxOpenZfs` operation.
  """
  @spec create_location_fsx_open_zfs(map(), create_location_fsx_open_zfs_request(), list()) ::
          {:ok, create_location_fsx_open_zfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_fsx_open_zfs_errors()}
  def create_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationFsxOpenZfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon FSx for Windows File Server file
  system.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses FSx for Windows File Server file
  systems](https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access).
  """
  @spec create_location_fsx_windows(map(), create_location_fsx_windows_request(), list()) ::
          {:ok, create_location_fsx_windows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_fsx_windows_errors()}
  def create_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationFsxWindows", input, options)
  end

  @doc """
  Creates a transfer *location* for a Hadoop Distributed File System
  (HDFS).

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses HDFS clusters](https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs).
  """
  @spec create_location_hdfs(map(), create_location_hdfs_request(), list()) ::
          {:ok, create_location_hdfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_hdfs_errors()}
  def create_location_hdfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationHdfs", input, options)
  end

  @doc """
  Creates a transfer *location* for a Network File System (NFS) file
  server.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync
  [accesses NFS file servers](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs).
  """
  @spec create_location_nfs(map(), create_location_nfs_request(), list()) ::
          {:ok, create_location_nfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_nfs_errors()}
  def create_location_nfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationNfs", input, options)
  end

  @doc """
  Creates a transfer *location* for an object storage system.

  DataSync can use this location as a source or destination for transferring data.
  You
  can make transfers with or without a [DataSync agent](https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#when-agent-required).

  Before you begin, make sure that you understand the
  [prerequisites](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites)
  for DataSync to work with object storage systems.
  """
  @spec create_location_object_storage(map(), create_location_object_storage_request(), list()) ::
          {:ok, create_location_object_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_object_storage_errors()}
  def create_location_object_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationObjectStorage", input, options)
  end

  @doc """
  Creates a transfer *location* for an Amazon S3 bucket.

  DataSync can use this location as a source or destination for transferring
  data.

  Before you begin, make sure that you read the following topics:

    

  [Storage class considerations with Amazon S3
  locations](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

    

  [Evaluating S3 request costs when using DataSync](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)

  For more information, see [Configuring transfers with Amazon
  S3](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html).
  """
  @spec create_location_s3(map(), create_location_s3_request(), list()) ::
          {:ok, create_location_s3_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_s3_errors()}
  def create_location_s3(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationS3", input, options)
  end

  @doc """
  Creates a transfer *location* for a Server Message Block (SMB) file
  server.

  DataSync can use this location as a source or destination for
  transferring data.

  Before you begin, make sure that you understand how DataSync accesses SMB
  file servers. For more information, see [Providing DataSync access to SMB file servers](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions).
  """
  @spec create_location_smb(map(), create_location_smb_request(), list()) ::
          {:ok, create_location_smb_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_smb_errors()}
  def create_location_smb(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocationSmb", input, options)
  end

  @doc """
  Configures a *task*, which defines where and how DataSync
  transfers your data.

  A task includes a source location, destination location, and transfer options
  (such as
  bandwidth limits, scheduling, and more).

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request
  charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  and the [DataSync pricing page](http://aws.amazon.com/datasync/pricing/) before
  you begin.
  """
  @spec create_task(map(), create_task_request(), list()) ::
          {:ok, create_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_task_errors()}
  def create_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTask", input, options)
  end

  @doc """
  Removes an DataSync agent resource from your Amazon Web Services account.

  Keep in mind that this operation (which can't be undone) doesn't remove the
  agent's
  virtual machine (VM) or Amazon EC2 instance from your storage environment. For
  next
  steps, you can delete the VM or instance from your storage environment or reuse
  it to [activate a new agent](https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html).
  """
  @spec delete_agent(map(), delete_agent_request(), list()) ::
          {:ok, delete_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agent_errors()}
  def delete_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAgent", input, options)
  end

  @doc """
  Deletes a transfer location resource from DataSync.
  """
  @spec delete_location(map(), delete_location_request(), list()) ::
          {:ok, delete_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_location_errors()}
  def delete_location(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """
  Deletes a transfer task resource from DataSync.
  """
  @spec delete_task(map(), delete_task_request(), list()) ::
          {:ok, delete_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_task_errors()}
  def delete_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTask", input, options)
  end

  @doc """
  Returns information about an DataSync agent, such as its name, service
  endpoint type, and status.
  """
  @spec describe_agent(map(), describe_agent_request(), list()) ::
          {:ok, describe_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_agent_errors()}
  def describe_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAgent", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for Microsoft Azure
  Blob Storage is configured.
  """
  @spec describe_location_azure_blob(map(), describe_location_azure_blob_request(), list()) ::
          {:ok, describe_location_azure_blob_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_azure_blob_errors()}
  def describe_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationAzureBlob", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon EFS file
  system is configured.
  """
  @spec describe_location_efs(map(), describe_location_efs_request(), list()) ::
          {:ok, describe_location_efs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_efs_errors()}
  def describe_location_efs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationEfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  Lustre file system is configured.
  """
  @spec describe_location_fsx_lustre(map(), describe_location_fsx_lustre_request(), list()) ::
          {:ok, describe_location_fsx_lustre_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_fsx_lustre_errors()}
  def describe_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationFsxLustre", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  NetApp ONTAP file system is configured.

  If your location uses SMB, the `DescribeLocationFsxOntap` operation doesn't
  actually return a `Password`.
  """
  @spec describe_location_fsx_ontap(map(), describe_location_fsx_ontap_request(), list()) ::
          {:ok, describe_location_fsx_ontap_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_fsx_ontap_errors()}
  def describe_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOntap", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  OpenZFS file system is configured.

  Response elements related to `SMB` aren't supported with the
  `DescribeLocationFsxOpenZfs` operation.
  """
  @spec describe_location_fsx_open_zfs(map(), describe_location_fsx_open_zfs_request(), list()) ::
          {:ok, describe_location_fsx_open_zfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_fsx_open_zfs_errors()}
  def describe_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationFsxOpenZfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an Amazon FSx for
  Windows File Server file system is configured.
  """
  @spec describe_location_fsx_windows(map(), describe_location_fsx_windows_request(), list()) ::
          {:ok, describe_location_fsx_windows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_fsx_windows_errors()}
  def describe_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationFsxWindows", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Hadoop
  Distributed File System (HDFS) is configured.
  """
  @spec describe_location_hdfs(map(), describe_location_hdfs_request(), list()) ::
          {:ok, describe_location_hdfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_hdfs_errors()}
  def describe_location_hdfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationHdfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Network
  File System (NFS) file server is configured.
  """
  @spec describe_location_nfs(map(), describe_location_nfs_request(), list()) ::
          {:ok, describe_location_nfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_nfs_errors()}
  def describe_location_nfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationNfs", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an object
  storage system is configured.
  """
  @spec describe_location_object_storage(
          map(),
          describe_location_object_storage_request(),
          list()
        ) ::
          {:ok, describe_location_object_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_object_storage_errors()}
  def describe_location_object_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationObjectStorage", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for an S3 bucket
  is configured.
  """
  @spec describe_location_s3(map(), describe_location_s3_request(), list()) ::
          {:ok, describe_location_s3_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_s3_errors()}
  def describe_location_s3(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationS3", input, options)
  end

  @doc """
  Provides details about how an DataSync transfer location for a Server
  Message Block (SMB) file server is configured.
  """
  @spec describe_location_smb(map(), describe_location_smb_request(), list()) ::
          {:ok, describe_location_smb_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_location_smb_errors()}
  def describe_location_smb(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocationSmb", input, options)
  end

  @doc """
  Provides information about a *task*, which defines where and how
  DataSync transfers your data.
  """
  @spec describe_task(map(), describe_task_request(), list()) ::
          {:ok, describe_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_task_errors()}
  def describe_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTask", input, options)
  end

  @doc """
  Provides information about an execution of your DataSync task.

  You can
  use this operation to help monitor the progress of an ongoing data transfer or
  check the
  results of the transfer.

  Some `DescribeTaskExecution` response elements are only relevant to a
  specific task mode. For information, see [Understanding task mode differences](https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences)
  and [Understanding data transfer performance
  counters](https://docs.aws.amazon.com/datasync/latest/userguide/transfer-performance-counters.html).
  """
  @spec describe_task_execution(map(), describe_task_execution_request(), list()) ::
          {:ok, describe_task_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_task_execution_errors()}
  def describe_task_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTaskExecution", input, options)
  end

  @doc """
  Returns a list of DataSync agents that belong to an Amazon Web Services account
  in the Amazon Web Services Region specified in the request.

  With pagination, you can reduce the number of agents returned in a response. If
  you get
  a truncated list of agents in a response, the response contains a marker that
  you can specify
  in your next request to fetch the next page of agents.

  `ListAgents` is eventually consistent. This means the result of running the
  operation might not reflect that you just created or deleted an agent. For
  example, if you
  create an agent with
  [CreateAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html) and then
  immediately run `ListAgents`, that agent might not show up in the list right
  away.
  In situations like this, you can always confirm whether an agent has been
  created (or deleted)
  by using
  [DescribeAgent](https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html).
  """
  @spec list_agents(map(), list_agents_request(), list()) ::
          {:ok, list_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agents_errors()}
  def list_agents(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAgents", input, options)
  end

  @doc """
  Returns a list of source and destination locations.

  If you have more locations than are returned in a response (that is, the
  response
  returns only a truncated list of your agents), the response contains a token
  that you can
  specify in your next request to fetch the next page of locations.
  """
  @spec list_locations(map(), list_locations_request(), list()) ::
          {:ok, list_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_locations_errors()}
  def list_locations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLocations", input, options)
  end

  @doc """
  Returns all the tags associated with an Amazon Web Services resource.
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
  Returns a list of executions for an DataSync transfer task.
  """
  @spec list_task_executions(map(), list_task_executions_request(), list()) ::
          {:ok, list_task_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_task_executions_errors()}
  def list_task_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTaskExecutions", input, options)
  end

  @doc """
  Returns a list of the DataSync tasks you created.
  """
  @spec list_tasks(map(), list_tasks_request(), list()) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tasks_errors()}
  def list_tasks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTasks", input, options)
  end

  @doc """
  Starts an DataSync transfer task.

  For each task, you can only run one task
  execution at a time.

  There are several steps to a task execution. For more information, see [Task execution
  statuses](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses).

  If you're planning to transfer data to or from an Amazon S3 location, review
  [how DataSync can affect your S3 request
  charges](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  and the [DataSync pricing page](http://aws.amazon.com/datasync/pricing/) before
  you begin.
  """
  @spec start_task_execution(map(), start_task_execution_request(), list()) ::
          {:ok, start_task_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_task_execution_errors()}
  def start_task_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTaskExecution", input, options)
  end

  @doc """
  Applies a *tag* to an Amazon Web Services resource.

  Tags are
  key-value pairs that can help you manage, filter, and search for your resources.

  These include DataSync resources, such as locations, tasks, and task
  executions.
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
  Removes tags from an Amazon Web Services resource.
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

  @doc """
  Updates the name of an DataSync agent.
  """
  @spec update_agent(map(), update_agent_request(), list()) ::
          {:ok, update_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_errors()}
  def update_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAgent", input, options)
  end

  @doc """
  Modifies the following configurations of the Microsoft Azure Blob Storage
  transfer
  location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with Azure Blob Storage](https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html).
  """
  @spec update_location_azure_blob(map(), update_location_azure_blob_request(), list()) ::
          {:ok, update_location_azure_blob_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_azure_blob_errors()}
  def update_location_azure_blob(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationAzureBlob", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon EFS transfer
  location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with Amazon
  EFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html).
  """
  @spec update_location_efs(map(), update_location_efs_request(), list()) ::
          {:ok, update_location_efs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_efs_errors()}
  def update_location_efs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationEfs", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon FSx for Lustre
  transfer location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with FSx for
  Lustre](https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html).
  """
  @spec update_location_fsx_lustre(map(), update_location_fsx_lustre_request(), list()) ::
          {:ok, update_location_fsx_lustre_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_fsx_lustre_errors()}
  def update_location_fsx_lustre(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationFsxLustre", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon FSx for NetApp
  ONTAP
  transfer location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with FSx for
  ONTAP](https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html).
  """
  @spec update_location_fsx_ontap(map(), update_location_fsx_ontap_request(), list()) ::
          {:ok, update_location_fsx_ontap_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_fsx_ontap_errors()}
  def update_location_fsx_ontap(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationFsxOntap", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon FSx for OpenZFS
  transfer location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with FSx for
  OpenZFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html).

  Request parameters related to `SMB` aren't supported with the
  `UpdateLocationFsxOpenZfs` operation.
  """
  @spec update_location_fsx_open_zfs(map(), update_location_fsx_open_zfs_request(), list()) ::
          {:ok, update_location_fsx_open_zfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_fsx_open_zfs_errors()}
  def update_location_fsx_open_zfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationFsxOpenZfs", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon FSx for Windows
  File Server
  transfer location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with FSx for Windows File
  Server](https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html).
  """
  @spec update_location_fsx_windows(map(), update_location_fsx_windows_request(), list()) ::
          {:ok, update_location_fsx_windows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_fsx_windows_errors()}
  def update_location_fsx_windows(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationFsxWindows", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Hadoop Distributed File
  System
  (HDFS) transfer location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with an HDFS
  cluster](https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html).
  """
  @spec update_location_hdfs(map(), update_location_hdfs_request(), list()) ::
          {:ok, update_location_hdfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_hdfs_errors()}
  def update_location_hdfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationHdfs", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Network File System (NFS)
  transfer
  location that you're using with DataSync.

  For more information, see [Configuring transfers with an NFS file
  server](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).
  """
  @spec update_location_nfs(map(), update_location_nfs_request(), list()) ::
          {:ok, update_location_nfs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_nfs_errors()}
  def update_location_nfs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationNfs", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the object storage transfer
  location
  that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with an object storage
  system](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).
  """
  @spec update_location_object_storage(map(), update_location_object_storage_request(), list()) ::
          {:ok, update_location_object_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_object_storage_errors()}
  def update_location_object_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationObjectStorage", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Amazon S3 transfer
  location
  that you're using with DataSync.

  Before you begin, make sure that you read the following topics:

    

  [Storage class considerations with Amazon S3
  locations](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)

    

  [Evaluating S3 request costs when using DataSync](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests)
  """
  @spec update_location_s3(map(), update_location_s3_request(), list()) ::
          {:ok, update_location_s3_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_s3_errors()}
  def update_location_s3(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationS3", input, options)
  end

  @doc """
  Modifies the following configuration parameters of the Server Message Block
  (SMB) transfer
  location that you're using with DataSync.

  For more information, see [Configuring DataSync transfers with an SMB file
  server](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).
  """
  @spec update_location_smb(map(), update_location_smb_request(), list()) ::
          {:ok, update_location_smb_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_location_smb_errors()}
  def update_location_smb(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLocationSmb", input, options)
  end

  @doc """
  Updates the configuration of a *task*, which defines where and how
  DataSync transfers your data.
  """
  @spec update_task(map(), update_task_request(), list()) ::
          {:ok, update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_task_errors()}
  def update_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTask", input, options)
  end

  @doc """
  Updates the configuration of a running DataSync task execution.

  Currently, the only `Option` that you can modify with
  `UpdateTaskExecution` is

  ```

  [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)

  ```

  , which throttles bandwidth for a running or queued task
  execution.
  """
  @spec update_task_execution(map(), update_task_execution_request(), list()) ::
          {:ok, update_task_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_task_execution_errors()}
  def update_task_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTaskExecution", input, options)
  end
end
