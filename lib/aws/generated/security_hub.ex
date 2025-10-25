# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityHub do
  @moduledoc """
  Security Hub provides you with a comprehensive view of your security state in
  Amazon Web Services and helps
  you assess your Amazon Web Services environment against security industry
  standards and best practices.

  Security Hub collects security data across Amazon Web Services accounts, Amazon
  Web Services services, and
  supported third-party products and helps you analyze your security trends and
  identify the highest priority security
  issues.

  To help you manage the security state of your organization, Security Hub
  supports multiple security standards.
  These include the Amazon Web Services Foundational Security Best Practices
  (FSBP) standard developed by Amazon Web Services,
  and external compliance frameworks such as the Center for Internet Security
  (CIS), the Payment Card Industry Data
  Security Standard (PCI DSS), and the National Institute of Standards and
  Technology (NIST). Each standard includes
  several security controls, each of which represents a security best practice.
  Security Hub runs checks against
  security controls and generates control findings to help you assess your
  compliance against security best practices.

  In addition to generating control findings, Security Hub also receives findings
  from other Amazon Web Services services,
  such as Amazon GuardDuty and Amazon Inspector, and
  supported third-party products. This gives you a single pane of glass into a
  variety of security-related issues. You
  can also send Security Hub findings to other Amazon Web Services services and
  supported third-party products.

  Security Hub offers automation features that help you triage and remediate
  security issues. For example,
  you can use automation rules to automatically update critical findings when a
  security check fails. You can also leverage the integration with
  Amazon EventBridge to trigger automatic responses to specific findings.

  This guide, the *Security Hub API Reference*, provides
  information about the Security Hub API. This includes supported resources, HTTP
  methods, parameters,
  and schemas. If you're new to Security Hub, you might find it helpful to also
  review the [
  *Security Hub User Guide*
  ](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html).
  The
  user guide explains key concepts and provides procedures
  that demonstrate how to use Security Hub features. It also provides information
  about topics such as
  integrating Security Hub with other Amazon Web Services services.

  In addition to interacting with Security Hub by making calls to the Security Hub
  API, you can
  use a current version of an Amazon Web Services command line tool or SDK. Amazon
  Web Services provides tools
  and SDKs that consist of libraries and sample code for various languages and
  platforms, such as PowerShell,
  Java, Go, Python, C++, and .NET. These tools and SDKs provide convenient,
  programmatic access to
  Security Hub and other Amazon Web Services services . They also handle tasks
  such as signing requests,
  managing errors, and retrying requests automatically. For information about
  installing and using the Amazon Web Services tools
  and SDKs, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/developer/tools/).

  With the exception of operations that are related to central configuration,
  Security Hub API requests are executed only in
  the Amazon Web Services Region that is currently active or in the specific
  Amazon Web Services Region that you specify in your request. Any configuration
  or settings change
  that results from the operation is applied only to that Region. To make the same
  change in
  other Regions, call the same API operation in each Region in which you want to
  apply the change. When you use central configuration,
  API requests for enabling Security Hub, standards, and controls are executed in
  the home Region and all linked Regions. For a list of
  central configuration operations, see the [Central configuration terms and
  concepts](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html#central-configuration-concepts)
  section of the *Security Hub User Guide*.

  The following throttling limits apply to Security Hub API operations.

    *

  `BatchEnableStandards` - `RateLimit` of 1 request per
  second. `BurstLimit` of 1 request per second.

    *

  `GetFindings` - `RateLimit` of 3 requests per second.
  `BurstLimit` of 6 requests per second.

    *

  `BatchImportFindings` - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.

    *

  `BatchUpdateFindings` - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.

    *

  `UpdateStandardsControl` - `RateLimit` of 1 request per
  second. `BurstLimit` of 5 requests per second.

    *
  All other operations - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_hub_request() :: %{
        optional("HubArn") => String.t() | atom()
      }

  """
  @type describe_hub_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_method_settings() :: %{
        "CacheDataEncrypted" => boolean(),
        "CacheTtlInSeconds" => integer(),
        "CachingEnabled" => boolean(),
        "DataTraceEnabled" => boolean(),
        "HttpMethod" => String.t() | atom(),
        "LoggingLevel" => String.t() | atom(),
        "MetricsEnabled" => boolean(),
        "RequireAuthorizationForCacheControl" => boolean(),
        "ResourcePath" => String.t() | atom(),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float(),
        "UnauthorizedCacheControlHeaderStrategy" => String.t() | atom()
      }

  """
  @type aws_api_gateway_method_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_request() :: %{}

  """
  @type disassociate_from_master_account_request() :: %{}

  @typedoc """

  ## Example:

      update_standards_control_request() :: %{
        optional("ControlStatus") => list(any()),
        optional("DisabledReason") => String.t() | atom()
      }

  """
  @type update_standards_control_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_managed_by() :: %{
        "Company" => String.t() | atom(),
        "Product" => String.t() | atom()
      }

  """
  @type standards_managed_by() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: %{
        "AvailabilityZoneCount" => integer()
      }

  """
  @type aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_connector_v2_response() :: %{
        "ConnectorArn" => String.t() | atom(),
        "ConnectorId" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Health" => health_check(),
        "KmsKeyArn" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ProviderDetail" => list()
      }

  """
  @type get_connector_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_security_finding_filters() :: %{
        "Region" => list(string_filter()),
        "ResourceTags" => list(map_filter()),
        "ResourceAwsEc2InstanceSubnetId" => list(string_filter()),
        "ResourceAwsIamAccessKeyStatus" => list(string_filter()),
        "ResourceId" => list(string_filter()),
        "FindingProviderFieldsCriticality" => list(number_filter()),
        "ResourceAwsEc2InstanceLaunchedAt" => list(date_filter()),
        "FindingProviderFieldsSeverityLabel" => list(string_filter()),
        "ResourceAwsS3BucketOwnerId" => list(string_filter()),
        "ResourceDetailsOther" => list(map_filter()),
        "NetworkDestinationIpV4" => list(ip_filter()),
        "CompanyName" => list(string_filter()),
        "MalwareState" => list(string_filter()),
        "RecommendationText" => list(string_filter()),
        "ResourceContainerName" => list(string_filter()),
        "ResourceAwsEc2InstanceIamInstanceProfileArn" => list(string_filter()),
        "ResourceAwsIamUserUserName" => list(string_filter()),
        "SeverityLabel" => list(string_filter()),
        "Keyword" => list(keyword_filter()),
        "FindingProviderFieldsRelatedFindingsProductArn" => list(string_filter()),
        "ResourceContainerLaunchedAt" => list(date_filter()),
        "MalwareName" => list(string_filter()),
        "UserDefinedFields" => list(map_filter()),
        "FindingProviderFieldsRelatedFindingsId" => list(string_filter()),
        "SeverityNormalized" => list(number_filter()),
        "RelatedFindingsProductArn" => list(string_filter()),
        "ResourceApplicationArn" => list(string_filter()),
        "ResourceAwsEc2InstanceIpV6Addresses" => list(ip_filter()),
        "ProcessPid" => list(number_filter()),
        "WorkflowState" => list(string_filter()),
        "ProductName" => list(string_filter()),
        "NetworkSourceMac" => list(string_filter()),
        "Confidence" => list(number_filter()),
        "CreatedAt" => list(date_filter()),
        "ProcessName" => list(string_filter()),
        "ComplianceSecurityControlId" => list(string_filter()),
        "MalwarePath" => list(string_filter()),
        "NetworkDestinationDomain" => list(string_filter()),
        "ResourceRegion" => list(string_filter()),
        "NetworkDestinationIpV6" => list(ip_filter()),
        "UpdatedAt" => list(date_filter()),
        "AwsAccountId" => list(string_filter()),
        "ResourceAwsEc2InstanceIpV4Addresses" => list(ip_filter()),
        "FindingProviderFieldsConfidence" => list(number_filter()),
        "ResourceContainerImageName" => list(string_filter()),
        "ThreatIntelIndicatorValue" => list(string_filter()),
        "ProcessLaunchedAt" => list(date_filter()),
        "RelatedFindingsId" => list(string_filter()),
        "Id" => list(string_filter()),
        "ResourceAwsIamAccessKeyPrincipalName" => list(string_filter()),
        "NetworkSourceIpV4" => list(ip_filter()),
        "ComplianceStatus" => list(string_filter()),
        "ThreatIntelIndicatorCategory" => list(string_filter()),
        "ProductArn" => list(string_filter()),
        "ThreatIntelIndicatorLastObservedAt" => list(date_filter()),
        "SourceUrl" => list(string_filter()),
        "MalwareType" => list(string_filter()),
        "NetworkSourcePort" => list(number_filter()),
        "ResourceAwsS3BucketOwnerName" => list(string_filter()),
        "NetworkSourceIpV6" => list(ip_filter()),
        "VulnerabilitiesFixAvailable" => list(string_filter()),
        "AwsAccountName" => list(string_filter()),
        "ResourceAwsEc2InstanceVpcId" => list(string_filter()),
        "FirstObservedAt" => list(date_filter()),
        "NetworkDirection" => list(string_filter()),
        "FindingProviderFieldsTypes" => list(string_filter()),
        "GeneratorId" => list(string_filter()),
        "NoteText" => list(string_filter()),
        "FindingProviderFieldsSeverityOriginal" => list(string_filter()),
        "RecordState" => list(string_filter()),
        "SeverityProduct" => list(number_filter()),
        "ResourceAwsEc2InstanceKeyName" => list(string_filter()),
        "Title" => list(string_filter()),
        "ResourceAwsEc2InstanceType" => list(string_filter()),
        "ResourceApplicationName" => list(string_filter()),
        "ComplianceAssociatedStandardsId" => list(string_filter()),
        "ComplianceSecurityControlParametersName" => list(string_filter()),
        "Sample" => list(boolean_filter()),
        "Criticality" => list(number_filter()),
        "ResourceContainerImageId" => list(string_filter()),
        "NetworkSourceDomain" => list(string_filter()),
        "ThreatIntelIndicatorSource" => list(string_filter()),
        "ThreatIntelIndicatorType" => list(string_filter()),
        "ResourceAwsIamAccessKeyUserName" => list(string_filter()),
        "ResourceAwsIamAccessKeyCreatedAt" => list(date_filter()),
        "LastObservedAt" => list(date_filter()),
        "NetworkDestinationPort" => list(number_filter()),
        "ProcessParentPid" => list(number_filter()),
        "NoteUpdatedBy" => list(string_filter()),
        "ResourceAwsEc2InstanceImageId" => list(string_filter()),
        "NetworkProtocol" => list(string_filter()),
        "Description" => list(string_filter()),
        "WorkflowStatus" => list(string_filter()),
        "ThreatIntelIndicatorSourceUrl" => list(string_filter()),
        "ProcessPath" => list(string_filter()),
        "VulnerabilitiesExploitAvailable" => list(string_filter()),
        "ComplianceSecurityControlParametersValue" => list(string_filter()),
        "ProductFields" => list(map_filter()),
        "NoteUpdatedAt" => list(date_filter()),
        "Type" => list(string_filter()),
        "VerificationState" => list(string_filter()),
        "ResourceType" => list(string_filter()),
        "ResourcePartition" => list(string_filter()),
        "ProcessTerminatedAt" => list(date_filter())
      }

  """
  @type aws_security_finding_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | atom(),
        "FindingAggregatorArn" => String.t() | atom(),
        "RegionLinkingMode" => String.t() | atom(),
        "Regions" => list(String.t() | atom())
      }

  """
  @type get_finding_aggregator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_execute_command_configuration_details() :: %{
        "KmsKeyId" => String.t() | atom(),
        "LogConfiguration" => aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details(),
        "Logging" => String.t() | atom()
      }

  """
  @type aws_ecs_cluster_configuration_execute_command_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_dynamo_db_table_local_secondary_index() :: %{
        "IndexArn" => String.t() | atom(),
        "IndexName" => String.t() | atom(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "Projection" => aws_dynamo_db_table_projection()
      }

  """
  @type aws_dynamo_db_table_local_secondary_index() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_findings_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type import_findings_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() :: %{
        "AvailabilityZoneCount" => integer()
      }

  """
  @type aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source() :: %{
        "RulesSourceList" => rule_group_source_list_details(),
        "RulesString" => String.t() | atom(),
        "StatefulRules" => list(rule_group_source_stateful_rules_details()),
        "StatelessRulesAndCustomActions" => rule_group_source_stateless_rules_and_custom_actions_details()
      }

  """
  @type rule_group_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: %{
        "ClientRootCertificateChain" => String.t() | atom()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_api_gateway_access_log_settings() :: %{
        "DestinationArn" => String.t() | atom(),
        "Format" => String.t() | atom()
      }

  """
  @type aws_api_gateway_access_log_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_node() :: %{
        "NodeRole" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom(),
        "PublicIpAddress" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_cluster_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_resize_info() :: %{
        "AllowCancelResize" => boolean(),
        "ResizeType" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_resize_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() :: %{
        "Add" => list(String.t() | atom()),
        "Drop" => list(String.t() | atom())
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_dead_letter_config() :: %{
        "TargetArn" => String.t() | atom()
      }

  """
  @type aws_lambda_function_dead_letter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configuration_policy_response() :: %{}

  """
  @type delete_configuration_policy_response() :: %{}

  @typedoc """

  ## Example:

      boolean_configuration_options() :: %{
        "DefaultValue" => boolean()
      }

  """
  @type boolean_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      record() :: %{
        "JsonPath" => String.t() | atom(),
        "RecordIndex" => float()
      }

  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_details() :: %{
        "HostedZone" => aws_route53_hosted_zone_object_details(),
        "NameServers" => list(String.t() | atom()),
        "QueryLoggingConfig" => aws_route53_query_logging_config_details(),
        "Vpcs" => list(aws_route53_hosted_zone_vpc_details())
      }

  """
  @type aws_route53_hosted_zone_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_details() :: %{
        "Action" => aws_wafv2_rules_action_details(),
        "Name" => String.t() | atom(),
        "OverrideAction" => String.t() | atom(),
        "Priority" => integer(),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_rules_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integer_list_configuration_options() :: %{
        "DefaultValue" => list(integer()),
        "Max" => integer(),
        "MaxItems" => integer(),
        "Min" => integer()
      }

  """
  @type integer_list_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ocsf_number_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => number_filter()
      }

  """
  @type ocsf_number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_user_details() :: %{
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | atom(),
        "GroupList" => list(String.t() | atom()),
        "Path" => String.t() | atom(),
        "PermissionsBoundary" => aws_iam_permissions_boundary(),
        "UserId" => String.t() | atom(),
        "UserName" => String.t() | atom(),
        "UserPolicyList" => list(aws_iam_user_policy())
      }

  """
  @type aws_iam_user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_details() :: %{
        "ContainerRuntime" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "ImageName" => String.t() | atom(),
        "LaunchedAt" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Privileged" => boolean(),
        "VolumeMounts" => list(volume_mount())
      }

  """
  @type container_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_instance_profile_role() :: %{
        "Arn" => String.t() | atom(),
        "AssumeRolePolicyDocument" => String.t() | atom(),
        "CreateDate" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "RoleId" => String.t() | atom(),
        "RoleName" => String.t() | atom()
      }

  """
  @type aws_iam_instance_profile_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_details() :: %{
        "DbSecurityGroupArn" => String.t() | atom(),
        "DbSecurityGroupDescription" => String.t() | atom(),
        "DbSecurityGroupName" => String.t() | atom(),
        "Ec2SecurityGroups" => list(aws_rds_db_security_group_ec2_security_group()),
        "IpRanges" => list(aws_rds_db_security_group_ip_range()),
        "OwnerId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_rds_db_security_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_standards_controls_response() :: %{
        "Controls" => list(standards_control()),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_standards_controls_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_placement_constraints_details() :: %{
        "Expression" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_service_placement_constraints_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "End" => float(),
        "Start" => float(),
        "StartColumn" => float()
      }

  """
  @type range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_ip_range() :: %{
        "CidrIp" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_security_group_ip_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_layer_version_details() :: %{
        "CompatibleRuntimes" => list(String.t() | atom()),
        "CreatedDate" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type aws_lambda_layer_version_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_api_details() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => aws_cors_configuration(),
        "CreatedDate" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProtocolType" => String.t() | atom(),
        "RouteSelectionExpression" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_api_gateway_v2_api_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      decline_invitations_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type decline_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_policy_association_summary() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | atom(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | atom(),
        "TargetId" => String.t() | atom(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type configuration_policy_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_endpoint() :: %{
        "Address" => String.t() | atom(),
        "Port" => integer()
      }

  """
  @type aws_redshift_cluster_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_provisioned_throughput_override() :: %{
        "ReadCapacityUnits" => integer()
      }

  """
  @type aws_dynamo_db_table_provisioned_throughput_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_policy_details() :: %{
        "StatefulRuleGroupReferences" => list(firewall_policy_stateful_rule_group_references_details()),
        "StatelessCustomActions" => list(firewall_policy_stateless_custom_actions_details()),
        "StatelessDefaultActions" => list(String.t() | atom()),
        "StatelessFragmentDefaultActions" => list(String.t() | atom()),
        "StatelessRuleGroupReferences" => list(firewall_policy_stateless_rule_group_references_details())
      }

  """
  @type firewall_policy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context_attributes() :: %{
        "CreationDate" => String.t() | atom(),
        "MfaAuthenticated" => boolean()
      }

  """
  @type aws_iam_access_key_session_context_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_response() :: %{}

  """
  @type disable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_default_cache_behavior() :: %{
        "ViewerProtocolPolicy" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_default_cache_behavior() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elbv2_load_balancer_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_elbv2_load_balancer_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_control() :: %{
        "Description" => String.t() | atom(),
        "LastUpdateReason" => String.t() | atom(),
        "Parameters" => map(),
        "RemediationUrl" => String.t() | atom(),
        "SecurityControlArn" => String.t() | atom(),
        "SecurityControlId" => String.t() | atom(),
        "SecurityControlStatus" => list(any()),
        "SeverityRating" => list(any()),
        "Title" => String.t() | atom(),
        "UpdateStatus" => list(any())
      }

  """
  @type security_control() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_account_public_access_block_details() :: %{
        "BlockPublicAcls" => boolean(),
        "BlockPublicPolicy" => boolean(),
        "IgnorePublicAcls" => boolean(),
        "RestrictPublicBuckets" => boolean()
      }

  """
  @type aws_s3_account_public_access_block_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_security_hub_response() :: %{}

  """
  @type disable_security_hub_response() :: %{}

  @typedoc """

  ## Example:

      classification_status() :: %{
        "Code" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type classification_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerability() :: %{
        "CodeVulnerabilities" => list(vulnerability_code_vulnerabilities()),
        "Cvss" => list(cvss()),
        "EpssScore" => float(),
        "ExploitAvailable" => list(any()),
        "FixAvailable" => list(any()),
        "Id" => String.t() | atom(),
        "LastKnownExploitAt" => String.t() | atom(),
        "ReferenceUrls" => list(String.t() | atom()),
        "RelatedVulnerabilities" => list(String.t() | atom()),
        "Vendor" => vulnerability_vendor(),
        "VulnerablePackages" => list(software_package())
      }

  """
  @type vulnerability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_environment_link() :: %{
        "EnvironmentName" => String.t() | atom(),
        "LinkName" => String.t() | atom()
      }

  """
  @type aws_elastic_beanstalk_environment_environment_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecr_repository_details() :: %{
        "Arn" => String.t() | atom(),
        "ImageScanningConfiguration" => aws_ecr_repository_image_scanning_configuration_details(),
        "ImageTagMutability" => String.t() | atom(),
        "LifecyclePolicy" => aws_ecr_repository_lifecycle_policy_details(),
        "RepositoryName" => String.t() | atom(),
        "RepositoryPolicyText" => String.t() | atom()
      }

  """
  @type aws_ecr_repository_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_header() :: %{
        "Destination" => network_path_component_details(),
        "Protocol" => String.t() | atom(),
        "Source" => network_path_component_details()
      }

  """
  @type network_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insights_request() :: %{
        optional("InsightArns") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_insights_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      availability_zone() :: %{
        "SubnetId" => String.t() | atom(),
        "ZoneName" => String.t() | atom()
      }

  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{}

  """
  @type describe_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      ocsf_string_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => string_filter()
      }

  """
  @type ocsf_string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_details() :: %{
        "ScanEc2InstanceWithFindings" => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details(),
        "ServiceRole" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() :: %{
        "Prefix" => String.t() | atom(),
        "Tag" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_cluster_config_details() :: %{
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => String.t() | atom(),
        "InstanceCount" => integer(),
        "InstanceType" => String.t() | atom(),
        "WarmCount" => integer(),
        "WarmEnabled" => boolean(),
        "WarmType" => String.t() | atom(),
        "ZoneAwarenessConfig" => aws_open_search_service_domain_cluster_config_zone_awareness_config_details(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_cluster_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      network_path_component() :: %{
        "ComponentId" => String.t() | atom(),
        "ComponentType" => String.t() | atom(),
        "Egress" => network_header(),
        "Ingress" => network_header()
      }

  """
  @type network_path_component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_parameter_group() :: %{
        "ClusterParameterStatusList" => list(aws_redshift_cluster_cluster_parameter_status()),
        "ParameterApplyStatus" => String.t() | atom(),
        "ParameterGroupName" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_cluster_parameter_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_action_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_action_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association_state_details() :: %{
        "State" => String.t() | atom(),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type association_state_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "Members" => list(member()),
        "UnprocessedAccounts" => list(result())
      }

  """
  @type get_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waf_action() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type waf_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      status_reason() :: %{
        "Description" => String.t() | atom(),
        "ReasonCode" => String.t() | atom()
      }

  """
  @type status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_local_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | atom()
      }

  """
  @type action_local_port_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_details() :: %{
        "Sasl" => aws_msk_cluster_cluster_info_client_authentication_sasl_details(),
        "Tls" => aws_msk_cluster_cluster_info_client_authentication_tls_details(),
        "Unauthenticated" => aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      waf_excluded_rule() :: %{
        "RuleId" => String.t() | atom()
      }

  """
  @type waf_excluded_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_mount_point() :: %{
        "ContainerPath" => String.t() | atom(),
        "SourceVolume" => String.t() | atom()
      }

  """
  @type aws_mount_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_destination_ports() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_destination_ports() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      admin_account() :: %{
        "AccountId" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type admin_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequence() :: %{
        "Actors" => list(actor()),
        "Endpoints" => list(network_endpoint()),
        "SequenceIndicators" => list(indicator()),
        "Signals" => list(signal()),
        "Uid" => String.t() | atom()
      }

  """
  @type sequence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "Recommendation" => recommendation()
      }

  """
  @type remediation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: %{
        "Operands" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details()),
        "Prefix" => String.t() | atom(),
        "Tag" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_options() :: %{
        "CertificateTransparencyLoggingPreference" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_details() :: %{
        "ClientAuthentication" => aws_msk_cluster_cluster_info_client_authentication_details(),
        "ClusterName" => String.t() | atom(),
        "CurrentVersion" => String.t() | atom(),
        "EncryptionInfo" => aws_msk_cluster_cluster_info_encryption_info_details(),
        "EnhancedMonitoring" => String.t() | atom(),
        "NumberOfBrokerNodes" => integer()
      }

  """
  @type aws_msk_cluster_cluster_info_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_import_findings_for_product_response() :: %{}

  """
  @type disable_import_findings_for_product_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_volumes_from_details() :: %{
        "ReadOnly" => boolean(),
        "SourceContainer" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_volumes_from_details() :: %{
          (String.t() | atom()) => any()
        }

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

      rule_group_source_stateful_rules_header_details() :: %{
        "Destination" => String.t() | atom(),
        "DestinationPort" => String.t() | atom(),
        "Direction" => String.t() | atom(),
        "Protocol" => String.t() | atom(),
        "Source" => String.t() | atom(),
        "SourcePort" => String.t() | atom()
      }

  """
  @type rule_group_source_stateful_rules_header_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_standards_control_associations_response() :: %{
        "UnprocessedAssociationUpdates" => list(unprocessed_standards_control_association_update())
      }

  """
  @type batch_update_standards_control_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      classification_result() :: %{
        "AdditionalOccurrences" => boolean(),
        "CustomDataIdentifiers" => custom_data_identifiers_result(),
        "MimeType" => String.t() | atom(),
        "SensitiveData" => list(sensitive_data_result()),
        "SizeClassified" => float(),
        "Status" => classification_status()
      }

  """
  @type classification_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_extended_key_usage() :: %{
        "Name" => String.t() | atom(),
        "OId" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_extended_key_usage() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_mount_points_details() :: %{
        "ContainerPath" => String.t() | atom(),
        "ReadOnly" => boolean(),
        "SourceVolume" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_mount_points_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      ipv6_cidr_block_association() :: %{
        "AssociationId" => String.t() | atom(),
        "CidrBlockState" => String.t() | atom(),
        "Ipv6CidrBlock" => String.t() | atom()
      }

  """
  @type ipv6_cidr_block_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity_update() :: %{
        "Label" => list(any()),
        "Normalized" => integer(),
        "Product" => float()
      }

  """
  @type severity_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_registrations_v2_response() :: %{
        "ConnectorArn" => String.t() | atom(),
        "ConnectorId" => String.t() | atom()
      }

  """
  @type connector_registrations_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_remote_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | atom()
      }

  """
  @type action_remote_port_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() :: %{
        "Days" => integer(),
        "StorageClass" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_details() :: %{
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RuleGroupId" => String.t() | atom(),
        "Rules" => list(aws_waf_regional_rule_group_rules_details())
      }

  """
  @type aws_waf_regional_rule_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_kubernetes_details() :: %{
        "AuditLogs" => aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details()
      }

  """
  @type aws_guard_duty_detector_data_sources_kubernetes_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_kinesis_stream_details() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RetentionPeriodHours" => integer(),
        "ShardCount" => integer(),
        "StreamEncryption" => aws_kinesis_stream_stream_encryption_details()
      }

  """
  @type aws_kinesis_stream_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_volume_host_details() :: %{
        "SourcePath" => String.t() | atom()
      }

  """
  @type aws_ecs_task_volume_host_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_details() :: %{
        "AssociatePublicIpAddress" => boolean(),
        "BlockDeviceMappings" => list(aws_auto_scaling_launch_configuration_block_device_mappings_details()),
        "ClassicLinkVpcId" => String.t() | atom(),
        "ClassicLinkVpcSecurityGroups" => list(String.t() | atom()),
        "CreatedTime" => String.t() | atom(),
        "EbsOptimized" => boolean(),
        "IamInstanceProfile" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "InstanceMonitoring" => aws_auto_scaling_launch_configuration_instance_monitoring_details(),
        "InstanceType" => String.t() | atom(),
        "KernelId" => String.t() | atom(),
        "KeyName" => String.t() | atom(),
        "LaunchConfigurationName" => String.t() | atom(),
        "MetadataOptions" => aws_auto_scaling_launch_configuration_metadata_options(),
        "PlacementTenancy" => String.t() | atom(),
        "RamdiskId" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "SpotPrice" => String.t() | atom(),
        "UserData" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_launch_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_administrator_account_request() :: %{}

  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      process_details() :: %{
        "LaunchedAt" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ParentPid" => integer(),
        "Path" => String.t() | atom(),
        "Pid" => integer(),
        "TerminatedAt" => String.t() | atom()
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

      aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      sensitive_data_result() :: %{
        "Category" => String.t() | atom(),
        "Detections" => list(sensitive_data_detections()),
        "TotalCount" => float()
      }

  """
  @type sensitive_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_hub_configuration_response() :: %{}

  """
  @type update_security_hub_configuration_response() :: %{}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_block_device_mapping_set_details() :: %{
        "DeviceName" => String.t() | atom(),
        "Ebs" => aws_ec2_launch_template_data_block_device_mapping_set_ebs_details(),
        "NoDevice" => String.t() | atom(),
        "VirtualName" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_block_device_mapping_set_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_drift_information_details() :: %{
        "StackDriftStatus" => String.t() | atom()
      }

  """
  @type aws_cloud_formation_stack_drift_information_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connection_action() :: %{
        "Blocked" => boolean(),
        "ConnectionDirection" => String.t() | atom(),
        "LocalPortDetails" => action_local_port_details(),
        "Protocol" => String.t() | atom(),
        "RemoteIpDetails" => action_remote_ip_details(),
        "RemotePortDetails" => action_remote_port_details()
      }

  """
  @type network_connection_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule_redirect() :: %{
        "Hostname" => String.t() | atom(),
        "HttpRedirectCode" => String.t() | atom(),
        "Protocol" => String.t() | atom(),
        "ReplaceKeyPrefixWith" => String.t() | atom(),
        "ReplaceKeyWith" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule_redirect() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_action_target_response() :: %{
        "ActionTargetArn" => String.t() | atom()
      }

  """
  @type create_action_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_kinesis_stream_stream_encryption_details() :: %{
        "EncryptionType" => String.t() | atom(),
        "KeyId" => String.t() | atom()
      }

  """
  @type aws_kinesis_stream_stream_encryption_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_snapshot_details() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZone" => String.t() | atom(),
        "DbInstanceIdentifier" => String.t() | atom(),
        "DbSnapshotIdentifier" => String.t() | atom(),
        "DbiResourceId" => String.t() | atom(),
        "Encrypted" => boolean(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "InstanceCreateTime" => String.t() | atom(),
        "Iops" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "LicenseModel" => String.t() | atom(),
        "MasterUsername" => String.t() | atom(),
        "OptionGroupName" => String.t() | atom(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "SnapshotCreateTime" => String.t() | atom(),
        "SnapshotType" => String.t() | atom(),
        "SourceDbSnapshotIdentifier" => String.t() | atom(),
        "SourceRegion" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StorageType" => String.t() | atom(),
        "TdeCredentialArn" => String.t() | atom(),
        "Timezone" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_rds_db_snapshot_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_enable_standards_response() :: %{
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type batch_enable_standards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_domain_endpoint_options() :: %{
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => String.t() | atom()
      }

  """
  @type aws_elasticsearch_domain_domain_endpoint_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compliance() :: %{
        "AssociatedStandards" => list(associated_standard()),
        "RelatedRequirements" => list(String.t() | atom()),
        "SecurityControlId" => String.t() | atom(),
        "SecurityControlParameters" => list(security_control_parameter()),
        "Status" => list(any()),
        "StatusReasons" => list(status_reason())
      }

  """
  @type compliance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_paths() :: %{
        "FileName" => String.t() | atom(),
        "FilePath" => String.t() | atom(),
        "Hash" => String.t() | atom(),
        "ResourceId" => String.t() | atom()
      }

  """
  @type file_paths() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitive_data_detections() :: %{
        "Count" => float(),
        "Occurrences" => occurrences(),
        "Type" => String.t() | atom()
      }

  """
  @type sensitive_data_detections() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_action_target_request() :: %{}

  """
  @type delete_action_target_request() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_details() :: %{
        "ClusterArn" => String.t() | atom(),
        "Containers" => list(aws_ecs_container_details()),
        "CreatedAt" => String.t() | atom(),
        "Group" => String.t() | atom(),
        "StartedAt" => String.t() | atom(),
        "StartedBy" => String.t() | atom(),
        "TaskDefinitionArn" => String.t() | atom(),
        "Version" => String.t() | atom(),
        "Volumes" => list(aws_ecs_task_volume_details())
      }

  """
  @type aws_ecs_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_associated_role() :: %{
        "FeatureName" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_instance_associated_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configuration_policy_response() :: %{
        "Arn" => String.t() | atom(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type create_configuration_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_access_point_vpc_configuration_details() :: %{
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_s3_access_point_vpc_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_attached_managed_policy() :: %{
        "PolicyArn" => String.t() | atom(),
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_iam_attached_managed_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_sqs_queue_details() :: %{
        "DeadLetterTargetArn" => String.t() | atom(),
        "KmsDataKeyReusePeriodSeconds" => integer(),
        "KmsMasterKeyId" => String.t() | atom(),
        "QueueName" => String.t() | atom()
      }

  """
  @type aws_sqs_queue_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_finding_filters() :: %{
        "ResourceTags" => list(map_filter()),
        "ResourceId" => list(string_filter()),
        "ResourceDetailsOther" => list(map_filter()),
        "CompanyName" => list(string_filter()),
        "SeverityLabel" => list(string_filter()),
        "UserDefinedFields" => list(map_filter()),
        "RelatedFindingsProductArn" => list(string_filter()),
        "ResourceApplicationArn" => list(string_filter()),
        "ProductName" => list(string_filter()),
        "Confidence" => list(number_filter()),
        "CreatedAt" => list(date_filter()),
        "ComplianceSecurityControlId" => list(string_filter()),
        "ResourceRegion" => list(string_filter()),
        "UpdatedAt" => list(date_filter()),
        "AwsAccountId" => list(string_filter()),
        "RelatedFindingsId" => list(string_filter()),
        "Id" => list(string_filter()),
        "ComplianceStatus" => list(string_filter()),
        "ProductArn" => list(string_filter()),
        "SourceUrl" => list(string_filter()),
        "AwsAccountName" => list(string_filter()),
        "FirstObservedAt" => list(date_filter()),
        "GeneratorId" => list(string_filter()),
        "NoteText" => list(string_filter()),
        "RecordState" => list(string_filter()),
        "Title" => list(string_filter()),
        "ResourceApplicationName" => list(string_filter()),
        "ComplianceAssociatedStandardsId" => list(string_filter()),
        "Criticality" => list(number_filter()),
        "LastObservedAt" => list(date_filter()),
        "NoteUpdatedBy" => list(string_filter()),
        "Description" => list(string_filter()),
        "WorkflowStatus" => list(string_filter()),
        "NoteUpdatedAt" => list(date_filter()),
        "Type" => list(string_filter()),
        "VerificationState" => list(string_filter()),
        "ResourceType" => list(string_filter()),
        "ResourcePartition" => list(string_filter())
      }

  """
  @type automation_rules_finding_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_autonomous_system() :: %{
        "Name" => String.t() | atom(),
        "Number" => integer()
      }

  """
  @type network_autonomous_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_private_ip_address_detail() :: %{
        "PrivateDnsName" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom()
      }

  """
  @type aws_ec2_network_interface_private_ip_address_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_details() :: %{
        "AdditionalAuthenticationProviders" => list(aws_app_sync_graph_ql_api_additional_authentication_providers_details()),
        "ApiId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AuthenticationType" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LambdaAuthorizerConfig" => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
        "LogConfig" => aws_app_sync_graph_ql_api_log_config_details(),
        "Name" => String.t() | atom(),
        "OpenIdConnectConfig" => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
        "UserPoolConfig" => aws_app_sync_graph_ql_api_user_pool_config_details(),
        "WafWebAclArn" => String.t() | atom(),
        "XrayEnabled" => boolean()
      }

  """
  @type aws_app_sync_graph_ql_api_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_variables_ip_sets_details() :: %{
        "Definition" => list(String.t() | atom())
      }

  """
  @type rule_group_variables_ip_sets_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_standards_control_associations_request() :: %{
        required("StandardsControlAssociationUpdates") => list(standards_control_association_update())
      }

  """
  @type batch_update_standards_control_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_pending_cloud_watch_logs_exports() :: %{
        "LogTypesToDisable" => list(String.t() | atom()),
        "LogTypesToEnable" => list(String.t() | atom())
      }

  """
  @type aws_rds_pending_cloud_watch_logs_exports() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_configuration_policy_associations_response() :: %{
        "ConfigurationPolicyAssociations" => list(configuration_policy_association_summary()),
        "UnprocessedConfigurationPolicyAssociations" => list(unprocessed_configuration_policy_association())
      }

  """
  @type batch_get_configuration_policy_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_aggregators_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_aggregators_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_domain_validation_option() :: %{
        "DomainName" => String.t() | atom(),
        "ResourceRecord" => aws_certificate_manager_certificate_resource_record(),
        "ValidationDomain" => String.t() | atom(),
        "ValidationEmails" => list(String.t() | atom()),
        "ValidationMethod" => String.t() | atom(),
        "ValidationStatus" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_domain_validation_option() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      ocsf_ip_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => ip_filter()
      }

  """
  @type ocsf_ip_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_configuration() :: %{
        "ConfigurationType" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type organization_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_action_details() :: %{
        "Allow" => aws_wafv2_action_allow_details(),
        "Block" => aws_wafv2_action_block_details()
      }

  """
  @type aws_wafv2_web_acl_action_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: %{
        "Predicate" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_iam_group_details() :: %{
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | atom(),
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "GroupPolicyList" => list(aws_iam_group_policy()),
        "Path" => String.t() | atom()
      }

  """
  @type aws_iam_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_standards_control_response() :: %{}

  """
  @type update_standards_control_response() :: %{}

  @typedoc """

  ## Example:

      resource_findings_summary() :: %{
        "FindingType" => String.t() | atom(),
        "ProductName" => String.t() | atom(),
        "Severities" => resource_severity_breakdown(),
        "TotalFindings" => integer()
      }

  """
  @type resource_findings_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_metadata() :: %{
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() :: %{
        "LogGroupArn" => String.t() | atom()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_endpoint() :: %{
        "Address" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "Port" => integer()
      }

  """
  @type aws_rds_db_instance_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_event_subscription_details() :: %{
        "CustSubscriptionId" => String.t() | atom(),
        "CustomerAwsId" => String.t() | atom(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t() | atom()),
        "EventSubscriptionArn" => String.t() | atom(),
        "SnsTopicArn" => String.t() | atom(),
        "SourceIdsList" => list(String.t() | atom()),
        "SourceType" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "SubscriptionCreationTime" => String.t() | atom()
      }

  """
  @type aws_rds_event_subscription_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_subnet_details() :: %{
        "AssignIpv6AddressOnCreation" => boolean(),
        "AvailabilityZone" => String.t() | atom(),
        "AvailabilityZoneId" => String.t() | atom(),
        "AvailableIpAddressCount" => integer(),
        "CidrBlock" => String.t() | atom(),
        "DefaultForAz" => boolean(),
        "Ipv6CidrBlockAssociationSet" => list(ipv6_cidr_block_association()),
        "MapPublicIpOnLaunch" => boolean(),
        "OwnerId" => String.t() | atom(),
        "State" => String.t() | atom(),
        "SubnetArn" => String.t() | atom(),
        "SubnetId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_subnet_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_details() :: %{
        "DefaultVersionNumber" => float(),
        "Id" => String.t() | atom(),
        "LatestVersionNumber" => float(),
        "LaunchTemplateData" => aws_ec2_launch_template_data_details(),
        "LaunchTemplateName" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_metadata_options_details() :: %{
        "HttpEndpoint" => String.t() | atom(),
        "HttpProtocolIpv6" => String.t() | atom(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | atom(),
        "InstanceMetadataTags" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_metadata_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_cluster_details() :: %{
        "Status" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "VpcSecurityGroups" => list(aws_rds_db_instance_vpc_security_group()),
        "DatabaseName" => String.t() | atom(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "PreferredBackupWindow" => String.t() | atom(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "ReadReplicaIdentifiers" => list(String.t() | atom()),
        "CopyTagsToSnapshot" => boolean(),
        "DbClusterIdentifier" => String.t() | atom(),
        "DbClusterParameterGroup" => String.t() | atom(),
        "HttpEndpointEnabled" => boolean(),
        "AutoMinorVersionUpgrade" => boolean(),
        "ClusterCreateTime" => String.t() | atom(),
        "Port" => integer(),
        "AvailabilityZones" => list(String.t() | atom()),
        "CrossAccountClone" => boolean(),
        "DbClusterOptionGroupMemberships" => list(aws_rds_db_cluster_option_group_membership()),
        "MasterUsername" => String.t() | atom(),
        "DbClusterResourceId" => String.t() | atom(),
        "ReaderEndpoint" => String.t() | atom(),
        "EnabledCloudWatchLogsExports" => list(String.t() | atom()),
        "CustomEndpoints" => list(String.t() | atom()),
        "DeletionProtection" => boolean(),
        "DomainMemberships" => list(aws_rds_db_domain_membership()),
        "MultiAz" => boolean(),
        "EngineMode" => String.t() | atom(),
        "ActivityStreamStatus" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "AllocatedStorage" => integer(),
        "HostedZoneId" => String.t() | atom(),
        "AssociatedRoles" => list(aws_rds_db_cluster_associated_role()),
        "DbSubnetGroup" => String.t() | atom(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => String.t() | atom(),
        "DbClusterMembers" => list(aws_rds_db_cluster_member())
      }

  """
  @type aws_rds_db_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_standards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_standards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_action_block_details() :: %{
        "CustomResponse" => aws_wafv2_custom_response_details()
      }

  """
  @type aws_wafv2_action_block_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "AccountId" => String.t() | atom(),
        "InvitationId" => String.t() | atom(),
        "InvitedAt" => non_neg_integer(),
        "MemberStatus" => String.t() | atom()
      }

  """
  @type invitation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_aggregator_v2_response() :: %{}

  """
  @type delete_aggregator_v2_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_from_master_account_response() :: %{}

  """
  @type disassociate_from_master_account_response() :: %{}

  @typedoc """

  ## Example:

      aws_iam_access_key_details() :: %{
        "AccessKeyId" => String.t() | atom(),
        "AccountId" => String.t() | atom(),
        "CreatedAt" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalName" => String.t() | atom(),
        "PrincipalType" => String.t() | atom(),
        "SessionContext" => aws_iam_access_key_session_context(),
        "Status" => list(any()),
        "UserName" => String.t() | atom()
      }

  """
  @type aws_iam_access_key_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_key_schema() :: %{
        "AttributeName" => String.t() | atom(),
        "KeyType" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_key_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      related_finding() :: %{
        "Id" => String.t() | atom(),
        "ProductArn" => String.t() | atom()
      }

  """
  @type related_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_automation_rules_response() :: %{
        "ProcessedAutomationRules" => list(String.t() | atom()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_update_automation_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_products_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProductArn") => String.t() | atom()
      }

  """
  @type describe_products_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context() :: %{
        "Attributes" => aws_iam_access_key_session_context_attributes(),
        "SessionIssuer" => aws_iam_access_key_session_context_session_issuer()
      }

  """
  @type aws_iam_access_key_session_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_details() :: %{
        "AssociateCarrierIpAddress" => boolean(),
        "AssociatePublicIpAddress" => boolean(),
        "DeleteOnTermination" => boolean(),
        "Description" => String.t() | atom(),
        "DeviceIndex" => integer(),
        "Groups" => list(String.t() | atom()),
        "InterfaceType" => String.t() | atom(),
        "Ipv4PrefixCount" => integer(),
        "Ipv4Prefixes" => list(aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details()),
        "Ipv6AddressCount" => integer(),
        "Ipv6Addresses" => list(aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details()),
        "Ipv6PrefixCount" => integer(),
        "Ipv6Prefixes" => list(aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details()),
        "NetworkCardIndex" => integer(),
        "NetworkInterfaceId" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom(),
        "PrivateIpAddresses" => list(aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details()),
        "SecondaryPrivateIpAddressCount" => integer(),
        "SubnetId" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_status_info() :: %{
        "Message" => String.t() | atom(),
        "Normal" => boolean(),
        "Status" => String.t() | atom(),
        "StatusType" => String.t() | atom()
      }

  """
  @type aws_rds_db_status_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_details() :: %{
        "BackupSizeInBytes" => float(),
        "BackupVaultArn" => String.t() | atom(),
        "BackupVaultName" => String.t() | atom(),
        "CalculatedLifecycle" => aws_backup_recovery_point_calculated_lifecycle_details(),
        "CompletionDate" => String.t() | atom(),
        "CreatedBy" => aws_backup_recovery_point_created_by_details(),
        "CreationDate" => String.t() | atom(),
        "EncryptionKeyArn" => String.t() | atom(),
        "IamRoleArn" => String.t() | atom(),
        "IsEncrypted" => boolean(),
        "LastRestoreTime" => String.t() | atom(),
        "Lifecycle" => aws_backup_recovery_point_lifecycle_details(),
        "RecoveryPointArn" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "SourceBackupVaultArn" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StatusMessage" => String.t() | atom(),
        "StorageClass" => String.t() | atom()
      }

  """
  @type aws_backup_recovery_point_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_item() :: %{
        "CustomOriginConfig" => aws_cloud_front_distribution_origin_custom_origin_config(),
        "DomainName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "OriginPath" => String.t() | atom(),
        "S3OriginConfig" => aws_cloud_front_distribution_origin_s3_origin_config()
      }

  """
  @type aws_cloud_front_distribution_origin_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_health_check_details() :: %{
        "Command" => list(String.t() | atom()),
        "Interval" => integer(),
        "Retries" => integer(),
        "StartPeriod" => integer(),
        "Timeout" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_health_check_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_elb_load_balancer_access_log() :: %{
        "EmitInterval" => integer(),
        "Enabled" => boolean(),
        "S3BucketName" => String.t() | atom(),
        "S3BucketPrefix" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_access_log() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_standards_control_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("SecurityControlId") => String.t() | atom()
      }

  """
  @type list_standards_control_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_association() :: %{
        "NetworkAclAssociationId" => String.t() | atom(),
        "NetworkAclId" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }

  """
  @type aws_ec2_network_acl_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_aggregators_v2_response() :: %{
        "AggregatorsV2" => list(aggregator_v2()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_aggregators_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight_result_value() :: %{
        "Count" => integer(),
        "GroupByAttributeValue" => String.t() | atom()
      }

  """
  @type insight_result_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_filters() :: %{
        "CompositeFilters" => list(resources_composite_filter()),
        "CompositeOperator" => list(any())
      }

  """
  @type resources_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disable_standards_response() :: %{
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type batch_disable_standards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_user_policy() :: %{
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_iam_user_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_security_finding_identifier() :: %{
        "Id" => String.t() | atom(),
        "ProductArn" => String.t() | atom()
      }

  """
  @type aws_security_finding_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_groups() :: %{
        "Items" => list(aws_cloud_front_distribution_origin_group())
      }

  """
  @type aws_cloud_front_distribution_origin_groups() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_option_group_membership() :: %{
        "DbClusterOptionGroupName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_cluster_option_group_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_details() :: %{
        "Associations" => list(aws_ec2_network_acl_association()),
        "Entries" => list(aws_ec2_network_acl_entry()),
        "IsDefault" => boolean(),
        "NetworkAclId" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_network_acl_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_network_interfaces_details() :: %{
        "NetworkInterfaceId" => String.t() | atom()
      }

  """
  @type aws_ec2_instance_network_interfaces_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_geo_location() :: %{
        "City" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "Lat" => float(),
        "Lon" => float()
      }

  """
  @type network_geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_replication_config_details() :: %{
        "State" => String.t() | atom()
      }

  """
  @type aws_events_endpoint_replication_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group() :: %{
        "FailoverCriteria" => aws_cloud_front_distribution_origin_group_failover()
      }

  """
  @type aws_cloud_front_distribution_origin_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parameter_definition() :: %{
        "ConfigurationOptions" => list(),
        "Description" => String.t() | atom()
      }

  """
  @type parameter_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_global_secondary_index() :: %{
        "Backfilling" => boolean(),
        "IndexArn" => String.t() | atom(),
        "IndexName" => String.t() | atom(),
        "IndexSizeBytes" => float(),
        "IndexStatus" => String.t() | atom(),
        "ItemCount" => integer(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "Projection" => aws_dynamo_db_table_projection(),
        "ProvisionedThroughput" => aws_dynamo_db_table_provisioned_throughput()
      }

  """
  @type aws_dynamo_db_table_global_secondary_index() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_finding_history_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StartTime") => non_neg_integer(),
        required("FindingIdentifier") => aws_security_finding_identifier()
      }

  """
  @type get_finding_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_details() :: %{
        "Arn" => String.t() | atom(),
        "CertificateAuthorityData" => String.t() | atom(),
        "ClusterStatus" => String.t() | atom(),
        "Endpoint" => String.t() | atom(),
        "Logging" => aws_eks_cluster_logging_details(),
        "Name" => String.t() | atom(),
        "ResourcesVpcConfig" => aws_eks_cluster_resources_vpc_config_details(),
        "RoleArn" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_eks_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_deferred_maintenance_window() :: %{
        "DeferMaintenanceEndTime" => String.t() | atom(),
        "DeferMaintenanceIdentifier" => String.t() | atom(),
        "DeferMaintenanceStartTime" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_deferred_maintenance_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_endpoint_service_details() :: %{
        "AcceptanceRequired" => boolean(),
        "AvailabilityZones" => list(String.t() | atom()),
        "BaseEndpointDnsNames" => list(String.t() | atom()),
        "GatewayLoadBalancerArns" => list(String.t() | atom()),
        "ManagesVpcEndpoints" => boolean(),
        "NetworkLoadBalancerArns" => list(String.t() | atom()),
        "PrivateDnsName" => String.t() | atom(),
        "ServiceId" => String.t() | atom(),
        "ServiceName" => String.t() | atom(),
        "ServiceState" => String.t() | atom(),
        "ServiceType" => list(aws_ec2_vpc_endpoint_service_service_type_details())
      }

  """
  @type aws_ec2_vpc_endpoint_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_connection_settings() :: %{
        "IdleTimeout" => integer()
      }

  """
  @type aws_elb_load_balancer_connection_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_finding_aggregator_request() :: %{}

  """
  @type delete_finding_aggregator_request() :: %{}

  @typedoc """

  ## Example:

      automation_rules_finding_fields_update() :: %{
        "Confidence" => integer(),
        "Criticality" => integer(),
        "Note" => note_update(),
        "RelatedFindings" => list(related_finding()),
        "Severity" => severity_update(),
        "Types" => list(String.t() | atom()),
        "UserDefinedFields" => map(),
        "VerificationState" => list(any()),
        "Workflow" => workflow_update()
      }

  """
  @type automation_rules_finding_fields_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_filter() :: %{
        "S3KeyFilter" => aws_s3_bucket_notification_configuration_s3_key_filter()
      }

  """
  @type aws_s3_bucket_notification_configuration_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_configuration_details() :: %{
        "DeploymentCircuitBreaker" => aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details(),
        "MaximumPercent" => integer(),
        "MinimumHealthyPercent" => integer()
      }

  """
  @type aws_ecs_service_deployment_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_enclave_options_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_enclave_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      enable_security_hub_response() :: %{}

  """
  @type enable_security_hub_response() :: %{}

  @typedoc """

  ## Example:

      ocsf_finding_identifier() :: %{
        "CloudAccountUid" => String.t() | atom(),
        "FindingInfoUid" => String.t() | atom(),
        "MetadataProductUid" => String.t() | atom()
      }

  """
  @type ocsf_finding_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stateless_custom_publish_metric_action_dimension() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type stateless_custom_publish_metric_action_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_security_group() :: %{
        "ClusterSecurityGroupName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_cluster_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: %{
        "DirectoryId" => String.t() | atom()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      cell() :: %{
        "CellReference" => String.t() | atom(),
        "Column" => float(),
        "ColumnName" => String.t() | atom(),
        "Row" => float()
      }

  """
  @type cell() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_backup_backup_vault_notifications_details() :: %{
        "BackupVaultEvents" => list(String.t() | atom()),
        "SnsTopicArn" => String.t() | atom()
      }

  """
  @type aws_backup_backup_vault_notifications_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_control_association_id() :: %{
        "SecurityControlId" => String.t() | atom(),
        "StandardsArn" => String.t() | atom()
      }

  """
  @type standards_control_association_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_logging_configuration() :: %{
        "DestinationBucketName" => String.t() | atom(),
        "LogFilePrefix" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_action_targets_response() :: %{
        "ActionTargets" => list(action_target()),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_action_targets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_option_group_membership() :: %{
        "OptionGroupName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_option_group_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_details() :: %{
        "ExecuteCommandConfiguration" => aws_ecs_cluster_configuration_execute_command_configuration_details()
      }

  """
  @type aws_ecs_cluster_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_results_response() :: %{
        "InsightResults" => insight_results()
      }

  """
  @type get_insight_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration() :: %{
        "Configurations" => list(aws_s3_bucket_notification_configuration_detail())
      }

  """
  @type aws_s3_bucket_notification_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_metadata_options() :: %{
        "HttpEndpoint" => String.t() | atom(),
        "HttpProtocolIpv6" => String.t() | atom(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | atom(),
        "InstanceMetadataTags" => String.t() | atom()
      }

  """
  @type aws_ec2_instance_metadata_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() :: %{
        "CloudWatchEncryptionEnabled" => boolean(),
        "CloudWatchLogGroupName" => String.t() | atom(),
        "S3BucketName" => String.t() | atom(),
        "S3EncryptionEnabled" => boolean(),
        "S3KeyPrefix" => String.t() | atom()
      }

  """
  @type aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateless_custom_actions_details() :: %{
        "ActionDefinition" => stateless_custom_action_definition(),
        "ActionName" => String.t() | atom()
      }

  """
  @type firewall_policy_stateless_custom_actions_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_products_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_products_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_details() :: %{
        "ClusterInfo" => aws_msk_cluster_cluster_info_details()
      }

  """
  @type aws_msk_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_license_set_details() :: %{
        "LicenseConfigurationArn" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_license_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_list_details() :: %{
        "GeneratedRulesType" => String.t() | atom(),
        "TargetTypes" => list(String.t() | atom()),
        "Targets" => list(String.t() | atom())
      }

  """
  @type rule_group_source_list_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_pending_modified_values() :: %{
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "ClusterIdentifier" => String.t() | atom(),
        "ClusterType" => String.t() | atom(),
        "ClusterVersion" => String.t() | atom(),
        "EncryptionType" => String.t() | atom(),
        "EnhancedVpcRouting" => boolean(),
        "MaintenanceTrackName" => String.t() | atom(),
        "MasterUserPassword" => String.t() | atom(),
        "NodeType" => String.t() | atom(),
        "NumberOfNodes" => integer(),
        "PubliclyAccessible" => boolean()
      }

  """
  @type aws_redshift_cluster_pending_modified_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_resource_requirements_details() :: %{
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_resource_requirements_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_details() :: %{
        "CloudWatchLogs" => aws_code_build_project_logs_config_cloud_watch_logs_details(),
        "S3Logs" => aws_code_build_project_logs_config_s3_logs_details()
      }

  """
  @type aws_code_build_project_logs_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_connection_draining() :: %{
        "Enabled" => boolean(),
        "Timeout" => integer()
      }

  """
  @type aws_elb_load_balancer_connection_draining() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: %{
        "Autoprovision" => boolean(),
        "Driver" => String.t() | atom(),
        "DriverOpts" => map(),
        "Labels" => map(),
        "Scope" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_rules_action_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rule_group_rules_action_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_action_target_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_action_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("Filters") => aws_security_finding_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: %{
        "Primary" => boolean(),
        "PrivateIpAddress" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_aggregator_v2_request() :: %{
        optional("LinkedRegions") => list(String.t() | atom()),
        required("RegionLinkingMode") => String.t() | atom()
      }

  """
  @type update_aggregator_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_routes_details() :: %{
        "DestinationCidrBlock" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type aws_ec2_vpn_connection_routes_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_log_config_details() :: %{
        "CloudWatchLogsRoleArn" => String.t() | atom(),
        "ExcludeVerboseContent" => boolean(),
        "FieldLogLevel" => String.t() | atom()
      }

  """
  @type aws_app_sync_graph_ql_api_log_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_backup_plan_details() :: %{
        "AdvancedBackupSettings" => list(aws_backup_backup_plan_advanced_backup_settings_details()),
        "BackupPlanName" => String.t() | atom(),
        "BackupPlanRule" => list(aws_backup_backup_plan_rule_details())
      }

  """
  @type aws_backup_backup_plan_backup_plan_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_predicate_list_details() :: %{
        "DataId" => String.t() | atom(),
        "Negated" => boolean(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rule_predicate_list_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_sns_topic_details() :: %{
        "ApplicationSuccessFeedbackRoleArn" => String.t() | atom(),
        "FirehoseFailureFeedbackRoleArn" => String.t() | atom(),
        "FirehoseSuccessFeedbackRoleArn" => String.t() | atom(),
        "HttpFailureFeedbackRoleArn" => String.t() | atom(),
        "HttpSuccessFeedbackRoleArn" => String.t() | atom(),
        "KmsMasterKeyId" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "SqsFailureFeedbackRoleArn" => String.t() | atom(),
        "SqsSuccessFeedbackRoleArn" => String.t() | atom(),
        "Subscription" => list(aws_sns_topic_subscription()),
        "TopicName" => String.t() | atom()
      }

  """
  @type aws_sns_topic_details() :: %{(String.t() | atom()) => any()}

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

      describe_standards_controls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_standards_controls_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_control_definition() :: %{
        "CurrentRegionAvailability" => list(any()),
        "CustomizableProperties" => list(list(any())()),
        "Description" => String.t() | atom(),
        "ParameterDefinitions" => map(),
        "RemediationUrl" => String.t() | atom(),
        "SecurityControlId" => String.t() | atom(),
        "SeverityRating" => list(any()),
        "Title" => String.t() | atom()
      }

  """
  @type security_control_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_automation_rule_v2_request() :: %{
        optional("Actions") => list(automation_rules_action_v2()),
        optional("Criteria") => list(),
        optional("Description") => String.t() | atom(),
        optional("RuleName") => String.t() | atom(),
        optional("RuleOrder") => float(),
        optional("RuleStatus") => list(any())
      }

  """
  @type update_automation_rule_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_remote_ip_details() :: %{
        "City" => city(),
        "Country" => country(),
        "GeoLocation" => geo_location(),
        "IpAddressV4" => String.t() | atom(),
        "Organization" => ip_organization_details()
      }

  """
  @type action_remote_ip_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_transit_gateway_details() :: %{
        "AmazonSideAsn" => integer(),
        "AssociationDefaultRouteTableId" => String.t() | atom(),
        "AutoAcceptSharedAttachments" => String.t() | atom(),
        "DefaultRouteTableAssociation" => String.t() | atom(),
        "DefaultRouteTablePropagation" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DnsSupport" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MulticastSupport" => String.t() | atom(),
        "PropagationDefaultRouteTableId" => String.t() | atom(),
        "TransitGatewayCidrBlocks" => list(String.t() | atom()),
        "VpnEcmpSupport" => String.t() | atom()
      }

  """
  @type aws_ec2_transit_gateway_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: %{
        "LaunchTemplateId" => String.t() | atom(),
        "LaunchTemplateName" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_access_point_details() :: %{
        "AccessPointArn" => String.t() | atom(),
        "Alias" => String.t() | atom(),
        "Bucket" => String.t() | atom(),
        "BucketAccountId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NetworkOrigin" => String.t() | atom(),
        "PublicAccessBlockConfiguration" => aws_s3_account_public_access_block_details(),
        "VpcConfiguration" => aws_s3_access_point_vpc_configuration_details()
      }

  """
  @type aws_s3_access_point_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_vulnerabilities_file_path() :: %{
        "EndLine" => integer(),
        "FileName" => String.t() | atom(),
        "FilePath" => String.t() | atom(),
        "StartLine" => integer()
      }

  """
  @type code_vulnerabilities_file_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_flow_logs_details() :: %{
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_flow_logs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecr_repository_lifecycle_policy_details() :: %{
        "LifecyclePolicyText" => String.t() | atom(),
        "RegistryId" => String.t() | atom()
      }

  """
  @type aws_ecr_repository_lifecycle_policy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ocsf_map_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => map_filter()
      }

  """
  @type ocsf_map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_details() :: %{
        "Arn" => String.t() | atom(),
        "Capacity" => float(),
        "CaptchaConfig" => aws_wafv2_web_acl_captcha_config_details(),
        "DefaultAction" => aws_wafv2_web_acl_action_details(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ManagedbyFirewallManager" => boolean(),
        "Name" => String.t() | atom(),
        "Rules" => list(aws_wafv2_rules_details()),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_web_acl_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_role_details() :: %{
        "AssumeRolePolicyDocument" => String.t() | atom(),
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | atom(),
        "InstanceProfileList" => list(aws_iam_instance_profile()),
        "MaxSessionDuration" => integer(),
        "Path" => String.t() | atom(),
        "PermissionsBoundary" => aws_iam_permissions_boundary(),
        "RoleId" => String.t() | atom(),
        "RoleName" => String.t() | atom(),
        "RolePolicyList" => list(aws_iam_role_policy())
      }

  """
  @type aws_iam_role_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_option_setting() :: %{
        "Namespace" => String.t() | atom(),
        "OptionName" => String.t() | atom(),
        "ResourceName" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_elastic_beanstalk_environment_option_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_created_by_details() :: %{
        "BackupPlanArn" => String.t() | atom(),
        "BackupPlanId" => String.t() | atom(),
        "BackupPlanVersion" => String.t() | atom(),
        "BackupRuleId" => String.t() | atom()
      }

  """
  @type aws_backup_recovery_point_created_by_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_history_update_source() :: %{
        "Identity" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type finding_history_update_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_automation_rule_v2_response() :: %{
        "Actions" => list(automation_rules_action_v2()),
        "CreatedAt" => non_neg_integer(),
        "Criteria" => list(),
        "Description" => String.t() | atom(),
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleOrder" => float(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_automation_rule_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_request() :: %{
        optional("Feature") => list(any()),
        required("AdminAccountId") => String.t() | atom()
      }

  """
  @type disable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_eip_details() :: %{
        "AllocationId" => String.t() | atom(),
        "AssociationId" => String.t() | atom(),
        "Domain" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "NetworkBorderGroup" => String.t() | atom(),
        "NetworkInterfaceId" => String.t() | atom(),
        "NetworkInterfaceOwnerId" => String.t() | atom(),
        "PrivateIpAddress" => String.t() | atom(),
        "PublicIp" => String.t() | atom(),
        "PublicIpv4Pool" => String.t() | atom()
      }

  """
  @type aws_ec2_eip_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_control_definitions_response() :: %{
        "NextToken" => String.t() | atom(),
        "SecurityControlDefinitions" => list(security_control_definition())
      }

  """
  @type list_security_control_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_automation_rules_request() :: %{
        required("UpdateAutomationRulesRequestItems") => list(update_automation_rules_request_item())
      }

  """
  @type batch_update_automation_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      resources_number_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => number_filter()
      }

  """
  @type resources_number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_standards_control_association() :: %{
        "ErrorCode" => list(any()),
        "ErrorReason" => String.t() | atom(),
        "StandardsControlAssociationId" => standards_control_association_id()
      }

  """
  @type unprocessed_standards_control_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_connection_log_options_details() :: %{
        "CloudwatchLogGroup" => String.t() | atom(),
        "CloudwatchLogStream" => String.t() | atom(),
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_client_vpn_endpoint_connection_log_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_source_ports() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_source_ports() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type delete_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_history_update() :: %{
        "NewValue" => String.t() | atom(),
        "OldValue" => String.t() | atom(),
        "UpdatedField" => String.t() | atom()
      }

  """
  @type finding_history_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_restore_summary() :: %{
        "RestoreDateTime" => String.t() | atom(),
        "RestoreInProgress" => boolean(),
        "SourceBackupArn" => String.t() | atom(),
        "SourceTableArn" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_restore_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parameter_configuration() :: %{
        "Value" => list(),
        "ValueType" => list(any())
      }

  """
  @type parameter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invite_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type invite_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight_results() :: %{
        "GroupByAttribute" => String.t() | atom(),
        "InsightArn" => String.t() | atom(),
        "ResultValues" => list(insight_result_value())
      }

  """
  @type insight_results() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_details() :: %{
        "EncryptionAtRest" => aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details(),
        "EncryptionInTransit" => aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_connector_v2_request() :: %{}

  """
  @type get_connector_v2_request() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_service_details() :: %{
        "CapacityProviderStrategy" => list(aws_ecs_service_capacity_provider_strategy_details()),
        "Cluster" => String.t() | atom(),
        "DeploymentConfiguration" => aws_ecs_service_deployment_configuration_details(),
        "DeploymentController" => aws_ecs_service_deployment_controller_details(),
        "DesiredCount" => integer(),
        "EnableEcsManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "HealthCheckGracePeriodSeconds" => integer(),
        "LaunchType" => String.t() | atom(),
        "LoadBalancers" => list(aws_ecs_service_load_balancers_details()),
        "Name" => String.t() | atom(),
        "NetworkConfiguration" => aws_ecs_service_network_configuration_details(),
        "PlacementConstraints" => list(aws_ecs_service_placement_constraints_details()),
        "PlacementStrategies" => list(aws_ecs_service_placement_strategies_details()),
        "PlatformVersion" => String.t() | atom(),
        "PropagateTags" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "SchedulingStrategy" => String.t() | atom(),
        "ServiceArn" => String.t() | atom(),
        "ServiceName" => String.t() | atom(),
        "ServiceRegistries" => list(aws_ecs_service_service_registries_details()),
        "TaskDefinition" => String.t() | atom()
      }

  """
  @type aws_ecs_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_standards_response() :: %{
        "NextToken" => String.t() | atom(),
        "Standards" => list(standard())
      }

  """
  @type describe_standards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_account() :: %{
        "Name" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type user_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_organization_details() :: %{
        "Asn" => integer(),
        "AsnOrg" => String.t() | atom(),
        "Isp" => String.t() | atom(),
        "Org" => String.t() | atom()
      }

  """
  @type ip_organization_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group_failover_status_codes() :: %{
        "Items" => list(integer()),
        "Quantity" => integer()
      }

  """
  @type aws_cloud_front_distribution_origin_group_failover_status_codes() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_definition() :: %{
        "Actions" => list(String.t() | atom()),
        "MatchAttributes" => rule_group_source_stateless_rule_match_attributes()
      }

  """
  @type rule_group_source_stateless_rule_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_status_reason() :: %{
        "StatusReasonCode" => list(any())
      }

  """
  @type standards_status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cors_configuration() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t() | atom()),
        "AllowMethods" => list(String.t() | atom()),
        "AllowOrigins" => list(String.t() | atom()),
        "ExposeHeaders" => list(String.t() | atom()),
        "MaxAge" => integer()
      }

  """
  @type aws_cors_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_automation_rules_v2_response() :: %{
        "NextToken" => String.t() | atom(),
        "Rules" => list(automation_rules_metadata_v2())
      }

  """
  @type list_automation_rules_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_details() :: %{
        "Capabilities" => list(String.t() | atom()),
        "CreationTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DisableRollback" => boolean(),
        "DriftInformation" => aws_cloud_formation_stack_drift_information_details(),
        "EnableTerminationProtection" => boolean(),
        "LastUpdatedTime" => String.t() | atom(),
        "NotificationArns" => list(String.t() | atom()),
        "Outputs" => list(aws_cloud_formation_stack_outputs_details()),
        "RoleArn" => String.t() | atom(),
        "StackId" => String.t() | atom(),
        "StackName" => String.t() | atom(),
        "StackStatus" => String.t() | atom(),
        "StackStatusReason" => String.t() | atom(),
        "TimeoutInMinutes" => integer()
      }

  """
  @type aws_cloud_formation_stack_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_standard() :: %{
        "StandardsId" => String.t() | atom()
      }

  """
  @type associated_standard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_snapshot_copy_status() :: %{
        "DestinationRegion" => String.t() | atom(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "RetentionPeriod" => integer(),
        "SnapshotCopyGrantName" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_cluster_snapshot_copy_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity() :: %{
        "Label" => list(any()),
        "Normalized" => integer(),
        "Original" => String.t() | atom(),
        "Product" => float()
      }

  """
  @type severity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connection() :: %{
        "Direction" => list(any())
      }

  """
  @type network_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_iam_role() :: %{
        "ApplyStatus" => String.t() | atom(),
        "IamRoleArn" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_iam_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_users_details() :: %{
        "PendingChange" => String.t() | atom(),
        "Username" => String.t() | atom()
      }

  """
  @type aws_amazon_mq_broker_users_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: %{
        "AbortIncompleteMultipartUpload" => aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details(),
        "ExpirationDate" => String.t() | atom(),
        "ExpirationInDays" => integer(),
        "ExpiredObjectDeleteMarker" => boolean(),
        "Filter" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details(),
        "ID" => String.t() | atom(),
        "NoncurrentVersionExpirationInDays" => integer(),
        "NoncurrentVersionTransitions" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details()),
        "Prefix" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "Transitions" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details())
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_lambda_function_environment() :: %{
        "Error" => aws_lambda_function_environment_error(),
        "Variables" => map()
      }

  """
  @type aws_lambda_function_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_details() :: %{
        "BackupPlan" => aws_backup_backup_plan_backup_plan_details(),
        "BackupPlanArn" => String.t() | atom(),
        "BackupPlanId" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type aws_backup_backup_plan_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_response() :: %{
        "Arn" => String.t() | atom(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_configuration_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standard() :: %{
        "Description" => String.t() | atom(),
        "EnabledByDefault" => boolean(),
        "Name" => String.t() | atom(),
        "StandardsArn" => String.t() | atom(),
        "StandardsManagedBy" => standards_managed_by()
      }

  """
  @type standard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_hibernation_options_details() :: %{
        "Configured" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_hibernation_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_delete_automation_rules_request() :: %{
        required("AutomationRulesArns") => list(String.t() | atom())
      }

  """
  @type batch_delete_automation_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_health_check() :: %{
        "HealthyThreshold" => integer(),
        "Interval" => integer(),
        "Target" => String.t() | atom(),
        "Timeout" => integer(),
        "UnhealthyThreshold" => integer()
      }

  """
  @type aws_elb_load_balancer_health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_details() :: %{
        "DefaultAction" => String.t() | atom(),
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RulesList" => list(aws_waf_regional_web_acl_rules_list_details()),
        "WebAclId" => String.t() | atom()
      }

  """
  @type aws_waf_regional_web_acl_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_standards_control_associations_request() :: %{
        required("StandardsControlAssociationIds") => list(standards_control_association_id())
      }

  """
  @type batch_get_standards_control_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_vpc_options() :: %{
        "AvailabilityZones" => list(String.t() | atom()),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "VPCId" => String.t() | atom()
      }

  """
  @type aws_elasticsearch_domain_vpc_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_custom_http_header() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_wafv2_custom_http_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_logs_details() :: %{
        "Audit" => boolean(),
        "AuditLogGroup" => String.t() | atom(),
        "General" => boolean(),
        "GeneralLogGroup" => String.t() | atom(),
        "Pending" => aws_amazon_mq_broker_logs_pending_details()
      }

  """
  @type aws_amazon_mq_broker_logs_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      double_configuration_options() :: %{
        "DefaultValue" => float(),
        "Max" => float(),
        "Min" => float()
      }

  """
  @type double_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerability_vendor() :: %{
        "Name" => String.t() | atom(),
        "Url" => String.t() | atom(),
        "VendorCreatedAt" => String.t() | atom(),
        "VendorSeverity" => String.t() | atom(),
        "VendorUpdatedAt" => String.t() | atom()
      }

  """
  @type vulnerability_vendor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_logging_cluster_logging_details() :: %{
        "Enabled" => boolean(),
        "Types" => list(String.t() | atom())
      }

  """
  @type aws_eks_cluster_logging_cluster_logging_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connectors_v2_response() :: %{
        "Connectors" => list(connector_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_connectors_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_source() :: %{
        "GitCloneDepth" => integer(),
        "InsecureSsl" => boolean(),
        "Location" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_code_build_project_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_placement_details() :: %{
        "Affinity" => String.t() | atom(),
        "AvailabilityZone" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "HostId" => String.t() | atom(),
        "HostResourceGroupArn" => String.t() | atom(),
        "PartitionNumber" => integer(),
        "SpreadDomain" => String.t() | atom(),
        "Tenancy" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_placement_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_sources() :: %{
        "AddressDefinition" => String.t() | atom()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_sources() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_details() :: %{
        "ApplicationName" => String.t() | atom(),
        "Cname" => String.t() | atom(),
        "DateCreated" => String.t() | atom(),
        "DateUpdated" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EndpointUrl" => String.t() | atom(),
        "EnvironmentArn" => String.t() | atom(),
        "EnvironmentId" => String.t() | atom(),
        "EnvironmentLinks" => list(aws_elastic_beanstalk_environment_environment_link()),
        "EnvironmentName" => String.t() | atom(),
        "OptionSettings" => list(aws_elastic_beanstalk_environment_option_setting()),
        "PlatformArn" => String.t() | atom(),
        "SolutionStackName" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "Tier" => aws_elastic_beanstalk_environment_tier(),
        "VersionLabel" => String.t() | atom()
      }

  """
  @type aws_elastic_beanstalk_environment_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_registrations_v2_request() :: %{
        required("AuthCode") => String.t() | atom(),
        required("AuthState") => String.t() | atom()
      }

  """
  @type connector_registrations_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateful_rules_details() :: %{
        "Action" => String.t() | atom(),
        "Header" => rule_group_source_stateful_rules_header_details(),
        "RuleOptions" => list(rule_group_source_stateful_rules_options_details())
      }

  """
  @type rule_group_source_stateful_rules_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_insight_response() :: %{}

  """
  @type update_insight_response() :: %{}

  @typedoc """

  ## Example:

      batch_enable_standards_request() :: %{
        required("StandardsSubscriptionRequests") => list(standards_subscription_request())
      }

  """
  @type batch_enable_standards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_log_publishing_options() :: %{
        "AuditLogs" => aws_elasticsearch_domain_log_publishing_options_log_config(),
        "IndexSlowLogs" => aws_elasticsearch_domain_log_publishing_options_log_config(),
        "SearchSlowLogs" => aws_elasticsearch_domain_log_publishing_options_log_config()
      }

  """
  @type aws_elasticsearch_domain_log_publishing_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_control_association_summary() :: %{
        "AssociationStatus" => list(any()),
        "RelatedRequirements" => list(String.t() | atom()),
        "SecurityControlArn" => String.t() | atom(),
        "SecurityControlId" => String.t() | atom(),
        "StandardsArn" => String.t() | atom(),
        "StandardsControlDescription" => String.t() | atom(),
        "StandardsControlTitle" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer(),
        "UpdatedReason" => String.t() | atom()
      }

  """
  @type standards_control_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_network_configuration_details() :: %{
        "AwsVpcConfiguration" => aws_ecs_service_network_configuration_aws_vpc_configuration_details()
      }

  """
  @type aws_ecs_service_network_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateful_rules_options_details() :: %{
        "Keyword" => String.t() | atom(),
        "Settings" => list(String.t() | atom())
      }

  """
  @type rule_group_source_stateful_rules_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_logging() :: %{
        "Bucket" => String.t() | atom(),
        "Enabled" => boolean(),
        "IncludeCookies" => boolean(),
        "Prefix" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_logging() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: %{
        "DeleteOnTermination" => boolean(),
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "SnapshotId" => String.t() | atom(),
        "VolumeSize" => integer(),
        "VolumeType" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group() :: %{
        "DbSubnetGroupArn" => String.t() | atom(),
        "DbSubnetGroupDescription" => String.t() | atom(),
        "DbSubnetGroupName" => String.t() | atom(),
        "SubnetGroupStatus" => String.t() | atom(),
        "Subnets" => list(aws_rds_db_subnet_group_subnet()),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_rds_db_subnet_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_classification_details() :: %{
        "DetailedResultsLocation" => String.t() | atom(),
        "Result" => classification_result()
      }

  """
  @type data_classification_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rules_details() :: %{
        "Priority" => integer(),
        "RuleDefinition" => rule_group_source_stateless_rule_definition()
      }

  """
  @type rule_group_source_stateless_rules_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: %{
        "AuthorizationConfig" => aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details(),
        "FilesystemId" => String.t() | atom(),
        "RootDirectory" => String.t() | atom(),
        "TransitEncryption" => String.t() | atom(),
        "TransitEncryptionPort" => integer()
      }

  """
  @type aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_response() :: %{}

  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule_condition() :: %{
        "HttpErrorCodeReturnedEquals" => String.t() | atom(),
        "KeyPrefixEquals" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule_condition() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      group_by_value() :: %{
        "Count" => integer(),
        "FieldValue" => String.t() | atom()
      }

  """
  @type group_by_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_hsm_status() :: %{
        "HsmClientCertificateIdentifier" => String.t() | atom(),
        "HsmConfigurationIdentifier" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_hsm_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: %{
        "Count" => integer(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: %{
        "AssignPublicIp" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "Subnets" => list(String.t() | atom())
      }

  """
  @type aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      occurrences() :: %{
        "Cells" => list(cell()),
        "LineRanges" => list(range()),
        "OffsetRanges" => list(range()),
        "Pages" => list(page()),
        "Records" => list(record())
      }

  """
  @type occurrences() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_details() :: %{
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PredicateList" => list(aws_waf_regional_rule_predicate_list_details()),
        "RuleId" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_ip_range() :: %{
        "CidrIp" => String.t() | atom()
      }

  """
  @type aws_ec2_security_group_ip_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_web_acl_details() :: %{
        "DefaultAction" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Rules" => list(aws_waf_web_acl_rule()),
        "WebAclId" => String.t() | atom()
      }

  """
  @type aws_waf_web_acl_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | atom(),
        "AggregatorV2Arn" => String.t() | atom(),
        "LinkedRegions" => list(String.t() | atom()),
        "RegionLinkingMode" => String.t() | atom()
      }

  """
  @type update_aggregator_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_artifacts_details() :: %{
        "ArtifactIdentifier" => String.t() | atom(),
        "EncryptionDisabled" => boolean(),
        "Location" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NamespaceType" => String.t() | atom(),
        "OverrideArtifactName" => boolean(),
        "Packaging" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_code_build_project_artifacts_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      boolean_filter() :: %{
        "Value" => boolean()
      }

  """
  @type boolean_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_severity_breakdown() :: %{
        "Critical" => integer(),
        "Fatal" => integer(),
        "High" => integer(),
        "Informational" => integer(),
        "Low" => integer(),
        "Medium" => integer(),
        "Other" => integer(),
        "Unknown" => integer()
      }

  """
  @type resource_severity_breakdown() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_disassociation_response() :: %{}

  """
  @type start_configuration_policy_disassociation_response() :: %{}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "AutoEnable" => boolean(),
        "AutoEnableStandards" => list(any()),
        "MemberAccountLimitReached" => boolean(),
        "OrganizationConfiguration" => organization_configuration()
      }

  """
  @type describe_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_associated_role() :: %{
        "RoleArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_cluster_associated_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_rule_copy_actions_details() :: %{
        "DestinationBackupVaultArn" => String.t() | atom(),
        "Lifecycle" => aws_backup_backup_plan_lifecycle_details()
      }

  """
  @type aws_backup_backup_plan_rule_copy_actions_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() :: %{
        "LaunchTemplateId" => String.t() | atom(),
        "LaunchTemplateName" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_stage_details() :: %{
        "AccessLogSettings" => aws_api_gateway_access_log_settings(),
        "CacheClusterEnabled" => boolean(),
        "CacheClusterSize" => String.t() | atom(),
        "CacheClusterStatus" => String.t() | atom(),
        "CanarySettings" => aws_api_gateway_canary_settings(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => String.t() | atom(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DocumentationVersion" => String.t() | atom(),
        "LastUpdatedDate" => String.t() | atom(),
        "MethodSettings" => list(aws_api_gateway_method_settings()),
        "StageName" => String.t() | atom(),
        "TracingEnabled" => boolean(),
        "Variables" => map(),
        "WebAclArn" => String.t() | atom()
      }

  """
  @type aws_api_gateway_stage_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_control() :: %{
        "ControlId" => String.t() | atom(),
        "ControlStatus" => list(any()),
        "ControlStatusUpdatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisabledReason" => String.t() | atom(),
        "RelatedRequirements" => list(String.t() | atom()),
        "RemediationUrl" => String.t() | atom(),
        "SeverityRating" => list(any()),
        "StandardsControlArn" => String.t() | atom(),
        "Title" => String.t() | atom()
      }

  """
  @type standards_control() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_domain_membership() :: %{
        "Domain" => String.t() | atom(),
        "Fqdn" => String.t() | atom(),
        "IamRoleName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_domain_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_renewal_summary() :: %{
        "DomainValidationOptions" => list(aws_certificate_manager_certificate_domain_validation_option()),
        "RenewalStatus" => String.t() | atom(),
        "RenewalStatusReason" => String.t() | atom(),
        "UpdatedAt" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_renewal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() :: %{
        "DaysAfterInitiation" => integer()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_control_response() :: %{}

  """
  @type update_security_control_response() :: %{}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_replica() :: %{
        "GlobalSecondaryIndexes" => list(aws_dynamo_db_table_replica_global_secondary_index()),
        "KmsMasterKeyId" => String.t() | atom(),
        "ProvisionedThroughputOverride" => aws_dynamo_db_table_provisioned_throughput_override(),
        "RegionName" => String.t() | atom(),
        "ReplicaStatus" => String.t() | atom(),
        "ReplicaStatusDescription" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_replica() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_hub_v2_response() :: %{
        "HubV2Arn" => String.t() | atom(),
        "SubscribedAt" => String.t() | atom()
      }

  """
  @type describe_security_hub_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_details() :: %{
        "AllocatedStorage" => integer(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AvailabilityZone" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "MultiAZ" => boolean(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "PubliclyAccessible" => boolean(),
        "ReplicationInstanceClass" => String.t() | atom(),
        "ReplicationInstanceIdentifier" => String.t() | atom(),
        "ReplicationSubnetGroup" => aws_dms_replication_instance_replication_subnet_group_details(),
        "VpcSecurityGroups" => list(aws_dms_replication_instance_vpc_security_groups_details())
      }

  """
  @type aws_dms_replication_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_access_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type invalid_access_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_lb_cookie_stickiness_policy() :: %{
        "CookieExpirationPeriod" => float(),
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_elb_lb_cookie_stickiness_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: %{
        "Ipv6Prefix" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: %{
        "Ipv4Prefix" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_destinations_details() :: %{
        "CloudWatchLogsLogGroup" => aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_destinations_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: %{
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => String.t() | atom(),
        "InstanceCount" => integer(),
        "InstanceType" => String.t() | atom(),
        "ZoneAwarenessConfig" => aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rules_and_custom_actions_details() :: %{
        "CustomActions" => list(rule_group_source_custom_actions_details()),
        "StatelessRules" => list(rule_group_source_stateless_rules_details())
      }

  """
  @type rule_group_source_stateless_rules_and_custom_actions_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_rule() :: %{
        "ApplyServerSideEncryptionByDefault" => aws_s3_bucket_server_side_encryption_by_default()
      }

  """
  @type aws_s3_bucket_server_side_encryption_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_policy_summary() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ServiceEnabled" => boolean(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type configuration_policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_details() :: %{
        "CertificateAuthorityArn" => String.t() | atom(),
        "CreatedAt" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "DomainValidationOptions" => list(aws_certificate_manager_certificate_domain_validation_option()),
        "ExtendedKeyUsages" => list(aws_certificate_manager_certificate_extended_key_usage()),
        "FailureReason" => String.t() | atom(),
        "ImportedAt" => String.t() | atom(),
        "InUseBy" => list(String.t() | atom()),
        "IssuedAt" => String.t() | atom(),
        "Issuer" => String.t() | atom(),
        "KeyAlgorithm" => String.t() | atom(),
        "KeyUsages" => list(aws_certificate_manager_certificate_key_usage()),
        "NotAfter" => String.t() | atom(),
        "NotBefore" => String.t() | atom(),
        "Options" => aws_certificate_manager_certificate_options(),
        "RenewalEligibility" => String.t() | atom(),
        "RenewalSummary" => aws_certificate_manager_certificate_renewal_summary(),
        "Serial" => String.t() | atom(),
        "SignatureAlgorithm" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "Subject" => String.t() | atom(),
        "SubjectAlternativeNames" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_enabled_standards_response() :: %{
        "NextToken" => String.t() | atom(),
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type get_enabled_standards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_vpc_details() :: %{
        "Id" => String.t() | atom(),
        "Region" => String.t() | atom()
      }

  """
  @type aws_route53_hosted_zone_vpc_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_instance_profile() :: %{
        "Arn" => String.t() | atom(),
        "CreateDate" => String.t() | atom(),
        "InstanceProfileId" => String.t() | atom(),
        "InstanceProfileName" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "Roles" => list(aws_iam_instance_profile_role())
      }

  """
  @type aws_iam_instance_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_request_action() :: %{
        "Blocked" => boolean(),
        "Domain" => String.t() | atom(),
        "Protocol" => String.t() | atom()
      }

  """
  @type dns_request_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_composite_filter() :: %{
        "DateFilters" => list(resources_date_filter()),
        "MapFilters" => list(resources_map_filter()),
        "NestedCompositeFilters" => list(resources_composite_filter()),
        "NumberFilters" => list(resources_number_filter()),
        "Operator" => list(any()),
        "StringFilters" => list(resources_string_filter())
      }

  """
  @type resources_composite_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_controls_configuration() :: %{
        "DisabledSecurityControlIdentifiers" => list(String.t() | atom()),
        "EnabledSecurityControlIdentifiers" => list(String.t() | atom()),
        "SecurityControlCustomParameters" => list(security_control_custom_parameter())
      }

  """
  @type security_controls_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() :: %{
        "EbsVolumes" => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_hub_configuration_request() :: %{
        optional("AutoEnableControls") => boolean(),
        optional("ControlFindingGenerator") => list(any())
      }

  """
  @type update_security_hub_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type get_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_variables_port_sets_details() :: %{
        "Definition" => list(String.t() | atom())
      }

  """
  @type rule_group_variables_port_sets_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() :: %{
        "CapacityReservationId" => String.t() | atom(),
        "CapacityReservationResourceGroupArn" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        required("AccountDetails") => list(account_details())
      }

  """
  @type create_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_primary_details() :: %{
        "HealthCheck" => String.t() | atom()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_primary_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_elb_load_balancer_policies() :: %{
        "AppCookieStickinessPolicies" => list(aws_elb_app_cookie_stickiness_policy()),
        "LbCookieStickinessPolicies" => list(aws_elb_lb_cookie_stickiness_policy()),
        "OtherPolicies" => list(String.t() | atom())
      }

  """
  @type aws_elb_load_balancer_policies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ticket_v2_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ConnectorId") => String.t() | atom(),
        required("FindingMetadataUid") => String.t() | atom()
      }

  """
  @type create_ticket_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_replica_global_secondary_index() :: %{
        "IndexName" => String.t() | atom(),
        "ProvisionedThroughputOverride" => aws_dynamo_db_table_provisioned_throughput_override()
      }

  """
  @type aws_dynamo_db_table_replica_global_secondary_index() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_automation_rule_v2_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("RuleStatus") => list(any()),
        optional("Tags") => map(),
        required("Actions") => list(automation_rules_action_v2()),
        required("Criteria") => list(),
        required("Description") => String.t() | atom(),
        required("RuleName") => String.t() | atom(),
        required("RuleOrder") => float()
      }

  """
  @type create_automation_rule_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      icmp_type_code() :: %{
        "Code" => integer(),
        "Type" => integer()
      }

  """
  @type icmp_type_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_lifecycle_details() :: %{
        "DeleteAfterDays" => float(),
        "MoveToColdStorageAfterDays" => float()
      }

  """
  @type aws_backup_recovery_point_lifecycle_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_market_options_details() :: %{
        "MarketType" => String.t() | atom(),
        "SpotOptions" => aws_ec2_launch_template_data_instance_market_options_spot_options_details()
      }

  """
  @type aws_ec2_launch_template_data_instance_market_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() :: %{
        "EncryptionOption" => String.t() | atom(),
        "KmsKey" => String.t() | atom()
      }

  """
  @type aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_attachment() :: %{
        "AttachTime" => String.t() | atom(),
        "AttachmentId" => String.t() | atom(),
        "DeleteOnTermination" => boolean(),
        "DeviceIndex" => integer(),
        "InstanceId" => String.t() | atom(),
        "InstanceOwnerId" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_ec2_network_interface_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_variables() :: %{
        "IpSets" => rule_group_variables_ip_sets_details(),
        "PortSets" => rule_group_variables_port_sets_details()
      }

  """
  @type rule_group_variables() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context_session_issuer() :: %{
        "AccountId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "UserName" => String.t() | atom()
      }

  """
  @type aws_iam_access_key_session_context_session_issuer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type disassociate_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_route_settings() :: %{
        "DataTraceEnabled" => boolean(),
        "DetailedMetricsEnabled" => boolean(),
        "LoggingLevel" => String.t() | atom(),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float()
      }

  """
  @type aws_api_gateway_v2_route_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_volume_details() :: %{
        "Attachments" => list(aws_ec2_volume_attachment()),
        "CreateTime" => String.t() | atom(),
        "DeviceName" => String.t() | atom(),
        "Encrypted" => boolean(),
        "KmsKeyId" => String.t() | atom(),
        "Size" => integer(),
        "SnapshotId" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "VolumeId" => String.t() | atom(),
        "VolumeScanStatus" => String.t() | atom(),
        "VolumeType" => String.t() | atom()
      }

  """
  @type aws_ec2_volume_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "Findings" => list(aws_security_finding()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_group_details() :: %{
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RuleGroupId" => String.t() | atom(),
        "Rules" => list(aws_waf_rule_group_rules_details())
      }

  """
  @type aws_waf_rule_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_details() :: %{
        "CacheBehaviors" => aws_cloud_front_distribution_cache_behaviors(),
        "DefaultCacheBehavior" => aws_cloud_front_distribution_default_cache_behavior(),
        "DefaultRootObject" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "LastModifiedTime" => String.t() | atom(),
        "Logging" => aws_cloud_front_distribution_logging(),
        "OriginGroups" => aws_cloud_front_distribution_origin_groups(),
        "Origins" => aws_cloud_front_distribution_origins(),
        "Status" => String.t() | atom(),
        "ViewerCertificate" => aws_cloud_front_distribution_viewer_certificate(),
        "WebAclId" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_cache_behavior() :: %{
        "ViewerProtocolPolicy" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_cache_behavior() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_details() :: %{
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "IpPermissions" => list(aws_ec2_security_group_ip_permission()),
        "IpPermissionsEgress" => list(aws_ec2_security_group_ip_permission()),
        "OwnerId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_security_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_container_details() :: %{
        "Image" => String.t() | atom(),
        "MountPoints" => list(aws_mount_point()),
        "Name" => String.t() | atom(),
        "Privileged" => boolean()
      }

  """
  @type aws_ecs_container_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_service_registries_details() :: %{
        "ContainerName" => String.t() | atom(),
        "ContainerPort" => integer(),
        "Port" => integer(),
        "RegistryArn" => String.t() | atom()
      }

  """
  @type aws_ecs_service_service_registries_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_environment_details() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_environment_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      vulnerability_code_vulnerabilities() :: %{
        "Cwes" => list(String.t() | atom()),
        "FilePath" => code_vulnerabilities_file_path(),
        "SourceArn" => String.t() | atom()
      }

  """
  @type vulnerability_code_vulnerabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_action_target_response() :: %{}

  """
  @type update_action_target_response() :: %{}

  @typedoc """

  ## Example:

      aws_dms_endpoint_details() :: %{
        "CertificateArn" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "EndpointArn" => String.t() | atom(),
        "EndpointIdentifier" => String.t() | atom(),
        "EndpointType" => String.t() | atom(),
        "EngineName" => String.t() | atom(),
        "ExternalId" => String.t() | atom(),
        "ExtraConnectionAttributes" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "Port" => integer(),
        "ServerName" => String.t() | atom(),
        "SslMode" => String.t() | atom(),
        "Username" => String.t() | atom()
      }

  """
  @type aws_dms_endpoint_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "Text" => String.t() | atom(),
        "Url" => String.t() | atom()
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_aggregator() :: %{
        "FindingAggregatorArn" => String.t() | atom()
      }

  """
  @type finding_aggregator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type delete_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_dns_logs_details() :: %{
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_dns_logs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      invite_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type invite_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_s3_key_filter() :: %{
        "FilterRules" => list(aws_s3_bucket_notification_configuration_s3_key_filter_rule())
      }

  """
  @type aws_s3_bucket_notification_configuration_s3_key_filter() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_redshift_cluster_vpc_security_group() :: %{
        "Status" => String.t() | atom(),
        "VpcSecurityGroupId" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_vpc_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: %{
        "MinimumInstanceMetadataServiceVersion" => String.t() | atom()
      }

  """
  @type aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_vgw_telemetry_details() :: %{
        "AcceptedRouteCount" => integer(),
        "CertificateArn" => String.t() | atom(),
        "LastStatusChange" => String.t() | atom(),
        "OutsideIpAddress" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type aws_ec2_vpn_connection_vgw_telemetry_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_response() :: %{
        "ProcessedFindings" => list(batch_update_findings_v2_processed_finding()),
        "UnprocessedFindings" => list(batch_update_findings_v2_unprocessed_finding())
      }

  """
  @type batch_update_findings_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: %{
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      vpc_info_cidr_block_set_details() :: %{
        "CidrBlock" => String.t() | atom()
      }

  """
  @type vpc_info_cidr_block_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_billing_mode_summary() :: %{
        "BillingMode" => String.t() | atom(),
        "LastUpdateToPayPerRequestDateTime" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_billing_mode_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_metadata_v2() :: %{
        "Actions" => list(automation_rules_action_type_object_v2()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleOrder" => float(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_metadata_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      signal() :: %{
        "ActorIds" => list(String.t() | atom()),
        "Count" => integer(),
        "CreatedAt" => float(),
        "EndpointIds" => list(String.t() | atom()),
        "FirstSeenAt" => float(),
        "Id" => String.t() | atom(),
        "LastSeenAt" => float(),
        "Name" => String.t() | atom(),
        "ProductArn" => String.t() | atom(),
        "ResourceIds" => list(String.t() | atom()),
        "Severity" => float(),
        "SignalIndicators" => list(indicator()),
        "Title" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "UpdatedAt" => float()
      }

  """
  @type signal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_details() :: %{
        "AccountId" => String.t() | atom(),
        "Email" => String.t() | atom()
      }

  """
  @type account_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_wafv2_custom_response_details() :: %{
        "CustomResponseBodyKey" => String.t() | atom(),
        "ResponseCode" => integer(),
        "ResponseHeaders" => list(aws_wafv2_custom_http_header())
      }

  """
  @type aws_wafv2_custom_response_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_secondary_details() :: %{
        "Route" => String.t() | atom()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_secondary_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_group_rules_details() :: %{
        "Action" => aws_waf_rule_group_rules_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_rule_group_rules_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() :: %{
        "Reason" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_cloud_trail_details() :: %{
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_cloud_trail_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_s3_origin_config() :: %{
        "OriginAccessIdentity" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_origin_s3_origin_config() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_update_findings_v2_request() :: %{
        optional("Comment") => String.t() | atom(),
        optional("FindingIdentifiers") => list(ocsf_finding_identifier()),
        optional("MetadataUids") => list(String.t() | atom()),
        optional("SeverityId") => integer(),
        optional("StatusId") => integer()
      }

  """
  @type batch_update_findings_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_automation_rules_response() :: %{
        "Rules" => list(automation_rules_config()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_get_automation_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      load_balancer_state() :: %{
        "Code" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type load_balancer_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_list_configuration_options() :: %{
        "DefaultValue" => list(String.t() | atom()),
        "ExpressionDescription" => String.t() | atom(),
        "MaxItems" => integer(),
        "Re2Expression" => String.t() | atom()
      }

  """
  @type string_list_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_event_schemas_registry_details() :: %{
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom()
      }

  """
  @type aws_event_schemas_registry_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeValues" => list(String.t() | atom())
      }

  """
  @type aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_get_automation_rules_request() :: %{
        required("AutomationRulesArns") => list(String.t() | atom())
      }

  """
  @type batch_get_automation_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      result() :: %{
        "AccountId" => String.t() | atom(),
        "ProcessingResult" => String.t() | atom()
      }

  """
  @type result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connector_v2_request() :: %{}

  """
  @type delete_connector_v2_request() :: %{}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_details() :: %{
        "CloudTrail" => aws_guard_duty_detector_data_sources_cloud_trail_details(),
        "DnsLogs" => aws_guard_duty_detector_data_sources_dns_logs_details(),
        "FlowLogs" => aws_guard_duty_detector_data_sources_flow_logs_details(),
        "Kubernetes" => aws_guard_duty_detector_data_sources_kubernetes_details(),
        "MalwareProtection" => aws_guard_duty_detector_data_sources_malware_protection_details(),
        "S3Logs" => aws_guard_duty_detector_data_sources_s3_logs_details()
      }

  """
  @type aws_guard_duty_detector_data_sources_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow() :: %{
        "Status" => list(any())
      }

  """
  @type workflow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_insight_response() :: %{
        "InsightArn" => String.t() | atom()
      }

  """
  @type create_insight_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort_criterion() :: %{
        "Field" => String.t() | atom(),
        "SortOrder" => list(any())
      }

  """
  @type sort_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_config() :: %{
        "Actions" => list(automation_rules_action()),
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "Criteria" => automation_rules_finding_filters(),
        "Description" => String.t() | atom(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment_registry_credential() :: %{
        "Credential" => String.t() | atom(),
        "CredentialProvider" => String.t() | atom()
      }

  """
  @type aws_code_build_project_environment_registry_credential() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_backup_backup_plan_rule_details() :: %{
        "CompletionWindowMinutes" => float(),
        "CopyActions" => list(aws_backup_backup_plan_rule_copy_actions_details()),
        "EnableContinuousBackup" => boolean(),
        "Lifecycle" => aws_backup_backup_plan_lifecycle_details(),
        "RuleId" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "ScheduleExpression" => String.t() | atom(),
        "StartWindowMinutes" => float(),
        "TargetBackupVault" => String.t() | atom()
      }

  """
  @type aws_backup_backup_plan_rule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      keyword_filter() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type keyword_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product() :: %{
        "ActivationUrl" => String.t() | atom(),
        "Categories" => list(String.t() | atom()),
        "CompanyName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationTypes" => list(list(any())()),
        "MarketplaceUrl" => String.t() | atom(),
        "ProductArn" => String.t() | atom(),
        "ProductName" => String.t() | atom(),
        "ProductSubscriptionResourcePolicy" => String.t() | atom()
      }

  """
  @type product() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_route53_query_logging_config_details() :: %{
        "CloudWatchLogsLogGroupArn" => cloud_watch_logs_log_group_arn_config_details()
      }

  """
  @type aws_route53_query_logging_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration() :: %{
        "ObjectLockEnabled" => String.t() | atom(),
        "Rule" => aws_s3_bucket_object_lock_configuration_rule_details()
      }

  """
  @type aws_s3_bucket_object_lock_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_object_details() :: %{
        "Config" => aws_route53_hosted_zone_config_details(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type aws_route53_hosted_zone_object_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_capacity_reservation_specification_details() :: %{
        "CapacityReservationPreference" => String.t() | atom(),
        "CapacityReservationTarget" => aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details()
      }

  """
  @type aws_ec2_launch_template_data_capacity_reservation_specification_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_cluster_snapshot_details() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZones" => list(String.t() | atom()),
        "ClusterCreateTime" => String.t() | atom(),
        "DbClusterIdentifier" => String.t() | atom(),
        "DbClusterSnapshotAttributes" => list(aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute()),
        "DbClusterSnapshotIdentifier" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "KmsKeyId" => String.t() | atom(),
        "LicenseModel" => String.t() | atom(),
        "MasterUsername" => String.t() | atom(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "SnapshotCreateTime" => String.t() | atom(),
        "SnapshotType" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StorageEncrypted" => boolean(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_rds_db_cluster_snapshot_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      software_package() :: %{
        "Architecture" => String.t() | atom(),
        "Epoch" => String.t() | atom(),
        "FilePath" => String.t() | atom(),
        "FixedInVersion" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PackageManager" => String.t() | atom(),
        "Release" => String.t() | atom(),
        "Remediation" => String.t() | atom(),
        "SourceLayerArn" => String.t() | atom(),
        "SourceLayerHash" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type software_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_detail() :: %{
        "AuthStatus" => list(any()),
        "ClientId" => String.t() | atom(),
        "InstanceName" => String.t() | atom()
      }

  """
  @type service_now_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_range_from_to() :: %{
        "From" => integer(),
        "To" => integer()
      }

  """
  @type port_range_from_to() :: %{(String.t() | atom()) => any()}

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

      aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_restore_status() :: %{
        "CurrentRestoreRateInMegaBytesPerSecond" => float(),
        "ElapsedTimeInSeconds" => float(),
        "EstimatedTimeToCompletionInSeconds" => float(),
        "ProgressInMegaBytes" => float(),
        "SnapshotSizeInMegaBytes" => float(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_restore_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_disassociation_request() :: %{
        optional("Target") => list(),
        required("ConfigurationPolicyIdentifier") => String.t() | atom()
      }

  """
  @type start_configuration_policy_disassociation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_security_hub_v2_response() :: %{}

  """
  @type disable_security_hub_v2_response() :: %{}

  @typedoc """

  ## Example:

      resource_group_by_rule() :: %{
        "Filters" => resources_filters(),
        "GroupByField" => list(any())
      }

  """
  @type resource_group_by_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_standards_control_association_update() :: %{
        "ErrorCode" => list(any()),
        "ErrorReason" => String.t() | atom(),
        "StandardsControlAssociationUpdate" => standards_control_association_update()
      }

  """
  @type unprocessed_standards_control_association_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_finding_aggregator_request() :: %{
        optional("Regions") => list(String.t() | atom()),
        required("FindingAggregatorArn") => String.t() | atom(),
        required("RegionLinkingMode") => String.t() | atom()
      }

  """
  @type update_finding_aggregator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_code() :: %{
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom(),
        "S3ObjectVersion" => String.t() | atom(),
        "ZipFile" => String.t() | atom()
      }

  """
  @type aws_lambda_function_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_resource_record() :: %{
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_resource_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_ssl_protocols() :: %{
        "Items" => list(String.t() | atom()),
        "Quantity" => integer()
      }

  """
  @type aws_cloud_front_distribution_origin_ssl_protocols() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "DateRange" => date_range(),
        "End" => String.t() | atom(),
        "Start" => String.t() | atom()
      }

  """
  @type date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: %{
        "InstancesDistribution" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details(),
        "LaunchTemplate" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_private_dns_name_options_details() :: %{
        "EnableResourceNameDnsAAAARecord" => boolean(),
        "EnableResourceNameDnsARecord" => boolean(),
        "HostnameType" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_private_dns_name_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_configuration_policy_associations_response() :: %{
        "ConfigurationPolicyAssociationSummaries" => list(configuration_policy_association_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_configuration_policy_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: %{
        "ContainerPath" => String.t() | atom(),
        "MountOptions" => list(String.t() | atom()),
        "Size" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_sage_maker_notebook_instance_details() :: %{
        "AcceleratorTypes" => list(String.t() | atom()),
        "AdditionalCodeRepositories" => list(String.t() | atom()),
        "DefaultCodeRepository" => String.t() | atom(),
        "DirectInternetAccess" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "InstanceMetadataServiceConfiguration" => aws_sage_maker_notebook_instance_metadata_service_configuration_details(),
        "InstanceType" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "NetworkInterfaceId" => String.t() | atom(),
        "NotebookInstanceArn" => String.t() | atom(),
        "NotebookInstanceLifecycleConfigName" => String.t() | atom(),
        "NotebookInstanceName" => String.t() | atom(),
        "NotebookInstanceStatus" => String.t() | atom(),
        "PlatformIdentifier" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "RootAccess" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "SubnetId" => String.t() | atom(),
        "Url" => String.t() | atom(),
        "VolumeSizeInGB" => integer()
      }

  """
  @type aws_sage_maker_notebook_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_association_request() :: %{
        required("Target") => list()
      }

  """
  @type get_configuration_policy_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_aggregator_v2_request() :: %{}

  """
  @type delete_aggregator_v2_request() :: %{}

  @typedoc """

  ## Example:

      network_endpoint() :: %{
        "AutonomousSystem" => network_autonomous_system(),
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

      aws_cloud_trail_trail_details() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | atom(),
        "CloudWatchLogsRoleArn" => String.t() | atom(),
        "HasCustomEventSelectors" => boolean(),
        "HomeRegion" => String.t() | atom(),
        "IncludeGlobalServiceEvents" => boolean(),
        "IsMultiRegionTrail" => boolean(),
        "IsOrganizationTrail" => boolean(),
        "KmsKeyId" => String.t() | atom(),
        "LogFileValidationEnabled" => boolean(),
        "Name" => String.t() | atom(),
        "S3BucketName" => String.t() | atom(),
        "S3KeyPrefix" => String.t() | atom(),
        "SnsTopicArn" => String.t() | atom(),
        "SnsTopicName" => String.t() | atom(),
        "TrailArn" => String.t() | atom()
      }

  """
  @type aws_cloud_trail_trail_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_options_tunnel_options_details() :: %{
        "DpdTimeoutSeconds" => integer(),
        "IkeVersions" => list(String.t() | atom()),
        "OutsideIpAddress" => String.t() | atom(),
        "Phase1DhGroupNumbers" => list(integer()),
        "Phase1EncryptionAlgorithms" => list(String.t() | atom()),
        "Phase1IntegrityAlgorithms" => list(String.t() | atom()),
        "Phase1LifetimeSeconds" => integer(),
        "Phase2DhGroupNumbers" => list(integer()),
        "Phase2EncryptionAlgorithms" => list(String.t() | atom()),
        "Phase2IntegrityAlgorithms" => list(String.t() | atom()),
        "Phase2LifetimeSeconds" => integer(),
        "PreSharedKey" => String.t() | atom(),
        "RekeyFuzzPercentage" => integer(),
        "RekeyMarginTimeSeconds" => integer(),
        "ReplayWindowSize" => integer(),
        "TunnelInsideCidr" => String.t() | atom()
      }

  """
  @type aws_ec2_vpn_connection_options_tunnel_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_system_controls_details() :: %{
        "Namespace" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_system_controls_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_security_group_prefix_list_id() :: %{
        "PrefixListId" => String.t() | atom()
      }

  """
  @type aws_ec2_security_group_prefix_list_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_details() :: %{
        "AuthenticationOptions" => list(aws_ec2_client_vpn_endpoint_authentication_options_details()),
        "ClientCidrBlock" => String.t() | atom(),
        "ClientConnectOptions" => aws_ec2_client_vpn_endpoint_client_connect_options_details(),
        "ClientLoginBannerOptions" => aws_ec2_client_vpn_endpoint_client_login_banner_options_details(),
        "ClientVpnEndpointId" => String.t() | atom(),
        "ConnectionLogOptions" => aws_ec2_client_vpn_endpoint_connection_log_options_details(),
        "Description" => String.t() | atom(),
        "DnsServer" => list(String.t() | atom()),
        "SecurityGroupIdSet" => list(String.t() | atom()),
        "SelfServicePortalUrl" => String.t() | atom(),
        "ServerCertificateArn" => String.t() | atom(),
        "SessionTimeoutHours" => integer(),
        "SplitTunnel" => boolean(),
        "TransportProtocol" => String.t() | atom(),
        "VpcId" => String.t() | atom(),
        "VpnPort" => integer()
      }

  """
  @type aws_ec2_client_vpn_endpoint_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      jira_cloud_detail() :: %{
        "AuthStatus" => list(any()),
        "AuthUrl" => String.t() | atom(),
        "CloudId" => String.t() | atom(),
        "Domain" => String.t() | atom(),
        "ProjectKey" => String.t() | atom()
      }

  """
  @type jira_cloud_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group_failover() :: %{
        "StatusCodes" => aws_cloud_front_distribution_origin_group_failover_status_codes()
      }

  """
  @type aws_cloud_front_distribution_origin_group_failover() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_secrets_manager_secret_details() :: %{
        "Deleted" => boolean(),
        "Description" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RotationEnabled" => boolean(),
        "RotationLambdaArn" => String.t() | atom(),
        "RotationOccurredWithinFrequency" => boolean(),
        "RotationRules" => aws_secrets_manager_secret_rotation_rules()
      }

  """
  @type aws_secrets_manager_secret_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_network_firewall_rule_group_details() :: %{
        "Capacity" => integer(),
        "Description" => String.t() | atom(),
        "RuleGroup" => rule_group_details(),
        "RuleGroupArn" => String.t() | atom(),
        "RuleGroupId" => String.t() | atom(),
        "RuleGroupName" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_network_firewall_rule_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_details() :: %{
        "Capabilities" => aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details(),
        "Devices" => list(aws_ecs_task_definition_container_definitions_linux_parameters_devices_details()),
        "InitProcessEnabled" => boolean(),
        "MaxSwap" => integer(),
        "SharedMemorySize" => integer(),
        "Swappiness" => integer(),
        "Tmpfs" => list(aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details())
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_finding_aggregator_request() :: %{
        optional("Regions") => list(String.t() | atom()),
        required("RegionLinkingMode") => String.t() | atom()
      }

  """
  @type create_finding_aggregator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_finding_history_response() :: %{
        "NextToken" => String.t() | atom(),
        "Records" => list(finding_history_record())
      }

  """
  @type get_finding_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_automation_rules_request_item() :: %{
        "Actions" => list(automation_rules_action()),
        "Criteria" => automation_rules_finding_filters(),
        "Description" => String.t() | atom(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any())
      }

  """
  @type update_automation_rules_request_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_object_details() :: %{
        "ContentType" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "SSEKMSKeyId" => String.t() | atom(),
        "ServerSideEncryption" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type aws_s3_object_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_encryption_at_rest_options() :: %{
        "Enabled" => boolean(),
        "KmsKeyId" => String.t() | atom()
      }

  """
  @type aws_elasticsearch_domain_encryption_at_rest_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_cloud_watch_logs_details() :: %{
        "GroupName" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StreamName" => String.t() | atom()
      }

  """
  @type aws_code_build_project_logs_config_cloud_watch_logs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      health_check() :: %{
        "ConnectorStatus" => list(any()),
        "LastCheckedAt" => non_neg_integer(),
        "Message" => String.t() | atom()
      }

  """
  @type health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_members_response() :: %{}

  """
  @type disassociate_members_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_log_configuration_details() :: %{
        "LogDriver" => String.t() | atom(),
        "Options" => map(),
        "SecretOptions" => list(aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details())
      }

  """
  @type aws_ecs_task_definition_container_definitions_log_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      disable_import_findings_for_product_request() :: %{}

  """
  @type disable_import_findings_for_product_request() :: %{}

  @typedoc """

  ## Example:

      update_organization_configuration_response() :: %{}

  """
  @type update_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:

      unprocessed_security_control() :: %{
        "ErrorCode" => list(any()),
        "ErrorReason" => String.t() | atom(),
        "SecurityControlId" => String.t() | atom()
      }

  """
  @type unprocessed_security_control() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_listener_description() :: %{
        "Listener" => aws_elb_load_balancer_listener(),
        "PolicyNames" => list(String.t() | atom())
      }

  """
  @type aws_elb_load_balancer_listener_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_target() :: %{
        "ActionTargetArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type action_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_volume_attachment() :: %{
        "AttachTime" => String.t() | atom(),
        "DeleteOnTermination" => boolean(),
        "InstanceId" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_ec2_volume_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_findings_request() :: %{
        optional("Confidence") => integer(),
        optional("Criticality") => integer(),
        optional("Note") => note_update(),
        optional("RelatedFindings") => list(related_finding()),
        optional("Severity") => severity_update(),
        optional("Types") => list(String.t() | atom()),
        optional("UserDefinedFields") => map(),
        optional("VerificationState") => list(any()),
        optional("Workflow") => workflow_update(),
        required("FindingIdentifiers") => list(aws_security_finding_identifier())
      }

  """
  @type batch_update_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_unprocessed_finding() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom(),
        "FindingIdentifier" => ocsf_finding_identifier(),
        "MetadataUid" => String.t() | atom()
      }

  """
  @type batch_update_findings_v2_unprocessed_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generator_details() :: %{
        "Description" => String.t() | atom(),
        "Labels" => list(String.t() | atom()),
        "Name" => String.t() | atom()
      }

  """
  @type generator_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detection() :: %{
        "Sequence" => sequence()
      }

  """
  @type detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_app_cookie_stickiness_policy() :: %{
        "CookieName" => String.t() | atom(),
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_elb_app_cookie_stickiness_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_info_ipv6_cidr_block_set_details() :: %{
        "Ipv6CidrBlock" => String.t() | atom()
      }

  """
  @type vpc_info_ipv6_cidr_block_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_automation_rule_request() :: %{
        optional("IsTerminal") => boolean(),
        optional("RuleStatus") => list(any()),
        optional("Tags") => map(),
        required("Actions") => list(automation_rules_action()),
        required("Criteria") => automation_rules_finding_filters(),
        required("Description") => String.t() | atom(),
        required("RuleName") => String.t() | atom(),
        required("RuleOrder") => integer()
      }

  """
  @type create_automation_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_peering_connection_status_details() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type aws_ec2_vpc_peering_connection_status_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_details() :: %{
        "Label" => String.t() | atom(),
        "LoggingConfiguration" => aws_step_function_state_machine_logging_configuration_details(),
        "Name" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "StateMachineArn" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TracingConfiguration" => aws_step_function_state_machine_tracing_configuration_details(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_step_function_state_machine_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_destinations() :: %{
        "AddressDefinition" => String.t() | atom()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_destinations() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_insights_response() :: %{
        "Insights" => list(insight()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_insights_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_metadata_options() :: %{
        "HttpEndpoint" => String.t() | atom(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_launch_configuration_metadata_options() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      waf_override_action() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type waf_override_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_rest_api_details() :: %{
        "ApiKeySource" => String.t() | atom(),
        "BinaryMediaTypes" => list(String.t() | atom()),
        "CreatedDate" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EndpointConfiguration" => aws_api_gateway_endpoint_configuration(),
        "Id" => String.t() | atom(),
        "MinimumCompressionSize" => integer(),
        "Name" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_api_gateway_rest_api_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_group_policy() :: %{
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_iam_group_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_rate_based_rule_match_predicate() :: %{
        "DataId" => String.t() | atom(),
        "Negated" => boolean(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_rate_based_rule_match_predicate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor_user() :: %{
        "Account" => user_account(),
        "CredentialUid" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Uid" => String.t() | atom()
      }

  """
  @type actor_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resources_v2_request() :: %{
        optional("Filters") => resources_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_resources_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_logging_details() :: %{
        "ClusterLogging" => list(aws_eks_cluster_logging_cluster_logging_details())
      }

  """
  @type aws_eks_cluster_logging_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_rules_details() :: %{
        "Action" => aws_waf_regional_rule_group_rules_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rule_group_rules_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      standards_control_association_detail() :: %{
        "AssociationStatus" => list(any()),
        "RelatedRequirements" => list(String.t() | atom()),
        "SecurityControlArn" => String.t() | atom(),
        "SecurityControlId" => String.t() | atom(),
        "StandardsArn" => String.t() | atom(),
        "StandardsControlArns" => list(String.t() | atom()),
        "StandardsControlDescription" => String.t() | atom(),
        "StandardsControlTitle" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer(),
        "UpdatedReason" => String.t() | atom()
      }

  """
  @type standards_control_association_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_root_directory_creation_info_details() :: %{
        "OwnerGid" => String.t() | atom(),
        "OwnerUid" => String.t() | atom(),
        "Permissions" => String.t() | atom()
      }

  """
  @type aws_efs_access_point_root_directory_creation_info_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      accept_invitation_response() :: %{}

  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:

      decline_invitations_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }

  """
  @type decline_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "Subnets" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_code_build_project_vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_member() :: %{
        "DbClusterParameterGroupStatus" => String.t() | atom(),
        "DbInstanceIdentifier" => String.t() | atom(),
        "IsClusterWriter" => boolean(),
        "PromotionTier" => integer()
      }

  """
  @type aws_rds_db_cluster_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_action_target_request() :: %{
        required("Description") => String.t() | atom(),
        required("Id") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_action_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_placement_strategies_details() :: %{
        "Field" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_service_placement_strategies_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_rate_based_rule_details() :: %{
        "MatchPredicates" => list(aws_waf_rate_based_rule_match_predicate()),
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RateKey" => String.t() | atom(),
        "RateLimit" => float(),
        "RuleId" => String.t() | atom()
      }

  """
  @type aws_waf_rate_based_rule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_master_account_response() :: %{
        "Master" => invitation()
      }

  """
  @type get_master_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_automation_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_automation_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_tracing_configuration_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_step_function_state_machine_tracing_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_environment_files_details() :: %{
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_environment_files_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_api_gateway_canary_settings() :: %{
        "DeploymentId" => String.t() | atom(),
        "PercentTraffic" => float(),
        "StageVariableOverrides" => map(),
        "UseStageCache" => boolean()
      }

  """
  @type aws_api_gateway_canary_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: %{
        "ImmunityTime" => float()
      }

  """
  @type aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_enabled_products_for_import_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_enabled_products_for_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_products_response() :: %{
        "NextToken" => String.t() | atom(),
        "Products" => list(product())
      }

  """
  @type describe_products_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_web_acl_rule() :: %{
        "Action" => waf_action(),
        "ExcludedRules" => list(waf_excluded_rule()),
        "OverrideAction" => waf_override_action(),
        "Priority" => integer(),
        "RuleId" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_web_acl_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_block_association() :: %{
        "AssociationId" => String.t() | atom(),
        "CidrBlock" => String.t() | atom(),
        "CidrBlockState" => String.t() | atom()
      }

  """
  @type cidr_block_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_peering_connection_vpc_info_details() :: %{
        "CidrBlock" => String.t() | atom(),
        "CidrBlockSet" => list(vpc_info_cidr_block_set_details()),
        "Ipv6CidrBlockSet" => list(vpc_info_ipv6_cidr_block_set_details()),
        "OwnerId" => String.t() | atom(),
        "PeeringOptions" => vpc_info_peering_options_details(),
        "Region" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_vpc_peering_connection_vpc_info_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_call_action() :: %{
        "AffectedResources" => map(),
        "Api" => String.t() | atom(),
        "CallerType" => String.t() | atom(),
        "DomainDetails" => aws_api_call_action_domain_details(),
        "FirstSeen" => String.t() | atom(),
        "LastSeen" => String.t() | atom(),
        "RemoteIpDetails" => action_remote_ip_details(),
        "ServiceName" => String.t() | atom()
      }

  """
  @type aws_api_call_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_vpc_security_group() :: %{
        "Status" => String.t() | atom(),
        "VpcSecurityGroupId" => String.t() | atom()
      }

  """
  @type aws_rds_db_instance_vpc_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_details() :: %{
        "LatestRestorableTime" => String.t() | atom(),
        "DBName" => String.t() | atom(),
        "StatusInfos" => list(aws_rds_db_status_info()),
        "Engine" => String.t() | atom(),
        "VpcSecurityGroups" => list(aws_rds_db_instance_vpc_security_group()),
        "PerformanceInsightsKmsKeyId" => String.t() | atom(),
        "CACertificateIdentifier" => String.t() | atom(),
        "Timezone" => String.t() | atom(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "Iops" => integer(),
        "MonitoringInterval" => integer(),
        "ReadReplicaDBInstanceIdentifiers" => list(String.t() | atom()),
        "OptionGroupMemberships" => list(aws_rds_db_option_group_membership()),
        "PreferredBackupWindow" => String.t() | atom(),
        "PendingModifiedValues" => aws_rds_db_pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "PromotionTier" => integer(),
        "ReadReplicaSourceDBInstanceIdentifier" => String.t() | atom(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "DbInstanceStatus" => String.t() | atom(),
        "DbSecurityGroups" => list(String.t() | atom()),
        "AvailabilityZone" => String.t() | atom(),
        "CopyTagsToSnapshot" => boolean(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "DBInstanceClass" => String.t() | atom(),
        "ReadReplicaDBClusterIdentifiers" => list(String.t() | atom()),
        "EnhancedMonitoringResourceArn" => String.t() | atom(),
        "DbParameterGroups" => list(aws_rds_db_parameter_group()),
        "AutoMinorVersionUpgrade" => boolean(),
        "DbiResourceId" => String.t() | atom(),
        "TdeCredentialArn" => String.t() | atom(),
        "MasterUsername" => String.t() | atom(),
        "LicenseModel" => String.t() | atom(),
        "EnabledCloudWatchLogsExports" => list(String.t() | atom()),
        "DBInstanceIdentifier" => String.t() | atom(),
        "DBClusterIdentifier" => String.t() | atom(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t() | atom(),
        "PerformanceInsightsRetentionPeriod" => integer(),
        "InstanceCreateTime" => String.t() | atom(),
        "DomainMemberships" => list(aws_rds_db_domain_membership()),
        "MultiAz" => boolean(),
        "DbInstancePort" => integer(),
        "SecondaryAvailabilityZone" => String.t() | atom(),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t() | atom(),
        "AllocatedStorage" => integer(),
        "AssociatedRoles" => list(aws_rds_db_instance_associated_role()),
        "DbSubnetGroup" => aws_rds_db_subnet_group(),
        "MaxAllocatedStorage" => integer(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => aws_rds_db_instance_endpoint(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t() | atom(),
        "MonitoringRoleArn" => String.t() | atom(),
        "ListenerEndpoint" => aws_rds_db_instance_endpoint()
      }

  """
  @type aws_rds_db_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_security_hub_v2_request() :: %{}

  """
  @type disable_security_hub_v2_request() :: %{}

  @typedoc """

  ## Example:

      get_security_control_definition_response() :: %{
        "SecurityControlDefinition" => security_control_definition()
      }

  """
  @type get_security_control_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_inference_accelerators_details() :: %{
        "DeviceName" => String.t() | atom(),
        "DeviceType" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_inference_accelerators_details() :: %{
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

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() :: %{
        "OnDemandAllocationStrategy" => String.t() | atom(),
        "OnDemandBaseCapacity" => integer(),
        "OnDemandPercentageAboveBaseCapacity" => integer(),
        "SpotAllocationStrategy" => String.t() | atom(),
        "SpotInstancePools" => integer(),
        "SpotMaxPrice" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_kms_key_details() :: %{
        "AWSAccountId" => String.t() | atom(),
        "CreationDate" => float(),
        "Description" => String.t() | atom(),
        "KeyId" => String.t() | atom(),
        "KeyManager" => String.t() | atom(),
        "KeyRotationStatus" => boolean(),
        "KeyState" => String.t() | atom(),
        "Origin" => String.t() | atom()
      }

  """
  @type aws_kms_key_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: %{
        "LaunchTemplateSpecification" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification(),
        "Overrides" => list(aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details())
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_tls_details() :: %{
        "CertificateAuthorityArnList" => list(String.t() | atom()),
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_tls_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_findings_response() :: %{}

  """
  @type update_findings_response() :: %{}

  @typedoc """

  ## Example:

      aws_s3_bucket_details() :: %{
        "AccessControlList" => String.t() | atom(),
        "BucketLifecycleConfiguration" => aws_s3_bucket_bucket_lifecycle_configuration_details(),
        "BucketLoggingConfiguration" => aws_s3_bucket_logging_configuration(),
        "BucketNotificationConfiguration" => aws_s3_bucket_notification_configuration(),
        "BucketVersioningConfiguration" => aws_s3_bucket_bucket_versioning_configuration(),
        "BucketWebsiteConfiguration" => aws_s3_bucket_website_configuration(),
        "CreatedAt" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ObjectLockConfiguration" => aws_s3_bucket_object_lock_configuration(),
        "OwnerAccountId" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "OwnerName" => String.t() | atom(),
        "PublicAccessBlockConfiguration" => aws_s3_account_public_access_block_details(),
        "ServerSideEncryptionConfiguration" => aws_s3_bucket_server_side_encryption_configuration()
      }

  """
  @type aws_s3_bucket_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_action_v2() :: %{
        "ExternalIntegrationConfiguration" => external_integration_configuration(),
        "FindingFieldsUpdate" => automation_rules_finding_fields_update_v2(),
        "Type" => list(any())
      }

  """
  @type automation_rules_action_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_policy_details() :: %{
        "Description" => String.t() | atom(),
        "FirewallPolicy" => firewall_policy_details(),
        "FirewallPolicyArn" => String.t() | atom(),
        "FirewallPolicyId" => String.t() | atom(),
        "FirewallPolicyName" => String.t() | atom()
      }

  """
  @type aws_network_firewall_firewall_policy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_by_result() :: %{
        "GroupByField" => String.t() | atom(),
        "GroupByValues" => list(group_by_value())
      }

  """
  @type group_by_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_resources_vpc_config_details() :: %{
        "EndpointPublicAccess" => boolean(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type aws_eks_cluster_resources_vpc_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_enabled_products_for_import_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProductSubscriptions" => list(String.t() | atom())
      }

  """
  @type list_enabled_products_for_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_map_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => map_filter()
      }

  """
  @type resources_map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_domain_endpoint_options_details() :: %{
        "CustomEndpoint" => String.t() | atom(),
        "CustomEndpointCertificateArn" => String.t() | atom(),
        "CustomEndpointEnabled" => boolean(),
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => String.t() | atom()
      }

  """
  @type aws_open_search_service_domain_domain_endpoint_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() :: %{
        "AccessPointId" => String.t() | atom(),
        "Iam" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rate_based_rule_match_predicate() :: %{
        "DataId" => String.t() | atom(),
        "Negated" => boolean(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rate_based_rule_match_predicate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_posix_user_details() :: %{
        "Gid" => String.t() | atom(),
        "SecondaryGids" => list(String.t() | atom()),
        "Uid" => String.t() | atom()
      }

  """
  @type aws_efs_access_point_posix_user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_rule_predicate_list_details() :: %{
        "DataId" => String.t() | atom(),
        "Negated" => boolean(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_rule_predicate_list_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_range() :: %{
        "Begin" => integer(),
        "End" => integer()
      }

  """
  @type port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configuration_policies_response() :: %{
        "ConfigurationPolicySummaries" => list(configuration_policy_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_configuration_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_ldap_server_metadata_details() :: %{
        "Hosts" => list(String.t() | atom()),
        "RoleBase" => String.t() | atom(),
        "RoleName" => String.t() | atom(),
        "RoleSearchMatching" => String.t() | atom(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountUsername" => String.t() | atom(),
        "UserBase" => String.t() | atom(),
        "UserRoleName" => String.t() | atom(),
        "UserSearchMatching" => String.t() | atom(),
        "UserSearchSubtree" => boolean()
      }

  """
  @type aws_amazon_mq_broker_ldap_server_metadata_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_provider_fields() :: %{
        "Confidence" => integer(),
        "Criticality" => integer(),
        "RelatedFindings" => list(related_finding()),
        "Severity" => finding_provider_severity(),
        "Types" => list(String.t() | atom())
      }

  """
  @type finding_provider_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnableStandards") => list(any()),
        optional("OrganizationConfiguration") => organization_configuration(),
        required("AutoEnable") => boolean()
      }

  """
  @type update_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        optional("Feature") => list(any()),
        required("AdminAccountId") => String.t() | atom()
      }

  """
  @type enable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_replication_subnet_group_details() :: %{
        "ReplicationSubnetGroupIdentifier" => String.t() | atom()
      }

  """
  @type aws_dms_replication_instance_replication_subnet_group_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_sns_topic_subscription() :: %{
        "Endpoint" => String.t() | atom(),
        "Protocol" => String.t() | atom()
      }

  """
  @type aws_sns_topic_subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_config_details() :: %{
        "Comment" => String.t() | atom()
      }

  """
  @type aws_route53_hosted_zone_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      external_integration_configuration() :: %{
        "ConnectorArn" => String.t() | atom()
      }

  """
  @type external_integration_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_outputs_details() :: %{
        "Description" => String.t() | atom(),
        "OutputKey" => String.t() | atom(),
        "OutputValue" => String.t() | atom()
      }

  """
  @type aws_cloud_formation_stack_outputs_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat_intel_indicator() :: %{
        "Category" => list(any()),
        "LastObservedAt" => String.t() | atom(),
        "Source" => String.t() | atom(),
        "SourceUrl" => String.t() | atom(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type threat_intel_indicator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_findings_response() :: %{
        "ProcessedFindings" => list(aws_security_finding_identifier()),
        "UnprocessedFindings" => list(batch_update_findings_unprocessed_finding())
      }

  """
  @type batch_update_findings_response() :: %{(String.t() | atom()) => any()}

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

      get_finding_statistics_v2_request() :: %{
        optional("MaxStatisticResults") => integer(),
        optional("SortOrder") => list(any()),
        required("GroupByRules") => list(group_by_rule())
      }

  """
  @type get_finding_statistics_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "ActionType" => String.t() | atom(),
        "AwsApiCallAction" => aws_api_call_action(),
        "DnsRequestAction" => dns_request_action(),
        "NetworkConnectionAction" => network_connection_action(),
        "PortProbeAction" => port_probe_action()
      }

  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_log_publishing_option() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | atom(),
        "Enabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_log_publishing_option() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: %{
        "AuthenticationType" => String.t() | atom(),
        "LambdaAuthorizerConfig" => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
        "OpenIdConnectConfig" => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
        "UserPoolConfig" => aws_app_sync_graph_ql_api_user_pool_config_details()
      }

  """
  @type aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_connectors_v2_request() :: %{
        optional("ConnectorStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProviderName") => list(any())
      }

  """
  @type list_connectors_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_data_identifiers_detections() :: %{
        "Arn" => String.t() | atom(),
        "Count" => float(),
        "Name" => String.t() | atom(),
        "Occurrences" => occurrences()
      }

  """
  @type custom_data_identifiers_detections() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | atom(),
        "FindingAggregatorArn" => String.t() | atom(),
        "RegionLinkingMode" => String.t() | atom(),
        "Regions" => list(String.t() | atom())
      }

  """
  @type create_finding_aggregator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_details() :: %{
        "DataSources" => aws_guard_duty_detector_data_sources_details(),
        "Features" => list(aws_guard_duty_detector_features_details()),
        "FindingPublishingFrequency" => String.t() | atom(),
        "ServiceRole" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_service_software_options() :: %{
        "AutomatedUpdateDate" => String.t() | atom(),
        "Cancellable" => boolean(),
        "CurrentVersion" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "NewVersion" => String.t() | atom(),
        "UpdateAvailable" => boolean(),
        "UpdateStatus" => String.t() | atom()
      }

  """
  @type aws_elasticsearch_domain_service_software_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateful_rule_group_references_details() :: %{
        "ResourceArn" => String.t() | atom()
      }

  """
  @type firewall_policy_stateful_rule_group_references_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_iam_permissions_boundary() :: %{
        "PermissionsBoundaryArn" => String.t() | atom(),
        "PermissionsBoundaryType" => String.t() | atom()
      }

  """
  @type aws_iam_permissions_boundary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_vault_details() :: %{
        "AccessPolicy" => String.t() | atom(),
        "BackupVaultArn" => String.t() | atom(),
        "BackupVaultName" => String.t() | atom(),
        "EncryptionKeyArn" => String.t() | atom(),
        "Notifications" => aws_backup_backup_vault_notifications_details()
      }

  """
  @type aws_backup_backup_vault_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() :: %{
        "SamlProviderArn" => String.t() | atom(),
        "SelfServiceSamlProviderArn" => String.t() | atom()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      propagating_vgw_set_details() :: %{
        "GatewayId" => String.t() | atom()
      }

  """
  @type propagating_vgw_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_invitations_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type delete_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_import_findings_response() :: %{
        "FailedCount" => integer(),
        "FailedFindings" => list(import_findings_error()),
        "SuccessCount" => integer()
      }

  """
  @type batch_import_findings_response() :: %{(String.t() | atom()) => any()}

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

      aws_wafv2_rules_action_count_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_rules_action_count_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_xray_encryption_config_details() :: %{
        "KeyId" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_xray_encryption_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("Feature") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ocsf_date_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => date_filter()
      }

  """
  @type ocsf_date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_attributes() :: %{
        "AccessLog" => aws_elb_load_balancer_access_log(),
        "AdditionalAttributes" => list(aws_elb_load_balancer_additional_attribute()),
        "ConnectionDraining" => aws_elb_load_balancer_connection_draining(),
        "ConnectionSettings" => aws_elb_load_balancer_connection_settings(),
        "CrossZoneLoadBalancing" => aws_elb_load_balancer_cross_zone_load_balancing()
      }

  """
  @type aws_elb_load_balancer_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      standards_control_association_update() :: %{
        "AssociationStatus" => list(any()),
        "SecurityControlId" => String.t() | atom(),
        "StandardsArn" => String.t() | atom(),
        "UpdatedReason" => String.t() | atom()
      }

  """
  @type standards_control_association_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      rule_group_details() :: %{
        "RuleVariables" => rule_group_variables(),
        "RulesSource" => rule_group_source()
      }

  """
  @type rule_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_policy_request() :: %{
        optional("ConfigurationPolicy") => list(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("UpdatedReason") => String.t() | atom()
      }

  """
  @type update_configuration_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_details() :: %{
        "AvailabilityZones" => list(String.t() | atom()),
        "BackendServerDescriptions" => list(aws_elb_load_balancer_backend_server_description()),
        "CanonicalHostedZoneName" => String.t() | atom(),
        "CanonicalHostedZoneNameID" => String.t() | atom(),
        "CreatedTime" => String.t() | atom(),
        "DnsName" => String.t() | atom(),
        "HealthCheck" => aws_elb_load_balancer_health_check(),
        "Instances" => list(aws_elb_load_balancer_instance()),
        "ListenerDescriptions" => list(aws_elb_load_balancer_listener_description()),
        "LoadBalancerAttributes" => aws_elb_load_balancer_attributes(),
        "LoadBalancerName" => String.t() | atom(),
        "Policies" => aws_elb_load_balancer_policies(),
        "Scheme" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "SourceSecurityGroup" => aws_elb_load_balancer_source_security_group(),
        "Subnets" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat() :: %{
        "FilePaths" => list(file_paths()),
        "ItemCount" => integer(),
        "Name" => String.t() | atom(),
        "Severity" => String.t() | atom()
      }

  """
  @type threat() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ssm_patch_compliance_details() :: %{
        "Patch" => aws_ssm_patch()
      }

  """
  @type aws_ssm_patch_compliance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_hub_response() :: %{
        "AutoEnableControls" => boolean(),
        "ControlFindingGenerator" => list(any()),
        "HubArn" => String.t() | atom(),
        "SubscribedAt" => String.t() | atom()
      }

  """
  @type describe_hub_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_controller_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_service_deployment_controller_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type internal_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_details() :: %{
        "IamInstanceProfileArn" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "IpV4Addresses" => list(String.t() | atom()),
        "IpV6Addresses" => list(String.t() | atom()),
        "KeyName" => String.t() | atom(),
        "LaunchedAt" => String.t() | atom(),
        "MetadataOptions" => aws_ec2_instance_metadata_options(),
        "Monitoring" => aws_ec2_instance_monitoring_details(),
        "NetworkInterfaces" => list(aws_ec2_instance_network_interfaces_details()),
        "SubnetId" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "VirtualizationType" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_user_id_group_pair() :: %{
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "PeeringStatus" => String.t() | atom(),
        "UserId" => String.t() | atom(),
        "VpcId" => String.t() | atom(),
        "VpcPeeringConnectionId" => String.t() | atom()
      }

  """
  @type aws_ec2_security_group_user_id_group_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_import_findings_request() :: %{
        required("Findings") => list(aws_security_finding())
      }

  """
  @type batch_import_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_projection() :: %{
        "NonKeyAttributes" => list(String.t() | atom()),
        "ProjectionType" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_projection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_automation_rule_v2_request() :: %{}

  """
  @type delete_automation_rule_v2_request() :: %{}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_vpc_options_details() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type aws_open_search_service_domain_vpc_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      composite_filter() :: %{
        "BooleanFilters" => list(ocsf_boolean_filter()),
        "DateFilters" => list(ocsf_date_filter()),
        "IpFilters" => list(ocsf_ip_filter()),
        "MapFilters" => list(ocsf_map_filter()),
        "NestedCompositeFilters" => list(composite_filter()),
        "NumberFilters" => list(ocsf_number_filter()),
        "Operator" => list(any()),
        "StringFilters" => list(ocsf_string_filter())
      }

  """
  @type composite_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_insight_response() :: %{
        "InsightArn" => String.t() | atom()
      }

  """
  @type delete_insight_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_invitations_count_request() :: %{}

  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:

      get_resources_v2_response() :: %{
        "NextToken" => String.t() | atom(),
        "Resources" => list(resource_result())
      }

  """
  @type get_resources_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_action_details() :: %{
        "Allow" => aws_wafv2_action_allow_details(),
        "Block" => aws_wafv2_action_block_details(),
        "Captcha" => aws_wafv2_rules_action_captcha_details(),
        "Count" => aws_wafv2_rules_action_count_details()
      }

  """
  @type aws_wafv2_rules_action_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_security_controls_response() :: %{
        "SecurityControls" => list(security_control()),
        "UnprocessedIds" => list(unprocessed_security_control())
      }

  """
  @type batch_get_security_controls_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_details() :: %{
        "DockerVolumeConfiguration" => aws_ecs_task_definition_volumes_docker_volume_configuration_details(),
        "EfsVolumeConfiguration" => aws_ecs_task_definition_volumes_efs_volume_configuration_details(),
        "Host" => aws_ecs_task_definition_volumes_host_details(),
        "Name" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_volumes_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_user_pool_config_details() :: %{
        "AppIdClientRegex" => String.t() | atom(),
        "AwsRegion" => String.t() | atom(),
        "DefaultAction" => String.t() | atom(),
        "UserPoolId" => String.t() | atom()
      }

  """
  @type aws_app_sync_graph_ql_api_user_pool_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_lifecycle_details() :: %{
        "DeleteAfterDays" => float(),
        "MoveToColdStorageAfterDays" => float()
      }

  """
  @type aws_backup_backup_plan_lifecycle_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_processor_feature() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_rds_db_processor_feature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_details() :: %{
        "Command" => list(String.t() | atom()),
        "MemoryReservation" => integer(),
        "StartTimeout" => integer(),
        "LinuxParameters" => aws_ecs_task_definition_container_definitions_linux_parameters_details(),
        "PortMappings" => list(aws_ecs_task_definition_container_definitions_port_mappings_details()),
        "Hostname" => String.t() | atom(),
        "Privileged" => boolean(),
        "WorkingDirectory" => String.t() | atom(),
        "Image" => String.t() | atom(),
        "EnvironmentFiles" => list(aws_ecs_task_definition_container_definitions_environment_files_details()),
        "Ulimits" => list(aws_ecs_task_definition_container_definitions_ulimits_details()),
        "StopTimeout" => integer(),
        "ExtraHosts" => list(aws_ecs_task_definition_container_definitions_extra_hosts_details()),
        "LogConfiguration" => aws_ecs_task_definition_container_definitions_log_configuration_details(),
        "Secrets" => list(aws_ecs_task_definition_container_definitions_secrets_details()),
        "DockerSecurityOptions" => list(String.t() | atom()),
        "SystemControls" => list(aws_ecs_task_definition_container_definitions_system_controls_details()),
        "HealthCheck" => aws_ecs_task_definition_container_definitions_health_check_details(),
        "DnsServers" => list(String.t() | atom()),
        "PseudoTerminal" => boolean(),
        "RepositoryCredentials" => aws_ecs_task_definition_container_definitions_repository_credentials_details(),
        "DockerLabels" => map(),
        "DisableNetworking" => boolean(),
        "User" => String.t() | atom(),
        "Environment" => list(aws_ecs_task_definition_container_definitions_environment_details()),
        "FirelensConfiguration" => aws_ecs_task_definition_container_definitions_firelens_configuration_details(),
        "MountPoints" => list(aws_ecs_task_definition_container_definitions_mount_points_details()),
        "VolumesFrom" => list(aws_ecs_task_definition_container_definitions_volumes_from_details()),
        "DependsOn" => list(aws_ecs_task_definition_container_definitions_depends_on_details()),
        "DnsSearchDomains" => list(String.t() | atom()),
        "Interactive" => boolean(),
        "Links" => list(String.t() | atom()),
        "ResourceRequirements" => list(aws_ecs_task_definition_container_definitions_resource_requirements_details()),
        "Essential" => boolean(),
        "Name" => String.t() | atom(),
        "ReadonlyRootFilesystem" => boolean(),
        "EntryPoint" => list(String.t() | atom()),
        "Cpu" => integer(),
        "Memory" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_node_to_node_encryption_options_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_node_to_node_encryption_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      city() :: %{
        "CityName" => String.t() | atom()
      }

  """
  @type city() :: %{(String.t() | atom()) => any()}

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

      association_filters() :: %{
        "AssociationStatus" => list(any()),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | atom()
      }

  """
  @type association_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: %{
        "BlockDurationMinutes" => integer(),
        "InstanceInterruptionBehavior" => String.t() | atom(),
        "MaxPrice" => String.t() | atom(),
        "SpotInstanceType" => String.t() | atom(),
        "ValidUntil" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_details() :: %{
        "AcceleratorCount" => aws_ec2_launch_template_data_instance_requirements_accelerator_count_details(),
        "AcceleratorManufacturers" => list(String.t() | atom()),
        "AcceleratorNames" => list(String.t() | atom()),
        "AcceleratorTotalMemoryMiB" => aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details(),
        "AcceleratorTypes" => list(String.t() | atom()),
        "BareMetal" => String.t() | atom(),
        "BaselineEbsBandwidthMbps" => aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details(),
        "BurstablePerformance" => String.t() | atom(),
        "CpuManufacturers" => list(String.t() | atom()),
        "ExcludedInstanceTypes" => list(String.t() | atom()),
        "InstanceGenerations" => list(String.t() | atom()),
        "LocalStorage" => String.t() | atom(),
        "LocalStorageTypes" => list(String.t() | atom()),
        "MemoryGiBPerVCpu" => aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details(),
        "MemoryMiB" => aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details(),
        "NetworkInterfaceCount" => aws_ec2_launch_template_data_instance_requirements_network_interface_count_details(),
        "OnDemandMaxPricePercentageOverLowestPrice" => integer(),
        "RequireHibernateSupport" => boolean(),
        "SpotMaxPricePercentageOverLowestPrice" => integer(),
        "TotalLocalStorageGB" => aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details(),
        "VCpuCount" => aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OnlyAssociated") => boolean()
      }

  """
  @type list_members_request() :: %{(String.t() | atom()) => any()}

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

      automation_rules_finding_fields_update_v2() :: %{
        "Comment" => String.t() | atom(),
        "SeverityId" => integer(),
        "StatusId" => integer()
      }

  """
  @type automation_rules_finding_fields_update_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_ip_permission() :: %{
        "FromPort" => integer(),
        "IpProtocol" => String.t() | atom(),
        "IpRanges" => list(aws_ec2_security_group_ip_range()),
        "Ipv6Ranges" => list(aws_ec2_security_group_ipv6_range()),
        "PrefixListIds" => list(aws_ec2_security_group_prefix_list_id()),
        "ToPort" => integer(),
        "UserIdGroupPairs" => list(aws_ec2_security_group_user_id_group_pair())
      }

  """
  @type aws_ec2_security_group_ip_permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_details() :: %{
        "Destinations" => list(aws_step_function_state_machine_logging_configuration_destinations_details()),
        "IncludeExecutionData" => boolean(),
        "Level" => String.t() | atom()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_details() :: %{
        "Category" => String.t() | atom(),
        "CustomerGatewayConfiguration" => String.t() | atom(),
        "CustomerGatewayId" => String.t() | atom(),
        "Options" => aws_ec2_vpn_connection_options_details(),
        "Routes" => list(aws_ec2_vpn_connection_routes_details()),
        "State" => String.t() | atom(),
        "TransitGatewayId" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "VgwTelemetry" => list(aws_ec2_vpn_connection_vgw_telemetry_details()),
        "VpnConnectionId" => String.t() | atom(),
        "VpnGatewayId" => String.t() | atom()
      }

  """
  @type aws_ec2_vpn_connection_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resources_statistics_v2_response() :: %{
        "GroupByResults" => list(group_by_result())
      }

  """
  @type get_resources_statistics_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateless_rule_group_references_details() :: %{
        "Priority" => integer(),
        "ResourceArn" => String.t() | atom()
      }

  """
  @type firewall_policy_stateless_rule_group_references_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      ocsf_boolean_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => boolean_filter()
      }

  """
  @type ocsf_boolean_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: %{
        "Enable" => boolean(),
        "Rollback" => boolean()
      }

  """
  @type aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_enabled_standards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StandardsSubscriptionArns") => list(String.t() | atom())
      }

  """
  @type get_enabled_standards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_history_record() :: %{
        "FindingCreated" => boolean(),
        "FindingIdentifier" => aws_security_finding_identifier(),
        "NextToken" => String.t() | atom(),
        "UpdateSource" => finding_history_update_source(),
        "UpdateTime" => non_neg_integer(),
        "Updates" => list(finding_history_update())
      }

  """
  @type finding_history_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_default_capacity_provider_strategy_details() :: %{
        "Base" => integer(),
        "CapacityProvider" => String.t() | atom(),
        "Weight" => integer()
      }

  """
  @type aws_ecs_cluster_default_capacity_provider_strategy_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      jira_cloud_provider_configuration() :: %{
        "ProjectKey" => String.t() | atom()
      }

  """
  @type jira_cloud_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_rule_group_rules_action_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_rule_group_rules_action_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_details() :: %{
        "Artifacts" => list(aws_code_build_project_artifacts_details()),
        "EncryptionKey" => String.t() | atom(),
        "Environment" => aws_code_build_project_environment(),
        "LogsConfig" => aws_code_build_project_logs_config_details(),
        "Name" => String.t() | atom(),
        "SecondaryArtifacts" => list(aws_code_build_project_artifacts_details()),
        "ServiceRole" => String.t() | atom(),
        "Source" => aws_code_build_project_source(),
        "VpcConfig" => aws_code_build_project_vpc_config()
      }

  """
  @type aws_code_build_project_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_date_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => date_filter()
      }

  """
  @type resources_date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_instance_monitoring_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_auto_scaling_launch_configuration_instance_monitoring_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      standards_subscription_request() :: %{
        "StandardsArn" => String.t() | atom(),
        "StandardsInput" => map()
      }

  """
  @type standards_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_details() :: %{
        "AccessPolicies" => String.t() | atom(),
        "DomainEndpointOptions" => aws_elasticsearch_domain_domain_endpoint_options(),
        "DomainId" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "ElasticsearchClusterConfig" => aws_elasticsearch_domain_elasticsearch_cluster_config_details(),
        "ElasticsearchVersion" => String.t() | atom(),
        "EncryptionAtRestOptions" => aws_elasticsearch_domain_encryption_at_rest_options(),
        "Endpoint" => String.t() | atom(),
        "Endpoints" => map(),
        "LogPublishingOptions" => aws_elasticsearch_domain_log_publishing_options(),
        "NodeToNodeEncryptionOptions" => aws_elasticsearch_domain_node_to_node_encryption_options(),
        "ServiceSoftwareOptions" => aws_elasticsearch_domain_service_software_options(),
        "VPCOptions" => aws_elasticsearch_domain_vpc_options()
      }

  """
  @type aws_elasticsearch_domain_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_monitoring_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_monitoring_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_endpoint_service_service_type_details() :: %{
        "ServiceType" => String.t() | atom()
      }

  """
  @type aws_ec2_vpc_endpoint_service_service_type_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_security_group() :: %{
        "GroupId" => String.t() | atom(),
        "GroupName" => String.t() | atom()
      }

  """
  @type aws_ec2_network_interface_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_secrets_manager_secret_rotation_rules() :: %{
        "AutomaticallyAfterDays" => integer()
      }

  """
  @type aws_secrets_manager_secret_rotation_rules() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_details() :: %{
        "ActiveDirectory" => aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details(),
        "FederatedAuthentication" => aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details(),
        "MutualAuthentication" => aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_by_default() :: %{
        "KMSMasterKeyID" => String.t() | atom(),
        "SSEAlgorithm" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_server_side_encryption_by_default() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_products_v2_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProductsV2" => list(product_v2())
      }

  """
  @type describe_products_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rule_group_details() :: %{
        "Arn" => String.t() | atom(),
        "Capacity" => float(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Rules" => list(aws_wafv2_rules_details()),
        "Scope" => String.t() | atom(),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_rule_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "ConnectorArn" => String.t() | atom(),
        "ConnectorId" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProviderSummary" => provider_summary()
      }

  """
  @type connector_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_association_response() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | atom(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | atom(),
        "TargetId" => String.t() | atom(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type start_configuration_policy_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stateless_custom_publish_metric_action() :: %{
        "Dimensions" => list(stateless_custom_publish_metric_action_dimension())
      }

  """
  @type stateless_custom_publish_metric_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origins() :: %{
        "Items" => list(aws_cloud_front_distribution_origin_item())
      }

  """
  @type aws_cloud_front_distribution_origins() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_finding_aggregators_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_finding_aggregators_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network() :: %{
        "DestinationDomain" => String.t() | atom(),
        "DestinationIpV4" => String.t() | atom(),
        "DestinationIpV6" => String.t() | atom(),
        "DestinationPort" => integer(),
        "Direction" => list(any()),
        "OpenPortRange" => port_range(),
        "Protocol" => String.t() | atom(),
        "SourceDomain" => String.t() | atom(),
        "SourceIpV4" => String.t() | atom(),
        "SourceIpV6" => String.t() | atom(),
        "SourceMac" => String.t() | atom(),
        "SourcePort" => integer()
      }

  """
  @type network() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_stream_specification() :: %{
        "StreamEnabled" => boolean(),
        "StreamViewType" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_stream_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group_subnet() :: %{
        "SubnetAvailabilityZone" => aws_rds_db_subnet_group_subnet_availability_zone(),
        "SubnetIdentifier" => String.t() | atom(),
        "SubnetStatus" => String.t() | atom()
      }

  """
  @type aws_rds_db_subnet_group_subnet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_detail() :: %{
        "Destination" => String.t() | atom(),
        "Events" => list(String.t() | atom()),
        "Filter" => aws_s3_bucket_notification_configuration_filter(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_notification_configuration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_hub_v2_request() :: %{}

  """
  @type describe_security_hub_v2_request() :: %{}

  @typedoc """

  ## Example:

      list_automation_rules_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_automation_rules_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

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

      aws_api_gateway_endpoint_configuration() :: %{
        "Types" => list(String.t() | atom())
      }

  """
  @type aws_api_gateway_endpoint_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecr_repository_image_scanning_configuration_details() :: %{
        "ScanOnPush" => boolean()
      }

  """
  @type aws_ecr_repository_image_scanning_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_insight_request() :: %{}

  """
  @type delete_insight_request() :: %{}

  @typedoc """

  ## Example:

      aws_ec2_vpc_peering_connection_details() :: %{
        "AccepterVpcInfo" => aws_ec2_vpc_peering_connection_vpc_info_details(),
        "ExpirationTime" => String.t() | atom(),
        "RequesterVpcInfo" => aws_ec2_vpc_peering_connection_vpc_info_details(),
        "Status" => aws_ec2_vpc_peering_connection_status_details(),
        "VpcPeeringConnectionId" => String.t() | atom()
      }

  """
  @type aws_ec2_vpc_peering_connection_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_role_policy() :: %{
        "PolicyName" => String.t() | atom()
      }

  """
  @type aws_iam_role_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_iam_instance_profile_details() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_iam_instance_profile_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_service_software_options_details() :: %{
        "AutomatedUpdateDate" => String.t() | atom(),
        "Cancellable" => boolean(),
        "CurrentVersion" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "NewVersion" => String.t() | atom(),
        "OptionalDeployment" => boolean(),
        "UpdateAvailable" => boolean(),
        "UpdateStatus" => String.t() | atom()
      }

  """
  @type aws_open_search_service_domain_service_software_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_master_user_options_details() :: %{
        "MasterUserArn" => String.t() | atom(),
        "MasterUserName" => String.t() | atom(),
        "MasterUserPassword" => String.t() | atom()
      }

  """
  @type aws_open_search_service_domain_master_user_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_s3_logs_details() :: %{
        "EncryptionDisabled" => boolean(),
        "Location" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_code_build_project_logs_config_s3_logs_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_action() :: %{
        "FindingFieldsUpdate" => automation_rules_finding_fields_update(),
        "Type" => list(any())
      }

  """
  @type automation_rules_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_details() :: %{
        "DeleteProtection" => boolean(),
        "Description" => String.t() | atom(),
        "FirewallArn" => String.t() | atom(),
        "FirewallId" => String.t() | atom(),
        "FirewallName" => String.t() | atom(),
        "FirewallPolicyArn" => String.t() | atom(),
        "FirewallPolicyChangeProtection" => boolean(),
        "SubnetChangeProtection" => boolean(),
        "SubnetMappings" => list(aws_network_firewall_firewall_subnet_mappings_details()),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_network_firewall_firewall_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_ulimits_details() :: %{
        "HardLimit" => integer(),
        "Name" => String.t() | atom(),
        "SoftLimit" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_ulimits_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_findings_request() :: %{
        optional("Note") => note_update(),
        optional("RecordState") => list(any()),
        required("Filters") => aws_security_finding_filters()
      }

  """
  @type update_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_standards_control_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "StandardsControlAssociationSummaries" => list(standards_control_association_summary())
      }

  """
  @type list_standards_control_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes() :: %{
        "DestinationPorts" => list(rule_group_source_stateless_rule_match_attributes_destination_ports()),
        "Destinations" => list(rule_group_source_stateless_rule_match_attributes_destinations()),
        "Protocols" => list(integer()),
        "SourcePorts" => list(rule_group_source_stateless_rule_match_attributes_source_ports()),
        "Sources" => list(rule_group_source_stateless_rule_match_attributes_sources()),
        "TcpFlags" => list(rule_group_source_stateless_rule_match_attributes_tcp_flags())
      }

  """
  @type rule_group_source_stateless_rule_match_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ssm_compliance_summary() :: %{
        "ComplianceType" => String.t() | atom(),
        "CompliantCriticalCount" => integer(),
        "CompliantHighCount" => integer(),
        "CompliantInformationalCount" => integer(),
        "CompliantLowCount" => integer(),
        "CompliantMediumCount" => integer(),
        "CompliantUnspecifiedCount" => integer(),
        "ExecutionType" => String.t() | atom(),
        "NonCompliantCriticalCount" => integer(),
        "NonCompliantHighCount" => integer(),
        "NonCompliantInformationalCount" => integer(),
        "NonCompliantLowCount" => integer(),
        "NonCompliantMediumCount" => integer(),
        "NonCompliantUnspecifiedCount" => integer(),
        "OverallSeverity" => String.t() | atom(),
        "PatchBaselineId" => String.t() | atom(),
        "PatchGroup" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_ssm_compliance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: %{
        "Name" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_key_usage() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type aws_certificate_manager_certificate_key_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_control_request() :: %{
        optional("LastUpdateReason") => String.t() | atom(),
        required("Parameters") => map(),
        required("SecurityControlId") => String.t() | atom()
      }

  """
  @type update_security_control_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_ec2_security_group() :: %{
        "Ec2SecurityGroupId" => String.t() | atom(),
        "Ec2SecurityGroupName" => String.t() | atom(),
        "Ec2SecurityGroupOwnerId" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_rds_db_security_group_ec2_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_policy_response() :: %{
        "Arn" => String.t() | atom(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type update_configuration_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_details() :: %{
        "DBName" => String.t() | atom(),
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "VpcSecurityGroups" => list(aws_redshift_cluster_vpc_security_group()),
        "Encrypted" => boolean(),
        "PendingActions" => list(String.t() | atom()),
        "EnhancedVpcRouting" => boolean(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "ClusterAvailabilityStatus" => String.t() | atom(),
        "ClusterRevisionNumber" => String.t() | atom(),
        "RestoreStatus" => aws_redshift_cluster_restore_status(),
        "PendingModifiedValues" => aws_redshift_cluster_pending_modified_values(),
        "KmsKeyId" => String.t() | atom(),
        "VpcId" => String.t() | atom(),
        "ClusterSecurityGroups" => list(aws_redshift_cluster_cluster_security_group()),
        "AvailabilityZone" => String.t() | atom(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "SnapshotScheduleState" => String.t() | atom(),
        "ExpectedNextSnapshotScheduleTimeStatus" => String.t() | atom(),
        "ResizeInfo" => aws_redshift_cluster_resize_info(),
        "ClusterCreateTime" => String.t() | atom(),
        "AllowVersionUpgrade" => boolean(),
        "ClusterSnapshotCopyStatus" => aws_redshift_cluster_cluster_snapshot_copy_status(),
        "NodeType" => String.t() | atom(),
        "HsmStatus" => aws_redshift_cluster_hsm_status(),
        "MaintenanceTrackName" => String.t() | atom(),
        "ClusterSubnetGroupName" => String.t() | atom(),
        "ClusterNodes" => list(aws_redshift_cluster_cluster_node()),
        "ClusterStatus" => String.t() | atom(),
        "MasterUsername" => String.t() | atom(),
        "ClusterVersion" => String.t() | atom(),
        "ClusterIdentifier" => String.t() | atom(),
        "ClusterPublicKey" => String.t() | atom(),
        "NumberOfNodes" => integer(),
        "IamRoles" => list(aws_redshift_cluster_iam_role()),
        "NextMaintenanceWindowStartTime" => String.t() | atom(),
        "PubliclyAccessible" => boolean(),
        "ElasticResizeNumberOfNodeOptions" => String.t() | atom(),
        "Endpoint" => aws_redshift_cluster_endpoint(),
        "SnapshotScheduleIdentifier" => String.t() | atom(),
        "ElasticIpStatus" => aws_redshift_cluster_elastic_ip_status(),
        "DeferredMaintenanceWindows" => list(aws_redshift_cluster_deferred_maintenance_window()),
        "ClusterParameterGroups" => list(aws_redshift_cluster_cluster_parameter_group()),
        "ExpectedNextSnapshotScheduleTime" => String.t() | atom(),
        "LoggingStatus" => aws_redshift_cluster_logging_status()
      }

  """
  @type aws_redshift_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_action_target_response() :: %{
        "ActionTargetArn" => String.t() | atom()
      }

  """
  @type delete_action_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_configuration() :: %{
        "Rules" => list(aws_s3_bucket_server_side_encryption_rule())
      }

  """
  @type aws_s3_bucket_server_side_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_invitations_count_response() :: %{
        "InvitationsCount" => integer()
      }

  """
  @type get_invitations_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_v2_request() :: %{
        optional("Filters") => ocsf_finding_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_findings_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_action_allow_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_action_allow_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_details() :: %{
        "ResultConfiguration" => aws_athena_work_group_configuration_result_configuration_details()
      }

  """
  @type aws_athena_work_group_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_visibility_config_details() :: %{
        "CloudWatchMetricsEnabled" => boolean(),
        "MetricName" => String.t() | atom(),
        "SampledRequestsEnabled" => boolean()
      }

  """
  @type aws_wafv2_visibility_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_eventbus_details() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Policy" => String.t() | atom()
      }

  """
  @type aws_events_eventbus_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_by_rule() :: %{
        "Filters" => ocsf_finding_filters(),
        "GroupByField" => list(any())
      }

  """
  @type group_by_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_layer() :: %{
        "Arn" => String.t() | atom(),
        "CodeSize" => integer()
      }

  """
  @type aws_lambda_function_layer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_connector_v2_request() :: %{
        optional("ClientSecret") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Provider") => list()
      }

  """
  @type update_connector_v2_request() :: %{(String.t() | atom()) => any()}

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

      aws_cloud_front_distribution_cache_behaviors() :: %{
        "Items" => list(aws_cloud_front_distribution_cache_behavior())
      }

  """
  @type aws_cloud_front_distribution_cache_behaviors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_association_request() :: %{
        required("ConfigurationPolicyIdentifier") => String.t() | atom(),
        required("Target") => list()
      }

  """
  @type start_configuration_policy_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_control_parameter() :: %{
        "Name" => String.t() | atom(),
        "Value" => list(String.t() | atom())
      }

  """
  @type security_control_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_port_mappings_details() :: %{
        "ContainerPort" => integer(),
        "HostPort" => integer(),
        "Protocol" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_port_mappings_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_override_action_details() :: %{
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_override_action_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_events_endpoint_event_buses_details() :: %{
        "EventBusArn" => String.t() | atom()
      }

  """
  @type aws_events_endpoint_event_buses_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_block_device_mappings_details() :: %{
        "DeviceName" => String.t() | atom(),
        "Ebs" => aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details(),
        "NoDevice" => boolean(),
        "VirtualName" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_launch_configuration_block_device_mappings_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_network_interface_ip_v6_address_detail() :: %{
        "IpV6Address" => String.t() | atom()
      }

  """
  @type aws_ec2_network_interface_ip_v6_address_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_instance() :: %{
        "InstanceId" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enum_configuration_options() :: %{
        "AllowedValues" => list(String.t() | atom()),
        "DefaultValue" => String.t() | atom()
      }

  """
  @type enum_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: %{
        "Date" => String.t() | atom(),
        "Days" => integer(),
        "StorageClass" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      custom_data_identifiers_result() :: %{
        "Detections" => list(custom_data_identifiers_detections()),
        "TotalCount" => float()
      }

  """
  @type custom_data_identifiers_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_encryption_options_details() :: %{
        "KmsKeyId" => String.t() | atom(),
        "UseAwsOwnedKey" => boolean()
      }

  """
  @type aws_amazon_mq_broker_encryption_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: %{
        "DataVolumeKMSKeyId" => String.t() | atom()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_redshift_cluster_elastic_ip_status() :: %{
        "ElasticIp" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_elastic_ip_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_processed_finding() :: %{
        "FindingIdentifier" => ocsf_finding_identifier(),
        "MetadataUid" => String.t() | atom()
      }

  """
  @type batch_update_findings_v2_processed_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_finding_statistics_v2_response() :: %{
        "GroupByResults" => list(group_by_result())
      }

  """
  @type get_finding_statistics_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route_set_details() :: %{
        "CarrierGatewayId" => String.t() | atom(),
        "CoreNetworkArn" => String.t() | atom(),
        "DestinationCidrBlock" => String.t() | atom(),
        "DestinationIpv6CidrBlock" => String.t() | atom(),
        "DestinationPrefixListId" => String.t() | atom(),
        "EgressOnlyInternetGatewayId" => String.t() | atom(),
        "GatewayId" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "InstanceOwnerId" => String.t() | atom(),
        "LocalGatewayId" => String.t() | atom(),
        "NatGatewayId" => String.t() | atom(),
        "NetworkInterfaceId" => String.t() | atom(),
        "Origin" => String.t() | atom(),
        "State" => String.t() | atom(),
        "TransitGatewayId" => String.t() | atom(),
        "VpcPeeringConnectionId" => String.t() | atom()
      }

  """
  @type route_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor() :: %{
        "Id" => String.t() | atom(),
        "Session" => actor_session(),
        "User" => actor_user()
      }

  """
  @type actor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_v2_response() :: %{
        "Findings" => list(any()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_findings_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_result_configuration_details() :: %{
        "EncryptionConfiguration" => aws_athena_work_group_configuration_result_configuration_encryption_configuration_details()
      }

  """
  @type aws_athena_work_group_configuration_result_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_connector_v2_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("Provider") => list()
      }

  """
  @type create_connector_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t() | atom(),
        "AdministratorId" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "InvitedAt" => non_neg_integer(),
        "MasterId" => String.t() | atom(),
        "MemberStatus" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule() :: %{
        "Condition" => aws_s3_bucket_website_configuration_routing_rule_condition(),
        "Redirect" => aws_s3_bucket_website_configuration_routing_rule_redirect()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_task_details() :: %{
        "CdcStartPosition" => String.t() | atom(),
        "CdcStartTime" => String.t() | atom(),
        "CdcStopPosition" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MigrationType" => String.t() | atom(),
        "ReplicationInstanceArn" => String.t() | atom(),
        "ReplicationTaskIdentifier" => String.t() | atom(),
        "ReplicationTaskSettings" => String.t() | atom(),
        "ResourceIdentifier" => String.t() | atom(),
        "SourceEndpointArn" => String.t() | atom(),
        "TableMappings" => String.t() | atom(),
        "TargetEndpointArn" => String.t() | atom(),
        "TaskData" => String.t() | atom()
      }

  """
  @type aws_dms_replication_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "Comparison" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_finding_aggregators_response() :: %{
        "FindingAggregators" => list(finding_aggregator()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_finding_aggregators_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_policy_details() :: %{
        "AttachmentCount" => integer(),
        "CreateDate" => String.t() | atom(),
        "DefaultVersionId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IsAttachable" => boolean(),
        "Path" => String.t() | atom(),
        "PermissionsBoundaryUsageCount" => integer(),
        "PolicyId" => String.t() | atom(),
        "PolicyName" => String.t() | atom(),
        "PolicyVersionList" => list(aws_iam_policy_version()),
        "UpdateDate" => String.t() | atom()
      }

  """
  @type aws_iam_policy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_security_controls_request() :: %{
        required("SecurityControlIds") => list(String.t() | atom())
      }

  """
  @type batch_get_security_controls_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_response() :: %{
        "AdminAccountId" => String.t() | atom(),
        "Feature" => list(any())
      }

  """
  @type enable_organization_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_automation_rule() :: %{
        "ErrorCode" => integer(),
        "ErrorMessage" => String.t() | atom(),
        "RuleArn" => String.t() | atom()
      }

  """
  @type unprocessed_automation_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_automation_rule_response() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_automation_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_volume_details() :: %{
        "Host" => aws_ecs_task_volume_host_details(),
        "Name" => String.t() | atom()
      }

  """
  @type aws_ecs_task_volume_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_parameter_status() :: %{
        "ParameterApplyErrorDescription" => String.t() | atom(),
        "ParameterApplyStatus" => String.t() | atom(),
        "ParameterName" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_cluster_parameter_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_sse_description() :: %{
        "InaccessibleEncryptionDateTime" => String.t() | atom(),
        "KmsMasterKeyArn" => String.t() | atom(),
        "SseType" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_sse_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_automation_rule_v2_response() :: %{}

  """
  @type delete_automation_rule_v2_response() :: %{}

  @typedoc """

  ## Example:

      configuration_policy_association() :: %{
        "Target" => list()
      }

  """
  @type configuration_policy_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      adjustment() :: %{
        "Metric" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type adjustment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_group_arn_config_details() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type cloud_watch_logs_log_group_arn_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_logs_pending_details() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }

  """
  @type aws_amazon_mq_broker_logs_pending_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      note_update() :: %{
        "Text" => String.t() | atom(),
        "UpdatedBy" => String.t() | atom()
      }

  """
  @type note_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_root_directory_details() :: %{
        "CreationInfo" => aws_efs_access_point_root_directory_creation_info_details(),
        "Path" => String.t() | atom()
      }

  """
  @type aws_efs_access_point_root_directory_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_info_peering_options_details() :: %{
        "AllowDnsResolutionFromRemoteVpc" => boolean(),
        "AllowEgressFromLocalClassicLinkToRemoteVpc" => boolean(),
        "AllowEgressFromLocalVpcToRemoteClassicLink" => boolean()
      }

  """
  @type vpc_info_peering_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ocsf_finding_filters() :: %{
        "CompositeFilters" => list(composite_filter()),
        "CompositeOperator" => list(any())
      }

  """
  @type ocsf_finding_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_maintenance_options_details() :: %{
        "AutoRecovery" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_maintenance_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      workflow_update() :: %{
        "Status" => list(any())
      }

  """
  @type workflow_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_action_targets_request() :: %{
        optional("ActionTargetArns") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_action_targets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_entry() :: %{
        "CidrBlock" => String.t() | atom(),
        "Egress" => boolean(),
        "IcmpTypeCode" => icmp_type_code(),
        "Ipv6CidrBlock" => String.t() | atom(),
        "PortRange" => port_range_from_to(),
        "Protocol" => String.t() | atom(),
        "RuleAction" => String.t() | atom(),
        "RuleNumber" => integer()
      }

  """
  @type aws_ec2_network_acl_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_details() :: %{
        "BlockDeviceMappingSet" => list(aws_ec2_launch_template_data_block_device_mapping_set_details()),
        "CapacityReservationSpecification" => aws_ec2_launch_template_data_capacity_reservation_specification_details(),
        "CpuOptions" => aws_ec2_launch_template_data_cpu_options_details(),
        "CreditSpecification" => aws_ec2_launch_template_data_credit_specification_details(),
        "DisableApiStop" => boolean(),
        "DisableApiTermination" => boolean(),
        "EbsOptimized" => boolean(),
        "ElasticGpuSpecificationSet" => list(aws_ec2_launch_template_data_elastic_gpu_specification_set_details()),
        "ElasticInferenceAcceleratorSet" => list(aws_ec2_launch_template_data_elastic_inference_accelerator_set_details()),
        "EnclaveOptions" => aws_ec2_launch_template_data_enclave_options_details(),
        "HibernationOptions" => aws_ec2_launch_template_data_hibernation_options_details(),
        "IamInstanceProfile" => aws_ec2_launch_template_data_iam_instance_profile_details(),
        "ImageId" => String.t() | atom(),
        "InstanceInitiatedShutdownBehavior" => String.t() | atom(),
        "InstanceMarketOptions" => aws_ec2_launch_template_data_instance_market_options_details(),
        "InstanceRequirements" => aws_ec2_launch_template_data_instance_requirements_details(),
        "InstanceType" => String.t() | atom(),
        "KernelId" => String.t() | atom(),
        "KeyName" => String.t() | atom(),
        "LicenseSet" => list(aws_ec2_launch_template_data_license_set_details()),
        "MaintenanceOptions" => aws_ec2_launch_template_data_maintenance_options_details(),
        "MetadataOptions" => aws_ec2_launch_template_data_metadata_options_details(),
        "Monitoring" => aws_ec2_launch_template_data_monitoring_details(),
        "NetworkInterfaceSet" => list(aws_ec2_launch_template_data_network_interface_set_details()),
        "Placement" => aws_ec2_launch_template_data_placement_details(),
        "PrivateDnsNameOptions" => aws_ec2_launch_template_data_private_dns_name_options_details(),
        "RamDiskId" => String.t() | atom(),
        "SecurityGroupIdSet" => list(String.t() | atom()),
        "SecurityGroupSet" => list(String.t() | atom()),
        "UserData" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_provider_configuration() :: %{
        "ClientId" => String.t() | atom(),
        "ClientSecret" => String.t() | atom(),
        "InstanceName" => String.t() | atom()
      }

  """
  @type service_now_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association_set_details() :: %{
        "AssociationState" => association_state_details(),
        "GatewayId" => String.t() | atom(),
        "Main" => boolean(),
        "RouteTableAssociationId" => String.t() | atom(),
        "RouteTableId" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }

  """
  @type association_set_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_versioning_configuration() :: %{
        "IsMfaDeleteEnabled" => boolean(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_bucket_versioning_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_custom_origin_config() :: %{
        "HttpPort" => integer(),
        "HttpsPort" => integer(),
        "OriginKeepaliveTimeout" => integer(),
        "OriginProtocolPolicy" => String.t() | atom(),
        "OriginReadTimeout" => integer(),
        "OriginSslProtocols" => aws_cloud_front_distribution_origin_ssl_protocols()
      }

  """
  @type aws_cloud_front_distribution_origin_custom_origin_config() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_details() :: %{
        "AccessPolicies" => String.t() | atom(),
        "AdvancedSecurityOptions" => aws_open_search_service_domain_advanced_security_options_details(),
        "Arn" => String.t() | atom(),
        "ClusterConfig" => aws_open_search_service_domain_cluster_config_details(),
        "DomainEndpoint" => String.t() | atom(),
        "DomainEndpointOptions" => aws_open_search_service_domain_domain_endpoint_options_details(),
        "DomainEndpoints" => map(),
        "DomainName" => String.t() | atom(),
        "EncryptionAtRestOptions" => aws_open_search_service_domain_encryption_at_rest_options_details(),
        "EngineVersion" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LogPublishingOptions" => aws_open_search_service_domain_log_publishing_options_details(),
        "NodeToNodeEncryptionOptions" => aws_open_search_service_domain_node_to_node_encryption_options_details(),
        "ServiceSoftwareOptions" => aws_open_search_service_domain_service_software_options_details(),
        "VpcOptions" => aws_open_search_service_domain_vpc_options_details()
      }

  """
  @type aws_open_search_service_domain_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_credit_specification_details() :: %{
        "CpuCredits" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_credit_specification_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: %{
        "Iam" => aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details(),
        "Scram" => aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_resources_statistics_v2_request() :: %{
        optional("MaxStatisticResults") => integer(),
        optional("SortOrder") => list(any()),
        required("GroupByRules") => list(resource_group_by_rule())
      }

  """
  @type get_resources_statistics_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_watch_alarm_dimensions_details() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_cloud_watch_alarm_dimensions_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      patch_summary() :: %{
        "FailedCount" => integer(),
        "Id" => String.t() | atom(),
        "InstalledCount" => integer(),
        "InstalledOtherCount" => integer(),
        "InstalledPendingReboot" => integer(),
        "InstalledRejectedCount" => integer(),
        "MissingCount" => integer(),
        "Operation" => String.t() | atom(),
        "OperationEndTime" => String.t() | atom(),
        "OperationStartTime" => String.t() | atom(),
        "RebootOption" => String.t() | atom()
      }

  """
  @type patch_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_cluster_settings_details() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_ecs_cluster_cluster_settings_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: %{
        "ContainerPath" => String.t() | atom(),
        "HostPath" => String.t() | atom(),
        "Permissions" => list(String.t() | atom())
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_security_group_ipv6_range() :: %{
        "CidrIpv6" => String.t() | atom()
      }

  """
  @type aws_ec2_security_group_ipv6_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_extra_hosts_details() :: %{
        "Hostname" => String.t() | atom(),
        "IpAddress" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_extra_hosts_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_automation_rule_v2_response() :: %{}

  """
  @type update_automation_rule_v2_response() :: %{}

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_subnet_mappings_details() :: %{
        "SubnetId" => String.t() | atom()
      }

  """
  @type aws_network_firewall_firewall_subnet_mappings_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration_rule_details() :: %{
        "DefaultRetention" => aws_s3_bucket_object_lock_configuration_rule_default_retention_details()
      }

  """
  @type aws_s3_bucket_object_lock_configuration_rule_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_aggregator_v2_request() :: %{}

  """
  @type get_aggregator_v2_request() :: %{}

  @typedoc """

  ## Example:

      create_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | atom(),
        "AggregatorV2Arn" => String.t() | atom(),
        "LinkedRegions" => list(String.t() | atom()),
        "RegionLinkingMode" => String.t() | atom()
      }

  """
  @type create_aggregator_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_finding_aggregator_response() :: %{}

  """
  @type delete_finding_aggregator_response() :: %{}

  @typedoc """

  ## Example:

      batch_update_findings_unprocessed_finding() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "FindingIdentifier" => aws_security_finding_identifier()
      }

  """
  @type batch_update_findings_unprocessed_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configuration_policy_associations_request() :: %{
        optional("Filters") => association_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_configuration_policy_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_import_findings_for_product_response() :: %{
        "ProductSubscriptionArn" => String.t() | atom()
      }

  """
  @type enable_import_findings_for_product_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_log_publishing_options_details() :: %{
        "AuditLogs" => aws_open_search_service_domain_log_publishing_option(),
        "IndexSlowLogs" => aws_open_search_service_domain_log_publishing_option(),
        "SearchSlowLogs" => aws_open_search_service_domain_log_publishing_option()
      }

  """
  @type aws_open_search_service_domain_log_publishing_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_security_control_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StandardsArn") => String.t() | atom()
      }

  """
  @type list_security_control_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_result() :: %{
        "AccountId" => String.t() | atom(),
        "FindingsSummary" => list(resource_findings_summary()),
        "Region" => String.t() | atom(),
        "ResourceCategory" => list(any()),
        "ResourceConfig" => any(),
        "ResourceCreationTimeDt" => String.t() | atom(),
        "ResourceDetailCaptureTimeDt" => String.t() | atom(),
        "ResourceGuid" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceName" => String.t() | atom(),
        "ResourceTags" => list(resource_tag()),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_details() :: %{
        "Action" => aws_waf_regional_web_acl_rules_list_action_details(),
        "OverrideAction" => aws_waf_regional_web_acl_rules_list_override_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_string_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => string_filter()
      }

  """
  @type resources_string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_details() :: %{
        "Rules" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_details())
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      malware() :: %{
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type malware() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_cross_zone_load_balancing() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_elb_load_balancer_cross_zone_load_balancing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_captcha_config_details() :: %{
        "ImmunityTimeProperty" => aws_wafv2_web_acl_captcha_config_immunity_time_property_details()
      }

  """
  @type aws_wafv2_web_acl_captcha_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_advanced_security_options_details() :: %{
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
        "MasterUserOptions" => aws_open_search_service_domain_master_user_options_details()
      }

  """
  @type aws_open_search_service_domain_advanced_security_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: %{
        "ClientBroker" => String.t() | atom(),
        "InCluster" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_athena_work_group_details() :: %{
        "Configuration" => aws_athena_work_group_configuration_details(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type aws_athena_work_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss() :: %{
        "Adjustments" => list(adjustment()),
        "BaseScore" => float(),
        "BaseVector" => String.t() | atom(),
        "Source" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type cvss() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_encryption_at_rest_options_details() :: %{
        "Enabled" => boolean(),
        "KmsKeyId" => String.t() | atom()
      }

  """
  @type aws_open_search_service_domain_encryption_at_rest_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_security_finding() :: %{
        "Region" => String.t() | atom(),
        "GeneratorDetails" => generator_details(),
        "CompanyName" => String.t() | atom(),
        "Types" => list(String.t() | atom()),
        "Compliance" => compliance(),
        "Vulnerabilities" => list(vulnerability()),
        "UserDefinedFields" => map(),
        "Network" => network(),
        "ProcessedAt" => String.t() | atom(),
        "Malware" => list(malware()),
        "Severity" => severity(),
        "NetworkPath" => list(network_path_component()),
        "WorkflowState" => list(any()),
        "ProductName" => String.t() | atom(),
        "Confidence" => integer(),
        "CreatedAt" => String.t() | atom(),
        "Remediation" => remediation(),
        "ThreatIntelIndicators" => list(threat_intel_indicator()),
        "UpdatedAt" => String.t() | atom(),
        "AwsAccountId" => String.t() | atom(),
        "Resources" => list(resource()),
        "Id" => String.t() | atom(),
        "Detection" => detection(),
        "ProductArn" => String.t() | atom(),
        "SchemaVersion" => String.t() | atom(),
        "SourceUrl" => String.t() | atom(),
        "FindingProviderFields" => finding_provider_fields(),
        "AwsAccountName" => String.t() | atom(),
        "FirstObservedAt" => String.t() | atom(),
        "Workflow" => workflow(),
        "GeneratorId" => String.t() | atom(),
        "Note" => note(),
        "RecordState" => list(any()),
        "Title" => String.t() | atom(),
        "Threats" => list(threat()),
        "Sample" => boolean(),
        "Criticality" => integer(),
        "LastObservedAt" => String.t() | atom(),
        "Action" => action(),
        "PatchSummary" => patch_summary(),
        "Description" => String.t() | atom(),
        "RelatedFindings" => list(related_finding()),
        "ProductFields" => map(),
        "VerificationState" => list(any()),
        "Process" => process_details()
      }

  """
  @type aws_security_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_details() :: %{
        "Primary" => aws_events_endpoint_routing_config_failover_config_primary_details(),
        "Secondary" => aws_events_endpoint_routing_config_failover_config_secondary_details()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_instance_monitoring_details() :: %{
        "State" => String.t() | atom()
      }

  """
  @type aws_ec2_instance_monitoring_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_finding_aggregator_request() :: %{}

  """
  @type get_finding_aggregator_request() :: %{}

  @typedoc """

  ## Example:

      aws_lambda_function_tracing_config() :: %{
        "Mode" => String.t() | atom()
      }

  """
  @type aws_lambda_function_tracing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_security_hub_v2_response() :: %{
        "HubV2Arn" => String.t() | atom()
      }

  """
  @type enable_security_hub_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_details() :: %{
        "AvailabilityZones" => list(aws_auto_scaling_auto_scaling_group_availability_zones_list_details()),
        "CapacityRebalance" => boolean(),
        "CreatedTime" => String.t() | atom(),
        "HealthCheckGracePeriod" => integer(),
        "HealthCheckType" => String.t() | atom(),
        "LaunchConfigurationName" => String.t() | atom(),
        "LaunchTemplate" => aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification(),
        "LoadBalancerNames" => list(String.t() | atom()),
        "MixedInstancesPolicy" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_source_security_group() :: %{
        "GroupName" => String.t() | atom(),
        "OwnerAlias" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_source_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: %{
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerUri" => String.t() | atom(),
        "IdentityValidationExpression" => String.t() | atom()
      }

  """
  @type aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      actor_session() :: %{
        "CreatedTime" => float(),
        "Issuer" => String.t() | atom(),
        "MfaStatus" => list(any()),
        "Uid" => String.t() | atom()
      }

  """
  @type actor_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_iam_policy_version() :: %{
        "CreateDate" => String.t() | atom(),
        "IsDefaultVersion" => boolean(),
        "VersionId" => String.t() | atom()
      }

  """
  @type aws_iam_policy_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_advanced_backup_settings_details() :: %{
        "BackupOptions" => map(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type aws_backup_backup_plan_advanced_backup_settings_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() :: %{
        "InstanceType" => String.t() | atom(),
        "WeightedCapacity" => String.t() | atom()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_aggregator_v2_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("LinkedRegions") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("RegionLinkingMode") => String.t() | atom()
      }

  """
  @type create_aggregator_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: %{
        "Days" => integer(),
        "Mode" => String.t() | atom(),
        "Years" => integer()
      }

  """
  @type aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_redirect_to() :: %{
        "Hostname" => String.t() | atom(),
        "Protocol" => String.t() | atom()
      }

  """
  @type aws_s3_bucket_website_configuration_redirect_to() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_call_action_domain_details() :: %{
        "Domain" => String.t() | atom()
      }

  """
  @type aws_api_call_action_domain_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_import_findings_for_product_request() :: %{
        required("ProductArn") => String.t() | atom()
      }

  """
  @type enable_import_findings_for_product_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_range() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }

  """
  @type date_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "AwsEc2ClientVpnEndpoint" => aws_ec2_client_vpn_endpoint_details(),
        "AwsNetworkFirewallRuleGroup" => aws_network_firewall_rule_group_details(),
        "AwsEventSchemasRegistry" => aws_event_schemas_registry_details(),
        "AwsElasticBeanstalkEnvironment" => aws_elastic_beanstalk_environment_details(),
        "AwsEc2LaunchTemplate" => aws_ec2_launch_template_details(),
        "AwsCloudTrailTrail" => aws_cloud_trail_trail_details(),
        "AwsDmsEndpoint" => aws_dms_endpoint_details(),
        "AwsEc2RouteTable" => aws_ec2_route_table_details(),
        "AwsIamUser" => aws_iam_user_details(),
        "AwsNetworkFirewallFirewall" => aws_network_firewall_firewall_details(),
        "AwsWafRegionalRule" => aws_waf_regional_rule_details(),
        "CodeRepository" => code_repository_details(),
        "AwsIamRole" => aws_iam_role_details(),
        "AwsApiGatewayV2Api" => aws_api_gateway_v2_api_details(),
        "AwsRdsEventSubscription" => aws_rds_event_subscription_details(),
        "AwsStepFunctionStateMachine" => aws_step_function_state_machine_details(),
        "AwsBackupBackupVault" => aws_backup_backup_vault_details(),
        "AwsElasticsearchDomain" => aws_elasticsearch_domain_details(),
        "AwsRdsDbCluster" => aws_rds_db_cluster_details(),
        "AwsGuardDutyDetector" => aws_guard_duty_detector_details(),
        "AwsCertificateManagerCertificate" => aws_certificate_manager_certificate_details(),
        "Container" => container_details(),
        "AwsAthenaWorkGroup" => aws_athena_work_group_details(),
        "AwsEventsEndpoint" => aws_events_endpoint_details(),
        "AwsEcsContainer" => aws_ecs_container_details(),
        "AwsBackupBackupPlan" => aws_backup_backup_plan_details(),
        "AwsWafWebAcl" => aws_waf_web_acl_details(),
        "AwsOpenSearchServiceDomain" => aws_open_search_service_domain_details(),
        "AwsEcsService" => aws_ecs_service_details(),
        "AwsEc2NetworkInterface" => aws_ec2_network_interface_details(),
        "AwsWafRuleGroup" => aws_waf_rule_group_details(),
        "AwsEc2Instance" => aws_ec2_instance_details(),
        "AwsRdsDbSecurityGroup" => aws_rds_db_security_group_details(),
        "AwsEc2VpcEndpointService" => aws_ec2_vpc_endpoint_service_details(),
        "AwsCodeBuildProject" => aws_code_build_project_details(),
        "AwsEc2Eip" => aws_ec2_eip_details(),
        "AwsWafRateBasedRule" => aws_waf_rate_based_rule_details(),
        "Other" => map(),
        "AwsEc2TransitGateway" => aws_ec2_transit_gateway_details(),
        "AwsEcsTask" => aws_ecs_task_details(),
        "AwsSqsQueue" => aws_sqs_queue_details(),
        "AwsCloudWatchAlarm" => aws_cloud_watch_alarm_details(),
        "AwsEcrContainerImage" => aws_ecr_container_image_details(),
        "AwsSecretsManagerSecret" => aws_secrets_manager_secret_details(),
        "AwsSsmPatchCompliance" => aws_ssm_patch_compliance_details(),
        "AwsXrayEncryptionConfig" => aws_xray_encryption_config_details(),
        "AwsS3AccessPoint" => aws_s3_access_point_details(),
        "AwsEfsAccessPoint" => aws_efs_access_point_details(),
        "AwsDmsReplicationTask" => aws_dms_replication_task_details(),
        "AwsS3Object" => aws_s3_object_details(),
        "AwsSageMakerNotebookInstance" => aws_sage_maker_notebook_instance_details(),
        "AwsWafRegionalRateBasedRule" => aws_waf_regional_rate_based_rule_details(),
        "AwsWafv2WebAcl" => aws_wafv2_web_acl_details(),
        "AwsRdsDbSnapshot" => aws_rds_db_snapshot_details(),
        "AwsEcrRepository" => aws_ecr_repository_details(),
        "AwsKinesisStream" => aws_kinesis_stream_details(),
        "AwsIamPolicy" => aws_iam_policy_details(),
        "AwsEc2Volume" => aws_ec2_volume_details(),
        "AwsEksCluster" => aws_eks_cluster_details(),
        "AwsS3AccountPublicAccessBlock" => aws_s3_account_public_access_block_details(),
        "AwsEventsEventbus" => aws_events_eventbus_details(),
        "AwsNetworkFirewallFirewallPolicy" => aws_network_firewall_firewall_policy_details(),
        "AwsAppSyncGraphQlApi" => aws_app_sync_graph_ql_api_details(),
        "AwsLambdaFunction" => aws_lambda_function_details(),
        "AwsWafRegionalWebAcl" => aws_waf_regional_web_acl_details(),
        "AwsEc2SecurityGroup" => aws_ec2_security_group_details(),
        "AwsCloudFormationStack" => aws_cloud_formation_stack_details(),
        "AwsRoute53HostedZone" => aws_route53_hosted_zone_details(),
        "AwsS3Bucket" => aws_s3_bucket_details(),
        "AwsEcsCluster" => aws_ecs_cluster_details(),
        "AwsRdsDbClusterSnapshot" => aws_rds_db_cluster_snapshot_details(),
        "AwsEcsTaskDefinition" => aws_ecs_task_definition_details(),
        "AwsIamGroup" => aws_iam_group_details(),
        "AwsAutoScalingLaunchConfiguration" => aws_auto_scaling_launch_configuration_details(),
        "AwsEc2VpcPeeringConnection" => aws_ec2_vpc_peering_connection_details(),
        "AwsBackupRecoveryPoint" => aws_backup_recovery_point_details(),
        "AwsAutoScalingAutoScalingGroup" => aws_auto_scaling_auto_scaling_group_details(),
        "AwsCloudFrontDistribution" => aws_cloud_front_distribution_details(),
        "AwsWafRegionalRuleGroup" => aws_waf_regional_rule_group_details(),
        "AwsEc2Vpc" => aws_ec2_vpc_details(),
        "AwsLambdaLayerVersion" => aws_lambda_layer_version_details(),
        "AwsApiGatewayV2Stage" => aws_api_gateway_v2_stage_details(),
        "AwsApiGatewayStage" => aws_api_gateway_stage_details(),
        "AwsRdsDbInstance" => aws_rds_db_instance_details(),
        "AwsSnsTopic" => aws_sns_topic_details(),
        "AwsWafRule" => aws_waf_rule_details(),
        "AwsDmsReplicationInstance" => aws_dms_replication_instance_details(),
        "AwsEc2Subnet" => aws_ec2_subnet_details(),
        "AwsRedshiftCluster" => aws_redshift_cluster_details(),
        "AwsAmazonMqBroker" => aws_amazon_mq_broker_details(),
        "AwsMskCluster" => aws_msk_cluster_details(),
        "AwsEc2VpnConnection" => aws_ec2_vpn_connection_details(),
        "AwsIamAccessKey" => aws_iam_access_key_details(),
        "AwsEc2NetworkAcl" => aws_ec2_network_acl_details(),
        "AwsDynamoDbTable" => aws_dynamo_db_table_details(),
        "AwsElbv2LoadBalancer" => aws_elbv2_load_balancer_details(),
        "AwsElbLoadBalancer" => aws_elb_load_balancer_details(),
        "AwsKmsKey" => aws_kms_key_details(),
        "AwsApiGatewayRestApi" => aws_api_gateway_rest_api_details(),
        "AwsWafv2RuleGroup" => aws_wafv2_rule_group_details()
      }

  """
  @type resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_insight_request() :: %{
        required("Filters") => aws_security_finding_filters(),
        required("GroupByAttribute") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_insight_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_proxy_configuration_details() :: %{
        "ContainerName" => String.t() | atom(),
        "ProxyConfigurationProperties" => list(aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details()),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_proxy_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight() :: %{
        "Filters" => aws_security_finding_filters(),
        "GroupByAttribute" => String.t() | atom(),
        "InsightArn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type insight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_path_component_details() :: %{
        "Address" => list(String.t() | atom()),
        "PortRanges" => list(port_range())
      }

  """
  @type network_path_component_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_placement_constraints_details() :: %{
        "Expression" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_placement_constraints_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_configuration_policy_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("ConfigurationPolicy") => list(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_configuration_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_backend_server_description() :: %{
        "InstancePort" => integer(),
        "PolicyNames" => list(String.t() | atom())
      }

  """
  @type aws_elb_load_balancer_backend_server_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_details() :: %{
        "ActiveServicesCount" => integer(),
        "CapacityProviders" => list(String.t() | atom()),
        "ClusterArn" => String.t() | atom(),
        "ClusterName" => String.t() | atom(),
        "ClusterSettings" => list(aws_ecs_cluster_cluster_settings_details()),
        "Configuration" => aws_ecs_cluster_configuration_details(),
        "DefaultCapacityProviderStrategy" => list(aws_ecs_cluster_default_capacity_provider_strategy_details()),
        "RegisteredContainerInstancesCount" => integer(),
        "RunningTasksCount" => integer(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_ecs_cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_administrator_invitation_response() :: %{}

  """
  @type accept_administrator_invitation_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_details() :: %{
        "ContainerDefinitions" => list(aws_ecs_task_definition_container_definitions_details()),
        "Cpu" => String.t() | atom(),
        "ExecutionRoleArn" => String.t() | atom(),
        "Family" => String.t() | atom(),
        "InferenceAccelerators" => list(aws_ecs_task_definition_inference_accelerators_details()),
        "IpcMode" => String.t() | atom(),
        "Memory" => String.t() | atom(),
        "NetworkMode" => String.t() | atom(),
        "PidMode" => String.t() | atom(),
        "PlacementConstraints" => list(aws_ecs_task_definition_placement_constraints_details()),
        "ProxyConfiguration" => aws_ecs_task_definition_proxy_configuration_details(),
        "RequiresCompatibilities" => list(String.t() | atom()),
        "Status" => String.t() | atom(),
        "TaskRoleArn" => String.t() | atom(),
        "Volumes" => list(aws_ecs_task_definition_volumes_details())
      }

  """
  @type aws_ecs_task_definition_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stateless_custom_action_definition() :: %{
        "PublishMetricAction" => stateless_custom_publish_metric_action()
      }

  """
  @type stateless_custom_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_features_details() :: %{
        "Name" => String.t() | atom(),
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_features_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_results_request() :: %{}

  """
  @type get_insight_results_request() :: %{}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_details() :: %{
        "FailoverConfig" => aws_events_endpoint_routing_config_failover_config_details()
      }

  """
  @type aws_events_endpoint_routing_config_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_hub_policy() :: %{
        "EnabledStandardIdentifiers" => list(String.t() | atom()),
        "SecurityControlsConfiguration" => security_controls_configuration(),
        "ServiceEnabled" => boolean()
      }

  """
  @type security_hub_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_repository_details() :: %{
        "CodeSecurityIntegrationArn" => String.t() | atom(),
        "ProjectName" => String.t() | atom(),
        "ProviderType" => String.t() | atom()
      }

  """
  @type code_repository_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_security_hub_request() :: %{
        optional("ControlFindingGenerator") => list(any()),
        optional("EnableDefaultStandards") => boolean(),
        optional("Tags") => map()
      }

  """
  @type enable_security_hub_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_additional_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_additional_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_provisioned_throughput() :: %{
        "LastDecreaseDateTime" => String.t() | atom(),
        "LastIncreaseDateTime" => String.t() | atom(),
        "NumberOfDecreasesToday" => integer(),
        "ReadCapacityUnits" => integer(),
        "WriteCapacityUnits" => integer()
      }

  """
  @type aws_dynamo_db_table_provisioned_throughput() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_secrets_details() :: %{
        "Name" => String.t() | atom(),
        "ValueFrom" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_secrets_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group_subnet_availability_zone() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type aws_rds_db_subnet_group_subnet_availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_automation_rule_v2_request() :: %{}

  """
  @type get_automation_rule_v2_request() :: %{}

  @typedoc """

  ## Example:

      delete_configuration_policy_request() :: %{}

  """
  @type delete_configuration_policy_request() :: %{}

  @typedoc """

  ## Example:

      aws_ecr_container_image_details() :: %{
        "Architecture" => String.t() | atom(),
        "ImageDigest" => String.t() | atom(),
        "ImagePublishedAt" => String.t() | atom(),
        "ImageTags" => list(String.t() | atom()),
        "RegistryId" => String.t() | atom(),
        "RepositoryName" => String.t() | atom()
      }

  """
  @type aws_ecr_container_image_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_details() :: %{
        "Attachment" => aws_ec2_network_interface_attachment(),
        "IpV6Addresses" => list(aws_ec2_network_interface_ip_v6_address_detail()),
        "NetworkInterfaceId" => String.t() | atom(),
        "PrivateIpAddresses" => list(aws_ec2_network_interface_private_ip_address_detail()),
        "PublicDnsName" => String.t() | atom(),
        "PublicIp" => String.t() | atom(),
        "SecurityGroups" => list(aws_ec2_network_interface_security_group()),
        "SourceDestCheck" => boolean()
      }

  """
  @type aws_ec2_network_interface_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_logging_status() :: %{
        "BucketName" => String.t() | atom(),
        "LastFailureMessage" => String.t() | atom(),
        "LastFailureTime" => String.t() | atom(),
        "LastSuccessfulDeliveryTime" => String.t() | atom(),
        "LoggingEnabled" => boolean(),
        "S3KeyPrefix" => String.t() | atom()
      }

  """
  @type aws_redshift_cluster_logging_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() :: %{
        "Name" => String.t() | atom(),
        "ValueFrom" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() ::
          %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_control_custom_parameter() :: %{
        "Parameters" => map(),
        "SecurityControlId" => String.t() | atom()
      }

  """
  @type security_control_custom_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_maintenance_window_start_time_details() :: %{
        "DayOfWeek" => String.t() | atom(),
        "TimeOfDay" => String.t() | atom(),
        "TimeZone" => String.t() | atom()
      }

  """
  @type aws_amazon_mq_broker_maintenance_window_start_time_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_service_capacity_provider_strategy_details() :: %{
        "Base" => integer(),
        "CapacityProvider" => String.t() | atom(),
        "Weight" => integer()
      }

  """
  @type aws_ecs_service_capacity_provider_strategy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_custom_request_handling_details() :: %{
        "InsertHeaders" => list(aws_wafv2_custom_http_header())
      }

  """
  @type aws_wafv2_custom_request_handling_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_s3_logs_details() :: %{
        "Status" => String.t() | atom()
      }

  """
  @type aws_guard_duty_detector_data_sources_s3_logs_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_details() :: %{
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PredicateList" => list(aws_waf_rule_predicate_list_details()),
        "RuleId" => String.t() | atom()
      }

  """
  @type aws_waf_rule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_automation_rule_v2_response() :: %{
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom()
      }

  """
  @type create_automation_rule_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "AdminAccounts" => list(admin_account()),
        "Feature" => list(any()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_v2() :: %{
        "ActivationUrl" => String.t() | atom(),
        "Categories" => list(String.t() | atom()),
        "CompanyName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationV2Types" => list(list(any())()),
        "MarketplaceUrl" => String.t() | atom(),
        "ProductV2Name" => String.t() | atom()
      }

  """
  @type product_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_connector_v2_response() :: %{}

  """
  @type update_connector_v2_response() :: %{}

  @typedoc """

  ## Example:

      batch_disable_standards_request() :: %{
        required("StandardsSubscriptionArns") => list(String.t() | atom())
      }

  """
  @type batch_disable_standards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_probe_detail() :: %{
        "LocalIpDetails" => action_local_ip_details(),
        "LocalPortDetails" => action_local_port_details(),
        "RemoteIpDetails" => action_remote_ip_details()
      }

  """
  @type port_probe_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_request() :: %{}

  """
  @type get_configuration_policy_request() :: %{}

  @typedoc """

  ## Example:

      aws_waf_regional_rate_based_rule_details() :: %{
        "MatchPredicates" => list(aws_waf_regional_rate_based_rule_match_predicate()),
        "MetricName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RateKey" => String.t() | atom(),
        "RateLimit" => float(),
        "RuleId" => String.t() | atom()
      }

  """
  @type aws_waf_regional_rate_based_rule_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration() :: %{
        "ErrorDocument" => String.t() | atom(),
        "IndexDocumentSuffix" => String.t() | atom(),
        "RedirectAllRequestsTo" => aws_s3_bucket_website_configuration_redirect_to(),
        "RoutingRules" => list(aws_s3_bucket_website_configuration_routing_rule())
      }

  """
  @type aws_s3_bucket_website_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_details() :: %{
        "CidrBlockAssociationSet" => list(cidr_block_association()),
        "DhcpOptionsId" => String.t() | atom(),
        "Ipv6CidrBlockAssociationSet" => list(ipv6_cidr_block_association()),
        "State" => String.t() | atom()
      }

  """
  @type aws_ec2_vpc_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enum_list_configuration_options() :: %{
        "AllowedValues" => list(String.t() | atom()),
        "DefaultValue" => list(String.t() | atom()),
        "MaxItems" => integer()
      }

  """
  @type enum_list_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_request() :: %{}

  """
  @type disassociate_from_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      aggregator_v2() :: %{
        "AggregatorV2Arn" => String.t() | atom()
      }

  """
  @type aggregator_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_depends_on_details() :: %{
        "Condition" => String.t() | atom(),
        "ContainerName" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_depends_on_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      provider_summary() :: %{
        "ConnectorStatus" => list(any()),
        "ProviderName" => list(any())
      }

  """
  @type provider_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_attribute_definition() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeType" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_attribute_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_custom_actions_details() :: %{
        "ActionDefinition" => stateless_custom_action_definition(),
        "ActionName" => String.t() | atom()
      }

  """
  @type rule_group_source_custom_actions_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment_environment_variables_details() :: %{
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type aws_code_build_project_environment_environment_variables_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      standards_subscription() :: %{
        "StandardsArn" => String.t() | atom(),
        "StandardsControlsUpdatable" => list(any()),
        "StandardsInput" => map(),
        "StandardsStatus" => list(any()),
        "StandardsStatusReason" => standards_status_reason(),
        "StandardsSubscriptionArn" => String.t() | atom()
      }

  """
  @type standards_subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_repository_credentials_details() :: %{
        "CredentialsParameter" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_repository_credentials_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | atom(),
        "AggregatorV2Arn" => String.t() | atom(),
        "LinkedRegions" => list(String.t() | atom()),
        "RegionLinkingMode" => String.t() | atom()
      }

  """
  @type get_aggregator_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_details() :: %{
        "Architectures" => list(String.t() | atom()),
        "Code" => aws_lambda_function_code(),
        "CodeSha256" => String.t() | atom(),
        "DeadLetterConfig" => aws_lambda_function_dead_letter_config(),
        "Environment" => aws_lambda_function_environment(),
        "FunctionName" => String.t() | atom(),
        "Handler" => String.t() | atom(),
        "KmsKeyArn" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Layers" => list(aws_lambda_function_layer()),
        "MasterArn" => String.t() | atom(),
        "MemorySize" => integer(),
        "PackageType" => String.t() | atom(),
        "RevisionId" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "Runtime" => String.t() | atom(),
        "Timeout" => integer(),
        "TracingConfig" => aws_lambda_function_tracing_config(),
        "Version" => String.t() | atom(),
        "VpcConfig" => aws_lambda_function_vpc_config()
      }

  """
  @type aws_lambda_function_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_host_details() :: %{
        "SourcePath" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_volumes_host_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_details() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EndpointId" => String.t() | atom(),
        "EndpointUrl" => String.t() | atom(),
        "EventBuses" => list(aws_events_endpoint_event_buses_details()),
        "Name" => String.t() | atom(),
        "ReplicationConfig" => aws_events_endpoint_replication_config_details(),
        "RoleArn" => String.t() | atom(),
        "RoutingConfig" => aws_events_endpoint_routing_config_details(),
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom()
      }

  """
  @type aws_events_endpoint_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      jira_cloud_update_configuration() :: %{
        "ProjectKey" => String.t() | atom()
      }

  """
  @type jira_cloud_update_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: %{
        "Ipv6Address" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_administrator_account_response() :: %{
        "Administrator" => invitation()
      }

  """
  @type get_administrator_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_open_id_connect_config_details() :: %{
        "AuthTtL" => float(),
        "ClientId" => String.t() | atom(),
        "IatTtL" => float(),
        "Issuer" => String.t() | atom()
      }

  """
  @type aws_app_sync_graph_ql_api_open_id_connect_config_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_get_configuration_policy_associations_request() :: %{
        required("ConfigurationPolicyAssociationIdentifiers") => list(configuration_policy_association())
      }

  """
  @type batch_get_configuration_policy_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_standards_control_associations_response() :: %{
        "StandardsControlAssociationDetails" => list(standards_control_association_detail()),
        "UnprocessedAssociations" => list(unprocessed_standards_control_association())
      }

  """
  @type batch_get_standards_control_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_provider_severity() :: %{
        "Label" => list(any()),
        "Original" => String.t() | atom()
      }

  """
  @type finding_provider_severity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_automation_rules_response() :: %{
        "ProcessedAutomationRules" => list(String.t() | atom()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_delete_automation_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_parameter_group() :: %{
        "DbParameterGroupName" => String.t() | atom(),
        "ParameterApplyStatus" => String.t() | atom()
      }

  """
  @type aws_rds_db_parameter_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_connect_options_details() :: %{
        "Enabled" => boolean(),
        "LambdaFunctionArn" => String.t() | atom(),
        "Status" => aws_ec2_client_vpn_endpoint_client_connect_options_status_details()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_connect_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_security_control_definition_request() :: %{
        required("SecurityControlId") => String.t() | atom()
      }

  """
  @type get_security_control_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      note() :: %{
        "Text" => String.t() | atom(),
        "UpdatedAt" => String.t() | atom(),
        "UpdatedBy" => String.t() | atom()
      }

  """
  @type note() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connector_v2_response() :: %{}

  """
  @type delete_connector_v2_response() :: %{}

  @typedoc """

  ## Example:

      list_configuration_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_configuration_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_node_to_node_encryption_options() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_node_to_node_encryption_options() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_dynamo_db_table_details() :: %{
        "AttributeDefinitions" => list(aws_dynamo_db_table_attribute_definition()),
        "BillingModeSummary" => aws_dynamo_db_table_billing_mode_summary(),
        "CreationDateTime" => String.t() | atom(),
        "DeletionProtectionEnabled" => boolean(),
        "GlobalSecondaryIndexes" => list(aws_dynamo_db_table_global_secondary_index()),
        "GlobalTableVersion" => String.t() | atom(),
        "ItemCount" => integer(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "LatestStreamArn" => String.t() | atom(),
        "LatestStreamLabel" => String.t() | atom(),
        "LocalSecondaryIndexes" => list(aws_dynamo_db_table_local_secondary_index()),
        "ProvisionedThroughput" => aws_dynamo_db_table_provisioned_throughput(),
        "Replicas" => list(aws_dynamo_db_table_replica()),
        "RestoreSummary" => aws_dynamo_db_table_restore_summary(),
        "SseDescription" => aws_dynamo_db_table_sse_description(),
        "StreamSpecification" => aws_dynamo_db_table_stream_specification(),
        "TableId" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "TableSizeBytes" => float(),
        "TableStatus" => String.t() | atom()
      }

  """
  @type aws_dynamo_db_table_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      page() :: %{
        "LineRange" => range(),
        "OffsetRange" => range(),
        "PageNumber" => float()
      }

  """
  @type page() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_log_publishing_options_log_config() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | atom(),
        "Enabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_log_publishing_options_log_config() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type create_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_automation_rules_response() :: %{
        "AutomationRulesMetadata" => list(automation_rules_metadata()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_automation_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment() :: %{
        "Certificate" => String.t() | atom(),
        "EnvironmentVariables" => list(aws_code_build_project_environment_environment_variables_details()),
        "ImagePullCredentialsType" => String.t() | atom(),
        "PrivilegedMode" => boolean(),
        "RegistryCredential" => aws_code_build_project_environment_registry_credential(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_code_build_project_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_association_response() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | atom(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | atom(),
        "TargetId" => String.t() | atom(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_configuration_policy_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_cpu_options_details() :: %{
        "CoreCount" => integer(),
        "ThreadsPerCore" => integer()
      }

  """
  @type aws_ec2_launch_template_data_cpu_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_tcp_flags() :: %{
        "Flags" => list(String.t() | atom()),
        "Masks" => list(String.t() | atom())
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_tcp_flags() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_insight_request() :: %{
        optional("Filters") => aws_security_finding_filters(),
        optional("GroupByAttribute") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_insight_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_options_details() :: %{
        "StaticRoutesOnly" => boolean(),
        "TunnelOptions" => list(aws_ec2_vpn_connection_options_tunnel_options_details())
      }

  """
  @type aws_ec2_vpn_connection_options_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_listener() :: %{
        "InstancePort" => integer(),
        "InstanceProtocol" => String.t() | atom(),
        "LoadBalancerPort" => integer(),
        "Protocol" => String.t() | atom(),
        "SslCertificateId" => String.t() | atom()
      }

  """
  @type aws_elb_load_balancer_listener() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_rules_action_type_object_v2() :: %{
        "Type" => list(any())
      }

  """
  @type automation_rules_action_type_object_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integer_configuration_options() :: %{
        "DefaultValue" => integer(),
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type integer_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_calculated_lifecycle_details() :: %{
        "DeleteAt" => String.t() | atom(),
        "MoveToColdStorageAt" => String.t() | atom()
      }

  """
  @type aws_backup_recovery_point_calculated_lifecycle_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      string_configuration_options() :: %{
        "DefaultValue" => String.t() | atom(),
        "ExpressionDescription" => String.t() | atom(),
        "Re2Expression" => String.t() | atom()
      }

  """
  @type string_configuration_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elbv2_load_balancer_details() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "CanonicalHostedZoneId" => String.t() | atom(),
        "CreatedTime" => String.t() | atom(),
        "DNSName" => String.t() | atom(),
        "IpAddressType" => String.t() | atom(),
        "LoadBalancerAttributes" => list(aws_elbv2_load_balancer_attribute()),
        "Scheme" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "State" => load_balancer_state(),
        "Type" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_elbv2_load_balancer_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ssm_patch() :: %{
        "ComplianceSummary" => aws_ssm_compliance_summary()
      }

  """
  @type aws_ssm_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_route_table_details() :: %{
        "AssociationSet" => list(association_set_details()),
        "OwnerId" => String.t() | atom(),
        "PropagatingVgwSet" => list(propagating_vgw_set_details()),
        "RouteSet" => list(route_set_details()),
        "RouteTableId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_route_table_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_filter() :: %{
        "Cidr" => String.t() | atom()
      }

  """
  @type ip_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_vpc_security_groups_details() :: %{
        "VpcSecurityGroupId" => String.t() | atom()
      }

  """
  @type aws_dms_replication_instance_vpc_security_groups_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_watch_alarm_details() :: %{
        "ActionsEnabled" => boolean(),
        "AlarmActions" => list(String.t() | atom()),
        "AlarmArn" => String.t() | atom(),
        "AlarmConfigurationUpdatedTimestamp" => String.t() | atom(),
        "AlarmDescription" => String.t() | atom(),
        "AlarmName" => String.t() | atom(),
        "ComparisonOperator" => String.t() | atom(),
        "DatapointsToAlarm" => integer(),
        "Dimensions" => list(aws_cloud_watch_alarm_dimensions_details()),
        "EvaluateLowSampleCountPercentile" => String.t() | atom(),
        "EvaluationPeriods" => integer(),
        "ExtendedStatistic" => String.t() | atom(),
        "InsufficientDataActions" => list(String.t() | atom()),
        "MetricName" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "OkActions" => list(String.t() | atom()),
        "Period" => integer(),
        "Statistic" => String.t() | atom(),
        "Threshold" => float(),
        "ThresholdMetricId" => String.t() | atom(),
        "TreatMissingData" => String.t() | atom(),
        "Unit" => String.t() | atom()
      }

  """
  @type aws_cloud_watch_alarm_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connector_v2_response() :: %{
        "AuthUrl" => String.t() | atom(),
        "ConnectorArn" => String.t() | atom(),
        "ConnectorId" => String.t() | atom()
      }

  """
  @type create_connector_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      number_filter() :: %{
        "Eq" => float(),
        "Gt" => float(),
        "Gte" => float(),
        "Lt" => float(),
        "Lte" => float()
      }

  """
  @type number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_environment_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type aws_lambda_function_environment_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_action_captcha_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_rules_action_captcha_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_local_ip_details() :: %{
        "IpAddressV4" => String.t() | atom()
      }

  """
  @type action_local_ip_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_details() :: %{
        "AccessPointId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ClientToken" => String.t() | atom(),
        "FileSystemId" => String.t() | atom(),
        "PosixUser" => aws_efs_access_point_posix_user_details(),
        "RootDirectory" => aws_efs_access_point_root_directory_details()
      }

  """
  @type aws_efs_access_point_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_rds_db_pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "CaCertificateIdentifier" => String.t() | atom(),
        "DbInstanceClass" => String.t() | atom(),
        "DbInstanceIdentifier" => String.t() | atom(),
        "DbSubnetGroupName" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "Iops" => integer(),
        "LicenseModel" => String.t() | atom(),
        "MasterUserPassword" => String.t() | atom(),
        "MultiAZ" => boolean(),
        "PendingCloudWatchLogsExports" => aws_rds_pending_cloud_watch_logs_exports(),
        "Port" => integer(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "StorageType" => String.t() | atom()
      }

  """
  @type aws_rds_db_pending_modified_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_tier() :: %{
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Version" => String.t() | atom()
      }

  """
  @type aws_elastic_beanstalk_environment_tier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type aws_lambda_function_vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_viewer_certificate() :: %{
        "AcmCertificateArn" => String.t() | atom(),
        "Certificate" => String.t() | atom(),
        "CertificateSource" => String.t() | atom(),
        "CloudFrontDefaultCertificate" => boolean(),
        "IamCertificateId" => String.t() | atom(),
        "MinimumProtocolVersion" => String.t() | atom(),
        "SslSupportMethod" => String.t() | atom()
      }

  """
  @type aws_cloud_front_distribution_viewer_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_stage_details() :: %{
        "AccessLogSettings" => aws_api_gateway_access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => String.t() | atom(),
        "DefaultRouteSettings" => aws_api_gateway_v2_route_settings(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastDeploymentStatusMessage" => String.t() | atom(),
        "LastUpdatedDate" => String.t() | atom(),
        "RouteSettings" => aws_api_gateway_v2_route_settings(),
        "StageName" => String.t() | atom(),
        "StageVariables" => map()
      }

  """
  @type aws_api_gateway_v2_stage_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_security_hub_v2_request() :: %{
        optional("Tags") => map()
      }

  """
  @type enable_security_hub_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_details() :: %{
        "AuthenticationStrategy" => String.t() | atom(),
        "AutoMinorVersionUpgrade" => boolean(),
        "BrokerArn" => String.t() | atom(),
        "BrokerId" => String.t() | atom(),
        "BrokerName" => String.t() | atom(),
        "DeploymentMode" => String.t() | atom(),
        "EncryptionOptions" => aws_amazon_mq_broker_encryption_options_details(),
        "EngineType" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "HostInstanceType" => String.t() | atom(),
        "LdapServerMetadata" => aws_amazon_mq_broker_ldap_server_metadata_details(),
        "Logs" => aws_amazon_mq_broker_logs_details(),
        "MaintenanceWindowStartTime" => aws_amazon_mq_broker_maintenance_window_start_time_details(),
        "PubliclyAccessible" => boolean(),
        "SecurityGroups" => list(String.t() | atom()),
        "StorageType" => String.t() | atom(),
        "SubnetIds" => list(String.t() | atom()),
        "Users" => list(aws_amazon_mq_broker_users_details())
      }

  """
  @type aws_amazon_mq_broker_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | atom(),
        "FindingAggregatorArn" => String.t() | atom(),
        "RegionLinkingMode" => String.t() | atom(),
        "Regions" => list(String.t() | atom())
      }

  """
  @type update_finding_aggregator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      map_filter() :: %{
        "Comparison" => list(any()),
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_security_hub_request() :: %{}

  """
  @type disable_security_hub_request() :: %{}

  @typedoc """

  ## Example:

      create_ticket_v2_response() :: %{
        "TicketId" => String.t() | atom(),
        "TicketSrcUrl" => String.t() | atom()
      }

  """
  @type create_ticket_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_load_balancers_details() :: %{
        "ContainerName" => String.t() | atom(),
        "ContainerPort" => integer(),
        "LoadBalancerName" => String.t() | atom(),
        "TargetGroupArn" => String.t() | atom()
      }

  """
  @type aws_ecs_service_load_balancers_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_configuration_policy_association() :: %{
        "ConfigurationPolicyAssociationIdentifiers" => configuration_policy_association(),
        "ErrorCode" => String.t() | atom(),
        "ErrorReason" => String.t() | atom()
      }

  """
  @type unprocessed_configuration_policy_association() :: %{(String.t() | atom()) => any()}

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

      aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: %{
        "Options" => map(),
        "Type" => String.t() | atom()
      }

  """
  @type aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      resource() :: %{
        "ApplicationArn" => String.t() | atom(),
        "ApplicationName" => String.t() | atom(),
        "DataClassification" => data_classification_details(),
        "Details" => resource_details(),
        "Id" => String.t() | atom(),
        "Partition" => list(any()),
        "Region" => String.t() | atom(),
        "ResourceRole" => String.t() | atom(),
        "Tags" => map(),
        "Type" => String.t() | atom()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indicator() :: %{
        "Key" => String.t() | atom(),
        "Title" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type indicator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: %{
        "BannerText" => String.t() | atom(),
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: %{
        "DeleteOnTermination" => boolean(),
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "SnapshotId" => String.t() | atom(),
        "Throughput" => integer(),
        "VolumeSize" => integer(),
        "VolumeType" => String.t() | atom()
      }

  """
  @type aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: %{
          (String.t() | atom()) => any()
        }

  @type accept_administrator_invitation_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type accept_invitation_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type batch_delete_automation_rules_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type batch_disable_standards_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_enable_standards_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_get_automation_rules_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type batch_get_configuration_policy_associations_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type batch_get_security_controls_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_get_standards_control_associations_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_import_findings_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_update_automation_rules_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type batch_update_findings_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type batch_update_findings_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type batch_update_standards_control_associations_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type connector_registrations_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_action_target_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_aggregator_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_automation_rule_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_automation_rule_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_configuration_policy_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_connector_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_finding_aggregator_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_insight_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_members_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type create_ticket_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type decline_invitations_errors() ::
          internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_action_target_errors() ::
          internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_aggregator_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_automation_rule_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configuration_policy_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_connector_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_finding_aggregator_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_insight_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_invitations_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type delete_members_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type describe_action_targets_errors() ::
          internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type describe_hub_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type describe_organization_configuration_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type describe_products_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type describe_products_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type describe_security_hub_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_standards_errors() ::
          internal_exception() | invalid_input_exception() | invalid_access_exception()

  @type describe_standards_controls_errors() ::
          internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type disable_import_findings_for_product_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type disable_organization_admin_account_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type disable_security_hub_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type disable_security_hub_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type disassociate_from_administrator_account_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type disassociate_from_master_account_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type disassociate_members_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type enable_import_findings_for_product_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type enable_organization_admin_account_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type enable_security_hub_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_access_exception()

  @type enable_security_hub_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_administrator_account_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_aggregator_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_automation_rule_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_configuration_policy_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_configuration_policy_association_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_connector_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_enabled_standards_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type get_finding_aggregator_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_finding_history_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type get_finding_statistics_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_findings_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type get_findings_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_insight_results_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_insights_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_invitations_count_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type get_master_account_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_members_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type get_resources_statistics_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_resources_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_security_control_definition_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type invite_members_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type list_aggregators_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_automation_rules_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_automation_rules_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_configuration_policies_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_configuration_policy_associations_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_connectors_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_enabled_products_for_import_errors() ::
          limit_exceeded_exception() | internal_exception() | invalid_access_exception()

  @type list_finding_aggregators_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_invitations_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_members_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_organization_admin_accounts_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_security_control_definitions_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_standards_control_associations_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | invalid_access_exception()

  @type list_tags_for_resource_errors() ::
          internal_exception() | invalid_input_exception() | resource_not_found_exception()

  @type start_configuration_policy_association_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type start_configuration_policy_disassociation_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type tag_resource_errors() ::
          internal_exception() | invalid_input_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_exception() | invalid_input_exception() | resource_not_found_exception()

  @type update_action_target_errors() ::
          internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_aggregator_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_automation_rule_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configuration_policy_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_connector_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_finding_aggregator_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_findings_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_insight_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_organization_configuration_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_security_control_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()
          | resource_in_use_exception()

  @type update_security_hub_configuration_errors() ::
          limit_exceeded_exception()
          | access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  @type update_standards_control_errors() ::
          access_denied_exception()
          | internal_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_access_exception()

  def metadata do
    %{
      api_version: "2018-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "securityhub",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SecurityHub",
      signature_version: "v4",
      signing_name: "securityhub",
      target_prefix: nil
    }
  end

  @doc """

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Accepts the invitation to be a member account and be monitored by the Security
  Hub administrator
  account that the invitation was sent from.

  This operation is only used by member accounts that are not added through
  Organizations.

  When the member account accepts the invitation, permission is granted to the
  administrator
  account to view findings generated in the member account.
  """
  @spec accept_administrator_invitation(map(), accept_administrator_invitation_request(), list()) ::
          {:ok, accept_administrator_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_administrator_invitation_errors()}
  def accept_administrator_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/administrator"
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
  This method is deprecated.

  Instead, use `AcceptAdministratorInvitation`.

  The Security Hub console continues to use `AcceptInvitation`. It will eventually
  change to use `AcceptAdministratorInvitation`. Any IAM policies that
  specifically control access to this function must continue to use
  `AcceptInvitation`. You should also add `AcceptAdministratorInvitation` to your
  policies to ensure that the correct permissions are in place after the console
  begins to use `AcceptAdministratorInvitation`.

  Accepts the invitation to be a member account and be monitored by the Security
  Hub administrator
  account that the invitation was sent from.

  This operation is only used by member accounts that are not added through
  Organizations.

  When the member account accepts the invitation, permission is granted to the
  administrator
  account to view findings generated in the member account.
  """
  @spec accept_invitation(map(), accept_invitation_request(), list()) ::
          {:ok, accept_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/master"
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

  Deletes one or more automation rules.
  """
  @spec batch_delete_automation_rules(map(), batch_delete_automation_rules_request(), list()) ::
          {:ok, batch_delete_automation_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_automation_rules_errors()}
  def batch_delete_automation_rules(%Client{} = client, input, options \\ []) do
    url_path = "/automationrules/delete"
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
  Disables the standards specified by the provided
  `StandardsSubscriptionArns`.

  For more information, see [Security Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *Security Hub User
  Guide*.
  """
  @spec batch_disable_standards(map(), batch_disable_standards_request(), list()) ::
          {:ok, batch_disable_standards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disable_standards_errors()}
  def batch_disable_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/deregister"
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
  Enables the standards specified by the provided `StandardsArn`.

  To obtain the
  ARN for a standard, use the `DescribeStandards`
  operation.

  For more information, see the [Security Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *Security Hub User Guide*.
  """
  @spec batch_enable_standards(map(), batch_enable_standards_request(), list()) ::
          {:ok, batch_enable_standards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_enable_standards_errors()}
  def batch_enable_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/register"
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

  Retrieves a list of details for automation rules based on rule Amazon Resource
  Names
  (ARNs).
  """
  @spec batch_get_automation_rules(map(), batch_get_automation_rules_request(), list()) ::
          {:ok, batch_get_automation_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_automation_rules_errors()}
  def batch_get_automation_rules(%Client{} = client, input, options \\ []) do
    url_path = "/automationrules/get"
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

  Returns associations between an Security Hub configuration and a batch of target
  accounts, organizational units, or the root.

  Only the Security Hub delegated administrator can invoke this operation from the
  home Region. A configuration
  can refer to a configuration policy or to a self-managed configuration.
  """
  @spec batch_get_configuration_policy_associations(
          map(),
          batch_get_configuration_policy_associations_request(),
          list()
        ) ::
          {:ok, batch_get_configuration_policy_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_configuration_policy_associations_errors()}
  def batch_get_configuration_policy_associations(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicyAssociation/batchget"
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

  Provides details about a batch of security controls for the current Amazon Web
  Services account and Amazon Web Services Region.
  """
  @spec batch_get_security_controls(map(), batch_get_security_controls_request(), list()) ::
          {:ok, batch_get_security_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_security_controls_errors()}
  def batch_get_security_controls(%Client{} = client, input, options \\ []) do
    url_path = "/securityControls/batchGet"
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

  For a batch of security controls and standards, identifies whether each control
  is currently enabled or disabled in a standard.

  Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION` error when the
  standard subscription for the association has a `NOT_READY_FOR_UPDATES` value
  for `StandardsControlsUpdatable`.
  """
  @spec batch_get_standards_control_associations(
          map(),
          batch_get_standards_control_associations_request(),
          list()
        ) ::
          {:ok, batch_get_standards_control_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_standards_control_associations_errors()}
  def batch_get_standards_control_associations(%Client{} = client, input, options \\ []) do
    url_path = "/associations/batchGet"
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
  Imports security findings generated by a finding provider into Security Hub.

  This action is requested by the finding provider to import its findings into
  Security Hub.

  `BatchImportFindings` must be called by one of the following:

    *
  The Amazon Web Services account that is associated with a finding if you are
  using
  the [default product ARN](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs)
  or are a partner sending findings from within a customer's Amazon Web Services
  account.
  In these cases, the identifier of the account that you are calling
  `BatchImportFindings`
  from needs to be the same as the `AwsAccountId` attribute for the finding.

    *
  An Amazon Web Services account that Security Hub has allow-listed for an
  official partner
  integration. In this case, you can call `BatchImportFindings` from the
  allow-listed
  account and send findings from different customer accounts in the same batch.

  The maximum allowed size for a finding is 240 Kb. An error is returned for any
  finding
  larger than 240 Kb.

  After a finding is created, `BatchImportFindings` cannot be used to update
  the following finding fields and objects, which Security Hub customers use to
  manage their
  investigation workflow.

    *

  `Note`

    *

  `UserDefinedFields`

    *

  `VerificationState`

    *

  `Workflow`

  Finding providers also should not use `BatchImportFindings` to update the
  following attributes.

    *

  `Confidence`

    *

  `Criticality`

    *

  `RelatedFindings`

    *

  `Severity`

    *

  `Types`

  Instead, finding providers use `FindingProviderFields` to provide values for
  these attributes.
  """
  @spec batch_import_findings(map(), batch_import_findings_request(), list()) ::
          {:ok, batch_import_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_import_findings_errors()}
  def batch_import_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/import"
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

  Updates one or more automation rules based on rule Amazon Resource Names (ARNs)
  and input parameters.
  """
  @spec batch_update_automation_rules(map(), batch_update_automation_rules_request(), list()) ::
          {:ok, batch_update_automation_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_automation_rules_errors()}
  def batch_update_automation_rules(%Client{} = client, input, options \\ []) do
    url_path = "/automationrules/update"
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

  Used by Security Hub customers to update information about their investigation
  into one or more findings.

  Requested by administrator accounts or member accounts.
  Administrator accounts can update findings for their account and their member
  accounts.
  A member account can update findings only for their own account.
  Administrator and member accounts can use this operation to update the following
  fields and objects for one or more findings:

    *

  `Confidence`

    *

  `Criticality`

    *

  `Note`

    *

  `RelatedFindings`

    *

  `Severity`

    *

  `Types`

    *

  `UserDefinedFields`

    *

  `VerificationState`

    *

  `Workflow`

  If you use this operation to update a finding, your updates don’t affect the
  value for the `UpdatedAt` field of the finding.
  Also note that it can take several minutes for Security Hub to process your
  request and update each finding specified in the request.

  You can configure IAM policies to restrict access to fields and field values.
  For example, you might not want member accounts to be able to suppress findings
  or change the finding severity.
  For more information see [Configuring access to BatchUpdateFindings](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
  in the *Security Hub User Guide*.
  """
  @spec batch_update_findings(map(), batch_update_findings_request(), list()) ::
          {:ok, batch_update_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_findings_errors()}
  def batch_update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/batchupdate"
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
  Used by customers to update information about their investigation into a
  finding.

  Requested by delegated administrator accounts or member accounts.
  Delegated administrator accounts can update findings for their account and their
  member accounts.
  Member accounts can update findings for their account. `BatchUpdateFindings` and
  `BatchUpdateFindingV2` both use `securityhub:BatchUpdateFindings` in the
  `Action` element of an IAM policy statement.
  You must have permission to perform the `securityhub:BatchUpdateFindings`
  action.
  Updates from `BatchUpdateFindingsV2` don't affect the value of
  f`inding_info.modified_time`, `finding_info.modified_time_dt`, `time`, `time_dt
  for a finding`. This API is in public preview and subject to change.
  """
  @spec batch_update_findings_v2(map(), batch_update_findings_v2_request(), list()) ::
          {:ok, batch_update_findings_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_findings_v2_errors()}
  def batch_update_findings_v2(%Client{} = client, input, options \\ []) do
    url_path = "/findingsv2/batchupdatev2"
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

  For a batch of security controls and standards, this operation updates the
  enablement status of a control in a standard.
  """
  @spec batch_update_standards_control_associations(
          map(),
          batch_update_standards_control_associations_request(),
          list()
        ) ::
          {:ok, batch_update_standards_control_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_standards_control_associations_errors()}
  def batch_update_standards_control_associations(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
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
  Grants permission to complete the authorization based on input parameters.

  This API is in preview release and subject to change.
  """
  @spec connector_registrations_v2(map(), connector_registrations_v2_request(), list()) ::
          {:ok, connector_registrations_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, connector_registrations_v2_errors()}
  def connector_registrations_v2(%Client{} = client, input, options \\ []) do
    url_path = "/connectorsv2/registrations"
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
  Creates a custom action target in Security Hub.

  You can use custom actions on findings and insights in Security Hub to trigger
  target actions
  in Amazon CloudWatch Events.
  """
  @spec create_action_target(map(), create_action_target_request(), list()) ::
          {:ok, create_action_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_action_target_errors()}
  def create_action_target(%Client{} = client, input, options \\ []) do
    url_path = "/actionTargets"
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
  Enables aggregation across Amazon Web Services Regions.

  This API is in public preview and subject to change.
  """
  @spec create_aggregator_v2(map(), create_aggregator_v2_request(), list()) ::
          {:ok, create_aggregator_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_aggregator_v2_errors()}
  def create_aggregator_v2(%Client{} = client, input, options \\ []) do
    url_path = "/aggregatorv2/create"
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

  Creates an automation rule based on input parameters.
  """
  @spec create_automation_rule(map(), create_automation_rule_request(), list()) ::
          {:ok, create_automation_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_automation_rule_errors()}
  def create_automation_rule(%Client{} = client, input, options \\ []) do
    url_path = "/automationrules/create"
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
  Creates a V2 automation rule.

  This API is in public preview and subject to change.
  """
  @spec create_automation_rule_v2(map(), create_automation_rule_v2_request(), list()) ::
          {:ok, create_automation_rule_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_automation_rule_v2_errors()}
  def create_automation_rule_v2(%Client{} = client, input, options \\ []) do
    url_path = "/automationrulesv2/create"
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

  Creates a configuration policy with the defined configuration.

  Only the Security Hub delegated administrator
  can invoke this operation from the home Region.
  """
  @spec create_configuration_policy(map(), create_configuration_policy_request(), list()) ::
          {:ok, create_configuration_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configuration_policy_errors()}
  def create_configuration_policy(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicy/create"
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
  Grants permission to create a connectorV2 based on input parameters.

  This API is in preview release and subject to change.
  """
  @spec create_connector_v2(map(), create_connector_v2_request(), list()) ::
          {:ok, create_connector_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connector_v2_errors()}
  def create_connector_v2(%Client{} = client, input, options \\ []) do
    url_path = "/connectorsv2"
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

  The *aggregation Region* is now called the *home Region*.

  Used to enable cross-Region aggregation. This operation can be invoked from the
  home Region only.

  For information about how cross-Region aggregation works, see [Understanding cross-Region aggregation in Security
  Hub](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html)
  in the *Security Hub User Guide*.
  """
  @spec create_finding_aggregator(map(), create_finding_aggregator_request(), list()) ::
          {:ok, create_finding_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_finding_aggregator_errors()}
  def create_finding_aggregator(%Client{} = client, input, options \\ []) do
    url_path = "/findingAggregator/create"
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
  Creates a custom insight in Security Hub.

  An insight is a consolidation of findings that relate
  to a security issue that requires attention or remediation.

  To group the related findings in the insight, use the
  `GroupByAttribute`.
  """
  @spec create_insight(map(), create_insight_request(), list()) ::
          {:ok, create_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_insight_errors()}
  def create_insight(%Client{} = client, input, options \\ []) do
    url_path = "/insights"
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
  Creates a member association in Security Hub between the specified accounts and
  the account
  used to make the request, which is the administrator account.

  If you are integrated with
  Organizations, then the administrator account is designated by the organization
  management account.

  `CreateMembers` is always used to add accounts that are not organization
  members.

  For accounts that are managed using Organizations, `CreateMembers` is only used
  in the following cases:

    *
  Security Hub is not configured to automatically add new organization accounts.

    *
  The account was disassociated or deleted in Security Hub.

  This action can only be used by an account that has Security Hub enabled. To
  enable Security Hub, you
  can use the `EnableSecurityHub` operation.

  For accounts that are not organization members, you create the account
  association and
  then send an invitation to the member account. To send the invitation, you use
  the
  `InviteMembers` operation. If the account owner accepts
  the invitation, the account becomes a member account in Security Hub.

  Accounts that are managed using Organizations don't receive an invitation. They
  automatically become a member account in Security Hub.

    *
  If the organization account does not have Security Hub enabled, then Security
  Hub and the default standards are automatically enabled. Note that Security Hub
  cannot be enabled automatically for the organization management account. The
  organization management account must enable Security Hub before the
  administrator account enables it as a member account.

    *
  For organization accounts that already have Security Hub enabled, Security Hub
  does not make any other changes to those accounts. It does not change their
  enabled standards or controls.

  A permissions policy is added that permits the administrator account to view the
  findings
  generated in the member account.

  To remove the association between the administrator and member accounts, use the
  `DisassociateFromMasterAccount` or `DisassociateMembers` operation.
  """
  @spec create_members(map(), create_members_request(), list()) ::
          {:ok, create_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_members_errors()}
  def create_members(%Client{} = client, input, options \\ []) do
    url_path = "/members"
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
  Grants permission to create a ticket in the chosen ITSM based on finding
  information for the provided finding metadata UID.

  This API is in preview release and subject to change.
  """
  @spec create_ticket_v2(map(), create_ticket_v2_request(), list()) ::
          {:ok, create_ticket_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ticket_v2_errors()}
  def create_ticket_v2(%Client{} = client, input, options \\ []) do
    url_path = "/ticketsv2"
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

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Declines invitations to become a Security Hub member account.

  A prospective member account uses this operation to decline an invitation to
  become a member.

  Only member accounts that aren't part of an Amazon Web Services organization
  should use this operation.
  Organization accounts don't receive invitations.
  """
  @spec decline_invitations(map(), decline_invitations_request(), list()) ::
          {:ok, decline_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decline_invitations_errors()}
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/decline"
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
  Deletes a custom action target from Security Hub.

  Deleting a custom action target does not affect any findings or insights that
  were
  already sent to Amazon CloudWatch Events using the custom action.
  """
  @spec delete_action_target(map(), String.t() | atom(), delete_action_target_request(), list()) ::
          {:ok, delete_action_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_action_target_errors()}
  def delete_action_target(%Client{} = client, action_target_arn, input, options \\ []) do
    url_path = "/actionTargets/#{AWS.Util.encode_multi_segment_uri(action_target_arn)}"
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
  Deletes the Aggregator V2.

  This API is in public preview and subject to change.
  """
  @spec delete_aggregator_v2(map(), String.t() | atom(), delete_aggregator_v2_request(), list()) ::
          {:ok, delete_aggregator_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_aggregator_v2_errors()}
  def delete_aggregator_v2(%Client{} = client, aggregator_v2_arn, input, options \\ []) do
    url_path = "/aggregatorv2/delete/#{AWS.Util.encode_multi_segment_uri(aggregator_v2_arn)}"
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
  Deletes a V2 automation rule.

  This API is in public preview and subject to change.
  """
  @spec delete_automation_rule_v2(
          map(),
          String.t() | atom(),
          delete_automation_rule_v2_request(),
          list()
        ) ::
          {:ok, delete_automation_rule_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_automation_rule_v2_errors()}
  def delete_automation_rule_v2(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/automationrulesv2/#{AWS.Util.encode_uri(identifier)}"
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

  Deletes a configuration policy.

  Only the Security Hub delegated administrator can invoke this operation
  from the home Region. For the deletion to succeed, you must first disassociate a
  configuration policy from target accounts,
  organizational units, or the root by invoking the
  `StartConfigurationPolicyDisassociation` operation.
  """
  @spec delete_configuration_policy(
          map(),
          String.t() | atom(),
          delete_configuration_policy_request(),
          list()
        ) ::
          {:ok, delete_configuration_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_policy_errors()}
  def delete_configuration_policy(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/configurationPolicy/#{AWS.Util.encode_uri(identifier)}"
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
  Grants permission to delete a connectorV2.

  This API is in preview release and subject to change.
  """
  @spec delete_connector_v2(map(), String.t() | atom(), delete_connector_v2_request(), list()) ::
          {:ok, delete_connector_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connector_v2_errors()}
  def delete_connector_v2(%Client{} = client, connector_id, input, options \\ []) do
    url_path = "/connectorsv2/#{AWS.Util.encode_multi_segment_uri(connector_id)}"
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

  The *aggregation Region* is now called the *home Region*.

  Deletes a finding aggregator. When you delete the finding aggregator, you stop
  cross-Region aggregation. Finding replication stops
  occurring from the linked Regions to the home Region.

  When you stop cross-Region aggregation, findings that were already replicated
  and sent to the home Region are still visible from
  the home Region. However, new findings and finding updates are no longer
  replicated and sent to the home Region.
  """
  @spec delete_finding_aggregator(
          map(),
          String.t() | atom(),
          delete_finding_aggregator_request(),
          list()
        ) ::
          {:ok, delete_finding_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_finding_aggregator_errors()}
  def delete_finding_aggregator(%Client{} = client, finding_aggregator_arn, input, options \\ []) do
    url_path =
      "/findingAggregator/delete/#{AWS.Util.encode_multi_segment_uri(finding_aggregator_arn)}"

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
  Deletes the insight specified by the `InsightArn`.
  """
  @spec delete_insight(map(), String.t() | atom(), delete_insight_request(), list()) ::
          {:ok, delete_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_insight_errors()}
  def delete_insight(%Client{} = client, insight_arn, input, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
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

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Deletes invitations to become a Security Hub member account.

  A Security Hub administrator account can use this operation to delete
  invitations sent to one or more prospective member accounts.

  This operation is only used to delete invitations that are sent to prospective
  member accounts that aren't part of an Amazon Web Services organization.
  Organization accounts don't receive invitations.
  """
  @spec delete_invitations(map(), delete_invitations_request(), list()) ::
          {:ok, delete_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_invitations_errors()}
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/delete"
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
  Deletes the specified member accounts from Security Hub.

  You can invoke this API only to delete accounts that became members through
  invitation. You can't invoke this
  API to delete accounts that belong to an Organizations organization.
  """
  @spec delete_members(map(), delete_members_request(), list()) ::
          {:ok, delete_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_members_errors()}
  def delete_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/delete"
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
  Returns a list of the custom action targets in Security Hub in your account.
  """
  @spec describe_action_targets(map(), describe_action_targets_request(), list()) ::
          {:ok, describe_action_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_action_targets_errors()}
  def describe_action_targets(%Client{} = client, input, options \\ []) do
    url_path = "/actionTargets/get"
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
  Returns details about the Hub resource in your account, including the
  `HubArn` and the time when you enabled Security Hub.
  """
  @spec describe_hub(map(), String.t() | atom() | nil, list()) ::
          {:ok, describe_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hub_errors()}
  def describe_hub(%Client{} = client, hub_arn \\ nil, options \\ []) do
    url_path = "/accounts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(hub_arn) do
        [{"HubArn", hub_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the way your organization is configured in Security
  Hub.

  Only the
  Security Hub administrator account can invoke this operation.
  """
  @spec describe_organization_configuration(map(), list()) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/organization/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about product integrations in Security Hub.

  You can optionally provide an integration ARN. If you provide an integration
  ARN, then
  the results only include that integration.

  If you don't provide an integration ARN, then the results include all of the
  available
  product integrations.
  """
  @spec describe_products(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_products_errors()}
  def describe_products(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        product_arn \\ nil,
        options \\ []
      ) do
    url_path = "/products"
    headers = []
    query_params = []

    query_params =
      if !is_nil(product_arn) do
        [{"ProductArn", product_arn} | query_params]
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
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the product integration.

  This API is in public preview and subject to change.
  """
  @spec describe_products_v2(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, describe_products_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_products_v2_errors()}
  def describe_products_v2(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/productsV2"
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
  Returns details about the service resource in your account.

  This API is in public preview and subject to change.
  """
  @spec describe_security_hub_v2(map(), list()) ::
          {:ok, describe_security_hub_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_security_hub_v2_errors()}
  def describe_security_hub_v2(%Client{} = client, options \\ []) do
    url_path = "/hubv2"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the available standards in Security Hub.

  For each standard, the results include the standard ARN, the name, and a
  description.
  """
  @spec describe_standards(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, describe_standards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_standards_errors()}
  def describe_standards(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/standards"
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
  Returns a list of security standards controls.

  For each control, the results include information about whether it is currently
  enabled,
  the severity, and a link to remediation information.

  This operation returns an empty list for standard subscriptions where
  `StandardsControlsUpdatable` has value `NOT_READY_FOR_UPDATES`.
  """
  @spec describe_standards_controls(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_standards_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_standards_controls_errors()}
  def describe_standards_controls(
        %Client{} = client,
        standards_subscription_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/standards/controls/#{AWS.Util.encode_multi_segment_uri(standards_subscription_arn)}"

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
  Disables the integration of the specified product with Security Hub.

  After the integration is
  disabled, findings from that product are no longer sent to Security Hub.
  """
  @spec disable_import_findings_for_product(
          map(),
          String.t() | atom(),
          disable_import_findings_for_product_request(),
          list()
        ) ::
          {:ok, disable_import_findings_for_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_import_findings_for_product_errors()}
  def disable_import_findings_for_product(
        %Client{} = client,
        product_subscription_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/productSubscriptions/#{AWS.Util.encode_multi_segment_uri(product_subscription_arn)}"

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
  Disables a Security Hub administrator account.

  Can only be called by the organization
  management account.
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
    url_path = "/organization/admin/disable"
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
  Disables Security Hub in your account only in the current Amazon Web Services
  Region.

  To disable Security Hub in all
  Regions, you must submit one request per Region where you have enabled Security
  Hub.

  You can't disable Security Hub in an account that is currently the Security Hub
  administrator.

  When you disable Security Hub, your existing findings and insights and any
  Security Hub configuration
  settings are deleted after 90 days and cannot be recovered. Any standards that
  were enabled
  are disabled, and your administrator and member account associations are
  removed.

  If you want to save your existing findings, you must export them before you
  disable
  Security Hub.
  """
  @spec disable_security_hub(map(), disable_security_hub_request(), list()) ::
          {:ok, disable_security_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_security_hub_errors()}
  def disable_security_hub(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
  Disable the service for the current Amazon Web Services Region or specified
  Amazon Web Services Region.

  This API is in public preview and subject to change.
  """
  @spec disable_security_hub_v2(map(), disable_security_hub_v2_request(), list()) ::
          {:ok, disable_security_hub_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_security_hub_v2_errors()}
  def disable_security_hub_v2(%Client{} = client, input, options \\ []) do
    url_path = "/hubv2"
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
  Disassociates the current Security Hub member account from the associated
  administrator
  account.

  This operation is only used by accounts that are not part of an organization.
  For
  organization accounts, only the administrator account can
  disassociate a member account.
  """
  @spec disassociate_from_administrator_account(
          map(),
          disassociate_from_administrator_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_administrator_account_errors()}
  def disassociate_from_administrator_account(%Client{} = client, input, options \\ []) do
    url_path = "/administrator/disassociate"
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
  This method is deprecated.

  Instead, use `DisassociateFromAdministratorAccount`.

  The Security Hub console continues to use `DisassociateFromMasterAccount`. It
  will eventually change to use `DisassociateFromAdministratorAccount`. Any IAM
  policies that specifically control access to this function must continue to use
  `DisassociateFromMasterAccount`. You should also add
  `DisassociateFromAdministratorAccount` to your policies to ensure that the
  correct permissions are in place after the console begins to use
  `DisassociateFromAdministratorAccount`.

  Disassociates the current Security Hub member account from the associated
  administrator
  account.

  This operation is only used by accounts that are not part of an organization.
  For
  organization accounts, only the administrator account can
  disassociate a member account.
  """
  @spec disassociate_from_master_account(
          map(),
          disassociate_from_master_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_master_account_errors()}
  def disassociate_from_master_account(%Client{} = client, input, options \\ []) do
    url_path = "/master/disassociate"
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
  Disassociates the specified member accounts from the associated administrator
  account.

  Can be used to disassociate both accounts that are managed using Organizations
  and accounts that
  were invited manually.
  """
  @spec disassociate_members(map(), disassociate_members_request(), list()) ::
          {:ok, disassociate_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_members_errors()}
  def disassociate_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/disassociate"
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
  Enables the integration of a partner product with Security Hub.

  Integrated products send
  findings to Security Hub.

  When you enable a product integration, a permissions policy that grants
  permission for
  the product to send findings to Security Hub is applied.
  """
  @spec enable_import_findings_for_product(
          map(),
          enable_import_findings_for_product_request(),
          list()
        ) ::
          {:ok, enable_import_findings_for_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_import_findings_for_product_errors()}
  def enable_import_findings_for_product(%Client{} = client, input, options \\ []) do
    url_path = "/productSubscriptions"
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
  Designates the Security Hub administrator account for an organization.

  Can only be called by
  the organization management account.
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
    url_path = "/organization/admin/enable"
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
  Enables Security Hub for your account in the current Region or the Region you
  specify in the
  request.

  When you enable Security Hub, you grant to Security Hub the permissions
  necessary to gather findings
  from other services that are integrated with Security Hub.

  When you use the `EnableSecurityHub` operation to enable Security Hub, you also
  automatically enable the following standards:

    *
  Center for Internet Security (CIS) Amazon Web Services Foundations Benchmark
  v1.2.0

    *
  Amazon Web Services Foundational Security Best Practices

  Other standards are not automatically enabled.

  To opt out of automatically enabled standards, set
  `EnableDefaultStandards` to `false`.

  After you enable Security Hub, to enable a standard, use the
  `BatchEnableStandards` operation. To disable a standard, use the
  `BatchDisableStandards` operation.

  To learn more, see the [setup information](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
  in the *Security Hub User Guide*.
  """
  @spec enable_security_hub(map(), enable_security_hub_request(), list()) ::
          {:ok, enable_security_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_security_hub_errors()}
  def enable_security_hub(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
  Enables the service in account for the current Amazon Web Services Region or
  specified Amazon Web Services Region.

  This API is in public preview and subject to change.
  """
  @spec enable_security_hub_v2(map(), enable_security_hub_v2_request(), list()) ::
          {:ok, enable_security_hub_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_security_hub_v2_errors()}
  def enable_security_hub_v2(%Client{} = client, input, options \\ []) do
    url_path = "/hubv2"
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
  Provides the details for the Security Hub administrator account for the current
  member account.

  Can be used by both member accounts that are managed using Organizations and
  accounts that were
  invited manually.
  """
  @spec get_administrator_account(map(), list()) ::
          {:ok, get_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_administrator_account_errors()}
  def get_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the configuration of the specified Aggregator V2.

  This API is in public preview and subject to change.
  """
  @spec get_aggregator_v2(map(), String.t() | atom(), list()) ::
          {:ok, get_aggregator_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregator_v2_errors()}
  def get_aggregator_v2(%Client{} = client, aggregator_v2_arn, options \\ []) do
    url_path = "/aggregatorv2/get/#{AWS.Util.encode_multi_segment_uri(aggregator_v2_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an automation rule for the V2 service.

  This API is in public preview and subject to change.
  """
  @spec get_automation_rule_v2(map(), String.t() | atom(), list()) ::
          {:ok, get_automation_rule_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_automation_rule_v2_errors()}
  def get_automation_rule_v2(%Client{} = client, identifier, options \\ []) do
    url_path = "/automationrulesv2/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Provides information about a configuration policy.

  Only the Security Hub delegated administrator can invoke
  this operation from the home Region.
  """
  @spec get_configuration_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_configuration_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_policy_errors()}
  def get_configuration_policy(%Client{} = client, identifier, options \\ []) do
    url_path = "/configurationPolicy/get/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the association between a configuration and a target account,
  organizational unit, or the root.

  The
  configuration can be a configuration policy or self-managed behavior. Only the
  Security Hub delegated administrator can
  invoke this operation from the home Region.
  """
  @spec get_configuration_policy_association(
          map(),
          get_configuration_policy_association_request(),
          list()
        ) ::
          {:ok, get_configuration_policy_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_policy_association_errors()}
  def get_configuration_policy_association(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicyAssociation/get"
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
  Grants permission to retrieve details for a connectorV2 based on connector id.

  This API is in preview release and subject to change.
  """
  @spec get_connector_v2(map(), String.t() | atom(), list()) ::
          {:ok, get_connector_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connector_v2_errors()}
  def get_connector_v2(%Client{} = client, connector_id, options \\ []) do
    url_path = "/connectorsv2/#{AWS.Util.encode_multi_segment_uri(connector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the standards that are currently enabled.
  """
  @spec get_enabled_standards(map(), get_enabled_standards_request(), list()) ::
          {:ok, get_enabled_standards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enabled_standards_errors()}
  def get_enabled_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/get"
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

  The *aggregation Region* is now called the *home Region*.

  Returns the current configuration in the calling account for cross-Region
  aggregation. A finding aggregator is a resource that establishes
  the home Region and any linked Regions.
  """
  @spec get_finding_aggregator(map(), String.t() | atom(), list()) ::
          {:ok, get_finding_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_finding_aggregator_errors()}
  def get_finding_aggregator(%Client{} = client, finding_aggregator_arn, options \\ []) do
    url_path =
      "/findingAggregator/get/#{AWS.Util.encode_multi_segment_uri(finding_aggregator_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the history of a Security Hub finding.

  The history includes changes made to any fields in
  the Amazon Web Services Security Finding Format (ASFF) except top-level
  timestamp fields, such as the `CreatedAt` and
  `UpdatedAt` fields.

  This operation might return fewer results than the maximum number of results
  (`MaxResults`) specified in a request, even
  when more results are available. If this occurs, the response includes a
  `NextToken` value, which you should use to retrieve
  the next set of results in the response. The presence of a `NextToken` value in
  a response doesn't necessarily indicate
  that the results are incomplete. However, you should continue to specify a
  `NextToken` value until you receive a
  response that doesn't include this value.
  """
  @spec get_finding_history(map(), get_finding_history_request(), list()) ::
          {:ok, get_finding_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_finding_history_errors()}
  def get_finding_history(%Client{} = client, input, options \\ []) do
    url_path = "/findingHistory/get"
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
  Returns aggregated statistical data about findings.

  `GetFindingStatisticsV2` use `securityhub:GetAdhocInsightResults` in the
  `Action` element of an IAM policy statement.
  You must have permission to perform the `s` action. This API is in public
  preview and subject to change.
  """
  @spec get_finding_statistics_v2(map(), get_finding_statistics_v2_request(), list()) ::
          {:ok, get_finding_statistics_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_finding_statistics_v2_errors()}
  def get_finding_statistics_v2(%Client{} = client, input, options \\ []) do
    url_path = "/findingsv2/statistics"
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
  Returns a list of findings that match the specified criteria.

  If cross-Region aggregation is enabled, then when you call `GetFindings` from
  the home Region, the results include all of the matching findings from both the
  home Region and linked Regions.
  """
  @spec get_findings(map(), get_findings_request(), list()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_errors()}
  def get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
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
  Return a list of findings that match the specified criteria.

  `GetFindings` and `GetFindingsV2` both use `securityhub:GetFindings` in the
  `Action` element of an IAM policy statement.
  You must have permission to perform the `securityhub:GetFindings` action. This
  API is in public preview and subject to change.
  """
  @spec get_findings_v2(map(), get_findings_v2_request(), list()) ::
          {:ok, get_findings_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_v2_errors()}
  def get_findings_v2(%Client{} = client, input, options \\ []) do
    url_path = "/findingsv2"
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
  Lists the results of the Security Hub insight specified by the insight ARN.
  """
  @spec get_insight_results(map(), String.t() | atom(), list()) ::
          {:ok, get_insight_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insight_results_errors()}
  def get_insight_results(%Client{} = client, insight_arn, options \\ []) do
    url_path = "/insights/results/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists and describes insights for the specified insight ARNs.
  """
  @spec get_insights(map(), get_insights_request(), list()) ::
          {:ok, get_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insights_errors()}
  def get_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights/get"
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

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Returns the count of all Security Hub membership invitations that were sent to
  the
  calling member account, not including the currently accepted invitation.
  """
  @spec get_invitations_count(map(), list()) ::
          {:ok, get_invitations_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_invitations_count_errors()}
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitations/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This method is deprecated.

  Instead, use `GetAdministratorAccount`.

  The Security Hub console continues to use `GetMasterAccount`. It will eventually
  change to use `GetAdministratorAccount`. Any IAM policies that specifically
  control access to this function must continue to use `GetMasterAccount`. You
  should also add `GetAdministratorAccount` to your policies to ensure that the
  correct permissions are in place after the console begins to use
  `GetAdministratorAccount`.

  Provides the details for the Security Hub administrator account for the current
  member account.

  Can be used by both member accounts that are managed using Organizations and
  accounts that were
  invited manually.
  """
  @spec get_master_account(map(), list()) ::
          {:ok, get_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_master_account_errors()}
  def get_master_account(%Client{} = client, options \\ []) do
    url_path = "/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details for the Security Hub member accounts for the specified
  account IDs.

  An administrator account can be either the delegated Security Hub administrator
  account for an
  organization or an administrator account that enabled Security Hub manually.

  The results include both member accounts that are managed using Organizations
  and accounts that
  were invited manually.
  """
  @spec get_members(map(), get_members_request(), list()) ::
          {:ok, get_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_members_errors()}
  def get_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/get"
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
  Retrieves statistical information about Amazon Web Services resources and their
  associated security findings.

  This API is in public preview and subject to change.
  """
  @spec get_resources_statistics_v2(map(), get_resources_statistics_v2_request(), list()) ::
          {:ok, get_resources_statistics_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resources_statistics_v2_errors()}
  def get_resources_statistics_v2(%Client{} = client, input, options \\ []) do
    url_path = "/resourcesv2/statistics"
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
  Returns a list of resources.

  This API is in public preview and subject to change.
  """
  @spec get_resources_v2(map(), get_resources_v2_request(), list()) ::
          {:ok, get_resources_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resources_v2_errors()}
  def get_resources_v2(%Client{} = client, input, options \\ []) do
    url_path = "/resourcesv2"
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

  Retrieves the definition of a security control.

  The definition includes the control title, description, Region availability,
  parameter definitions, and other details.
  """
  @spec get_security_control_definition(map(), String.t() | atom(), list()) ::
          {:ok, get_security_control_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_security_control_definition_errors()}
  def get_security_control_definition(%Client{} = client, security_control_id, options \\ []) do
    url_path = "/securityControl/definition"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_control_id) do
        [{"SecurityControlId", security_control_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Invites other Amazon Web Services accounts to become member accounts for the
  Security Hub administrator account that
  the invitation is sent from.

  This operation is only used to invite accounts that don't belong to an Amazon
  Web Services organization.
  Organization accounts don't receive invitations.

  Before you can use this action to invite a member, you must first use the
  `CreateMembers` action to create the member account in Security Hub.

  When the account owner enables Security Hub and accepts the invitation to become
  a member
  account, the administrator account can view the findings generated in the member
  account.
  """
  @spec invite_members(map(), invite_members_request(), list()) ::
          {:ok, invite_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invite_members_errors()}
  def invite_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/invite"
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
  Retrieves a list of V2 aggregators.

  This API is in public preview and subject to change.
  """
  @spec list_aggregators_v2(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_aggregators_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aggregators_v2_errors()}
  def list_aggregators_v2(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/aggregatorv2/list"
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

  A list of automation rules and their metadata for the calling account.
  """
  @spec list_automation_rules(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_automation_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_rules_errors()}
  def list_automation_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/automationrules/list"
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
  Returns a list of automation rules and metadata for the calling account.

  This API is in public preview and subject to change.
  """
  @spec list_automation_rules_v2(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_automation_rules_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_rules_v2_errors()}
  def list_automation_rules_v2(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/automationrulesv2/list"
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

  Lists the configuration policies that the Security Hub delegated administrator
  has created for your
  organization.

  Only the delegated administrator can invoke this operation from the home Region.
  """
  @spec list_configuration_policies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_configuration_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_policies_errors()}
  def list_configuration_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/configurationPolicy/list"
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

  Provides information about the associations for your configuration policies and
  self-managed behavior.

  Only the
  Security Hub delegated administrator can invoke this operation from the home
  Region.
  """
  @spec list_configuration_policy_associations(
          map(),
          list_configuration_policy_associations_request(),
          list()
        ) ::
          {:ok, list_configuration_policy_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_policy_associations_errors()}
  def list_configuration_policy_associations(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicyAssociation/list"
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
  Grants permission to retrieve a list of connectorsV2 and their metadata for the
  calling account.

  This API is in preview release and subject to change.
  """
  @spec list_connectors_v2(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_connectors_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connectors_v2_errors()}
  def list_connectors_v2(
        %Client{} = client,
        connector_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        provider_name \\ nil,
        options \\ []
      ) do
    url_path = "/connectorsv2"
    headers = []
    query_params = []

    query_params =
      if !is_nil(provider_name) do
        [{"ProviderName", provider_name} | query_params]
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
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connector_status) do
        [{"ConnectorStatus", connector_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all findings-generating solutions (products) that you are subscribed to
  receive
  findings from in Security Hub.
  """
  @spec list_enabled_products_for_import(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_enabled_products_for_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_enabled_products_for_import_errors()}
  def list_enabled_products_for_import(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/productSubscriptions"
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
  If cross-Region aggregation is enabled, then `ListFindingAggregators` returns
  the Amazon Resource Name (ARN)
  of the finding aggregator.

  You can run this operation from any Amazon Web Services Region.
  """
  @spec list_finding_aggregators(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_finding_aggregators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_finding_aggregators_errors()}
  def list_finding_aggregators(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/findingAggregator/list"
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

  We recommend using Organizations instead of Security Hub invitations to manage
  your member accounts.

  For information, see [Managing Security Hub administrator and member accounts with
  Organizations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html)
  in the *Security Hub User Guide*.

  Lists all Security Hub membership invitations that were sent to the calling
  account.

  Only accounts that are managed by invitation can use this operation.
  Accounts that are managed using the integration with Organizations don't receive
  invitations.
  """
  @spec list_invitations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invitations_errors()}
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitations"
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
  Lists details about all member accounts for the current Security Hub
  administrator
  account.

  The results include both member accounts that belong to an organization and
  member
  accounts that were invited manually.
  """
  @spec list_members(
          map(),
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
        max_results \\ nil,
        next_token \\ nil,
        only_associated \\ nil,
        options \\ []
      ) do
    url_path = "/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(only_associated) do
        [{"OnlyAssociated", only_associated} | query_params]
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
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Security Hub administrator accounts.

  Can only be called by the organization
  management account.
  """
  @spec list_organization_admin_accounts(
          map(),
          String.t() | atom() | nil,
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
        feature \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/organization/admin"
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
      if !is_nil(feature) do
        [{"Feature", feature} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists all of the security controls that apply to a specified standard.
  """
  @spec list_security_control_definitions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_control_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_control_definitions_errors()}
  def list_security_control_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        standards_arn \\ nil,
        options \\ []
      ) do
    url_path = "/securityControls/definitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(standards_arn) do
        [{"StandardsArn", standards_arn} | query_params]
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
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Specifies whether a control is currently enabled or disabled in each enabled
  standard in the calling account.

  This operation omits standards control associations for standard subscriptions
  where `StandardsControlsUpdatable` has value `NOT_READY_FOR_UPDATES`.
  """
  @spec list_standards_control_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_standards_control_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_standards_control_associations_errors()}
  def list_standards_control_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        security_control_id,
        options \\ []
      ) do
    url_path = "/associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_control_id) do
        [{"SecurityControlId", security_control_id} | query_params]
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
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags associated with a resource.
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

  Associates a target account, organizational unit, or the root with a specified
  configuration.

  The target can be
  associated with a configuration policy or self-managed behavior. Only the
  Security Hub delegated administrator can
  invoke this operation from the home Region.
  """
  @spec start_configuration_policy_association(
          map(),
          start_configuration_policy_association_request(),
          list()
        ) ::
          {:ok, start_configuration_policy_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_configuration_policy_association_errors()}
  def start_configuration_policy_association(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicyAssociation/associate"
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

  Disassociates a target account, organizational unit, or the root from a
  specified configuration.

  When you
  disassociate a configuration from its target, the target inherits the
  configuration of the closest parent. If there’s no
  configuration to inherit, the target retains its settings but becomes a
  self-managed account. A target can be disassociated from
  a configuration policy or self-managed behavior. Only the Security Hub delegated
  administrator can invoke this
  operation from the home Region.
  """
  @spec start_configuration_policy_disassociation(
          map(),
          start_configuration_policy_disassociation_request(),
          list()
        ) ::
          {:ok, start_configuration_policy_disassociation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_configuration_policy_disassociation_errors()}
  def start_configuration_policy_disassociation(%Client{} = client, input, options \\ []) do
    url_path = "/configurationPolicyAssociation/disassociate"
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
  Adds one or more tags to a resource.
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
      200
    )
  end

  @doc """
  Removes one or more tags from a resource.
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
      200
    )
  end

  @doc """
  Updates the name and description of a custom action target in Security Hub.
  """
  @spec update_action_target(map(), String.t() | atom(), update_action_target_request(), list()) ::
          {:ok, update_action_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_action_target_errors()}
  def update_action_target(%Client{} = client, action_target_arn, input, options \\ []) do
    url_path = "/actionTargets/#{AWS.Util.encode_multi_segment_uri(action_target_arn)}"
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
  Udpates the configuration for the Aggregator V2.

  This API is in public preview and subject to change.
  """
  @spec update_aggregator_v2(map(), String.t() | atom(), update_aggregator_v2_request(), list()) ::
          {:ok, update_aggregator_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_aggregator_v2_errors()}
  def update_aggregator_v2(%Client{} = client, aggregator_v2_arn, input, options \\ []) do
    url_path = "/aggregatorv2/update/#{AWS.Util.encode_multi_segment_uri(aggregator_v2_arn)}"
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
  Updates a V2 automation rule.

  This API is in public preview and subject to change.
  """
  @spec update_automation_rule_v2(
          map(),
          String.t() | atom(),
          update_automation_rule_v2_request(),
          list()
        ) ::
          {:ok, update_automation_rule_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_automation_rule_v2_errors()}
  def update_automation_rule_v2(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/automationrulesv2/#{AWS.Util.encode_uri(identifier)}"
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

  Updates a configuration policy.

  Only the Security Hub delegated
  administrator can invoke this operation from the home Region.
  """
  @spec update_configuration_policy(
          map(),
          String.t() | atom(),
          update_configuration_policy_request(),
          list()
        ) ::
          {:ok, update_configuration_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_policy_errors()}
  def update_configuration_policy(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/configurationPolicy/#{AWS.Util.encode_uri(identifier)}"
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
  Grants permission to update a connectorV2 based on its id and input parameters.

  This API is in preview release and subject to change.
  """
  @spec update_connector_v2(map(), String.t() | atom(), update_connector_v2_request(), list()) ::
          {:ok, update_connector_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connector_v2_errors()}
  def update_connector_v2(%Client{} = client, connector_id, input, options \\ []) do
    url_path = "/connectorsv2/#{AWS.Util.encode_multi_segment_uri(connector_id)}"
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

  The *aggregation Region* is now called the *home Region*.

  Updates cross-Region aggregation settings. You can use this operation to update
  the Region linking mode and the list
  of included or excluded Amazon Web Services Regions. However, you can't use this
  operation to change the home Region.

  You can invoke this operation from the current home Region only.
  """
  @spec update_finding_aggregator(map(), update_finding_aggregator_request(), list()) ::
          {:ok, update_finding_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_finding_aggregator_errors()}
  def update_finding_aggregator(%Client{} = client, input, options \\ []) do
    url_path = "/findingAggregator/update"
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

  `UpdateFindings` is a deprecated operation.

  Instead of `UpdateFindings`, use
  the `BatchUpdateFindings` operation.

  The `UpdateFindings` operation updates the `Note` and `RecordState` of the
  Security Hub aggregated
  findings that the filter attributes specify. Any member account that can view
  the finding
  can also see the update to the finding.

  Finding updates made with `UpdateFindings` aren't persisted if the same finding
  is later updated by the
  finding provider through the `BatchImportFindings` operation. In addition,
  Security Hub doesn't
  record updates made with `UpdateFindings` in the finding history.
  """
  @spec update_findings(map(), update_findings_request(), list()) ::
          {:ok, update_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_findings_errors()}
  def update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
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
  Updates the Security Hub insight identified by the specified insight ARN.
  """
  @spec update_insight(map(), String.t() | atom(), update_insight_request(), list()) ::
          {:ok, update_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_insight_errors()}
  def update_insight(%Client{} = client, insight_arn, input, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
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
  Updates the configuration of your organization in Security Hub.

  Only the
  Security Hub administrator account can invoke this operation.
  """
  @spec update_organization_configuration(
          map(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organization/configuration"
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

  Updates the properties of a security control.
  """
  @spec update_security_control(map(), update_security_control_request(), list()) ::
          {:ok, update_security_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_security_control_errors()}
  def update_security_control(%Client{} = client, input, options \\ []) do
    url_path = "/securityControl/update"
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
  Updates configuration options for Security Hub.
  """
  @spec update_security_hub_configuration(
          map(),
          update_security_hub_configuration_request(),
          list()
        ) ::
          {:ok, update_security_hub_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_security_hub_configuration_errors()}
  def update_security_hub_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
  Used to control whether an individual security standard control is enabled or
  disabled.

  Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION` error when the
  standard subscription for the control has `StandardsControlsUpdatable` value
  `NOT_READY_FOR_UPDATES`.
  """
  @spec update_standards_control(
          map(),
          String.t() | atom(),
          update_standards_control_request(),
          list()
        ) ::
          {:ok, update_standards_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_standards_control_errors()}
  def update_standards_control(%Client{} = client, standards_control_arn, input, options \\ []) do
    url_path = "/standards/control/#{AWS.Util.encode_multi_segment_uri(standards_control_arn)}"
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
end
