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
  @type organization_kubernetes_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_data() :: %{
        "AccessKey" => access_key(),
        "Container" => container_finding_resource(),
        "Ec2Instance" => ec2_instance(),
        "Ec2NetworkInterface" => ec2_network_interface(),
        "EksCluster" => eks_cluster(),
        "KubernetesWorkload" => kubernetes_workload(),
        "S3Bucket" => s3_bucket(),
        "S3Object" => s3_object()
      }

  """
  @type resource_data() :: %{(String.t() | atom()) => any()}

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
  @type cloud_trail_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization() :: %{
        "Asn" => String.t() | atom(),
        "AsnOrg" => String.t() | atom(),
        "Isp" => String.t() | atom(),
        "Org" => String.t() | atom()
      }

  """
  @type organization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_details() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "IamInstanceProfile" => iam_instance_profile(),
        "ImageDescription" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "InstanceState" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "LaunchTime" => String.t() | atom(),
        "NetworkInterfaces" => list(network_interface()),
        "OutpostArn" => String.t() | atom(),
        "Platform" => String.t() | atom(),
        "ProductCodes" => list(product_code()),
        "Tags" => list(tag())
      }

  """
  @type instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_data_source_configuration() :: %{
        "AccountId" => String.t() | atom(),
        "DataSources" => data_source_configurations_result(),
        "Features" => list(member_features_configuration_result())
      }

  """
  @type member_data_source_configuration() :: %{(String.t() | atom()) => any()}

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
  @type data_sources_free_trial() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_statistics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Unit") => String.t() | atom(),
        required("UsageCriteria") => usage_criteria(),
        required("UsageStatisticType") => list(any())
      }

  """
  @type get_usage_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_data_source_result() :: %{
        "DataSource" => list(any()),
        "Total" => total()
      }

  """
  @type usage_data_source_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_resource_criteria() :: %{
        "Exclude" => map(),
        "Include" => map()
      }

  """
  @type scan_resource_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      decline_invitations_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type decline_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_protection_plan_tagging_action() :: %{
        "Status" => list(any())
      }

  """
  @type malware_protection_plan_tagging_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container() :: %{
        "ContainerRuntime" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Image" => String.t() | atom(),
        "ImagePrefix" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "SecurityContext" => security_context(),
        "VolumeMounts" => list(volume_mount())
      }

  """
  @type container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_ip_details() :: %{
        "City" => city(),
        "Country" => country(),
        "GeoLocation" => geo_location(),
        "IpAddressV4" => String.t() | atom(),
        "IpAddressV6" => String.t() | atom(),
        "Organization" => organization()
      }

  """
  @type remote_ip_details() :: %{(String.t() | atom()) => any()}

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
  @type kubernetes_data_source_free_trial() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_ebs_volumes_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_ebs_volumes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      administrator() :: %{
        "AccountId" => String.t() | atom(),
        "InvitationId" => String.t() | atom(),
        "InvitedAt" => String.t() | atom(),
        "RelationshipStatus" => String.t() | atom()
      }

  """
  @type administrator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_statistics() :: %{
        "SumByAccount" => list(usage_account_result()),
        "SumByDataSource" => list(usage_data_source_result()),
        "SumByFeature" => list(usage_feature_result()),
        "SumByResource" => list(usage_resource_result()),
        "TopAccountsByFeature" => list(usage_top_accounts_result()),
        "TopResources" => list(usage_resource_result())
      }

  """
  @type usage_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_condition() :: %{
        "EqualsValue" => String.t() | atom(),
        "GreaterThan" => float(),
        "LessThan" => float()
      }

  """
  @type filter_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trusted_entity_set_request() :: %{
        optional("Activate") => boolean(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_trusted_entity_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_malware_protection_plan_response() :: %{
        "Actions" => malware_protection_plan_actions(),
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "ProtectedResource" => create_protected_resource(),
        "Role" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReasons" => list(malware_protection_plan_status_reason()),
        "Tags" => map()
      }

  """
  @type get_malware_protection_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket_detail() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "DefaultServerSideEncryption" => default_server_side_encryption(),
        "Name" => String.t() | atom(),
        "Owner" => owner(),
        "PublicAccess" => public_access(),
        "S3ObjectDetails" => list(s3_object_detail()),
        "Tags" => list(tag()),
        "Type" => String.t() | atom()
      }

  """
  @type s3_bucket_detail() :: %{(String.t() | atom()) => any()}

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
  @type data_source_configurations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ip_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_ip_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_statistics_request() :: %{
        optional("FindingCriteria") => finding_criteria(),
        optional("FindingStatisticTypes") => list(list(any())()),
        optional("GroupBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("OrderBy") => list(any())
      }

  """
  @type get_findings_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "Members" => list(member()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type get_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_member_detectors_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type get_member_detectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_account() :: %{
        "AdminAccountId" => String.t() | atom(),
        "AdminStatus" => list(any())
      }

  """
  @type admin_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequence() :: %{
        "Actors" => list(actor()),
        "AdditionalSequenceTypes" => list(String.t() | atom()),
        "Description" => String.t() | atom(),
        "Endpoints" => list(network_endpoint()),
        "Resources" => list(resource_v2()),
        "SequenceIndicators" => list(indicator()),
        "Signals" => list(signal()),
        "Uid" => String.t() | atom()
      }

  """
  @type sequence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      archive_findings_response() :: %{}

  """
  @type archive_findings_response() :: %{}

  @typedoc """

  ## Example:

      accept_administrator_invitation_request() :: %{
        required("AdministratorId") => String.t() | atom(),
        required("InvitationId") => String.t() | atom()
      }

  """
  @type accept_administrator_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_condition_pair() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type scan_condition_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_properties() :: %{
        "DestinationArn" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom()
      }

  """
  @type destination_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ebs_volume_details() :: %{
        "ScannedVolumeDetails" => list(volume_detail()),
        "SkippedVolumeDetails" => list(volume_detail())
      }

  """
  @type ebs_volume_details() :: %{(String.t() | atom()) => any()}

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
  @type kubernetes_audit_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_threat_entity_set_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "ErrorDetails" => String.t() | atom(),
        "ExpectedBucketOwner" => String.t() | atom(),
        "Format" => list(any()),
        "Location" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_threat_entity_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_workload_details() :: %{
        "Containers" => list(container()),
        "HostIPC" => boolean(),
        "HostNetwork" => boolean(),
        "HostPID" => boolean(),
        "Name" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "ServiceAccountName" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Uid" => String.t() | atom(),
        "Volumes" => list(volume())
      }

  """
  @type kubernetes_workload_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_administrator_account_request() :: %{}

  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      process_details() :: %{
        "Euid" => integer(),
        "ExecutablePath" => String.t() | atom(),
        "ExecutableSha256" => String.t() | atom(),
        "Lineage" => list(lineage_object()),
        "Name" => String.t() | atom(),
        "NamespacePid" => integer(),
        "ParentUuid" => String.t() | atom(),
        "Pid" => integer(),
        "Pwd" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "User" => String.t() | atom(),
        "UserId" => integer(),
        "Uuid" => String.t() | atom()
      }

  """
  @type process_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_publishing_destinations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_publishing_destinations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "FilterCriterion" => list(filter_criterion())
      }

  """
  @type filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_criterion() :: %{
        "CriterionKey" => list(any()),
        "FilterCondition" => filter_condition()
      }

  """
  @type filter_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connection_action() :: %{
        "Blocked" => boolean(),
        "ConnectionDirection" => String.t() | atom(),
        "LocalIpDetails" => local_ip_details(),
        "LocalNetworkInterface" => String.t() | atom(),
        "LocalPortDetails" => local_port_details(),
        "Protocol" => String.t() | atom(),
        "RemoteIpDetails" => remote_ip_details(),
        "RemotePortDetails" => remote_port_details()
      }

  """
  @type network_connection_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_malware_protection_plan_response() :: %{
        "MalwareProtectionPlanId" => String.t() | atom()
      }

  """
  @type create_malware_protection_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_level_permissions() :: %{
        "BlockPublicAccess" => block_public_access()
      }

  """
  @type account_level_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_filter_condition() :: %{
        "Equals" => list(String.t() | atom()),
        "NotEquals" => list(String.t() | atom())
      }

  """
  @type coverage_filter_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_protection_configuration() :: %{
        "ScanEc2InstanceWithFindings" => scan_ec2_instance_with_findings()
      }

  """
  @type malware_protection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      local_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | atom()
      }

  """
  @type local_port_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_monitoring_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type start_monitoring_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_protection_configuration_result() :: %{
        "ScanEc2InstanceWithFindings" => scan_ec2_instance_with_findings_result(),
        "ServiceRole" => String.t() | atom()
      }

  """
  @type malware_protection_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_api_call_action() :: %{
        "Namespace" => String.t() | atom(),
        "Parameters" => String.t() | atom(),
        "RemoteIpDetails" => remote_ip_details(),
        "RequestUri" => String.t() | atom(),
        "Resource" => String.t() | atom(),
        "ResourceName" => String.t() | atom(),
        "SourceIps" => list(String.t() | atom()),
        "StatusCode" => integer(),
        "Subresource" => String.t() | atom(),
        "UserAgent" => String.t() | atom(),
        "Verb" => String.t() | atom()
      }

  """
  @type kubernetes_api_call_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_feature_configuration_result() :: %{
        "AdditionalConfiguration" => list(detector_additional_configuration_result()),
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type detector_feature_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      highest_severity_threat_details() :: %{
        "Count" => integer(),
        "Severity" => String.t() | atom(),
        "ThreatName" => String.t() | atom()
      }

  """
  @type highest_severity_threat_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_filter_criterion() :: %{
        "CriterionKey" => list(any()),
        "FilterCondition" => coverage_filter_condition()
      }

  """
  @type coverage_filter_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_malware_protection_configuration() :: %{
        "ScanEc2InstanceWithFindings" => organization_scan_ec2_instance_with_findings()
      }

  """
  @type organization_malware_protection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      public_access_configuration() :: %{
        "PublicAclAccess" => list(any()),
        "PublicAclIgnoreBehavior" => list(any()),
        "PublicBucketRestrictBehavior" => list(any()),
        "PublicPolicyAccess" => list(any())
      }

  """
  @type public_access_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rds_db_user_details() :: %{
        "Application" => String.t() | atom(),
        "AuthMethod" => String.t() | atom(),
        "Database" => String.t() | atom(),
        "Ssl" => String.t() | atom(),
        "User" => String.t() | atom()
      }

  """
  @type rds_db_user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_threat_entity_set_request() :: %{}

  """
  @type delete_threat_entity_set_request() :: %{}

  @typedoc """

  ## Example:

      scan_ec2_instance_with_findings() :: %{
        "EbsVolumes" => boolean()
      }

  """
  @type scan_ec2_instance_with_findings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_protected_resource() :: %{
        "S3Bucket" => update_s3_bucket_resource()
      }

  """
  @type update_protected_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "AccountId" => String.t() | atom(),
        "InvitationId" => String.t() | atom(),
        "InvitedAt" => String.t() | atom(),
        "RelationshipStatus" => String.t() | atom()
      }

  """
  @type invitation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_response() :: %{}

  """
  @type disassociate_from_master_account_response() :: %{}

  @typedoc """

  ## Example:

      lambda_details() :: %{
        "Description" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "FunctionName" => String.t() | atom(),
        "FunctionVersion" => String.t() | atom(),
        "LastModifiedAt" => non_neg_integer(),
        "RevisionId" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "Tags" => list(tag()),
        "VpcConfig" => vpc_config()
      }

  """
  @type lambda_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rds_limitless_db_details() :: %{
        "DbClusterIdentifier" => String.t() | atom(),
        "DbShardGroupArn" => String.t() | atom(),
        "DbShardGroupIdentifier" => String.t() | atom(),
        "DbShardGroupResourceId" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "Tags" => list(tag())
      }

  """
  @type rds_limitless_db_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_publishing_destination_response() :: %{
        "DestinationId" => String.t() | atom(),
        "DestinationProperties" => destination_properties(),
        "DestinationType" => list(any()),
        "PublishingFailureStartTimestamp" => float(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_publishing_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_malware_scans_request() :: %{
        optional("FilterCriteria") => filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => sort_criteria()
      }

  """
  @type describe_malware_scans_request() :: %{(String.t() | atom()) => any()}

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
  @type get_coverage_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "Ipv6Addresses" => list(String.t() | atom()),
        "NetworkInterfaceId" => String.t() | atom(),
        "PrivateDnsName" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom(),
        "PrivateIpAddresses" => list(private_ip_address_details()),
        "PublicDnsName" => String.t() | atom(),
        "PublicIp" => String.t() | atom(),
        "SecurityGroups" => list(security_group()),
        "SubnetId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_additional_configuration() :: %{
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_additional_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_filter_response() :: %{
        "Action" => list(any()),
        "Description" => String.t() | atom(),
        "FindingCriteria" => finding_criteria(),
        "Name" => String.t() | atom(),
        "Rank" => integer(),
        "Tags" => map()
      }

  """
  @type get_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_s3_logs_configuration() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_s3_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_statistics_response() :: %{
        "FindingStatistics" => finding_statistics(),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_findings_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | atom()
      }

  """
  @type remote_port_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_trusted_entity_set_request() :: %{}

  """
  @type delete_trusted_entity_set_request() :: %{}

  @typedoc """

  ## Example:

      update_ip_set_response() :: %{}

  """
  @type update_ip_set_response() :: %{}

  @typedoc """

  ## Example:

      network_geo_location() :: %{
        "City" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "Latitude" => float(),
        "Longitude" => float()
      }

  """
  @type network_geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "ETag" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type s3_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        "FindingIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_sort_criteria() :: %{
        "AttributeName" => list(any()),
        "OrderBy" => list(any())
      }

  """
  @type coverage_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_filter_response() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type create_filter_response() :: %{(String.t() | atom()) => any()}

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
  @type update_malware_scan_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ip_set_request() :: %{}

  """
  @type delete_ip_set_request() :: %{}

  @typedoc """

  ## Example:

      list_detectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_detectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type s3_logs_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "Action" => action(),
        "AdditionalInfo" => service_additional_info(),
        "Archived" => boolean(),
        "Count" => integer(),
        "Detection" => detection(),
        "DetectorId" => String.t() | atom(),
        "EbsVolumeScanDetails" => ebs_volume_scan_details(),
        "EventFirstSeen" => String.t() | atom(),
        "EventLastSeen" => String.t() | atom(),
        "Evidence" => evidence(),
        "FeatureName" => String.t() | atom(),
        "MalwareScanDetails" => malware_scan_details(),
        "ResourceRole" => String.t() | atom(),
        "RuntimeDetails" => runtime_details(),
        "ServiceName" => String.t() | atom(),
        "UserFeedback" => String.t() | atom()
      }

  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("SortCriteria") => sort_criteria(),
        required("FindingIds") => list(String.t() | atom())
      }

  """
  @type get_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_details() :: %{
        "Version" => String.t() | atom()
      }

  """
  @type agent_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_trusted_entity_set_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_trusted_entity_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_publishing_destination_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => map(),
        required("DestinationProperties") => destination_properties(),
        required("DestinationType") => list(any())
      }

  """
  @type create_publishing_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trusted_entity_set_request() :: %{}

  """
  @type get_trusted_entity_set_request() :: %{}

  @typedoc """

  ## Example:

      account_detail() :: %{
        "AccountId" => String.t() | atom(),
        "Email" => String.t() | atom()
      }

  """
  @type account_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      host_path() :: %{
        "Path" => String.t() | atom()
      }

  """
  @type host_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      volume_detail() :: %{
        "DeviceName" => String.t() | atom(),
        "EncryptionType" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom(),
        "SnapshotArn" => String.t() | atom(),
        "VolumeArn" => String.t() | atom(),
        "VolumeSizeInGB" => integer(),
        "VolumeType" => String.t() | atom()
      }

  """
  @type volume_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      public_access() :: %{
        "EffectivePermission" => String.t() | atom(),
        "PermissionConfiguration" => permission_configuration()
      }

  """
  @type public_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      country() :: %{
        "CountryCode" => String.t() | atom(),
        "CountryName" => String.t() | atom()
      }

  """
  @type country() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      total() :: %{
        "Amount" => String.t() | atom(),
        "Unit" => String.t() | atom()
      }

  """
  @type total() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_feature_configuration() :: %{
        "AdditionalConfiguration" => list(detector_additional_configuration()),
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type detector_feature_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_statistics() :: %{
        "AccountId" => String.t() | atom(),
        "LastGeneratedAt" => non_neg_integer(),
        "TotalFindings" => integer()
      }

  """
  @type account_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_request() :: %{
        required("AdminAccountId") => String.t() | atom()
      }

  """
  @type disable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_ip_set_request() :: %{
        optional("Activate") => boolean(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      impersonated_user() :: %{
        "Groups" => list(String.t() | atom()),
        "Username" => String.t() | atom()
      }

  """
  @type impersonated_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_publishing_destination_request() :: %{}

  """
  @type delete_publishing_destination_request() :: %{}

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type delete_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_threat_entity_set_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_threat_entity_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invite_members_request() :: %{
        optional("DisableEmailNotification") => boolean(),
        optional("Message") => String.t() | atom(),
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type invite_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission_configuration() :: %{
        "AccountLevelPermissions" => account_level_permissions(),
        "BucketLevelPermissions" => bucket_level_permissions()
      }

  """
  @type permission_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_threat_intel_set_response() :: %{}

  """
  @type update_threat_intel_set_response() :: %{}

  @typedoc """

  ## Example:

      network_connection() :: %{
        "Direction" => list(any())
      }

  """
  @type network_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_kubernetes_audit_logs_configuration_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_kubernetes_audit_logs_configuration_result() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      member_features_configuration_result() :: %{
        "AdditionalConfiguration" => list(member_additional_configuration_result()),
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member_features_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autonomous_system() :: %{
        "Name" => String.t() | atom(),
        "Number" => integer()
      }

  """
  @type autonomous_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_audit_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type kubernetes_audit_logs_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trusted_entity_set_response() :: %{}

  """
  @type update_trusted_entity_set_response() :: %{}

  @typedoc """

  ## Example:

      update_threat_entity_set_request() :: %{
        optional("Activate") => boolean(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_threat_entity_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_threat_intel_sets_response() :: %{
        "NextToken" => String.t() | atom(),
        "ThreatIntelSetIds" => list(String.t() | atom())
      }

  """
  @type list_threat_intel_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      observations() :: %{
        "Text" => list(String.t() | atom())
      }

  """
  @type observations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trusted_entity_sets_response() :: %{
        "NextToken" => String.t() | atom(),
        "TrustedEntitySetIds" => list(String.t() | atom())
      }

  """
  @type list_trusted_entity_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_data_source_configurations_result() :: %{
        "Kubernetes" => organization_kubernetes_configuration_result(),
        "MalwareProtection" => organization_malware_protection_configuration_result(),
        "S3Logs" => organization_s3_logs_configuration_result()
      }

  """
  @type organization_data_source_configurations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      archive_findings_request() :: %{
        required("FindingIds") => list(String.t() | atom())
      }

  """
  @type archive_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_ec2_instance_with_findings_result() :: %{
        "EbsVolumes" => ebs_volumes_result()
      }

  """
  @type scan_ec2_instance_with_findings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_response() :: %{}

  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:

      coverage_resource() :: %{
        "AccountId" => String.t() | atom(),
        "CoverageStatus" => list(any()),
        "DetectorId" => String.t() | atom(),
        "Issue" => String.t() | atom(),
        "ResourceDetails" => coverage_resource_details(),
        "ResourceId" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type coverage_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_filter_response() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type update_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_user_details() :: %{
        "Groups" => list(String.t() | atom()),
        "ImpersonatedUser" => impersonated_user(),
        "SessionName" => list(String.t() | atom()),
        "Uid" => String.t() | atom(),
        "Username" => String.t() | atom()
      }

  """
  @type kubernetes_user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threats_detected_item_count() :: %{
        "Files" => integer()
      }

  """
  @type threats_detected_item_count() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_result_details() :: %{
        "ScanResult" => list(any())
      }

  """
  @type scan_result_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_v2() :: %{
        "AccountId" => String.t() | atom(),
        "CloudPartition" => String.t() | atom(),
        "Data" => resource_data(),
        "Name" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "ResourceType" => list(any()),
        "Service" => String.t() | atom(),
        "Tags" => list(tag()),
        "Uid" => String.t() | atom()
      }

  """
  @type resource_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "AutoEnable" => boolean(),
        "AutoEnableOrganizationMembers" => list(any()),
        "DataSources" => organization_data_source_configurations_result(),
        "Features" => list(organization_feature_configuration_result()),
        "MemberAccountLimitReached" => boolean(),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_malware_scan_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type start_malware_scan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_feature_configuration() :: %{
        "AdditionalConfiguration" => list(organization_additional_configuration()),
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_feature_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_malware_protection_plan_request() :: %{}

  """
  @type delete_malware_protection_plan_request() :: %{}

  @typedoc """

  ## Example:

      create_detector_response() :: %{
        "DetectorId" => String.t() | atom(),
        "UnprocessedDataSources" => unprocessed_data_sources_result()
      }

  """
  @type create_detector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_additional_configuration_result() :: %{
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type detector_additional_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unarchive_findings_request() :: %{
        required("FindingIds") => list(String.t() | atom())
      }

  """
  @type unarchive_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_request_action() :: %{
        "Blocked" => boolean(),
        "Domain" => String.t() | atom(),
        "DomainWithSuffix" => String.t() | atom(),
        "Protocol" => String.t() | atom(),
        "VpcOwnerAccountId" => String.t() | atom()
      }

  """
  @type dns_request_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_filter_request() :: %{
        optional("Action") => list(any()),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Rank") => integer(),
        optional("Tags") => map(),
        required("FindingCriteria") => finding_criteria(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type get_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_additional_info() :: %{
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type service_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_publishing_destination_response() :: %{}

  """
  @type delete_publishing_destination_response() :: %{}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        required("AccountDetails") => list(account_detail())
      }

  """
  @type create_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_detector_response() :: %{}

  """
  @type update_detector_response() :: %{}

  @typedoc """

  ## Example:

      list_ip_sets_response() :: %{
        "IpSetIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_ip_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_account_result() :: %{
        "AccountId" => String.t() | atom(),
        "Total" => total()
      }

  """
  @type usage_account_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_organization_statistics_response() :: %{
        "OrganizationDetails" => organization_details()
      }

  """
  @type get_organization_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_instance_details() :: %{
        "CompatibleContainerInstances" => float(),
        "CoveredContainerInstances" => float()
      }

  """
  @type container_instance_details() :: %{(String.t() | atom()) => any()}

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

      organization_scan_ec2_instance_with_findings() :: %{
        "EbsVolumes" => organization_ebs_volumes()
      }

  """
  @type organization_scan_ec2_instance_with_findings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket() :: %{
        "AccountPublicAccess" => public_access_configuration(),
        "BucketPublicAccess" => public_access_configuration(),
        "CreatedAt" => non_neg_integer(),
        "EffectivePermission" => String.t() | atom(),
        "EncryptionKeyArn" => String.t() | atom(),
        "EncryptionType" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "PublicReadAccess" => list(any()),
        "PublicWriteAccess" => list(any()),
        "S3ObjectUids" => list(String.t() | atom())
      }

  """
  @type s3_bucket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      master() :: %{
        "AccountId" => String.t() | atom(),
        "InvitationId" => String.t() | atom(),
        "InvitedAt" => String.t() | atom(),
        "RelationshipStatus" => String.t() | atom()
      }

  """
  @type master() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_detector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DataSources") => data_source_configurations(),
        optional("Features") => list(detector_feature_configuration()),
        optional("FindingPublishingFrequency") => list(any()),
        optional("Tags") => map(),
        required("Enable") => boolean()
      }

  """
  @type create_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_threat_entity_set_response() :: %{}

  """
  @type update_threat_entity_set_response() :: %{}

  @typedoc """

  ## Example:

      remote_account_details() :: %{
        "AccountId" => String.t() | atom(),
        "Affiliated" => boolean()
      }

  """
  @type remote_account_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type disassociate_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_trusted_entity_set_response() :: %{
        "TrustedEntitySetId" => String.t() | atom()
      }

  """
  @type create_trusted_entity_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "Findings" => list(finding())
      }

  """
  @type get_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_threat_intel_set_response() :: %{
        "ExpectedBucketOwner" => String.t() | atom(),
        "Format" => list(any()),
        "Location" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_threat_intel_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_threat_entity_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_threat_entity_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_kubernetes_audit_logs_configuration() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_kubernetes_audit_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_ec2_instance_details() :: %{
        "AgentDetails" => agent_details(),
        "ClusterArn" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "ManagementType" => list(any())
      }

  """
  @type coverage_ec2_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_threat_intel_set_request() :: %{
        optional("Activate") => boolean(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_threat_intel_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_policy() :: %{
        "AllowsPublicReadAccess" => boolean(),
        "AllowsPublicWriteAccess" => boolean()
      }

  """
  @type bucket_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_key() :: %{
        "PrincipalId" => String.t() | atom(),
        "UserName" => String.t() | atom(),
        "UserType" => String.t() | atom()
      }

  """
  @type access_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_malware_protection_plan_request() :: %{}

  """
  @type get_malware_protection_plan_request() :: %{}

  @typedoc """

  ## Example:

      flow_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type flow_logs_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type delete_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invite_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type invite_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_malware_scan_settings_response() :: %{
        "EbsSnapshotPreservation" => list(any()),
        "ScanResourceCriteria" => scan_resource_criteria()
      }

  """
  @type get_malware_scan_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_features_configuration() :: %{
        "AdditionalConfiguration" => list(member_additional_configuration()),
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type member_features_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_malware_scans_response() :: %{
        "NextToken" => String.t() | atom(),
        "Scans" => list(scan())
      }

  """
  @type describe_malware_scans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_network_interface() :: %{
        "Ipv6Addresses" => list(String.t() | atom()),
        "PrivateIpAddresses" => list(private_ip_address_details()),
        "PublicIp" => String.t() | atom(),
        "SecurityGroups" => list(security_group()),
        "SubNetId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type ec2_network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_task_details() :: %{
        "Arn" => String.t() | atom(),
        "Containers" => list(container()),
        "DefinitionArn" => String.t() | atom(),
        "Group" => String.t() | atom(),
        "LaunchType" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "StartedBy" => String.t() | atom(),
        "Tags" => list(tag()),
        "TaskCreatedAt" => non_neg_integer(),
        "Version" => String.t() | atom(),
        "Volumes" => list(volume())
      }

  """
  @type ecs_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal() :: %{
        "ActorIds" => list(String.t() | atom()),
        "Count" => integer(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EndpointIds" => list(String.t() | atom()),
        "FirstSeenAt" => non_neg_integer(),
        "LastSeenAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ResourceUids" => list(String.t() | atom()),
        "Severity" => float(),
        "SignalIndicators" => list(indicator()),
        "Type" => list(any()),
        "Uid" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type signal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_malware_protection_plan_request() :: %{
        optional("Actions") => malware_protection_plan_actions(),
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => map(),
        required("ProtectedResource") => create_protected_resource(),
        required("Role") => String.t() | atom()
      }

  """
  @type create_malware_protection_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "Name" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_logs_configuration() :: %{
        "Enable" => boolean()
      }

  """
  @type s3_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_publishing_destination_response() :: %{
        "DestinationId" => String.t() | atom()
      }

  """
  @type create_publishing_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_threat_entity_sets_response() :: %{
        "NextToken" => String.t() | atom(),
        "ThreatEntitySetIds" => list(String.t() | atom())
      }

  """
  @type list_threat_entity_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_detector_response() :: %{}

  """
  @type delete_detector_response() :: %{}

  @typedoc """

  ## Example:

      eks_cluster() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Ec2InstanceUids" => list(String.t() | atom()),
        "Status" => list(any()),
        "VpcId" => String.t() | atom()
      }

  """
  @type eks_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_publishing_destination_request() :: %{}

  """
  @type describe_publishing_destination_request() :: %{}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "SecurityGroups" => list(security_group()),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_statistics() :: %{
        "CountByCoverageStatus" => map(),
        "CountByResourceType" => map()
      }

  """
  @type coverage_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "AccountId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedAttackSequenceArn" => String.t() | atom(),
        "Confidence" => float(),
        "CreatedAt" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Partition" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "Resource" => resource(),
        "SchemaVersion" => String.t() | atom(),
        "Service" => service(),
        "Severity" => float(),
        "Title" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "UpdatedAt" => String.t() | atom()
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_eks_cluster_details() :: %{
        "AddonDetails" => addon_details(),
        "ClusterName" => String.t() | atom(),
        "CompatibleNodes" => float(),
        "CoveredNodes" => float(),
        "ManagementType" => list(any())
      }

  """
  @type coverage_eks_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_resource_details() :: %{
        "Ec2InstanceDetails" => coverage_ec2_instance_details(),
        "EcsClusterDetails" => coverage_ecs_cluster_details(),
        "EksClusterDetails" => coverage_eks_cluster_details(),
        "ResourceType" => list(any())
      }

  """
  @type coverage_resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      volume_mount() :: %{
        "MountPath" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type volume_mount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_malware_protection_plans_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_malware_protection_plans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        optional("FindingCriteria") => finding_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => sort_criteria()
      }

  """
  @type list_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_configuration() :: %{
        "AuditLogs" => kubernetes_audit_logs_configuration()
      }

  """
  @type kubernetes_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_publishing_destinations_response() :: %{
        "Destinations" => list(destination()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_publishing_destinations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_endpoint() :: %{
        "AutonomousSystem" => autonomous_system(),
        "Connection" => network_connection(),
        "Domain" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Ip" => String.t() | atom(),
        "Location" => network_geo_location(),
        "Port" => integer()
      }

  """
  @type network_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_additional_configuration() :: %{
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type member_additional_configuration() :: %{(String.t() | atom()) => any()}

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
        "Description" => String.t() | atom(),
        "GuardDutyFindingId" => String.t() | atom()
      }

  """
  @type trigger_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_malware_protection_plan_request() :: %{
        optional("Actions") => malware_protection_plan_actions(),
        optional("ProtectedResource") => update_protected_resource(),
        optional("Role") => String.t() | atom()
      }

  """
  @type update_malware_protection_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_filter_response() :: %{}

  """
  @type delete_filter_response() :: %{}

  @typedoc """

  ## Example:

      create_threat_entity_set_response() :: %{
        "ThreatEntitySetId" => String.t() | atom()
      }

  """
  @type create_threat_entity_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type disassociate_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_group() :: %{
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom()
      }

  """
  @type security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_response() :: %{
        "NextToken" => String.t() | atom(),
        "Resources" => list(coverage_resource())
      }

  """
  @type list_coverage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "Eq" => list(String.t() | atom()),
        "Equals" => list(String.t() | atom()),
        "GreaterThan" => float(),
        "GreaterThanOrEqual" => float(),
        "Gt" => integer(),
        "Gte" => integer(),
        "LessThan" => float(),
        "LessThanOrEqual" => float(),
        "Lt" => integer(),
        "Lte" => integer(),
        "Neq" => list(String.t() | atom()),
        "NotEquals" => list(String.t() | atom())
      }

  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_threat_intel_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_threat_intel_sets_request() :: %{(String.t() | atom()) => any()}

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

      container_finding_resource() :: %{
        "Image" => String.t() | atom(),
        "ImageUid" => String.t() | atom()
      }

  """
  @type container_finding_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_object() :: %{
        "Euid" => integer(),
        "ExecutablePath" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NamespacePid" => integer(),
        "ParentUuid" => String.t() | atom(),
        "Pid" => integer(),
        "StartTime" => non_neg_integer(),
        "UserId" => integer(),
        "Uuid" => String.t() | atom()
      }

  """
  @type lineage_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_instance() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "Ec2NetworkInterfaceUids" => list(String.t() | atom()),
        "IamInstanceProfile" => iam_instance_profile(),
        "ImageDescription" => String.t() | atom(),
        "InstanceState" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "OutpostArn" => String.t() | atom(),
        "Platform" => String.t() | atom(),
        "ProductCodes" => list(product_code())
      }

  """
  @type ec2_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detection() :: %{
        "Anomaly" => anomaly(),
        "Sequence" => sequence()
      }

  """
  @type detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_findings_feedback_response() :: %{}

  """
  @type update_findings_feedback_response() :: %{}

  @typedoc """

  ## Example:

      session() :: %{
        "CreatedTime" => non_neg_integer(),
        "Issuer" => String.t() | atom(),
        "MfaStatus" => list(any()),
        "Uid" => String.t() | atom()
      }

  """
  @type session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ebs_volumes_result() :: %{
        "Reason" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type ebs_volumes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_code() :: %{
        "Code" => String.t() | atom(),
        "ProductType" => String.t() | atom()
      }

  """
  @type product_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_scan_details() :: %{
        "Threats" => list(threat())
      }

  """
  @type malware_scan_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_invitation_response() :: %{}

  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:

      resource_statistics() :: %{
        "AccountId" => String.t() | atom(),
        "LastGeneratedAt" => non_neg_integer(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "TotalFindings" => integer()
      }

  """
  @type resource_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sample_findings_request() :: %{
        optional("FindingTypes") => list(String.t() | atom())
      }

  """
  @type create_sample_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      decline_invitations_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type decline_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_s3_logs_configuration_result() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_s3_logs_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_free_trial_info() :: %{
        "AccountId" => String.t() | atom(),
        "DataSources" => data_sources_free_trial(),
        "Features" => list(free_trial_feature_configuration_result())
      }

  """
  @type account_free_trial_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_master_account_response() :: %{
        "Master" => master()
      }

  """
  @type get_master_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_data_sources_result() :: %{
        "MalwareProtection" => malware_protection_configuration_result()
      }

  """
  @type unprocessed_data_sources_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_member_detectors_response() :: %{
        "MemberDataSourceConfigurations" => list(member_data_source_configuration()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type get_member_detectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_type_statistics() :: %{
        "FindingType" => String.t() | atom(),
        "LastGeneratedAt" => non_neg_integer(),
        "TotalFindings" => integer()
      }

  """
  @type finding_type_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_call_action() :: %{
        "AffectedResources" => map(),
        "Api" => String.t() | atom(),
        "CallerType" => String.t() | atom(),
        "DomainDetails" => domain_details(),
        "ErrorCode" => String.t() | atom(),
        "RemoteAccountDetails" => remote_account_details(),
        "RemoteIpDetails" => remote_ip_details(),
        "ServiceName" => String.t() | atom(),
        "UserAgent" => String.t() | atom()
      }

  """
  @type aws_api_call_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_role_details() :: %{
        "Kind" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type kubernetes_role_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_cluster_details() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "Tags" => list(tag()),
        "VpcId" => String.t() | atom()
      }

  """
  @type eks_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trusted_entity_set_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "ErrorDetails" => String.t() | atom(),
        "ExpectedBucketOwner" => String.t() | atom(),
        "Format" => list(any()),
        "Location" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_trusted_entity_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_workload() :: %{
        "ContainerUids" => list(String.t() | atom()),
        "KubernetesResourcesTypes" => list(any()),
        "Namespace" => String.t() | atom()
      }

  """
  @type kubernetes_workload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_malware_protection_configuration_result() :: %{
        "ScanEc2InstanceWithFindings" => organization_scan_ec2_instance_with_findings_result()
      }

  """
  @type organization_malware_protection_configuration_result() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_invitations_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type delete_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_ebs_volumes() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type organization_ebs_volumes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_detector_response() :: %{
        "CreatedAt" => String.t() | atom(),
        "DataSources" => data_source_configurations_result(),
        "Features" => list(detector_feature_configuration_result()),
        "FindingPublishingFrequency" => list(any()),
        "ServiceRole" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map(),
        "UpdatedAt" => String.t() | atom()
      }

  """
  @type get_detector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_filter_request() :: %{
        optional("Action") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("FindingCriteria") => finding_criteria(),
        optional("Rank") => integer()
      }

  """
  @type update_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_details() :: %{
        "KubernetesUserDetails" => kubernetes_user_details(),
        "KubernetesWorkloadDetails" => kubernetes_workload_details()
      }

  """
  @type kubernetes_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      anomaly_object() :: %{
        "Observations" => observations(),
        "ProfileSubtype" => list(any()),
        "ProfileType" => list(any())
      }

  """
  @type anomaly_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_file_path() :: %{
        "FileName" => String.t() | atom(),
        "FilePath" => String.t() | atom(),
        "Hash" => String.t() | atom(),
        "VolumeArn" => String.t() | atom()
      }

  """
  @type scan_file_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_kubernetes_configuration_result() :: %{
        "AuditLogs" => organization_kubernetes_audit_logs_configuration_result()
      }

  """
  @type organization_kubernetes_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_detector_request() :: %{}

  """
  @type get_detector_request() :: %{}

  @typedoc """

  ## Example:

      malware_protection_plan_actions() :: %{
        "Tagging" => malware_protection_plan_tagging_action()
      }

  """
  @type malware_protection_plan_actions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      anomaly() :: %{
        "Profiles" => map(),
        "Unusual" => anomaly_unusual()
      }

  """
  @type anomaly() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_additional_configuration_result() :: %{
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_additional_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnable") => boolean(),
        optional("AutoEnableOrganizationMembers") => list(any()),
        optional("DataSources") => organization_data_source_configurations(),
        optional("Features") => list(organization_feature_configuration())
      }

  """
  @type update_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        required("AdminAccountId") => String.t() | atom()
      }

  """
  @type enable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      addon_details() :: %{
        "AddonStatus" => String.t() | atom(),
        "AddonVersion" => String.t() | atom()
      }

  """
  @type addon_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_configuration_result() :: %{
        "AuditLogs" => kubernetes_audit_logs_configuration_result()
      }

  """
  @type kubernetes_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geo_location() :: %{
        "Lat" => float(),
        "Lon" => float()
      }

  """
  @type geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "ActionType" => String.t() | atom(),
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
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat_intelligence_detail() :: %{
        "ThreatFileSha256" => String.t() | atom(),
        "ThreatListName" => String.t() | atom(),
        "ThreatNames" => list(String.t() | atom())
      }

  """
  @type threat_intelligence_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_threat_intel_set_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_threat_intel_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      login_attribute() :: %{
        "Application" => String.t() | atom(),
        "FailedLoginAttempts" => integer(),
        "SuccessfulLoginAttempts" => integer(),
        "User" => String.t() | atom()
      }

  """
  @type login_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_threat_entity_set_response() :: %{}

  """
  @type delete_threat_entity_set_response() :: %{}

  @typedoc """

  ## Example:

      malware_protection_plan_summary() :: %{
        "MalwareProtectionPlanId" => String.t() | atom()
      }

  """
  @type malware_protection_plan_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_member_detectors_request() :: %{
        optional("DataSources") => data_source_configurations(),
        optional("Features") => list(member_features_configuration()),
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type update_member_detectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_additional_configuration_result() :: %{
        "Name" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member_additional_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_invitations_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type delete_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor_process() :: %{
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "Sha256" => String.t() | atom()
      }

  """
  @type actor_process() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_probe_action() :: %{
        "Blocked" => boolean(),
        "PortProbeDetails" => list(port_probe_detail())
      }

  """
  @type port_probe_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "AttributeName" => String.t() | atom(),
        "OrderBy" => list(any())
      }

  """
  @type sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat() :: %{
        "ItemPaths" => list(item_path()),
        "Name" => String.t() | atom(),
        "Source" => String.t() | atom()
      }

  """
  @type threat() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ip_set_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("ExpectedBucketOwner") => String.t() | atom(),
        optional("Tags") => map(),
        required("Activate") => boolean(),
        required("Format") => list(any()),
        required("Location") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      volume() :: %{
        "HostPath" => host_path(),
        "Name" => String.t() | atom()
      }

  """
  @type volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_protected_resource() :: %{
        "S3Bucket" => create_s3_bucket_resource()
      }

  """
  @type create_protected_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_top_account_result() :: %{
        "AccountId" => String.t() | atom(),
        "Total" => total()
      }

  """
  @type usage_top_account_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_invitations_count_request() :: %{}

  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:

      list_malware_protection_plans_response() :: %{
        "MalwareProtectionPlans" => list(malware_protection_plan_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_malware_protection_plans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ip_set_response() :: %{
        "ExpectedBucketOwner" => String.t() | atom(),
        "Format" => list(any()),
        "Location" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_ip_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      city() :: %{
        "CityName" => String.t() | atom()
      }

  """
  @type city() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      item_path() :: %{
        "Hash" => String.t() | atom(),
        "NestedItemPath" => String.t() | atom()
      }

  """
  @type item_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        required("InvitationId") => String.t() | atom(),
        required("MasterId") => String.t() | atom()
      }

  """
  @type accept_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      severity_statistics() :: %{
        "LastGeneratedAt" => non_neg_integer(),
        "Severity" => float(),
        "TotalFindings" => integer()
      }

  """
  @type severity_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      anomaly_unusual() :: %{
        "Behavior" => map()
      }

  """
  @type anomaly_unusual() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OnlyAssociated") => String.t() | atom()
      }

  """
  @type list_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fargate_details() :: %{
        "Issues" => list(String.t() | atom()),
        "ManagementType" => list(any())
      }

  """
  @type fargate_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_protection_plan_status_reason() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type malware_protection_plan_status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "Members" => list(member()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      block_public_access() :: %{
        "BlockPublicAcls" => boolean(),
        "BlockPublicPolicy" => boolean(),
        "IgnorePublicAcls" => boolean(),
        "RestrictPublicBuckets" => boolean()
      }

  """
  @type block_public_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detectors_response() :: %{
        "DetectorIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_detectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_trial_feature_configuration_result() :: %{
        "FreeTrialDaysRemaining" => integer(),
        "Name" => list(any())
      }

  """
  @type free_trial_feature_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_feature_statistics() :: %{
        "AdditionalConfiguration" => list(organization_feature_statistics_additional_configuration()),
        "EnabledAccountsCount" => integer(),
        "Name" => list(any())
      }

  """
  @type organization_feature_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      local_ip_details() :: %{
        "IpAddressV4" => String.t() | atom(),
        "IpAddressV6" => String.t() | atom()
      }

  """
  @type local_ip_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_remaining_free_trial_days_request() :: %{
        optional("AccountIds") => list(String.t() | atom())
      }

  """
  @type get_remaining_free_trial_days_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scanned_item_count() :: %{
        "Files" => integer(),
        "TotalGb" => integer(),
        "Volumes" => integer()
      }

  """
  @type scanned_item_count() :: %{(String.t() | atom()) => any()}

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
        "AdditionalConfiguration" => list(organization_additional_configuration_result()),
        "AutoEnable" => list(any()),
        "Name" => list(any())
      }

  """
  @type organization_feature_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_request() :: %{
        optional("FilterCriteria") => coverage_filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => coverage_sort_criteria()
      }

  """
  @type list_coverage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_remaining_free_trial_days_response() :: %{
        "Accounts" => list(account_free_trial_info()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type get_remaining_free_trial_days_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "DestinationId" => String.t() | atom(),
        "DestinationType" => list(any()),
        "Status" => list(any())
      }

  """
  @type destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      private_ip_address_details() :: %{
        "PrivateDnsName" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom()
      }

  """
  @type private_ip_address_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_invitations_count_response() :: %{
        "InvitationsCount" => integer()
      }

  """
  @type get_invitations_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_context() :: %{
        "AddressFamily" => String.t() | atom(),
        "CommandLineExample" => String.t() | atom(),
        "FileSystemType" => String.t() | atom(),
        "Flags" => list(String.t() | atom()),
        "IanaProtocolNumber" => integer(),
        "LdPreloadValue" => String.t() | atom(),
        "LibraryPath" => String.t() | atom(),
        "MemoryRegions" => list(String.t() | atom()),
        "ModifiedAt" => non_neg_integer(),
        "ModifyingProcess" => process_details(),
        "ModuleFilePath" => String.t() | atom(),
        "ModuleName" => String.t() | atom(),
        "ModuleSha256" => String.t() | atom(),
        "MountSource" => String.t() | atom(),
        "MountTarget" => String.t() | atom(),
        "ReleaseAgentPath" => String.t() | atom(),
        "RuncBinaryPath" => String.t() | atom(),
        "ScriptPath" => String.t() | atom(),
        "ServiceName" => String.t() | atom(),
        "ShellHistoryFilePath" => String.t() | atom(),
        "SocketPath" => String.t() | atom(),
        "TargetProcess" => process_details(),
        "ThreatFilePath" => String.t() | atom(),
        "ToolCategory" => String.t() | atom(),
        "ToolName" => String.t() | atom()
      }

  """
  @type runtime_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evidence() :: %{
        "ThreatIntelligenceDetails" => list(threat_intelligence_detail())
      }

  """
  @type evidence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_threat_name() :: %{
        "FilePaths" => list(scan_file_path()),
        "ItemCount" => integer(),
        "Name" => String.t() | atom(),
        "Severity" => String.t() | atom()
      }

  """
  @type scan_threat_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_resource_result() :: %{
        "Resource" => String.t() | atom(),
        "Total" => total()
      }

  """
  @type usage_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_filter_criteria() :: %{
        "FilterCriterion" => list(coverage_filter_criterion())
      }

  """
  @type coverage_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_threat_intel_set_response() :: %{
        "ThreatIntelSetId" => String.t() | atom()
      }

  """
  @type create_threat_intel_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "Account" => account(),
        "CredentialUid" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_ecs_cluster_details() :: %{
        "ClusterName" => String.t() | atom(),
        "ContainerInstanceDetails" => container_instance_details(),
        "FargateDetails" => fargate_details()
      }

  """
  @type coverage_ecs_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_criteria() :: %{
        "Criterion" => map()
      }

  """
  @type finding_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_detections() :: %{
        "HighestSeverityThreatDetails" => highest_severity_threat_details(),
        "ScannedItemCount" => scanned_item_count(),
        "ThreatDetectedByName" => threat_detected_by_name(),
        "ThreatsDetectedItemCount" => threats_detected_item_count()
      }

  """
  @type scan_detections() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_permission_checked_details() :: %{
        "Allowed" => boolean(),
        "Namespace" => String.t() | atom(),
        "Resource" => String.t() | atom(),
        "Verb" => String.t() | atom()
      }

  """
  @type kubernetes_permission_checked_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_monitoring_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type start_monitoring_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sample_findings_response() :: %{}

  """
  @type create_sample_findings_response() :: %{}

  @typedoc """

  ## Example:

      update_findings_feedback_request() :: %{
        optional("Comments") => String.t() | atom(),
        required("Feedback") => list(any()),
        required("FindingIds") => list(String.t() | atom())
      }

  """
  @type update_findings_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_s3_bucket_resource() :: %{
        "BucketName" => String.t() | atom(),
        "ObjectPrefixes" => list(String.t() | atom())
      }

  """
  @type create_s3_bucket_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rds_login_attempt_action() :: %{
        "LoginAttributes" => list(login_attribute()),
        "RemoteIpDetails" => remote_ip_details()
      }

  """
  @type rds_login_attempt_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor() :: %{
        "Id" => String.t() | atom(),
        "Process" => actor_process(),
        "Session" => session(),
        "User" => user()
      }

  """
  @type actor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t() | atom(),
        "AdministratorId" => String.t() | atom(),
        "DetectorId" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "InvitedAt" => String.t() | atom(),
        "MasterId" => String.t() | atom(),
        "RelationshipStatus" => String.t() | atom(),
        "UpdatedAt" => String.t() | atom()
      }

  """
  @type member() :: %{(String.t() | atom()) => any()}

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
  @type usage_feature_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_response() :: %{}

  """
  @type enable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      finding_statistics() :: %{
        "CountBySeverity" => map(),
        "GroupedByAccount" => list(account_statistics()),
        "GroupedByDate" => list(date_statistics()),
        "GroupedByFindingType" => list(finding_type_statistics()),
        "GroupedByResource" => list(resource_statistics()),
        "GroupedBySeverity" => list(severity_statistics())
      }

  """
  @type finding_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_scan_ec2_instance_with_findings_result() :: %{
        "EbsVolumes" => organization_ebs_volumes_result()
      }

  """
  @type organization_scan_ec2_instance_with_findings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_cluster_details() :: %{
        "ActiveServicesCount" => integer(),
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RegisteredContainerInstancesCount" => integer(),
        "RunningTasksCount" => integer(),
        "Status" => String.t() | atom(),
        "Tags" => list(tag()),
        "TaskDetails" => ecs_task_details()
      }

  """
  @type ecs_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan() :: %{
        "AccountId" => String.t() | atom(),
        "AdminDetectorId" => String.t() | atom(),
        "AttachedVolumes" => list(volume_detail()),
        "DetectorId" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "FileCount" => float(),
        "ResourceDetails" => resource_details(),
        "ScanEndTime" => non_neg_integer(),
        "ScanId" => String.t() | atom(),
        "ScanResultDetails" => scan_result_details(),
        "ScanStartTime" => non_neg_integer(),
        "ScanStatus" => list(any()),
        "ScanType" => list(any()),
        "TotalBytes" => float(),
        "TriggerDetails" => trigger_details()
      }

  """
  @type scan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trusted_entity_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_trusted_entity_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_malware_scan_settings_request() :: %{}

  """
  @type get_malware_scan_settings_request() :: %{}

  @typedoc """

  ## Example:

      organization_statistics() :: %{
        "ActiveAccountsCount" => integer(),
        "CountByFeature" => list(organization_feature_statistics()),
        "EnabledAccountsCount" => integer(),
        "MemberAccountsCount" => integer(),
        "TotalAccountsCount" => integer()
      }

  """
  @type organization_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_details() :: %{
        "Domain" => String.t() | atom()
      }

  """
  @type domain_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_role_binding_details() :: %{
        "Kind" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RoleRefKind" => String.t() | atom(),
        "RoleRefName" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type kubernetes_role_binding_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malware_protection_data_source_free_trial() :: %{
        "ScanEc2InstanceWithFindings" => data_source_free_trial()
      }

  """
  @type malware_protection_data_source_free_trial() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ebs_volume_scan_details() :: %{
        "ScanCompletedAt" => non_neg_integer(),
        "ScanDetections" => scan_detections(),
        "ScanId" => String.t() | atom(),
        "ScanStartedAt" => non_neg_integer(),
        "ScanType" => list(any()),
        "Sources" => list(String.t() | atom()),
        "TriggerFindingId" => String.t() | atom()
      }

  """
  @type ebs_volume_scan_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_data_source_configurations() :: %{
        "Kubernetes" => organization_kubernetes_configuration(),
        "MalwareProtection" => organization_malware_protection_configuration(),
        "S3Logs" => organization_s3_logs_configuration()
      }

  """
  @type organization_data_source_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_account() :: %{
        "AccountId" => String.t() | atom(),
        "Result" => String.t() | atom()
      }

  """
  @type unprocessed_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_member_detectors_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type update_member_detectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "InstanceArn" => String.t() | atom()
      }

  """
  @type resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_logs_configuration_result() :: %{
        "Status" => list(any())
      }

  """
  @type dns_logs_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_publishing_destination_request() :: %{
        optional("DestinationProperties") => destination_properties()
      }

  """
  @type update_publishing_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_administrator_invitation_response() :: %{}

  """
  @type accept_administrator_invitation_response() :: %{}

  @typedoc """

  ## Example:

      create_ip_set_response() :: %{
        "IpSetId" => String.t() | atom()
      }

  """
  @type create_ip_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_monitoring_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type stop_monitoring_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_feature_statistics_additional_configuration() :: %{
        "EnabledAccountsCount" => integer(),
        "Name" => list(any())
      }

  """
  @type organization_feature_statistics_additional_configuration() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_trusted_entity_set_response() :: %{}

  """
  @type delete_trusted_entity_set_response() :: %{}

  @typedoc """

  ## Example:

      rds_db_instance_details() :: %{
        "DbClusterIdentifier" => String.t() | atom(),
        "DbInstanceArn" => String.t() | atom(),
        "DbInstanceIdentifier" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "Tags" => list(tag())
      }

  """
  @type rds_db_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_condition() :: %{
        "MapEquals" => list(scan_condition_pair())
      }

  """
  @type scan_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat_detected_by_name() :: %{
        "ItemCount" => integer(),
        "Shortened" => boolean(),
        "ThreatNames" => list(scan_threat_name()),
        "UniqueThreatNameCount" => integer()
      }

  """
  @type threat_detected_by_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_level_permissions() :: %{
        "AccessControlList" => access_control_list(),
        "BlockPublicAccess" => block_public_access(),
        "BucketPolicy" => bucket_policy()
      }

  """
  @type bucket_level_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "AdminAccounts" => list(admin_account()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_top_accounts_result() :: %{
        "Accounts" => list(usage_top_account_result()),
        "Feature" => list(any())
      }

  """
  @type usage_top_accounts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_probe_detail() :: %{
        "LocalIpDetails" => local_ip_details(),
        "LocalPortDetails" => local_port_details(),
        "RemoteIpDetails" => remote_ip_details()
      }

  """
  @type port_probe_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_instance_profile() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type iam_instance_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_monitoring_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type stop_monitoring_members_response() :: %{(String.t() | atom()) => any()}

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
        optional("Features") => list(detector_feature_configuration()),
        optional("FindingPublishingFrequency") => list(any())
      }

  """
  @type update_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_context() :: %{
        "AllowPrivilegeEscalation" => boolean(),
        "Privileged" => boolean()
      }

  """
  @type security_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      default_server_side_encryption() :: %{
        "EncryptionType" => String.t() | atom(),
        "KmsMasterKeyArn" => String.t() | atom()
      }

  """
  @type default_server_side_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_statistics() :: %{
        "Date" => non_neg_integer(),
        "LastGeneratedAt" => non_neg_integer(),
        "Severity" => float(),
        "TotalFindings" => integer()
      }

  """
  @type date_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_control_list() :: %{
        "AllowsPublicReadAccess" => boolean(),
        "AllowsPublicWriteAccess" => boolean()
      }

  """
  @type access_control_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_configurations() :: %{
        "Kubernetes" => kubernetes_configuration(),
        "MalwareProtection" => malware_protection_configuration(),
        "S3Logs" => s3_logs_configuration()
      }

  """
  @type data_source_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_administrator_account_response() :: %{
        "Administrator" => administrator()
      }

  """
  @type get_administrator_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_free_trial() :: %{
        "FreeTrialDaysRemaining" => integer()
      }

  """
  @type data_source_free_trial() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_additional_configuration() :: %{
        "Name" => list(any()),
        "Status" => list(any())
      }

  """
  @type detector_additional_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_filters_response() :: %{
        "FilterNames" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_filters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_malware_scan_response() :: %{
        "ScanId" => String.t() | atom()
      }

  """
  @type start_malware_scan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unarchive_findings_response() :: %{}

  """
  @type unarchive_findings_response() :: %{}

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type create_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_object_detail() :: %{
        "ETag" => String.t() | atom(),
        "Hash" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "ObjectArn" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type s3_object_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_threat_entity_set_request() :: %{}

  """
  @type get_threat_entity_set_request() :: %{}

  @typedoc """

  ## Example:

      access_key_details() :: %{
        "AccessKeyId" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "UserName" => String.t() | atom(),
        "UserType" => String.t() | atom()
      }

  """
  @type access_key_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_filter_request() :: %{}

  """
  @type delete_filter_request() :: %{}

  @typedoc """

  ## Example:

      owner() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type owner() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_coverage_statistics_request() :: %{
        optional("FilterCriteria") => coverage_filter_criteria(),
        required("StatisticsType") => list(list(any())())
      }

  """
  @type get_coverage_statistics_request() :: %{(String.t() | atom()) => any()}

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
  @type runtime_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_criteria() :: %{
        "AccountIds" => list(String.t() | atom()),
        "DataSources" => list(list(any())()),
        "Features" => list(list(any())()),
        "Resources" => list(String.t() | atom())
      }

  """
  @type usage_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_statistics_response() :: %{
        "NextToken" => String.t() | atom(),
        "UsageStatistics" => usage_statistics()
      }

  """
  @type get_usage_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_filters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_filters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_s3_bucket_resource() :: %{
        "ObjectPrefixes" => list(String.t() | atom())
      }

  """
  @type update_s3_bucket_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_detector_request() :: %{}

  """
  @type delete_detector_request() :: %{}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "Invitations" => list(invitation()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_invitations_response() :: %{(String.t() | atom()) => any()}

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
        "RdsLimitlessDbDetails" => rds_limitless_db_details(),
        "ResourceType" => String.t() | atom(),
        "S3BucketDetails" => list(s3_bucket_detail())
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indicator() :: %{
        "Key" => list(any()),
        "Title" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type indicator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_details() :: %{
        "OrganizationStatistics" => organization_statistics(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type organization_details() :: %{(String.t() | atom()) => any()}

  @type accept_administrator_invitation_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type accept_invitation_errors() :: bad_request_exception() | internal_server_error_exception()

  @type archive_findings_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_ip_set_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type create_malware_protection_plan_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | conflict_exception()

  @type create_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type create_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_sample_findings_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_threat_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type create_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type create_trusted_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type decline_invitations_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_detector_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_filter_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_invitations_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_ip_set_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_malware_protection_plan_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type delete_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_threat_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type delete_trusted_entity_set_errors() ::
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

  @type get_malware_protection_plan_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

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

  @type get_threat_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type get_trusted_entity_set_errors() ::
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

  @type list_malware_protection_plans_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type list_members_errors() :: bad_request_exception() | internal_server_error_exception()

  @type list_organization_admin_accounts_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_publishing_destinations_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type list_threat_entity_sets_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_threat_intel_sets_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type list_trusted_entity_sets_errors() ::
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

  @type update_ip_set_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type update_malware_protection_plan_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_malware_scan_settings_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_member_detectors_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_organization_configuration_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_publishing_destination_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_threat_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  @type update_threat_intel_set_errors() ::
          bad_request_exception() | internal_server_error_exception() | access_denied_exception()

  @type update_trusted_entity_set_errors() ::
          bad_request_exception() | internal_server_error_exception()

  def metadata do
    %{
      api_version: "2017-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "guardduty",
      global?: false,
      hostname: nil,
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
          String.t() | atom(),
          accept_administrator_invitation_request(),
          list()
        ) ::
          {:ok, accept_administrator_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_administrator_invitation_errors()}
  def accept_administrator_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
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
  Accepts the invitation to be monitored by a GuardDuty administrator account.
  """
  @spec accept_invitation(map(), String.t() | atom(), accept_invitation_request(), list()) ::
          {:ok, accept_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
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
  Archives GuardDuty findings that are specified by the list of finding IDs.

  Only the administrator account can archive findings. Member accounts don't have
  permission to archive findings from their accounts.
  """
  @spec archive_findings(map(), String.t() | atom(), archive_findings_request(), list()) ::
          {:ok, archive_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, archive_findings_errors()}
  def archive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/archive"
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
          | {:error, term()}
          | {:error, create_detector_errors()}
  def create_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detector"
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
  Creates a filter using the specified finding criteria.

  The maximum number of saved filters
  per Amazon Web Services account per Region is 100. For more information, see
  [Quotas for GuardDuty](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html).
  """
  @spec create_filter(map(), String.t() | atom(), create_filter_request(), list()) ::
          {:ok, create_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_filter_errors()}
  def create_filter(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
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
  @spec create_ip_set(map(), String.t() | atom(), create_ip_set_request(), list()) ::
          {:ok, create_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ip_set_errors()}
  def create_ip_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset"
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
  Creates a new Malware Protection plan for the protected resource.

  When you create a Malware Protection plan, the Amazon Web Services service terms
  for GuardDuty Malware
  Protection apply. For more information, see [Amazon Web Services service terms for GuardDuty Malware
  Protection](http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty).
  """
  @spec create_malware_protection_plan(map(), create_malware_protection_plan_request(), list()) ::
          {:ok, create_malware_protection_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_malware_protection_plan_errors()}
  def create_malware_protection_plan(%Client{} = client, input, options \\ []) do
    url_path = "/malware-protection-plan"
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
  @spec create_members(map(), String.t() | atom(), create_members_request(), list()) ::
          {:ok, create_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_members_errors()}
  def create_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
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
  Creates a publishing destination where you can export your GuardDuty findings.

  Before you start exporting the
  findings, the destination resource must exist.
  """
  @spec create_publishing_destination(
          map(),
          String.t() | atom(),
          create_publishing_destination_request(),
          list()
        ) ::
          {:ok, create_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_publishing_destination_errors()}
  def create_publishing_destination(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination"
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
  Generates sample findings of types specified by the list of finding types.

  If 'NULL' is
  specified for `findingTypes`, the API generates sample findings of all supported
  finding types.
  """
  @spec create_sample_findings(
          map(),
          String.t() | atom(),
          create_sample_findings_request(),
          list()
        ) ::
          {:ok, create_sample_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sample_findings_errors()}
  def create_sample_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/create"
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
  Creates a new threat entity set.

  In a threat entity set, you can provide known malicious
  IP addresses and domains for your Amazon Web Services environment.
  GuardDuty generates findings based on the entries in the threat entity sets.
  Only users of the administrator account can manage entity sets, which
  automatically apply
  to member accounts.
  """
  @spec create_threat_entity_set(
          map(),
          String.t() | atom(),
          create_threat_entity_set_request(),
          list()
        ) ::
          {:ok, create_threat_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_threat_entity_set_errors()}
  def create_threat_entity_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatentityset"
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
  Creates a new ThreatIntelSet.

  ThreatIntelSets consist of known malicious IP addresses.
  GuardDuty generates findings based on ThreatIntelSets. Only users of the
  administrator
  account can use this operation.
  """
  @spec create_threat_intel_set(
          map(),
          String.t() | atom(),
          create_threat_intel_set_request(),
          list()
        ) ::
          {:ok, create_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_threat_intel_set_errors()}
  def create_threat_intel_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset"
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
  Creates a new trusted entity set.

  In the trusted entity set, you can provide IP addresses
  and domains that you believe are secure for communication in your Amazon Web
  Services environment. GuardDuty
  will not generate findings for the entries that are specified in a trusted
  entity set. At any
  given time, you can have only one trusted entity set.

  Only users of the administrator account can manage the entity sets, which
  automatically
  apply to member accounts.
  """
  @spec create_trusted_entity_set(
          map(),
          String.t() | atom(),
          create_trusted_entity_set_request(),
          list()
        ) ::
          {:ok, create_trusted_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trusted_entity_set_errors()}
  def create_trusted_entity_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/trustedentityset"
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
  Declines invitations sent to the current member account by Amazon Web Services
  accounts specified by
  their account IDs.
  """
  @spec decline_invitations(map(), decline_invitations_request(), list()) ::
          {:ok, decline_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decline_invitations_errors()}
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/decline"
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
  Deletes an Amazon GuardDuty detector that is specified by the detector ID.
  """
  @spec delete_detector(map(), String.t() | atom(), delete_detector_request(), list()) ::
          {:ok, delete_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_detector_errors()}
  def delete_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Deletes the filter specified by the filter name.
  """
  @spec delete_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_filter_request(),
          list()
        ) ::
          {:ok, delete_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_filter_errors()}
  def delete_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Deletes invitations sent to the current member account by Amazon Web Services
  accounts specified by
  their account IDs.
  """
  @spec delete_invitations(map(), delete_invitations_request(), list()) ::
          {:ok, delete_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_invitations_errors()}
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/delete"
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
  Deletes the IPSet specified by the `ipSetId`.

  IPSets are called trusted IP
  lists in the console user interface.
  """
  @spec delete_ip_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_ip_set_request(),
          list()
        ) ::
          {:ok, delete_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ip_set_errors()}
  def delete_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Deletes the Malware Protection plan ID associated with the Malware Protection
  plan resource.

  Use this API only when you no longer want to protect the resource associated
  with this
  Malware Protection plan ID.
  """
  @spec delete_malware_protection_plan(
          map(),
          String.t() | atom(),
          delete_malware_protection_plan_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_malware_protection_plan_errors()}
  def delete_malware_protection_plan(
        %Client{} = client,
        malware_protection_plan_id,
        input,
        options \\ []
      ) do
    url_path = "/malware-protection-plan/#{AWS.Util.encode_uri(malware_protection_plan_id)}"
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
  Deletes GuardDuty member accounts (to the current GuardDuty administrator
  account)
  specified by the account IDs.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disable GuardDuty for a member
  account in your organization.
  """
  @spec delete_members(map(), String.t() | atom(), delete_members_request(), list()) ::
          {:ok, delete_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_members_errors()}
  def delete_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/delete"
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
  Deletes the publishing definition with the specified `destinationId`.
  """
  @spec delete_publishing_destination(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_publishing_destination_request(),
          list()
        ) ::
          {:ok, delete_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the threat entity set that is associated with the specified
  `threatEntitySetId`.
  """
  @spec delete_threat_entity_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_threat_entity_set_request(),
          list()
        ) ::
          {:ok, delete_threat_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_threat_entity_set_errors()}
  def delete_threat_entity_set(
        %Client{} = client,
        detector_id,
        threat_entity_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatentityset/#{AWS.Util.encode_uri(threat_entity_set_id)}"

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
  Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  @spec delete_threat_intel_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_threat_intel_set_request(),
          list()
        ) ::
          {:ok, delete_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the trusted entity set that is associated with the specified
  `trustedEntitySetId`.
  """
  @spec delete_trusted_entity_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_trusted_entity_set_request(),
          list()
        ) ::
          {:ok, delete_trusted_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trusted_entity_set_errors()}
  def delete_trusted_entity_set(
        %Client{} = client,
        detector_id,
        trusted_entity_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/trustedentityset/#{AWS.Util.encode_uri(trusted_entity_set_id)}"

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
  Returns a list of malware scans.

  Each member account can view the malware scans for their
  own accounts. An administrator can view the malware scans for all the member
  accounts.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec describe_malware_scans(
          map(),
          String.t() | atom(),
          describe_malware_scans_request(),
          list()
        ) ::
          {:ok, describe_malware_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_malware_scans_errors()}
  def describe_malware_scans(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scans"
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec describe_publishing_destination(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
          | {:error, disable_organization_admin_account_errors()}
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/disable"
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
          String.t() | atom(),
          disassociate_from_administrator_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_administrator_account_errors()}
  def disassociate_from_administrator_account(
        %Client{} = client,
        detector_id,
        input,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator/disassociate"
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
          String.t() | atom(),
          disassociate_from_master_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_master_account_errors()}
  def disassociate_from_master_account(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master/disassociate"
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
  @spec disassociate_members(map(), String.t() | atom(), disassociate_members_request(), list()) ::
          {:ok, disassociate_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_members_errors()}
  def disassociate_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/disassociate"
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
          | {:error, term()}
          | {:error, enable_organization_admin_account_errors()}
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/enable"
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
  Provides the details of the GuardDuty administrator account associated with the
  current
  GuardDuty member account.

  Based on the type of account that runs this API, the following list shows how
  the API behavior varies:

    *
  When the GuardDuty administrator account runs this API, it will return success
  (`HTTP 200`) but no content.

    *
  When a member account runs this API, it will return the details of the GuardDuty
  administrator account that is associated
  with this calling member account.

    *
  When an individual account (not associated with an organization) runs this API,
  it will return success (`HTTP 200`)
  but no content.
  """
  @spec get_administrator_account(map(), String.t() | atom(), list()) ::
          {:ok, get_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_coverage_statistics(
          map(),
          String.t() | atom(),
          get_coverage_statistics_request(),
          list()
        ) ::
          {:ok, get_coverage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_coverage_statistics_errors()}
  def get_coverage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage/statistics"
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
  Retrieves a GuardDuty detector specified by the detectorId.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more
  information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_detector(map(), String.t() | atom(), list()) ::
          {:ok, get_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_filter(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_findings(map(), String.t() | atom(), get_findings_request(), list()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_errors()}
  def get_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/get"
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
  Lists GuardDuty findings statistics for the specified detector ID.

  You must provide either `findingStatisticTypes` or
  `groupBy` parameter, and not both. You can use the `maxResults` and `orderBy`
  parameters only when using `groupBy`.

  There might be regional differences because some flags might not be available in
  all the Regions where GuardDuty
  is currently supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  @spec get_findings_statistics(
          map(),
          String.t() | atom(),
          get_findings_statistics_request(),
          list()
        ) ::
          {:ok, get_findings_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_statistics_errors()}
  def get_findings_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/statistics"
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
  Returns the count of all GuardDuty membership invitations that were sent to the
  current
  member account except the currently accepted invitation.
  """
  @spec get_invitations_count(map(), list()) ::
          {:ok, get_invitations_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_ip_set(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the Malware Protection plan details associated with a Malware
  Protection
  plan ID.
  """
  @spec get_malware_protection_plan(map(), String.t() | atom(), list()) ::
          {:ok, get_malware_protection_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_malware_protection_plan_errors()}
  def get_malware_protection_plan(%Client{} = client, malware_protection_plan_id, options \\ []) do
    url_path = "/malware-protection-plan/#{AWS.Util.encode_uri(malware_protection_plan_id)}"
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
  @spec get_malware_scan_settings(map(), String.t() | atom(), list()) ::
          {:ok, get_malware_scan_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_master_account(map(), String.t() | atom(), list()) ::
          {:ok, get_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_member_detectors(map(), String.t() | atom(), get_member_detectors_request(), list()) ::
          {:ok, get_member_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_member_detectors_errors()}
  def get_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/get"
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
  Retrieves GuardDuty member accounts (of the current GuardDuty administrator
  account)
  specified by the account IDs.
  """
  @spec get_members(map(), String.t() | atom(), get_members_request(), list()) ::
          {:ok, get_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_members_errors()}
  def get_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/get"
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
  Retrieves how many active member accounts have
  each feature enabled within GuardDuty.

  Only a delegated GuardDuty administrator of an organization can run this API.

  When you create a new organization, it might take up to 24
  hours to generate the statistics for the entire organization.
  """
  @spec get_organization_statistics(map(), list()) ::
          {:ok, get_organization_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          get_remaining_free_trial_days_request(),
          list()
        ) ::
          {:ok, get_remaining_free_trial_days_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_remaining_free_trial_days_errors()}
  def get_remaining_free_trial_days(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/freeTrial/daysRemaining"
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
  Retrieves the threat entity set associated with the specified
  `threatEntitySetId`.
  """
  @spec get_threat_entity_set(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_threat_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_threat_entity_set_errors()}
  def get_threat_entity_set(%Client{} = client, detector_id, threat_entity_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatentityset/#{AWS.Util.encode_uri(threat_entity_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
  """
  @spec get_threat_intel_set(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the trusted entity set associated with the specified
  `trustedEntitySetId`.
  """
  @spec get_trusted_entity_set(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_trusted_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trusted_entity_set_errors()}
  def get_trusted_entity_set(
        %Client{} = client,
        detector_id,
        trusted_entity_set_id,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/trustedentityset/#{AWS.Util.encode_uri(trusted_entity_set_id)}"

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
  @spec get_usage_statistics(map(), String.t() | atom(), get_usage_statistics_request(), list()) ::
          {:ok, get_usage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_statistics_errors()}
  def get_usage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/usage/statistics"
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
  @spec invite_members(map(), String.t() | atom(), invite_members_request(), list()) ::
          {:ok, invite_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invite_members_errors()}
  def invite_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/invite"
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
  Lists coverage details for your GuardDuty account.

  If you're a GuardDuty administrator, you can
  retrieve all resources associated with the active member accounts in your
  organization.

  Make sure the accounts have Runtime Monitoring enabled and GuardDuty agent
  running on
  their resources.
  """
  @spec list_coverage(map(), String.t() | atom(), list_coverage_request(), list()) ::
          {:ok, list_coverage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_coverage_errors()}
  def list_coverage(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage"
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
  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
  """
  @spec list_detectors(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_filters(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_findings(map(), String.t() | atom(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings"
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
  Lists all GuardDuty membership invitations that were sent to the current Amazon
  Web Services
  account.
  """
  @spec list_invitations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_ip_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ip_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the Malware Protection plan IDs associated with the protected
  resources in your Amazon Web Services account.
  """
  @spec list_malware_protection_plans(map(), String.t() | atom() | nil, list()) ::
          {:ok, list_malware_protection_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_malware_protection_plans_errors()}
  def list_malware_protection_plans(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/malware-protection-plan"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_organization_admin_accounts(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_publishing_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Lists the threat entity sets associated with the specified GuardDuty detector
  ID.

  If you use this
  operation from a member account, the threat entity sets that are returned as a
  response, belong to the
  administrator account.
  """
  @spec list_threat_entity_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_threat_entity_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_threat_entity_sets_errors()}
  def list_threat_entity_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatentityset"
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
  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.

  If you
  use this operation from a member account, the ThreatIntelSets associated with
  the
  administrator account are returned.
  """
  @spec list_threat_intel_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_threat_intel_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the trusted entity sets associated with the specified GuardDuty detector
  ID.

  If you use this
  operation from a member account, the trusted entity sets that are returned as a
  response, belong to the
  administrator account.
  """
  @spec list_trusted_entity_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_trusted_entity_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trusted_entity_sets_errors()}
  def list_trusted_entity_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/trustedentityset"
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
          | {:error, term()}
          | {:error, start_malware_scan_errors()}
  def start_malware_scan(%Client{} = client, input, options \\ []) do
    url_path = "/malware-scan/start"
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
  Turns on GuardDuty monitoring of the specified member accounts.

  Use this operation to
  restart monitoring of accounts that you stopped monitoring with the
  [StopMonitoringMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html)
  operation.
  """
  @spec start_monitoring_members(
          map(),
          String.t() | atom(),
          start_monitoring_members_request(),
          list()
        ) ::
          {:ok, start_monitoring_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_monitoring_members_errors()}
  def start_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/start"
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
  Stops GuardDuty monitoring for the specified member accounts.

  Use the
  `StartMonitoringMembers` operation to restart monitoring for those
  accounts.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to stop monitoring the member
  accounts in your organization.
  """
  @spec stop_monitoring_members(
          map(),
          String.t() | atom(),
          stop_monitoring_members_request(),
          list()
        ) ::
          {:ok, stop_monitoring_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_monitoring_members_errors()}
  def stop_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/stop"
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
  Adds tags to a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
      204
    )
  end

  @doc """
  Unarchives GuardDuty findings specified by the `findingIds`.
  """
  @spec unarchive_findings(map(), String.t() | atom(), unarchive_findings_request(), list()) ::
          {:ok, unarchive_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unarchive_findings_errors()}
  def unarchive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/unarchive"
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
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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
  @spec update_detector(map(), String.t() | atom(), update_detector_request(), list()) ::
          {:ok, update_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_detector_errors()}
  def update_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Updates the filter specified by the filter name.
  """
  @spec update_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_filter_request(),
          list()
        ) ::
          {:ok, update_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_filter_errors()}
  def update_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Marks the specified GuardDuty findings as useful or not useful.
  """
  @spec update_findings_feedback(
          map(),
          String.t() | atom(),
          update_findings_feedback_request(),
          list()
        ) ::
          {:ok, update_findings_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_findings_feedback_errors()}
  def update_findings_feedback(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/feedback"
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
  Updates the IPSet specified by the IPSet ID.
  """
  @spec update_ip_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_ip_set_request(),
          list()
        ) ::
          {:ok, update_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ip_set_errors()}
  def update_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Updates an existing Malware Protection plan resource.
  """
  @spec update_malware_protection_plan(
          map(),
          String.t() | atom(),
          update_malware_protection_plan_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_malware_protection_plan_errors()}
  def update_malware_protection_plan(
        %Client{} = client,
        malware_protection_plan_id,
        input,
        options \\ []
      ) do
    url_path = "/malware-protection-plan/#{AWS.Util.encode_uri(malware_protection_plan_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          update_malware_scan_settings_request(),
          list()
        ) ::
          {:ok, update_malware_scan_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_malware_scan_settings_errors()}
  def update_malware_scan_settings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scan-settings"
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
  @spec update_member_detectors(
          map(),
          String.t() | atom(),
          update_member_detectors_request(),
          list()
        ) ::
          {:ok, update_member_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_member_detectors_errors()}
  def update_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/update"
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
          String.t() | atom(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
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
  Updates information about the publishing destination specified by the
  `destinationId`.
  """
  @spec update_publishing_destination(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_publishing_destination_request(),
          list()
        ) ::
          {:ok, update_publishing_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the threat entity set associated with the specified `threatEntitySetId`.
  """
  @spec update_threat_entity_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_threat_entity_set_request(),
          list()
        ) ::
          {:ok, update_threat_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_threat_entity_set_errors()}
  def update_threat_entity_set(
        %Client{} = client,
        detector_id,
        threat_entity_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatentityset/#{AWS.Util.encode_uri(threat_entity_set_id)}"

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
  Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  @spec update_threat_intel_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_threat_intel_set_request(),
          list()
        ) ::
          {:ok, update_threat_intel_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the trusted entity set associated with the specified
  `trustedEntitySetId`.
  """
  @spec update_trusted_entity_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_trusted_entity_set_request(),
          list()
        ) ::
          {:ok, update_trusted_entity_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trusted_entity_set_errors()}
  def update_trusted_entity_set(
        %Client{} = client,
        detector_id,
        trusted_entity_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/trustedentityset/#{AWS.Util.encode_uri(trusted_entity_set_id)}"

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
end
