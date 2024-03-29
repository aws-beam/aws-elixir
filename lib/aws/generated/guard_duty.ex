# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GuardDuty do
  @moduledoc """
  Amazon GuardDuty is a continuous security monitoring service that analyzes and
  processes
  the following foundational data sources - VPC flow logs, Amazon Web Services
  CloudTrail management event logs, CloudTrail S3 data event
  logs, EKS audit logs, DNS logs, Amazon EBS volume data, runtime activity
  belonging to container workloads, such
  as Amazon EKS, Amazon ECS (including Amazon Web Services Fargate), and Amazon
  EC2 instances.

  It uses threat intelligence
  feeds, such as lists of malicious IPs and domains, and machine learning to
  identify
  unexpected, potentially unauthorized, and malicious activity within your Amazon
  Web Services environment.
  This can include issues like escalations of privileges, uses of exposed
  credentials, or
  communication with malicious IPs, domains, or presence of malware on your Amazon
  EC2 instances
  and container workloads. For example, GuardDuty can detect compromised EC2
  instances and
  container workloads serving malware, or mining bitcoin.

  GuardDuty also monitors Amazon Web Services account access behavior for signs of
  compromise, such as
  unauthorized infrastructure deployments like EC2 instances deployed in a Region
  that has never
  been used, or unusual API calls like a password policy change to reduce password
  strength.

  GuardDuty informs you about the status of your Amazon Web Services environment
  by producing security
  findings that you can view in the GuardDuty console or through Amazon
  EventBridge. For more
  information, see the *
  [Amazon GuardDuty User
  Guide](https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      organization_kubernetes_configuration() :: %{
        "AuditLogs" => organization_kubernetes_audit_logs_configuration()
      }

  """
  @type organization_kubernetes_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_request() :: %{}

  """
  @type disassociate_from_master_account_request() :: %{}

  @typedoc """

  ## Example:

      cloud_trail_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type cloud_trail_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization() :: %{
        "Asn" => String.t(),
        "AsnOrg" => String.t(),
        "Isp" => String.t(),
        "Org" => String.t()
      }

  """
  @type organization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_details() :: %{
        "AvailabilityZone" => String.t(),
        "IamInstanceProfile" => iam_instance_profile(),
        "ImageDescription" => String.t(),
        "ImageId" => String.t(),
        "InstanceId" => String.t(),
        "InstanceState" => String.t(),
        "InstanceType" => String.t(),
        "LaunchTime" => String.t(),
        "NetworkInterfaces" => list(network_interface()()),
        "OutpostArn" => String.t(),
        "Platform" => String.t(),
        "ProductCodes" => list(product_code()()),
        "Tags" => list(tag()())
      }

  """
  @type instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_data_source_configuration() :: %{
        "AccountId" => String.t(),
        "DataSources" => data_source_configurations_result(),
        "Features" => list(member_features_configuration_result()())
      }

  """
  @type member_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_sources_free_trial() :: %{
        "CloudTrail" => data_source_free_trial(),
        "DnsLogs" => data_source_free_trial(),
        "FlowLogs" => data_source_free_trial(),
        "Kubernetes" => kubernetes_data_source_free_trial(),
        "MalwareProtection" => malware_protection_data_source_free_trial(),
        "S3Logs" => data_source_free_trial()
      }

  """
  @type data_sources_free_trial() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_usage_statistics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Unit") => String.t(),
        required("UsageCriteria") => usage_criteria(),
        required("UsageStatisticType") => list(any())
      }

  """
  @type get_usage_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_data_source_result() :: %{
        "DataSource" => list(any()),
        "Total" => total()
      }

  """
  @type usage_data_source_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_resource_criteria() :: %{
        "Exclude" => map(),
        "Include" => map()
      }

  """
  @type scan_resource_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decline_invitations_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type decline_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container() :: %{
        "ContainerRuntime" => String.t(),
        "Id" => String.t(),
        "Image" => String.t(),
        "ImagePrefix" => String.t(),
        "Name" => String.t(),
        "SecurityContext" => security_context(),
        "VolumeMounts" => list(volume_mount()())
      }

  """
  @type container() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remote_ip_details() :: %{
        "City" => city(),
        "Country" => country(),
        "GeoLocation" => geo_location(),
        "IpAddressV4" => String.t(),
        "Organization" => organization()
      }

  """
  @type remote_ip_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_response() :: %{}

  """
  @type disable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      kubernetes_data_source_free_trial() :: %{
        "AuditLogs" => data_source_free_trial()
      }

  """
  @type kubernetes_data_source_free_trial() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_ebs_volumes_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_ebs_volumes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      administrator() :: %{
        "AccountId" => String.t(),
        "InvitationId" => String.t(),
        "InvitedAt" => String.t(),
        "RelationshipStatus" => String.t()
      }

  """
  @type administrator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_statistics() :: %{
        "SumByAccount" => list(usage_account_result()()),
        "SumByDataSource" => list(usage_data_source_result()()),
        "SumByFeature" => list(usage_feature_result()()),
        "SumByResource" => list(usage_resource_result()()),
        "TopAccountsByFeature" => list(usage_top_accounts_result()()),
        "TopResources" => list(usage_resource_result()())
      }

  """
  @type usage_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_condition() :: %{
        "EqualsValue" => String.t(),
        "GreaterThan" => float(),
        "LessThan" => float()
      }

  """
  @type filter_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_detail() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DefaultServerSideEncryption" => default_server_side_encryption(),
        "Name" => String.t(),
        "Owner" => owner(),
        "PublicAccess" => public_access(),
        "Tags" => list(tag()()),
        "Type" => String.t()
      }

  """
  @type s3_bucket_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_configurations_result() :: %{
        "CloudTrail" => cloud_trail_configuration_result(),
        "DNSLogs" => dns_logs_configuration_result(),
        "FlowLogs" => flow_logs_configuration_result(),
        "Kubernetes" => kubernetes_configuration_result(),
        "MalwareProtection" => malware_protection_configuration_result(),
        "S3Logs" => s3_logs_configuration_result()
      }

  """
  @type data_source_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ip_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_ip_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_statistics_request() :: %{
        optional("FindingCriteria") => finding_criteria(),
        required("FindingStatisticTypes") => list(list(any())())
      }

  """
  @type get_findings_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "Members" => list(member()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type get_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_detectors_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type get_member_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      admin_account() :: %{
        "AdminAccountId" => String.t(),
        "AdminStatus" => list(any())
      }

  """
  @type admin_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_findings_response() :: %{}

  """
  @type archive_findings_response() :: %{}

  @typedoc """

  ## Example:

      accept_administrator_invitation_request() :: %{
        required("AdministratorId") => String.t(),
        required("InvitationId") => String.t()
      }

  """
  @type accept_administrator_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_condition_pair() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type scan_condition_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_properties() :: %{
        "DestinationArn" => String.t(),
        "KmsKeyArn" => String.t()
      }

  """
  @type destination_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_volume_details() :: %{
        "ScannedVolumeDetails" => list(volume_detail()()),
        "SkippedVolumeDetails" => list(volume_detail()())
      }

  """
  @type ebs_volume_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_threat_intel_set_response() :: %{}

  """
  @type delete_threat_intel_set_response() :: %{}

  @typedoc """

  ## Example:

      kubernetes_audit_logs_configuration() :: %{
        "Enable" => boolean()
      }

  """
  @type kubernetes_audit_logs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_workload_details() :: %{
        "Containers" => list(container()()),
        "HostIPC" => boolean(),
        "HostNetwork" => boolean(),
        "HostPID" => boolean(),
        "Name" => String.t(),
        "Namespace" => String.t(),
        "ServiceAccountName" => String.t(),
        "Type" => String.t(),
        "Uid" => String.t(),
        "Volumes" => list(volume()())
      }

  """
  @type kubernetes_workload_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_administrator_account_request() :: %{}

  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      process_details() :: %{
        "Euid" => integer(),
        "ExecutablePath" => String.t(),
        "ExecutableSha256" => String.t(),
        "Lineage" => list(lineage_object()()),
        "Name" => String.t(),
        "NamespacePid" => integer(),
        "ParentUuid" => String.t(),
        "Pid" => integer(),
        "Pwd" => String.t(),
        "StartTime" => non_neg_integer(),
        "User" => String.t(),
        "UserId" => integer(),
        "Uuid" => String.t()
      }

  """
  @type process_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_publishing_destinations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_publishing_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "FilterCriterion" => list(filter_criterion()())
      }

  """
  @type filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_criterion() :: %{
        "CriterionKey" => list(any()),
        "FilterCondition" => filter_condition()
      }

  """
  @type filter_criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_connection_action() :: %{
        "Blocked" => boolean(),
        "ConnectionDirection" => String.t(),
        "LocalIpDetails" => local_ip_details(),
        "LocalPortDetails" => local_port_details(),
        "Protocol" => String.t(),
        "RemoteIpDetails" => remote_ip_details(),
        "RemotePortDetails" => remote_port_details()
      }

  """
  @type network_connection_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_level_permissions() :: %{
        "BlockPublicAccess" => block_public_access()
      }

  """
  @type account_level_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_filter_condition() :: %{
        "Equals" => list(String.t()()),
        "NotEquals" => list(String.t()())
      }

  """
  @type coverage_filter_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malware_protection_configuration() :: %{
        "ScanEc2InstanceWithFindings" => scan_ec2_instance_with_findings()
      }

  """
  @type malware_protection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t()
      }

  """
  @type local_port_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_monitoring_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type start_monitoring_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malware_protection_configuration_result() :: %{
        "ScanEc2InstanceWithFindings" => scan_ec2_instance_with_findings_result(),
        "ServiceRole" => String.t()
      }

  """
  @type malware_protection_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_api_call_action() :: %{
        "Namespace" => String.t(),
        "Parameters" => String.t(),
        "RemoteIpDetails" => remote_ip_details(),
        "RequestUri" => String.t(),
        "Resource" => String.t(),
        "ResourceName" => String.t(),
        "SourceIps" => list(String.t()()),
        "StatusCode" => integer(),
        "Subresource" => String.t(),
        "UserAgent" => String.t(),
        "Verb" => String.t()
      }

  """
  @type kubernetes_api_call_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detector_feature_configuration_result() :: %{
        "AdditionalConfiguration" => list(detector_additional_configuration_result()()),
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type detector_feature_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      highest_severity_threat_details() :: %{
        "Count" => integer(),
        "Severity" => String.t(),
        "ThreatName" => String.t()
      }

  """
  @type highest_severity_threat_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_filter_criterion() :: %{
        "CriterionKey" => list(any()),
        "FilterCondition" => coverage_filter_condition()
      }

  """
  @type coverage_filter_criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_malware_protection_configuration() :: %{
        "ScanEc2InstanceWithFindings" => organization_scan_ec2_instance_with_findings()
      }

  """
  @type organization_malware_protection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_db_user_details() :: %{
        "Application" => String.t(),
        "AuthMethod" => String.t(),
        "Database" => String.t(),
        "Ssl" => String.t(),
        "User" => String.t()
      }

  """
  @type rds_db_user_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_ec2_instance_with_findings() :: %{
        "EbsVolumes" => boolean()
      }

  """
  @type scan_ec2_instance_with_findings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "AccountId" => String.t(),
        "InvitationId" => String.t(),
        "InvitedAt" => String.t(),
        "RelationshipStatus" => String.t()
      }

  """
  @type invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_response() :: %{}

  """
  @type disassociate_from_master_account_response() :: %{}

  @typedoc """

  ## Example:

      lambda_details() :: %{
        "Description" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionName" => String.t(),
        "FunctionVersion" => String.t(),
        "LastModifiedAt" => non_neg_integer(),
        "RevisionId" => String.t(),
        "Role" => String.t(),
        "Tags" => list(tag()()),
        "VpcConfig" => vpc_config()
      }

  """
  @type lambda_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_publishing_destination_response() :: %{
        "DestinationId" => String.t(),
        "DestinationProperties" => destination_properties(),
        "DestinationType" => list(any()),
        "PublishingFailureStartTimestamp" => float(),
        "Status" => list(any())
      }

  """
  @type describe_publishing_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_malware_scans_request() :: %{
        optional("FilterCriteria") => filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => sort_criteria()
      }

  """
  @type describe_malware_scans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_publishing_destination_response() :: %{}

  """
  @type update_publishing_destination_response() :: %{}

  @typedoc """

  ## Example:

      get_coverage_statistics_response() :: %{
        "CoverageStatistics" => coverage_statistics()
      }

  """
  @type get_coverage_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "Ipv6Addresses" => list(String.t()()),
        "NetworkInterfaceId" => String.t(),
        "PrivateDnsName" => String.t(),
        "PrivateIpAddress" => String.t(),
        "PrivateIpAddresses" => list(private_ip_address_details()()),
        "PublicDnsName" => String.t(),
        "PublicIp" => String.t(),
        "SecurityGroups" => list(security_group()()),
        "SubnetId" => String.t(),
        "VpcId" => String.t()
      }

  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_additional_configuration() :: %{
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_additional_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_filter_response() :: %{
        "Action" => list(any()),
        "Description" => String.t(),
        "FindingCriteria" => finding_criteria(),
        "Name" => String.t(),
        "Rank" => integer(),
        "Tags" => map()
      }

  """
  @type get_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_s3_logs_configuration() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_s3_logs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_statistics_response() :: %{
        "FindingStatistics" => finding_statistics()
      }

  """
  @type get_findings_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remote_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t()
      }

  """
  @type remote_port_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ip_set_response() :: %{}

  """
  @type update_ip_set_response() :: %{}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        "FindingIds" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_sort_criteria() :: %{
        "AttributeName" => list(any()),
        "OrderBy" => list(any())
      }

  """
  @type coverage_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_filter_response() :: %{
        "Name" => String.t()
      }

  """
  @type create_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_threat_intel_set_request() :: %{}

  """
  @type delete_threat_intel_set_request() :: %{}

  @typedoc """

  ## Example:

      update_malware_scan_settings_request() :: %{
        optional("EbsSnapshotPreservation") => list(any()),
        optional("ScanResourceCriteria") => scan_resource_criteria()
      }

  """
  @type update_malware_scan_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ip_set_request() :: %{}

  """
  @type delete_ip_set_request() :: %{}

  @typedoc """

  ## Example:

      list_detectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type s3_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "Action" => action(),
        "AdditionalInfo" => service_additional_info(),
        "Archived" => boolean(),
        "Count" => integer(),
        "Detection" => detection(),
        "DetectorId" => String.t(),
        "EbsVolumeScanDetails" => ebs_volume_scan_details(),
        "EventFirstSeen" => String.t(),
        "EventLastSeen" => String.t(),
        "Evidence" => evidence(),
        "FeatureName" => String.t(),
        "ResourceRole" => String.t(),
        "RuntimeDetails" => runtime_details(),
        "ServiceName" => String.t(),
        "UserFeedback" => String.t()
      }

  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("SortCriteria") => sort_criteria(),
        required("FindingIds") => list(String.t()())
      }

  """
  @type get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_details() :: %{
        "Version" => String.t()
      }

  """
  @type agent_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_publishing_destination_request() :: %{
        optional("ClientToken") => String.t(),
        required("DestinationProperties") => destination_properties(),
        required("DestinationType") => list(any())
      }

  """
  @type create_publishing_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_detail() :: %{
        "AccountId" => String.t(),
        "Email" => String.t()
      }

  """
  @type account_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      host_path() :: %{
        "Path" => String.t()
      }

  """
  @type host_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      volume_detail() :: %{
        "DeviceName" => String.t(),
        "EncryptionType" => String.t(),
        "KmsKeyArn" => String.t(),
        "SnapshotArn" => String.t(),
        "VolumeArn" => String.t(),
        "VolumeSizeInGB" => integer(),
        "VolumeType" => String.t()
      }

  """
  @type volume_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_access() :: %{
        "EffectivePermission" => String.t(),
        "PermissionConfiguration" => permission_configuration()
      }

  """
  @type public_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      country() :: %{
        "CountryCode" => String.t(),
        "CountryName" => String.t()
      }

  """
  @type country() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      total() :: %{
        "Amount" => String.t(),
        "Unit" => String.t()
      }

  """
  @type total() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detector_feature_configuration() :: %{
        "AdditionalConfiguration" => list(detector_additional_configuration()()),
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type detector_feature_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_request() :: %{
        required("AdminAccountId") => String.t()
      }

  """
  @type disable_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ip_set_request() :: %{
        optional("Activate") => boolean(),
        optional("Location") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      impersonated_user() :: %{
        "Groups" => list(String.t()()),
        "Username" => String.t()
      }

  """
  @type impersonated_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_publishing_destination_request() :: %{}

  """
  @type delete_publishing_destination_request() :: %{}

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type delete_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite_members_request() :: %{
        optional("DisableEmailNotification") => boolean(),
        optional("Message") => String.t(),
        required("AccountIds") => list(String.t()())
      }

  """
  @type invite_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_configuration() :: %{
        "AccountLevelPermissions" => account_level_permissions(),
        "BucketLevelPermissions" => bucket_level_permissions()
      }

  """
  @type permission_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_threat_intel_set_response() :: %{}

  """
  @type update_threat_intel_set_response() :: %{}

  @typedoc """

  ## Example:

      organization_kubernetes_audit_logs_configuration_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_kubernetes_audit_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_features_configuration_result() :: %{
        "AdditionalConfiguration" => list(member_additional_configuration_result()()),
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member_features_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_audit_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type kubernetes_audit_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_threat_intel_sets_response() :: %{
        "NextToken" => String.t(),
        "ThreatIntelSetIds" => list(String.t()())
      }

  """
  @type list_threat_intel_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      observations() :: %{
        "Text" => list(String.t()())
      }

  """
  @type observations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_data_source_configurations_result() :: %{
        "Kubernetes" => organization_kubernetes_configuration_result(),
        "MalwareProtection" => organization_malware_protection_configuration_result(),
        "S3Logs" => organization_s3_logs_configuration_result()
      }

  """
  @type organization_data_source_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_findings_request() :: %{
        required("FindingIds") => list(String.t()())
      }

  """
  @type archive_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_ec2_instance_with_findings_result() :: %{
        "EbsVolumes" => ebs_volumes_result()
      }

  """
  @type scan_ec2_instance_with_findings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_response() :: %{}

  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:

      coverage_resource() :: %{
        "AccountId" => String.t(),
        "CoverageStatus" => list(any()),
        "DetectorId" => String.t(),
        "Issue" => String.t(),
        "ResourceDetails" => coverage_resource_details(),
        "ResourceId" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type coverage_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_filter_response() :: %{
        "Name" => String.t()
      }

  """
  @type update_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_user_details() :: %{
        "Groups" => list(String.t()()),
        "ImpersonatedUser" => impersonated_user(),
        "SessionName" => list(String.t()()),
        "Uid" => String.t(),
        "Username" => String.t()
      }

  """
  @type kubernetes_user_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threats_detected_item_count() :: %{
        "Files" => integer()
      }

  """
  @type threats_detected_item_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_result_details() :: %{
        "ScanResult" => list(any())
      }

  """
  @type scan_result_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "AutoEnable" => boolean(),
        "AutoEnableOrganizationMembers" => list(any()),
        "DataSources" => organization_data_source_configurations_result(),
        "Features" => list(organization_feature_configuration_result()()),
        "MemberAccountLimitReached" => boolean(),
        "NextToken" => String.t()
      }

  """
  @type describe_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_malware_scan_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type start_malware_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_feature_configuration() :: %{
        "AdditionalConfiguration" => list(organization_additional_configuration()()),
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_feature_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_detector_response() :: %{
        "DetectorId" => String.t(),
        "UnprocessedDataSources" => unprocessed_data_sources_result()
      }

  """
  @type create_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detector_additional_configuration_result() :: %{
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type detector_additional_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unarchive_findings_request() :: %{
        required("FindingIds") => list(String.t()())
      }

  """
  @type unarchive_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_request_action() :: %{
        "Blocked" => boolean(),
        "Domain" => String.t(),
        "DomainWithSuffix" => String.t(),
        "Protocol" => String.t()
      }

  """
  @type dns_request_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_filter_request() :: %{
        optional("Action") => list(any()),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Rank") => integer(),
        optional("Tags") => map(),
        required("FindingCriteria") => finding_criteria(),
        required("Name") => String.t()
      }

  """
  @type create_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type get_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_additional_info() :: %{
        "Type" => String.t(),
        "Value" => String.t()
      }

  """
  @type service_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_publishing_destination_response() :: %{}

  """
  @type delete_publishing_destination_response() :: %{}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        required("AccountDetails") => list(account_detail()())
      }

  """
  @type create_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_detector_response() :: %{}

  """
  @type update_detector_response() :: %{}

  @typedoc """

  ## Example:

      list_ip_sets_response() :: %{
        "IpSetIds" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_ip_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_account_result() :: %{
        "AccountId" => String.t(),
        "Total" => total()
      }

  """
  @type usage_account_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_organization_statistics_response() :: %{
        "OrganizationDetails" => organization_details()
      }

  """
  @type get_organization_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_instance_details() :: %{
        "CompatibleContainerInstances" => float(),
        "CoveredContainerInstances" => float()
      }

  """
  @type container_instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_scan_ec2_instance_with_findings() :: %{
        "EbsVolumes" => organization_ebs_volumes()
      }

  """
  @type organization_scan_ec2_instance_with_findings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      master() :: %{
        "AccountId" => String.t(),
        "InvitationId" => String.t(),
        "InvitedAt" => String.t(),
        "RelationshipStatus" => String.t()
      }

  """
  @type master() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_detector_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DataSources") => data_source_configurations(),
        optional("Features") => list(detector_feature_configuration()()),
        optional("FindingPublishingFrequency") => list(any()),
        optional("Tags") => map(),
        required("Enable") => boolean()
      }

  """
  @type create_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remote_account_details() :: %{
        "AccountId" => String.t(),
        "Affiliated" => boolean()
      }

  """
  @type remote_account_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_members_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type disassociate_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "Findings" => list(finding()())
      }

  """
  @type get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_threat_intel_set_response() :: %{
        "Format" => list(any()),
        "Location" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_threat_intel_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_kubernetes_audit_logs_configuration() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_kubernetes_audit_logs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_ec2_instance_details() :: %{
        "AgentDetails" => agent_details(),
        "ClusterArn" => String.t(),
        "InstanceId" => String.t(),
        "InstanceType" => String.t(),
        "ManagementType" => list(any())
      }

  """
  @type coverage_ec2_instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_threat_intel_set_request() :: %{
        optional("Activate") => boolean(),
        optional("Location") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_threat_intel_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bucket_policy() :: %{
        "AllowsPublicReadAccess" => boolean(),
        "AllowsPublicWriteAccess" => boolean()
      }

  """
  @type bucket_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type flow_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type delete_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type invite_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_malware_scan_settings_response() :: %{
        "EbsSnapshotPreservation" => list(any()),
        "ScanResourceCriteria" => scan_resource_criteria()
      }

  """
  @type get_malware_scan_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_features_configuration() :: %{
        "AdditionalConfiguration" => list(member_additional_configuration()()),
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type member_features_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_malware_scans_response() :: %{
        "NextToken" => String.t(),
        "Scans" => list(scan()())
      }

  """
  @type describe_malware_scans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecs_task_details() :: %{
        "Arn" => String.t(),
        "Containers" => list(container()()),
        "DefinitionArn" => String.t(),
        "Group" => String.t(),
        "StartedAt" => non_neg_integer(),
        "StartedBy" => String.t(),
        "Tags" => list(tag()()),
        "TaskCreatedAt" => non_neg_integer(),
        "Version" => String.t(),
        "Volumes" => list(volume()())
      }

  """
  @type ecs_task_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_logs_configuration() :: %{
        "Enable" => boolean()
      }

  """
  @type s3_logs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_publishing_destination_response() :: %{
        "DestinationId" => String.t()
      }

  """
  @type create_publishing_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_detector_response() :: %{}

  """
  @type delete_detector_response() :: %{}

  @typedoc """

  ## Example:

      describe_publishing_destination_request() :: %{}

  """
  @type describe_publishing_destination_request() :: %{}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "SecurityGroups" => list(security_group()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }

  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_statistics() :: %{
        "CountByCoverageStatus" => map(),
        "CountByResourceType" => map()
      }

  """
  @type coverage_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "AccountId" => String.t(),
        "Arn" => String.t(),
        "Confidence" => float(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Partition" => String.t(),
        "Region" => String.t(),
        "Resource" => resource(),
        "SchemaVersion" => String.t(),
        "Service" => service(),
        "Severity" => float(),
        "Title" => String.t(),
        "Type" => String.t(),
        "UpdatedAt" => String.t()
      }

  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_eks_cluster_details() :: %{
        "AddonDetails" => addon_details(),
        "ClusterName" => String.t(),
        "CompatibleNodes" => float(),
        "CoveredNodes" => float(),
        "ManagementType" => list(any())
      }

  """
  @type coverage_eks_cluster_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_resource_details() :: %{
        "Ec2InstanceDetails" => coverage_ec2_instance_details(),
        "EcsClusterDetails" => coverage_ecs_cluster_details(),
        "EksClusterDetails" => coverage_eks_cluster_details(),
        "ResourceType" => list(any())
      }

  """
  @type coverage_resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      volume_mount() :: %{
        "MountPath" => String.t(),
        "Name" => String.t()
      }

  """
  @type volume_mount() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        optional("FindingCriteria") => finding_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => sort_criteria()
      }

  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_configuration() :: %{
        "AuditLogs" => kubernetes_audit_logs_configuration()
      }

  """
  @type kubernetes_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_publishing_destinations_response() :: %{
        "Destinations" => list(destination()()),
        "NextToken" => String.t()
      }

  """
  @type list_publishing_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_additional_configuration() :: %{
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type member_additional_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_filter_request() :: %{}

  """
  @type get_filter_request() :: %{}

  @typedoc """

  ## Example:

      get_threat_intel_set_request() :: %{}

  """
  @type get_threat_intel_set_request() :: %{}

  @typedoc """

  ## Example:

      trigger_details() :: %{
        "Description" => String.t(),
        "GuardDutyFindingId" => String.t()
      }

  """
  @type trigger_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_filter_response() :: %{}

  """
  @type delete_filter_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type disassociate_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_group() :: %{
        "GroupId" => String.t(),
        "GroupName" => String.t()
      }

  """
  @type security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_response() :: %{
        "NextToken" => String.t(),
        "Resources" => list(coverage_resource()())
      }

  """
  @type list_coverage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "Eq" => list(String.t()()),
        "Equals" => list(String.t()()),
        "GreaterThan" => float(),
        "GreaterThanOrEqual" => float(),
        "Gt" => integer(),
        "Gte" => integer(),
        "LessThan" => float(),
        "LessThanOrEqual" => float(),
        "Lt" => integer(),
        "Lte" => integer(),
        "Neq" => list(String.t()()),
        "NotEquals" => list(String.t()())
      }

  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_threat_intel_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_threat_intel_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_malware_scan_settings_response() :: %{}

  """
  @type update_malware_scan_settings_response() :: %{}

  @typedoc """

  ## Example:

      update_organization_configuration_response() :: %{}

  """
  @type update_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:

      lineage_object() :: %{
        "Euid" => integer(),
        "ExecutablePath" => String.t(),
        "Name" => String.t(),
        "NamespacePid" => integer(),
        "ParentUuid" => String.t(),
        "Pid" => integer(),
        "StartTime" => non_neg_integer(),
        "UserId" => integer(),
        "Uuid" => String.t()
      }

  """
  @type lineage_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detection() :: %{
        "Anomaly" => anomaly()
      }

  """
  @type detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_findings_feedback_response() :: %{}

  """
  @type update_findings_feedback_response() :: %{}

  @typedoc """

  ## Example:

      ebs_volumes_result() :: %{
        "Reason" => String.t(),
        "Status" => list(any())
      }

  """
  @type ebs_volumes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      product_code() :: %{
        "Code" => String.t(),
        "ProductType" => String.t()
      }

  """
  @type product_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_invitation_response() :: %{}

  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:

      create_sample_findings_request() :: %{
        optional("FindingTypes") => list(String.t()())
      }

  """
  @type create_sample_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decline_invitations_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type decline_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_s3_logs_configuration_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_s3_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_free_trial_info() :: %{
        "AccountId" => String.t(),
        "DataSources" => data_sources_free_trial(),
        "Features" => list(free_trial_feature_configuration_result()())
      }

  """
  @type account_free_trial_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_master_account_response() :: %{
        "Master" => master()
      }

  """
  @type get_master_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_data_sources_result() :: %{
        "MalwareProtection" => malware_protection_configuration_result()
      }

  """
  @type unprocessed_data_sources_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_detectors_response() :: %{
        "MemberDataSourceConfigurations" => list(member_data_source_configuration()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type get_member_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_api_call_action() :: %{
        "AffectedResources" => map(),
        "Api" => String.t(),
        "CallerType" => String.t(),
        "DomainDetails" => domain_details(),
        "ErrorCode" => String.t(),
        "RemoteAccountDetails" => remote_account_details(),
        "RemoteIpDetails" => remote_ip_details(),
        "ServiceName" => String.t(),
        "UserAgent" => String.t()
      }

  """
  @type aws_api_call_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_role_details() :: %{
        "Kind" => String.t(),
        "Name" => String.t(),
        "Uid" => String.t()
      }

  """
  @type kubernetes_role_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_cluster_details() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t(),
        "Tags" => list(tag()()),
        "VpcId" => String.t()
      }

  """
  @type eks_cluster_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_malware_protection_configuration_result() :: %{
        "ScanEc2InstanceWithFindings" => organization_scan_ec2_instance_with_findings_result()
      }

  """
  @type organization_malware_protection_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_invitations_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type delete_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_ebs_volumes() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_ebs_volumes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_detector_response() :: %{
        "CreatedAt" => String.t(),
        "DataSources" => data_source_configurations_result(),
        "Features" => list(detector_feature_configuration_result()()),
        "FindingPublishingFrequency" => list(any()),
        "ServiceRole" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "UpdatedAt" => String.t()
      }

  """
  @type get_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_filter_request() :: %{
        optional("Action") => list(any()),
        optional("Description") => String.t(),
        optional("FindingCriteria") => finding_criteria(),
        optional("Rank") => integer()
      }

  """
  @type update_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_details() :: %{
        "KubernetesUserDetails" => kubernetes_user_details(),
        "KubernetesWorkloadDetails" => kubernetes_workload_details()
      }

  """
  @type kubernetes_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anomaly_object() :: %{
        "Observations" => observations(),
        "ProfileSubtype" => list(any()),
        "ProfileType" => list(any())
      }

  """
  @type anomaly_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_file_path() :: %{
        "FileName" => String.t(),
        "FilePath" => String.t(),
        "Hash" => String.t(),
        "VolumeArn" => String.t()
      }

  """
  @type scan_file_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_kubernetes_configuration_result() :: %{
        "AuditLogs" => organization_kubernetes_audit_logs_configuration_result()
      }

  """
  @type organization_kubernetes_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_detector_request() :: %{}

  """
  @type get_detector_request() :: %{}

  @typedoc """

  ## Example:

      anomaly() :: %{
        "Profiles" => map(),
        "Unusual" => anomaly_unusual()
      }

  """
  @type anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_additional_configuration_result() :: %{
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_additional_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnable") => boolean(),
        optional("AutoEnableOrganizationMembers") => list(any()),
        optional("DataSources") => organization_data_source_configurations(),
        optional("Features") => list(organization_feature_configuration()())
      }

  """
  @type update_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        required("AdminAccountId") => String.t()
      }

  """
  @type enable_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      addon_details() :: %{
        "AddonStatus" => String.t(),
        "AddonVersion" => String.t()
      }

  """
  @type addon_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_configuration_result() :: %{
        "AuditLogs" => kubernetes_audit_logs_configuration_result()
      }

  """
  @type kubernetes_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_location() :: %{
        "Lat" => float(),
        "Lon" => float()
      }

  """
  @type geo_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "ActionType" => String.t(),
        "AwsApiCallAction" => aws_api_call_action(),
        "DnsRequestAction" => dns_request_action(),
        "KubernetesApiCallAction" => kubernetes_api_call_action(),
        "KubernetesPermissionCheckedDetails" => kubernetes_permission_checked_details(),
        "KubernetesRoleBindingDetails" => kubernetes_role_binding_details(),
        "KubernetesRoleDetails" => kubernetes_role_details(),
        "NetworkConnectionAction" => network_connection_action(),
        "PortProbeAction" => port_probe_action(),
        "RdsLoginAttemptAction" => rds_login_attempt_action()
      }

  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threat_intelligence_detail() :: %{
        "ThreatFileSha256" => String.t(),
        "ThreatListName" => String.t(),
        "ThreatNames" => list(String.t()())
      }

  """
  @type threat_intelligence_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_threat_intel_set_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_threat_intel_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      login_attribute() :: %{
        "Application" => String.t(),
        "FailedLoginAttempts" => integer(),
        "SuccessfulLoginAttempts" => integer(),
        "User" => String.t()
      }

  """
  @type login_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_member_detectors_request() :: %{
        optional("DataSources") => data_source_configurations(),
        optional("Features") => list(member_features_configuration()()),
        required("AccountIds") => list(String.t()())
      }

  """
  @type update_member_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_additional_configuration_result() :: %{
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member_additional_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_invitations_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type delete_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_probe_action() :: %{
        "Blocked" => boolean(),
        "PortProbeDetails" => list(port_probe_detail()())
      }

  """
  @type port_probe_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_organization_admin_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "AttributeName" => String.t(),
        "OrderBy" => list(any())
      }

  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ip_set_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      volume() :: %{
        "HostPath" => host_path(),
        "Name" => String.t()
      }

  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_top_account_result() :: %{
        "AccountId" => String.t(),
        "Total" => total()
      }

  """
  @type usage_top_account_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_invitations_count_request() :: %{}

  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:

      get_ip_set_response() :: %{
        "Format" => list(any()),
        "Location" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      city() :: %{
        "CityName" => String.t()
      }

  """
  @type city() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        required("InvitationId") => String.t(),
        required("MasterId") => String.t()
      }

  """
  @type accept_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      anomaly_unusual() :: %{
        "Behavior" => map()
      }

  """
  @type anomaly_unusual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OnlyAssociated") => String.t()
      }

  """
  @type list_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fargate_details() :: %{
        "Issues" => list(String.t()()),
        "ManagementType" => list(any())
      }

  """
  @type fargate_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "Members" => list(member()()),
        "NextToken" => String.t()
      }

  """
  @type list_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      block_public_access() :: %{
        "BlockPublicAcls" => boolean(),
        "BlockPublicPolicy" => boolean(),
        "IgnorePublicAcls" => boolean(),
        "RestrictPublicBuckets" => boolean()
      }

  """
  @type block_public_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_detectors_response() :: %{
        "DetectorIds" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_trial_feature_configuration_result() :: %{
        "FreeTrialDaysRemaining" => integer(),
        "Name" => list(any())
      }

  """
  @type free_trial_feature_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_feature_statistics() :: %{
        "AdditionalConfiguration" => list(organization_feature_statistics_additional_configuration()()),
        "EnabledAccountsCount" => integer(),
        "Name" => list(any())
      }

  """
  @type organization_feature_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_ip_details() :: %{
        "IpAddressV4" => String.t()
      }

  """
  @type local_ip_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_remaining_free_trial_days_request() :: %{
        optional("AccountIds") => list(String.t()())
      }

  """
  @type get_remaining_free_trial_days_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scanned_item_count() :: %{
        "Files" => integer(),
        "TotalGb" => integer(),
        "Volumes" => integer()
      }

  """
  @type scanned_item_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_master_account_request() :: %{}

  """
  @type get_master_account_request() :: %{}

  @typedoc """

  ## Example:

      organization_feature_configuration_result() :: %{
        "AdditionalConfiguration" => list(organization_additional_configuration_result()()),
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_feature_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_request() :: %{
        optional("FilterCriteria") => coverage_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => coverage_sort_criteria()
      }

  """
  @type list_coverage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_remaining_free_trial_days_response() :: %{
        "Accounts" => list(account_free_trial_info()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type get_remaining_free_trial_days_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "DestinationId" => String.t(),
        "DestinationType" => list(any()),
        "Status" => list(any())
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_ip_address_details() :: %{
        "PrivateDnsName" => String.t(),
        "PrivateIpAddress" => String.t()
      }

  """
  @type private_ip_address_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_invitations_count_response() :: %{
        "InvitationsCount" => integer()
      }

  """
  @type get_invitations_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_context() :: %{
        "AddressFamily" => String.t(),
        "CommandLineExample" => String.t(),
        "FileSystemType" => String.t(),
        "Flags" => list(String.t()()),
        "IanaProtocolNumber" => integer(),
        "LdPreloadValue" => String.t(),
        "LibraryPath" => String.t(),
        "MemoryRegions" => list(String.t()()),
        "ModifiedAt" => non_neg_integer(),
        "ModifyingProcess" => process_details(),
        "ModuleFilePath" => String.t(),
        "ModuleName" => String.t(),
        "ModuleSha256" => String.t(),
        "MountSource" => String.t(),
        "MountTarget" => String.t(),
        "ReleaseAgentPath" => String.t(),
        "RuncBinaryPath" => String.t(),
        "ScriptPath" => String.t(),
        "ServiceName" => String.t(),
        "ShellHistoryFilePath" => String.t(),
        "SocketPath" => String.t(),
        "TargetProcess" => process_details(),
        "ThreatFilePath" => String.t(),
        "ToolCategory" => String.t(),
        "ToolName" => String.t()
      }

  """
  @type runtime_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evidence() :: %{
        "ThreatIntelligenceDetails" => list(threat_intelligence_detail()())
      }

  """
  @type evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_threat_name() :: %{
        "FilePaths" => list(scan_file_path()()),
        "ItemCount" => integer(),
        "Name" => String.t(),
        "Severity" => String.t()
      }

  """
  @type scan_threat_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_resource_result() :: %{
        "Resource" => String.t(),
        "Total" => total()
      }

  """
  @type usage_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_filter_criteria() :: %{
        "FilterCriterion" => list(coverage_filter_criterion()())
      }

  """
  @type coverage_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_threat_intel_set_response() :: %{
        "ThreatIntelSetId" => String.t()
      }

  """
  @type create_threat_intel_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_ecs_cluster_details() :: %{
        "ClusterName" => String.t(),
        "ContainerInstanceDetails" => container_instance_details(),
        "FargateDetails" => fargate_details()
      }

  """
  @type coverage_ecs_cluster_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_criteria() :: %{
        "Criterion" => map()
      }

  """
  @type finding_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_detections() :: %{
        "HighestSeverityThreatDetails" => highest_severity_threat_details(),
        "ScannedItemCount" => scanned_item_count(),
        "ThreatDetectedByName" => threat_detected_by_name(),
        "ThreatsDetectedItemCount" => threats_detected_item_count()
      }

  """
  @type scan_detections() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_permission_checked_details() :: %{
        "Allowed" => boolean(),
        "Namespace" => String.t(),
        "Resource" => String.t(),
        "Verb" => String.t()
      }

  """
  @type kubernetes_permission_checked_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_monitoring_members_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type start_monitoring_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sample_findings_response() :: %{}

  """
  @type create_sample_findings_response() :: %{}

  @typedoc """

  ## Example:

      update_findings_feedback_request() :: %{
        optional("Comments") => String.t(),
        required("Feedback") => list(any()),
        required("FindingIds") => list(String.t()())
      }

  """
  @type update_findings_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_login_attempt_action() :: %{
        "LoginAttributes" => list(login_attribute()()),
        "RemoteIpDetails" => remote_ip_details()
      }

  """
  @type rds_login_attempt_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t(),
        "AdministratorId" => String.t(),
        "DetectorId" => String.t(),
        "Email" => String.t(),
        "InvitedAt" => String.t(),
        "MasterId" => String.t(),
        "RelationshipStatus" => String.t(),
        "UpdatedAt" => String.t()
      }

  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ip_set_request() :: %{}

  """
  @type get_ip_set_request() :: %{}

  @typedoc """

  ## Example:

      usage_feature_result() :: %{
        "Feature" => list(any()),
        "Total" => total()
      }

  """
  @type usage_feature_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_response() :: %{}

  """
  @type enable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      finding_statistics() :: %{
        "CountBySeverity" => map()
      }

  """
  @type finding_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_scan_ec2_instance_with_findings_result() :: %{
        "EbsVolumes" => organization_ebs_volumes_result()
      }

  """
  @type organization_scan_ec2_instance_with_findings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecs_cluster_details() :: %{
        "ActiveServicesCount" => integer(),
        "Arn" => String.t(),
        "Name" => String.t(),
        "RegisteredContainerInstancesCount" => integer(),
        "RunningTasksCount" => integer(),
        "Status" => String.t(),
        "Tags" => list(tag()()),
        "TaskDetails" => ecs_task_details()
      }

  """
  @type ecs_cluster_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan() :: %{
        "AccountId" => String.t(),
        "AdminDetectorId" => String.t(),
        "AttachedVolumes" => list(volume_detail()()),
        "DetectorId" => String.t(),
        "FailureReason" => String.t(),
        "FileCount" => float(),
        "ResourceDetails" => resource_details(),
        "ScanEndTime" => non_neg_integer(),
        "ScanId" => String.t(),
        "ScanResultDetails" => scan_result_details(),
        "ScanStartTime" => non_neg_integer(),
        "ScanStatus" => list(any()),
        "ScanType" => list(any()),
        "TotalBytes" => float(),
        "TriggerDetails" => trigger_details()
      }

  """
  @type scan() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_malware_scan_settings_request() :: %{}

  """
  @type get_malware_scan_settings_request() :: %{}

  @typedoc """

  ## Example:

      organization_statistics() :: %{
        "ActiveAccountsCount" => integer(),
        "CountByFeature" => list(organization_feature_statistics()()),
        "EnabledAccountsCount" => integer(),
        "MemberAccountsCount" => integer(),
        "TotalAccountsCount" => integer()
      }

  """
  @type organization_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_details() :: %{
        "Domain" => String.t()
      }

  """
  @type domain_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kubernetes_role_binding_details() :: %{
        "Kind" => String.t(),
        "Name" => String.t(),
        "RoleRefKind" => String.t(),
        "RoleRefName" => String.t(),
        "Uid" => String.t()
      }

  """
  @type kubernetes_role_binding_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malware_protection_data_source_free_trial() :: %{
        "ScanEc2InstanceWithFindings" => data_source_free_trial()
      }

  """
  @type malware_protection_data_source_free_trial() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_volume_scan_details() :: %{
        "ScanCompletedAt" => non_neg_integer(),
        "ScanDetections" => scan_detections(),
        "ScanId" => String.t(),
        "ScanStartedAt" => non_neg_integer(),
        "ScanType" => list(any()),
        "Sources" => list(String.t()()),
        "TriggerFindingId" => String.t()
      }

  """
  @type ebs_volume_scan_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_data_source_configurations() :: %{
        "Kubernetes" => organization_kubernetes_configuration(),
        "MalwareProtection" => organization_malware_protection_configuration(),
        "S3Logs" => organization_s3_logs_configuration()
      }

  """
  @type organization_data_source_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_account() :: %{
        "AccountId" => String.t(),
        "Result" => String.t()
      }

  """
  @type unprocessed_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_member_detectors_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type update_member_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "InstanceArn" => String.t()
      }

  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type dns_logs_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_publishing_destination_request() :: %{
        optional("DestinationProperties") => destination_properties()
      }

  """
  @type update_publishing_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_administrator_invitation_response() :: %{}

  """
  @type accept_administrator_invitation_response() :: %{}

  @typedoc """

  ## Example:

      create_ip_set_response() :: %{
        "IpSetId" => String.t()
      }

  """
  @type create_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_monitoring_members_request() :: %{
        required("AccountIds") => list(String.t()())
      }

  """
  @type stop_monitoring_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_feature_statistics_additional_configuration() :: %{
        "EnabledAccountsCount" => integer(),
        "Name" => list(any())
      }

  """
  @type organization_feature_statistics_additional_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_db_instance_details() :: %{
        "DbClusterIdentifier" => String.t(),
        "DbInstanceArn" => String.t(),
        "DbInstanceIdentifier" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type rds_db_instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_condition() :: %{
        "MapEquals" => list(scan_condition_pair()())
      }

  """
  @type scan_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threat_detected_by_name() :: %{
        "ItemCount" => integer(),
        "Shortened" => boolean(),
        "ThreatNames" => list(scan_threat_name()()),
        "UniqueThreatNameCount" => integer()
      }

  """
  @type threat_detected_by_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bucket_level_permissions() :: %{
        "AccessControlList" => access_control_list(),
        "BlockPublicAccess" => block_public_access(),
        "BucketPolicy" => bucket_policy()
      }

  """
  @type bucket_level_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "AdminAccounts" => list(admin_account()()),
        "NextToken" => String.t()
      }

  """
  @type list_organization_admin_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_top_accounts_result() :: %{
        "Accounts" => list(usage_top_account_result()()),
        "Feature" => list(any())
      }

  """
  @type usage_top_accounts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_probe_detail() :: %{
        "LocalIpDetails" => local_ip_details(),
        "LocalPortDetails" => local_port_details(),
        "RemoteIpDetails" => remote_ip_details()
      }

  """
  @type port_probe_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_instance_profile() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type iam_instance_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_monitoring_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type stop_monitoring_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_request() :: %{}

  """
  @type disassociate_from_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      update_detector_request() :: %{
        optional("DataSources") => data_source_configurations(),
        optional("Enable") => boolean(),
        optional("Features") => list(detector_feature_configuration()()),
        optional("FindingPublishingFrequency") => list(any())
      }

  """
  @type update_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_context() :: %{
        "AllowPrivilegeEscalation" => boolean(),
        "Privileged" => boolean()
      }

  """
  @type security_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_server_side_encryption() :: %{
        "EncryptionType" => String.t(),
        "KmsMasterKeyArn" => String.t()
      }

  """
  @type default_server_side_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_control_list() :: %{
        "AllowsPublicReadAccess" => boolean(),
        "AllowsPublicWriteAccess" => boolean()
      }

  """
  @type access_control_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_configurations() :: %{
        "Kubernetes" => kubernetes_configuration(),
        "MalwareProtection" => malware_protection_configuration(),
        "S3Logs" => s3_logs_configuration()
      }

  """
  @type data_source_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_administrator_account_response() :: %{
        "Administrator" => administrator()
      }

  """
  @type get_administrator_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_free_trial() :: %{
        "FreeTrialDaysRemaining" => integer()
      }

  """
  @type data_source_free_trial() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detector_additional_configuration() :: %{
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type detector_additional_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_filters_response() :: %{
        "FilterNames" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_malware_scan_response() :: %{
        "ScanId" => String.t()
      }

  """
  @type start_malware_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unarchive_findings_response() :: %{}

  """
  @type unarchive_findings_response() :: %{}

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type create_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_key_details() :: %{
        "AccessKeyId" => String.t(),
        "PrincipalId" => String.t(),
        "UserName" => String.t(),
        "UserType" => String.t()
      }

  """
  @type access_key_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_filter_request() :: %{}

  """
  @type delete_filter_request() :: %{}

  @typedoc """

  ## Example:

      owner() :: %{
        "Id" => String.t()
      }

  """
  @type owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_coverage_statistics_request() :: %{
        optional("FilterCriteria") => coverage_filter_criteria(),
        required("StatisticsType") => list(list(any())())
      }

  """
  @type get_coverage_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ip_set_response() :: %{}

  """
  @type delete_ip_set_response() :: %{}

  @typedoc """

  ## Example:

      runtime_details() :: %{
        "Context" => runtime_context(),
        "Process" => process_details()
      }

  """
  @type runtime_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage_criteria() :: %{
        "AccountIds" => list(String.t()()),
        "DataSources" => list(list(any())()),
        "Features" => list(list(any())()),
        "Resources" => list(String.t()())
      }

  """
  @type usage_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_usage_statistics_response() :: %{
        "NextToken" => String.t(),
        "UsageStatistics" => usage_statistics()
      }

  """
  @type get_usage_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_filters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_detector_request() :: %{}

  """
  @type delete_detector_request() :: %{}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "Invitations" => list(invitation()()),
        "NextToken" => String.t()
      }

  """
  @type list_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "AccessKeyDetails" => access_key_details(),
        "ContainerDetails" => container(),
        "EbsVolumeDetails" => ebs_volume_details(),
        "EcsClusterDetails" => ecs_cluster_details(),
        "EksClusterDetails" => eks_cluster_details(),
        "InstanceDetails" => instance_details(),
        "KubernetesDetails" => kubernetes_details(),
        "LambdaDetails" => lambda_details(),
        "RdsDbInstanceDetails" => rds_db_instance_details(),
        "RdsDbUserDetails" => rds_db_user_details(),
        "ResourceType" => String.t(),
        "S3BucketDetails" => list(s3_bucket_detail()())
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_details() :: %{
        "OrganizationStatistics" => organization_statistics(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type organization_details() :: %{String.t() => any()}

  @type accept_administrator_invitation_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type accept_invitation_errors() :: bad_request_exception() | internal_server_error_exception()

  @type archive_findings_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_ip_set_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_sample_findings_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type decline_invitations_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_invitations_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_ip_set_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type describe_malware_scans_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type describe_organization_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type describe_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type disable_organization_admin_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type disassociate_from_administrator_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type disassociate_from_master_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type disassociate_members_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type enable_organization_admin_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_administrator_account_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_coverage_statistics_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_findings_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_findings_statistics_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_invitations_count_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_ip_set_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_malware_scan_settings_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_master_account_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_member_detectors_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type get_organization_statistics_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_remaining_free_trial_days_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_usage_statistics_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type invite_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_coverage_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_detectors_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_filters_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_findings_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_invitations_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_ip_sets_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_organization_admin_accounts_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_publishing_destinations_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type list_threat_intel_sets_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type start_malware_scan_errors() ::
          bad_request_exception() | internal_server_error_exception() | conflict_exception()

  @type start_monitoring_members_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type stop_monitoring_members_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type unarchive_findings_errors() :: bad_request_exception() | internal_server_error_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type update_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type update_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type update_findings_feedback_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_ip_set_errors() :: bad_request_exception() | internal_server_error_exception()

  @type update_malware_scan_settings_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_member_detectors_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_organization_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  def metadata do
    %{
      api_version: "2017-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "guardduty",
      global?: false,
      protocol: "rest-json",
      service_id: "GuardDuty",
      signature_version: "v4",
      signing_name: "guardduty",
      target_prefix: nil
    }
  end

  @doc """
  Accepts the invitation to be a member account and get monitored by a GuardDuty
  administrator account that sent the invitation.
  """
  @spec accept_administrator_invitation(
          map(),
          String.t(),
          accept_administrator_invitation_request(),
          list()
        ) ::
          {:ok, accept_administrator_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_administrator_invitation_errors()}
  def accept_administrator_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
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
  Accepts the invitation to be monitored by a GuardDuty administrator account.
  """
  @spec accept_invitation(map(), String.t(), accept_invitation_request(), list()) ::
          {:ok, accept_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
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
  Archives GuardDuty findings that are specified by the list of finding IDs.

  Only the administrator account can archive findings. Member accounts don't have
  permission to archive findings from their accounts.
  """
  @spec archive_findings(map(), String.t(), archive_findings_request(), list()) ::
          {:ok, archive_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, archive_findings_errors()}
  def archive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/archive"
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
  Creates a single GuardDuty detector.

  A detector is a resource that represents the
  GuardDuty service. To start using GuardDuty, you must create a detector in each
  Region where
  you enable the service. You can have only one detector per account per Region.
  All data
  sources are enabled in a new detector by default.

    *
  When you don't specify any `features`, with an
  exception to `RUNTIME_MONITORING`, all the optional features are
  enabled by default.

    *
  When you specify some of the `features`, any feature that is not specified in
  the
  API call gets enabled by default, with an exception to `RUNTIME_MONITORING`.

  Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`)
  and Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error.
  You can add only one of these two features because Runtime Monitoring already
  includes the
  threat detection for Amazon EKS resources. For more information, see
  [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec create_detector(map(), create_detector_request(), list()) ::
          {:ok, create_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_detector_errors()}
  def create_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detector"
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
  Creates a filter using the specified finding criteria.

  The maximum number of saved filters
  per Amazon Web Services account per Region is 100. For more information, see
  [Quotas for GuardDuty](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html).
  """
  @spec create_filter(map(), String.t(), create_filter_request(), list()) ::
          {:ok, create_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_filter_errors()}
  def create_filter(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
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
  Creates a new IPSet, which is called a trusted IP list in the console user
  interface.

  An
  IPSet is a list of IP addresses that are trusted for secure communication with
  Amazon Web Services
  infrastructure and applications. GuardDuty doesn't generate findings for IP
  addresses that are
  included in IPSets. Only users from the administrator account can use this
  operation.
  """
  @spec create_ip_set(map(), String.t(), create_ip_set_request(), list()) ::
          {:ok, create_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ip_set_errors()}
  def create_ip_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset"
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
  Creates member accounts of the current Amazon Web Services account by specifying
  a list of Amazon Web Services account
  IDs.

  This step is a prerequisite for managing the associated member accounts either
  by
  invitation or through an organization.

  As a delegated administrator, using `CreateMembers` will enable GuardDuty in
  the added member accounts, with the exception of the
  organization delegated administrator account. A delegated administrator must
  enable GuardDuty
  prior to being added as a member.

  When you use CreateMembers as an Organizations delegated
  administrator, GuardDuty applies your organization's auto-enable settings to the
  member
  accounts in this request, irrespective of the accounts being new or existing
  members. For
  more information about the existing auto-enable settings for your organization,
  see
  [DescribeOrganizationConfiguration](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html). 
  If you disassociate a member account that was added by invitation, the member
  account details
  obtained from this API, including the associated email addresses, will be
  retained.
  This is done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  When the member accounts added through Organizations are later disassociated,
  you (administrator)
  can't invite them by calling the InviteMembers API. You can create an
  association with these
  member accounts again only by calling the CreateMembers API.
  """
  @spec create_members(map(), String.t(), create_members_request(), list()) ::
          {:ok, create_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_members_errors()}
  def create_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
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
  Creates a publishing destination to export findings to.

  The resource to export findings to
  must exist before you use this operation.
  """
  @spec create_publishing_destination(
          map(),
          String.t(),
          create_publishing_destination_request(),
          list()
        ) ::
          {:ok, create_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_publishing_destination_errors()}
  def create_publishing_destination(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination"
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
  Generates sample findings of types specified by the list of finding types.

  If 'NULL' is
  specified for `findingTypes`, the API generates sample findings of all supported
  finding types.
  """
  @spec create_sample_findings(map(), String.t(), create_sample_findings_request(), list()) ::
          {:ok, create_sample_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sample_findings_errors()}
  def create_sample_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/create"
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
  Creates a new ThreatIntelSet.

  ThreatIntelSets consist of known malicious IP addresses.
  GuardDuty generates findings based on ThreatIntelSets. Only users of the
  administrator
  account can use this operation.
  """
  @spec create_threat_intel_set(map(), String.t(), create_threat_intel_set_request(), list()) ::
          {:ok, create_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_threat_intel_set_errors()}
  def create_threat_intel_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset"
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
  Declines invitations sent to the current member account by Amazon Web Services
  accounts specified by
  their account IDs.
  """
  @spec decline_invitations(map(), decline_invitations_request(), list()) ::
          {:ok, decline_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decline_invitations_errors()}
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/decline"
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
  Deletes an Amazon GuardDuty detector that is specified by the detector ID.
  """
  @spec delete_detector(map(), String.t(), delete_detector_request(), list()) ::
          {:ok, delete_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_detector_errors()}
  def delete_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Deletes the filter specified by the filter name.
  """
  @spec delete_filter(map(), String.t(), String.t(), delete_filter_request(), list()) ::
          {:ok, delete_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_filter_errors()}
  def delete_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Deletes invitations sent to the current member account by Amazon Web Services
  accounts specified by
  their account IDs.
  """
  @spec delete_invitations(map(), delete_invitations_request(), list()) ::
          {:ok, delete_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_invitations_errors()}
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/delete"
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
  Deletes the IPSet specified by the `ipSetId`.

  IPSets are called trusted IP
  lists in the console user interface.
  """
  @spec delete_ip_set(map(), String.t(), String.t(), delete_ip_set_request(), list()) ::
          {:ok, delete_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ip_set_errors()}
  def delete_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Deletes GuardDuty member accounts (to the current GuardDuty administrator
  account)
  specified by the account IDs.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disable GuardDuty for a member
  account in your organization.
  """
  @spec delete_members(map(), String.t(), delete_members_request(), list()) ::
          {:ok, delete_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_members_errors()}
  def delete_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/delete"
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
  Deletes the publishing definition with the specified `destinationId`.
  """
  @spec delete_publishing_destination(
          map(),
          String.t(),
          String.t(),
          delete_publishing_destination_request(),
          list()
        ) ::
          {:ok, delete_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_publishing_destination_errors()}
  def delete_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

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
  Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  @spec delete_threat_intel_set(
          map(),
          String.t(),
          String.t(),
          delete_threat_intel_set_request(),
          list()
        ) ::
          {:ok, delete_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_threat_intel_set_errors()}
  def delete_threat_intel_set(
        %Client{} = client,
        detector_id,
        threat_intel_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

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
  Returns a list of malware scans.

  Each member account can view the malware scans for their
  own accounts. An administrator can view the malware scans for all the member
  accounts.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec describe_malware_scans(map(), String.t(), describe_malware_scans_request(), list()) ::
          {:ok, describe_malware_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_malware_scans_errors()}
  def describe_malware_scans(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scans"
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
  Returns information about the account selected as the delegated administrator
  for
  GuardDuty.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec describe_organization_configuration(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
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
  Returns information about the publishing destination specified by the provided
  `destinationId`.
  """
  @spec describe_publishing_destination(map(), String.t(), String.t(), list()) ::
          {:ok, describe_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_publishing_destination_errors()}
  def describe_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the existing GuardDuty delegated
  administrator of the organization.

  Only the organization's management account can run this
  API operation.
  """
  @spec disable_organization_admin_account(
          map(),
          disable_organization_admin_account_request(),
          list()
        ) ::
          {:ok, disable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_organization_admin_account_errors()}
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/disable"
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
  Disassociates the current GuardDuty member account from its administrator
  account.

  When you
  disassociate an invited member from a GuardDuty delegated administrator, the
  member account details
  obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is
  done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disable GuardDuty in a member
  account.
  """
  @spec disassociate_from_administrator_account(
          map(),
          String.t(),
          disassociate_from_administrator_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_from_administrator_account_errors()}
  def disassociate_from_administrator_account(
        %Client{} = client,
        detector_id,
        input,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator/disassociate"
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
  Disassociates the current GuardDuty member account from its administrator
  account.

  When you
  disassociate an invited member from a GuardDuty delegated administrator, the
  member account details
  obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is
  done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.
  """
  @spec disassociate_from_master_account(
          map(),
          String.t(),
          disassociate_from_master_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_from_master_account_errors()}
  def disassociate_from_master_account(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master/disassociate"
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
  Disassociates GuardDuty member accounts (from the current administrator account)
  specified
  by the account IDs.

  When you
  disassociate an invited member from a GuardDuty delegated administrator, the
  member account details
  obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is
  done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html) API.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disassociate a member account
  before removing them from your organization.

  If you disassociate a member account that was added by invitation, the member
  account details
  obtained from this API, including the associated email addresses, will be
  retained.
  This is done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  When the member accounts added through Organizations are later disassociated,
  you (administrator)
  can't invite them by calling the InviteMembers API. You can create an
  association with these
  member accounts again only by calling the CreateMembers API.
  """
  @spec disassociate_members(map(), String.t(), disassociate_members_request(), list()) ::
          {:ok, disassociate_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_members_errors()}
  def disassociate_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/disassociate"
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
  Designates an Amazon Web Services account within the organization as your
  GuardDuty delegated
  administrator.

  Only the organization's management account can run this
  API operation.
  """
  @spec enable_organization_admin_account(
          map(),
          enable_organization_admin_account_request(),
          list()
        ) ::
          {:ok, enable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_organization_admin_account_errors()}
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/enable"
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
  Provides the details of the GuardDuty administrator account associated with the
  current
  GuardDuty member account.

  If the organization's management account or a delegated administrator runs this
  API,
  it will return success (`HTTP 200`) but no content.
  """
  @spec get_administrator_account(map(), String.t(), list()) ::
          {:ok, get_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_administrator_account_errors()}
  def get_administrator_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves aggregated statistics for your account.

  If you are a GuardDuty administrator, you
  can retrieve the statistics for all the resources associated with the active
  member accounts
  in your organization who have enabled Runtime Monitoring and have the GuardDuty
  security agent running
  on their resources.
  """
  @spec get_coverage_statistics(map(), String.t(), get_coverage_statistics_request(), list()) ::
          {:ok, get_coverage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_coverage_statistics_errors()}
  def get_coverage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage/statistics"
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
  Retrieves an Amazon GuardDuty detector specified by the detectorId.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_detector(map(), String.t(), list()) ::
          {:ok, get_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_detector_errors()}
  def get_detector(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of the filter specified by the filter name.
  """
  @spec get_filter(map(), String.t(), String.t(), list()) ::
          {:ok, get_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_filter_errors()}
  def get_filter(%Client{} = client, detector_id, filter_name, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes Amazon GuardDuty findings specified by finding IDs.
  """
  @spec get_findings(map(), String.t(), get_findings_request(), list()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_errors()}
  def get_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/get"
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
  Lists Amazon GuardDuty findings statistics for the specified detector ID.

  There might be regional differences because some flags might not be available in
  all the Regions where GuardDuty
  is currently supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_findings_statistics(map(), String.t(), get_findings_statistics_request(), list()) ::
          {:ok, get_findings_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_statistics_errors()}
  def get_findings_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/statistics"
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
  Returns the count of all GuardDuty membership invitations that were sent to the
  current
  member account except the currently accepted invitation.
  """
  @spec get_invitations_count(map(), list()) ::
          {:ok, get_invitations_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_invitations_count_errors()}
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitation/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the IPSet specified by the `ipSetId`.
  """
  @spec get_ip_set(map(), String.t(), String.t(), list()) ::
          {:ok, get_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ip_set_errors()}
  def get_ip_set(%Client{} = client, detector_id, ip_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of the malware scan settings.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_malware_scan_settings(map(), String.t(), list()) ::
          {:ok, get_malware_scan_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_malware_scan_settings_errors()}
  def get_malware_scan_settings(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scan-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides the details for the GuardDuty administrator account associated with the
  current
  GuardDuty member account.
  """
  @spec get_master_account(map(), String.t(), list()) ::
          {:ok, get_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_master_account_errors()}
  def get_master_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes which data sources are enabled for the member account's detector.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_member_detectors(map(), String.t(), get_member_detectors_request(), list()) ::
          {:ok, get_member_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_member_detectors_errors()}
  def get_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/get"
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
  Retrieves GuardDuty member accounts (of the current GuardDuty administrator
  account)
  specified by the account IDs.
  """
  @spec get_members(map(), String.t(), get_members_request(), list()) ::
          {:ok, get_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_members_errors()}
  def get_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/get"
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
  Retrieves how many active member accounts have
  each feature enabled within GuardDuty.

  Only a delegated GuardDuty administrator of an organization can run this API.

  When you create a new organization, it might take up to 24
  hours to generate the statistics for the entire organization.
  """
  @spec get_organization_statistics(map(), list()) ::
          {:ok, get_organization_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_statistics_errors()}
  def get_organization_statistics(%Client{} = client, options \\ []) do
    url_path = "/organization/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides the number of days left for each data source used in the free trial
  period.
  """
  @spec get_remaining_free_trial_days(
          map(),
          String.t(),
          get_remaining_free_trial_days_request(),
          list()
        ) ::
          {:ok, get_remaining_free_trial_days_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_remaining_free_trial_days_errors()}
  def get_remaining_free_trial_days(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/freeTrial/daysRemaining"
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
  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
  """
  @spec get_threat_intel_set(map(), String.t(), String.t(), list()) ::
          {:ok, get_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_threat_intel_set_errors()}
  def get_threat_intel_set(%Client{} = client, detector_id, threat_intel_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon GuardDuty usage statistics over the last 30 days for the specified
  detector
  ID.

  For newly enabled detectors or data sources, the cost returned will include only
  the usage
  so far under 30 days. This may differ from the cost metrics in the console,
  which project
  usage over 30 days to provide a monthly cost estimate. For more information, see
  [Understanding How Usage Costs are Calculated](https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations).
  """
  @spec get_usage_statistics(map(), String.t(), get_usage_statistics_request(), list()) ::
          {:ok, get_usage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_statistics_errors()}
  def get_usage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/usage/statistics"
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
  Invites Amazon Web Services accounts to become members of an organization
  administered by the Amazon Web Services account
  that invokes this API.

  If you are using Amazon Web Services Organizations to manage your GuardDuty
  environment, this step is not
  needed. For more information, see [Managing accounts with organizations](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).

  To invite Amazon Web Services accounts, the first step is
  to ensure that GuardDuty has been enabled in the potential member accounts. You
  can now invoke this API
  to add accounts by invitation. The
  invited accounts can either accept or decline the invitation from their
  GuardDuty accounts. Each invited Amazon Web Services account can
  choose to accept the invitation from only one Amazon Web Services account. For
  more information, see
  [Managing GuardDuty accounts by
  invitation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html).

  After the invite has been accepted and you choose to disassociate a member
  account
  (by using
  [DisassociateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html)) from your account,
  the details of the member account obtained by invoking
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html),
  including the
  associated email addresses, will be retained.
  This is done so that you can invoke InviteMembers without the need to invoke
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) again. To
  remove the details associated with a member account, you must also invoke
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html).

  If you disassociate a member account that was added by invitation, the member
  account details
  obtained from this API, including the associated email addresses, will be
  retained.
  This is done so that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html) API without the need to invoke the CreateMembers API again. To
  remove the details associated with a member account, the delegated administrator
  must invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  When the member accounts added through Organizations are later disassociated,
  you (administrator)
  can't invite them by calling the InviteMembers API. You can create an
  association with these
  member accounts again only by calling the CreateMembers API.
  """
  @spec invite_members(map(), String.t(), invite_members_request(), list()) ::
          {:ok, invite_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invite_members_errors()}
  def invite_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/invite"
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
  Lists coverage details for your GuardDuty account.

  If you're a GuardDuty administrator, you can
  retrieve all resources associated with the active member accounts in your
  organization.

  Make sure the accounts have Runtime Monitoring enabled and GuardDuty agent
  running on
  their resources.
  """
  @spec list_coverage(map(), String.t(), list_coverage_request(), list()) ::
          {:ok, list_coverage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_coverage_errors()}
  def list_coverage(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage"
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
  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
  """
  @spec list_detectors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_detectors_errors()}
  def list_detectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/detector"
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
  Returns a paginated list of the current filters.
  """
  @spec list_filters(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_filters_errors()}
  def list_filters(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
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
  Lists GuardDuty findings for the specified detector ID.

  There might be regional differences because some flags might not be available in
  all the Regions where GuardDuty
  is currently supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec list_findings(map(), String.t(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings"
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
  Lists all GuardDuty membership invitations that were sent to the current Amazon
  Web Services
  account.
  """
  @spec list_invitations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_invitations_errors()}
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitation"
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
  Lists the IPSets of the GuardDuty service specified by the detector ID.

  If you use this
  operation from a member account, the IPSets returned are the IPSets from the
  associated
  administrator account.
  """
  @spec list_ip_sets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ip_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ip_sets_errors()}
  def list_ip_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset"
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
  Lists details about all member accounts for the current GuardDuty administrator
  account.
  """
  @spec list_members(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_members_errors()}
  def list_members(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        only_associated \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
    headers = []
    query_params = []

    query_params =
      if !is_nil(only_associated) do
        [{"onlyAssociated", only_associated} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the accounts designated as GuardDuty delegated administrators.

  Only the organization's management account can run this
  API operation.
  """
  @spec list_organization_admin_accounts(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_admin_accounts_errors()}
  def list_organization_admin_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/admin"
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
  Returns a list of publishing destinations associated with the specified
  `detectorId`.
  """
  @spec list_publishing_destinations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_publishing_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_publishing_destinations_errors()}
  def list_publishing_destinations(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination"
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
  Lists tags for a resource.

  Tagging is currently supported for detectors, finding filters,
  IP sets, threat intel sets, and publishing destination, with a limit of 50 tags
  per resource.
  When invoked, this
  operation returns all assigned tags for a given resource.
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
  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.

  If you
  use this operation from a member account, the ThreatIntelSets associated with
  the
  administrator account are returned.
  """
  @spec list_threat_intel_sets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_threat_intel_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_threat_intel_sets_errors()}
  def list_threat_intel_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset"
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
  Initiates the malware scan.

  Invoking this API will automatically create the [Service-linked role](https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html)
  in
  the corresponding account.

  When the malware scan starts, you can use the associated scan ID to track the
  status of the scan. For more information,
  see
  [DescribeMalwareScans](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeMalwareScans.html).
  """
  @spec start_malware_scan(map(), start_malware_scan_request(), list()) ::
          {:ok, start_malware_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_malware_scan_errors()}
  def start_malware_scan(%Client{} = client, input, options \\ []) do
    url_path = "/malware-scan/start"
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
  Turns on GuardDuty monitoring of the specified member accounts.

  Use this operation to
  restart monitoring of accounts that you stopped monitoring with the
  [StopMonitoringMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html)
  operation.
  """
  @spec start_monitoring_members(map(), String.t(), start_monitoring_members_request(), list()) ::
          {:ok, start_monitoring_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_monitoring_members_errors()}
  def start_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/start"
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
  Stops GuardDuty monitoring for the specified member accounts.

  Use the
  `StartMonitoringMembers` operation to restart monitoring for those
  accounts.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to stop monitoring the member
  accounts in your organization.
  """
  @spec stop_monitoring_members(map(), String.t(), stop_monitoring_members_request(), list()) ::
          {:ok, stop_monitoring_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_monitoring_members_errors()}
  def stop_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/stop"
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
  Adds tags to a resource.
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
      204
    )
  end

  @doc """
  Unarchives GuardDuty findings specified by the `findingIds`.
  """
  @spec unarchive_findings(map(), String.t(), unarchive_findings_request(), list()) ::
          {:ok, unarchive_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unarchive_findings_errors()}
  def unarchive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/unarchive"
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
  Removes tags from a resource.
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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the GuardDuty detector specified by the detector ID.

  Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`)
  and Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error.
  You can add only one of these two features because Runtime Monitoring already
  includes the
  threat detection for Amazon EKS resources. For more information, see
  [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec update_detector(map(), String.t(), update_detector_request(), list()) ::
          {:ok, update_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_detector_errors()}
  def update_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Updates the filter specified by the filter name.
  """
  @spec update_filter(map(), String.t(), String.t(), update_filter_request(), list()) ::
          {:ok, update_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_filter_errors()}
  def update_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Marks the specified GuardDuty findings as useful or not useful.
  """
  @spec update_findings_feedback(map(), String.t(), update_findings_feedback_request(), list()) ::
          {:ok, update_findings_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_findings_feedback_errors()}
  def update_findings_feedback(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/feedback"
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
  Updates the IPSet specified by the IPSet ID.
  """
  @spec update_ip_set(map(), String.t(), String.t(), update_ip_set_request(), list()) ::
          {:ok, update_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ip_set_errors()}
  def update_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Updates the malware scan settings.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec update_malware_scan_settings(
          map(),
          String.t(),
          update_malware_scan_settings_request(),
          list()
        ) ::
          {:ok, update_malware_scan_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_malware_scan_settings_errors()}
  def update_malware_scan_settings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scan-settings"
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
  Contains information on member accounts to be updated.

  Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`)
  and Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error.
  You can add only one of these two features because Runtime Monitoring already
  includes the
  threat detection for Amazon EKS resources. For more information, see
  [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec update_member_detectors(map(), String.t(), update_member_detectors_request(), list()) ::
          {:ok, update_member_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_member_detectors_errors()}
  def update_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/update"
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
  Configures the delegated administrator account with the provided values.

  You must provide
  a value for either `autoEnableOrganizationMembers` or `autoEnable`, but not
  both.

  Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`)
  and Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error.
  You can add only one of these two features because Runtime Monitoring already
  includes the
  threat detection for Amazon EKS resources. For more information, see
  [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec update_organization_configuration(
          map(),
          String.t(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
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
  Updates information about the publishing destination specified by the
  `destinationId`.
  """
  @spec update_publishing_destination(
          map(),
          String.t(),
          String.t(),
          update_publishing_destination_request(),
          list()
        ) ::
          {:ok, update_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_publishing_destination_errors()}
  def update_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

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
  Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  @spec update_threat_intel_set(
          map(),
          String.t(),
          String.t(),
          update_threat_intel_set_request(),
          list()
        ) ::
          {:ok, update_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_threat_intel_set_errors()}
  def update_threat_intel_set(
        %Client{} = client,
        detector_id,
        threat_intel_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

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
