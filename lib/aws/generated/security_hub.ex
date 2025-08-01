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
        optional("HubArn") => String.t() | Atom.t()
      }

  """
  @type describe_hub_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_method_settings() :: %{
        "CacheDataEncrypted" => boolean(),
        "CacheTtlInSeconds" => integer(),
        "CachingEnabled" => boolean(),
        "DataTraceEnabled" => boolean(),
        "HttpMethod" => String.t() | Atom.t(),
        "LoggingLevel" => String.t() | Atom.t(),
        "MetricsEnabled" => boolean(),
        "RequireAuthorizationForCacheControl" => boolean(),
        "ResourcePath" => String.t() | Atom.t(),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float(),
        "UnauthorizedCacheControlHeaderStrategy" => String.t() | Atom.t()
      }

  """
  @type aws_api_gateway_method_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_request() :: %{}

  """
  @type disassociate_from_master_account_request() :: %{}

  @typedoc """

  ## Example:

      update_standards_control_request() :: %{
        optional("ControlStatus") => list(any()),
        optional("DisabledReason") => String.t() | Atom.t()
      }

  """
  @type update_standards_control_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_managed_by() :: %{
        "Company" => String.t() | Atom.t(),
        "Product" => String.t() | Atom.t()
      }

  """
  @type standards_managed_by() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: %{
        "AvailabilityZoneCount" => integer()
      }

  """
  @type aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_connector_v2_response() :: %{
        "ConnectorArn" => String.t() | Atom.t(),
        "ConnectorId" => String.t() | Atom.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Health" => health_check(),
        "KmsKeyArn" => String.t() | Atom.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "ProviderDetail" => list()
      }

  """
  @type get_connector_v2_response() :: %{String.t() | Atom.t() => any()}

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
  @type aws_security_finding_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | Atom.t(),
        "FindingAggregatorArn" => String.t() | Atom.t(),
        "RegionLinkingMode" => String.t() | Atom.t(),
        "Regions" => list(String.t() | Atom.t())
      }

  """
  @type get_finding_aggregator_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_execute_command_configuration_details() :: %{
        "KmsKeyId" => String.t() | Atom.t(),
        "LogConfiguration" => aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details(),
        "Logging" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_cluster_configuration_execute_command_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_dynamo_db_table_local_secondary_index() :: %{
        "IndexArn" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "Projection" => aws_dynamo_db_table_projection()
      }

  """
  @type aws_dynamo_db_table_local_secondary_index() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_findings_error() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t()
      }

  """
  @type import_findings_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() :: %{
        "AvailabilityZoneCount" => integer()
      }

  """
  @type aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source() :: %{
        "RulesSourceList" => rule_group_source_list_details(),
        "RulesString" => String.t() | Atom.t(),
        "StatefulRules" => list(rule_group_source_stateful_rules_details()),
        "StatelessRulesAndCustomActions" => rule_group_source_stateless_rules_and_custom_actions_details()
      }

  """
  @type rule_group_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: %{
        "ClientRootCertificateChain" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_api_gateway_access_log_settings() :: %{
        "DestinationArn" => String.t() | Atom.t(),
        "Format" => String.t() | Atom.t()
      }

  """
  @type aws_api_gateway_access_log_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_node() :: %{
        "NodeRole" => String.t() | Atom.t(),
        "PrivateIpAddress" => String.t() | Atom.t(),
        "PublicIpAddress" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_cluster_node() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_resize_info() :: %{
        "AllowCancelResize" => boolean(),
        "ResizeType" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_resize_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() :: %{
        "Add" => list(String.t() | Atom.t()),
        "Drop" => list(String.t() | Atom.t())
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_dead_letter_config() :: %{
        "TargetArn" => String.t() | Atom.t()
      }

  """
  @type aws_lambda_function_dead_letter_config() :: %{String.t() | Atom.t() => any()}

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
  @type boolean_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      record() :: %{
        "JsonPath" => String.t() | Atom.t(),
        "RecordIndex" => float()
      }

  """
  @type record() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_details() :: %{
        "HostedZone" => aws_route53_hosted_zone_object_details(),
        "NameServers" => list(String.t() | Atom.t()),
        "QueryLoggingConfig" => aws_route53_query_logging_config_details(),
        "Vpcs" => list(aws_route53_hosted_zone_vpc_details())
      }

  """
  @type aws_route53_hosted_zone_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_details() :: %{
        "Action" => aws_wafv2_rules_action_details(),
        "Name" => String.t() | Atom.t(),
        "OverrideAction" => String.t() | Atom.t(),
        "Priority" => integer(),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_rules_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      integer_list_configuration_options() :: %{
        "DefaultValue" => list(integer()),
        "Max" => integer(),
        "MaxItems" => integer(),
        "Min" => integer()
      }

  """
  @type integer_list_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ocsf_number_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => number_filter()
      }

  """
  @type ocsf_number_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_user_details() :: %{
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | Atom.t(),
        "GroupList" => list(String.t() | Atom.t()),
        "Path" => String.t() | Atom.t(),
        "PermissionsBoundary" => aws_iam_permissions_boundary(),
        "UserId" => String.t() | Atom.t(),
        "UserName" => String.t() | Atom.t(),
        "UserPolicyList" => list(aws_iam_user_policy())
      }

  """
  @type aws_iam_user_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      container_details() :: %{
        "ContainerRuntime" => String.t() | Atom.t(),
        "ImageId" => String.t() | Atom.t(),
        "ImageName" => String.t() | Atom.t(),
        "LaunchedAt" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Privileged" => boolean(),
        "VolumeMounts" => list(volume_mount())
      }

  """
  @type container_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_instance_profile_role() :: %{
        "Arn" => String.t() | Atom.t(),
        "AssumeRolePolicyDocument" => String.t() | Atom.t(),
        "CreateDate" => String.t() | Atom.t(),
        "Path" => String.t() | Atom.t(),
        "RoleId" => String.t() | Atom.t(),
        "RoleName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_instance_profile_role() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_details() :: %{
        "DbSecurityGroupArn" => String.t() | Atom.t(),
        "DbSecurityGroupDescription" => String.t() | Atom.t(),
        "DbSecurityGroupName" => String.t() | Atom.t(),
        "Ec2SecurityGroups" => list(aws_rds_db_security_group_ec2_security_group()),
        "IpRanges" => list(aws_rds_db_security_group_ip_range()),
        "OwnerId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_security_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_standards_controls_response() :: %{
        "Controls" => list(standards_control()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type describe_standards_controls_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_placement_constraints_details() :: %{
        "Expression" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_placement_constraints_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "End" => float(),
        "Start" => float(),
        "StartColumn" => float()
      }

  """
  @type range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_ip_range() :: %{
        "CidrIp" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_security_group_ip_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_layer_version_details() :: %{
        "CompatibleRuntimes" => list(String.t() | Atom.t()),
        "CreatedDate" => String.t() | Atom.t(),
        "Version" => float()
      }

  """
  @type aws_lambda_layer_version_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_api_details() :: %{
        "ApiEndpoint" => String.t() | Atom.t(),
        "ApiId" => String.t() | Atom.t(),
        "ApiKeySelectionExpression" => String.t() | Atom.t(),
        "CorsConfiguration" => aws_cors_configuration(),
        "CreatedDate" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ProtocolType" => String.t() | Atom.t(),
        "RouteSelectionExpression" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_api_gateway_v2_api_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      decline_invitations_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type decline_invitations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      configuration_policy_association_summary() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | Atom.t(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | Atom.t(),
        "TargetId" => String.t() | Atom.t(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type configuration_policy_association_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_endpoint() :: %{
        "Address" => String.t() | Atom.t(),
        "Port" => integer()
      }

  """
  @type aws_redshift_cluster_endpoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_provisioned_throughput_override() :: %{
        "ReadCapacityUnits" => integer()
      }

  """
  @type aws_dynamo_db_table_provisioned_throughput_override() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firewall_policy_details() :: %{
        "StatefulRuleGroupReferences" => list(firewall_policy_stateful_rule_group_references_details()),
        "StatelessCustomActions" => list(firewall_policy_stateless_custom_actions_details()),
        "StatelessDefaultActions" => list(String.t() | Atom.t()),
        "StatelessFragmentDefaultActions" => list(String.t() | Atom.t()),
        "StatelessRuleGroupReferences" => list(firewall_policy_stateless_rule_group_references_details())
      }

  """
  @type firewall_policy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context_attributes() :: %{
        "CreationDate" => String.t() | Atom.t(),
        "MfaAuthenticated" => boolean()
      }

  """
  @type aws_iam_access_key_session_context_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_response() :: %{}

  """
  @type disable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_default_cache_behavior() :: %{
        "ViewerProtocolPolicy" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_default_cache_behavior() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elbv2_load_balancer_attribute() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_elbv2_load_balancer_attribute() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_control() :: %{
        "Description" => String.t() | Atom.t(),
        "LastUpdateReason" => String.t() | Atom.t(),
        "Parameters" => map(),
        "RemediationUrl" => String.t() | Atom.t(),
        "SecurityControlArn" => String.t() | Atom.t(),
        "SecurityControlId" => String.t() | Atom.t(),
        "SecurityControlStatus" => list(any()),
        "SeverityRating" => list(any()),
        "Title" => String.t() | Atom.t(),
        "UpdateStatus" => list(any())
      }

  """
  @type security_control() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_account_public_access_block_details() :: %{
        "BlockPublicAcls" => boolean(),
        "BlockPublicPolicy" => boolean(),
        "IgnorePublicAcls" => boolean(),
        "RestrictPublicBuckets" => boolean()
      }

  """
  @type aws_s3_account_public_access_block_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_security_hub_response() :: %{}

  """
  @type disable_security_hub_response() :: %{}

  @typedoc """

  ## Example:

      classification_status() :: %{
        "Code" => String.t() | Atom.t(),
        "Reason" => String.t() | Atom.t()
      }

  """
  @type classification_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vulnerability() :: %{
        "CodeVulnerabilities" => list(vulnerability_code_vulnerabilities()),
        "Cvss" => list(cvss()),
        "EpssScore" => float(),
        "ExploitAvailable" => list(any()),
        "FixAvailable" => list(any()),
        "Id" => String.t() | Atom.t(),
        "LastKnownExploitAt" => String.t() | Atom.t(),
        "ReferenceUrls" => list(String.t() | Atom.t()),
        "RelatedVulnerabilities" => list(String.t() | Atom.t()),
        "Vendor" => vulnerability_vendor(),
        "VulnerablePackages" => list(software_package())
      }

  """
  @type vulnerability() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_environment_link() :: %{
        "EnvironmentName" => String.t() | Atom.t(),
        "LinkName" => String.t() | Atom.t()
      }

  """
  @type aws_elastic_beanstalk_environment_environment_link() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecr_repository_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "ImageScanningConfiguration" => aws_ecr_repository_image_scanning_configuration_details(),
        "ImageTagMutability" => String.t() | Atom.t(),
        "LifecyclePolicy" => aws_ecr_repository_lifecycle_policy_details(),
        "RepositoryName" => String.t() | Atom.t(),
        "RepositoryPolicyText" => String.t() | Atom.t()
      }

  """
  @type aws_ecr_repository_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_header() :: %{
        "Destination" => network_path_component_details(),
        "Protocol" => String.t() | Atom.t(),
        "Source" => network_path_component_details()
      }

  """
  @type network_header() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_insights_request() :: %{
        optional("InsightArns") => list(String.t() | Atom.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type get_insights_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      availability_zone() :: %{
        "SubnetId" => String.t() | Atom.t(),
        "ZoneName" => String.t() | Atom.t()
      }

  """
  @type availability_zone() :: %{String.t() | Atom.t() => any()}

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
  @type ocsf_string_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_details() :: %{
        "ScanEc2InstanceWithFindings" => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details(),
        "ServiceRole" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() :: %{
        "Prefix" => String.t() | Atom.t(),
        "Tag" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_cluster_config_details() :: %{
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => String.t() | Atom.t(),
        "InstanceCount" => integer(),
        "InstanceType" => String.t() | Atom.t(),
        "WarmCount" => integer(),
        "WarmEnabled" => boolean(),
        "WarmType" => String.t() | Atom.t(),
        "ZoneAwarenessConfig" => aws_open_search_service_domain_cluster_config_zone_awareness_config_details(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_cluster_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      network_path_component() :: %{
        "ComponentId" => String.t() | Atom.t(),
        "ComponentType" => String.t() | Atom.t(),
        "Egress" => network_header(),
        "Ingress" => network_header()
      }

  """
  @type network_path_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_parameter_group() :: %{
        "ClusterParameterStatusList" => list(aws_redshift_cluster_cluster_parameter_status()),
        "ParameterApplyStatus" => String.t() | Atom.t(),
        "ParameterGroupName" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_cluster_parameter_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_action_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_action_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      association_state_details() :: %{
        "State" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type association_state_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "Members" => list(member()),
        "UnprocessedAccounts" => list(result())
      }

  """
  @type get_members_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      waf_action() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type waf_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      status_reason() :: %{
        "Description" => String.t() | Atom.t(),
        "ReasonCode" => String.t() | Atom.t()
      }

  """
  @type status_reason() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_local_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | Atom.t()
      }

  """
  @type action_local_port_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_details() :: %{
        "Sasl" => aws_msk_cluster_cluster_info_client_authentication_sasl_details(),
        "Tls" => aws_msk_cluster_cluster_info_client_authentication_tls_details(),
        "Unauthenticated" => aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      waf_excluded_rule() :: %{
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type waf_excluded_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_mount_point() :: %{
        "ContainerPath" => String.t() | Atom.t(),
        "SourceVolume" => String.t() | Atom.t()
      }

  """
  @type aws_mount_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_destination_ports() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_destination_ports() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      admin_account() :: %{
        "AccountId" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type admin_account() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sequence() :: %{
        "Actors" => list(actor()),
        "Endpoints" => list(network_endpoint()),
        "SequenceIndicators" => list(indicator()),
        "Signals" => list(signal()),
        "Uid" => String.t() | Atom.t()
      }

  """
  @type sequence() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "Recommendation" => recommendation()
      }

  """
  @type remediation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: %{
        "Operands" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details()),
        "Prefix" => String.t() | Atom.t(),
        "Tag" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_options() :: %{
        "CertificateTransparencyLoggingPreference" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_details() :: %{
        "ClientAuthentication" => aws_msk_cluster_cluster_info_client_authentication_details(),
        "ClusterName" => String.t() | Atom.t(),
        "CurrentVersion" => String.t() | Atom.t(),
        "EncryptionInfo" => aws_msk_cluster_cluster_info_encryption_info_details(),
        "EnhancedMonitoring" => String.t() | Atom.t(),
        "NumberOfBrokerNodes" => integer()
      }

  """
  @type aws_msk_cluster_cluster_info_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_import_findings_for_product_response() :: %{}

  """
  @type disable_import_findings_for_product_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_volumes_from_details() :: %{
        "ReadOnly" => boolean(),
        "SourceContainer" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_volumes_from_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      accept_administrator_invitation_request() :: %{
        required("AdministratorId") => String.t() | Atom.t(),
        required("InvitationId") => String.t() | Atom.t()
      }

  """
  @type accept_administrator_invitation_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateful_rules_header_details() :: %{
        "Destination" => String.t() | Atom.t(),
        "DestinationPort" => String.t() | Atom.t(),
        "Direction" => String.t() | Atom.t(),
        "Protocol" => String.t() | Atom.t(),
        "Source" => String.t() | Atom.t(),
        "SourcePort" => String.t() | Atom.t()
      }

  """
  @type rule_group_source_stateful_rules_header_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_standards_control_associations_response() :: %{
        "UnprocessedAssociationUpdates" => list(unprocessed_standards_control_association_update())
      }

  """
  @type batch_update_standards_control_associations_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      classification_result() :: %{
        "AdditionalOccurrences" => boolean(),
        "CustomDataIdentifiers" => custom_data_identifiers_result(),
        "MimeType" => String.t() | Atom.t(),
        "SensitiveData" => list(sensitive_data_result()),
        "SizeClassified" => float(),
        "Status" => classification_status()
      }

  """
  @type classification_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_extended_key_usage() :: %{
        "Name" => String.t() | Atom.t(),
        "OId" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_extended_key_usage() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_mount_points_details() :: %{
        "ContainerPath" => String.t() | Atom.t(),
        "ReadOnly" => boolean(),
        "SourceVolume" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_mount_points_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      ipv6_cidr_block_association() :: %{
        "AssociationId" => String.t() | Atom.t(),
        "CidrBlockState" => String.t() | Atom.t(),
        "Ipv6CidrBlock" => String.t() | Atom.t()
      }

  """
  @type ipv6_cidr_block_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      severity_update() :: %{
        "Label" => list(any()),
        "Normalized" => integer(),
        "Product" => float()
      }

  """
  @type severity_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_registrations_v2_response() :: %{
        "ConnectorArn" => String.t() | Atom.t(),
        "ConnectorId" => String.t() | Atom.t()
      }

  """
  @type connector_registrations_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_remote_port_details() :: %{
        "Port" => integer(),
        "PortName" => String.t() | Atom.t()
      }

  """
  @type action_remote_port_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() :: %{
        "Days" => integer(),
        "StorageClass" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_details() :: %{
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RuleGroupId" => String.t() | Atom.t(),
        "Rules" => list(aws_waf_regional_rule_group_rules_details())
      }

  """
  @type aws_waf_regional_rule_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_kubernetes_details() :: %{
        "AuditLogs" => aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details()
      }

  """
  @type aws_guard_duty_detector_data_sources_kubernetes_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_kinesis_stream_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RetentionPeriodHours" => integer(),
        "ShardCount" => integer(),
        "StreamEncryption" => aws_kinesis_stream_stream_encryption_details()
      }

  """
  @type aws_kinesis_stream_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_volume_host_details() :: %{
        "SourcePath" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_volume_host_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_details() :: %{
        "AssociatePublicIpAddress" => boolean(),
        "BlockDeviceMappings" => list(aws_auto_scaling_launch_configuration_block_device_mappings_details()),
        "ClassicLinkVpcId" => String.t() | Atom.t(),
        "ClassicLinkVpcSecurityGroups" => list(String.t() | Atom.t()),
        "CreatedTime" => String.t() | Atom.t(),
        "EbsOptimized" => boolean(),
        "IamInstanceProfile" => String.t() | Atom.t(),
        "ImageId" => String.t() | Atom.t(),
        "InstanceMonitoring" => aws_auto_scaling_launch_configuration_instance_monitoring_details(),
        "InstanceType" => String.t() | Atom.t(),
        "KernelId" => String.t() | Atom.t(),
        "KeyName" => String.t() | Atom.t(),
        "LaunchConfigurationName" => String.t() | Atom.t(),
        "MetadataOptions" => aws_auto_scaling_launch_configuration_metadata_options(),
        "PlacementTenancy" => String.t() | Atom.t(),
        "RamdiskId" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "SpotPrice" => String.t() | Atom.t(),
        "UserData" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_launch_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_administrator_account_request() :: %{}

  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      process_details() :: %{
        "LaunchedAt" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ParentPid" => integer(),
        "Path" => String.t() | Atom.t(),
        "Pid" => integer(),
        "TerminatedAt" => String.t() | Atom.t()
      }

  """
  @type process_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: %{
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      sensitive_data_result() :: %{
        "Category" => String.t() | Atom.t(),
        "Detections" => list(sensitive_data_detections()),
        "TotalCount" => float()
      }

  """
  @type sensitive_data_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_security_hub_configuration_response() :: %{}

  """
  @type update_security_hub_configuration_response() :: %{}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_block_device_mapping_set_details() :: %{
        "DeviceName" => String.t() | Atom.t(),
        "Ebs" => aws_ec2_launch_template_data_block_device_mapping_set_ebs_details(),
        "NoDevice" => String.t() | Atom.t(),
        "VirtualName" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_block_device_mapping_set_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_drift_information_details() :: %{
        "StackDriftStatus" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_formation_stack_drift_information_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_connection_action() :: %{
        "Blocked" => boolean(),
        "ConnectionDirection" => String.t() | Atom.t(),
        "LocalPortDetails" => action_local_port_details(),
        "Protocol" => String.t() | Atom.t(),
        "RemoteIpDetails" => action_remote_ip_details(),
        "RemotePortDetails" => action_remote_port_details()
      }

  """
  @type network_connection_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule_redirect() :: %{
        "Hostname" => String.t() | Atom.t(),
        "HttpRedirectCode" => String.t() | Atom.t(),
        "Protocol" => String.t() | Atom.t(),
        "ReplaceKeyPrefixWith" => String.t() | Atom.t(),
        "ReplaceKeyWith" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule_redirect() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_action_target_response() :: %{
        "ActionTargetArn" => String.t() | Atom.t()
      }

  """
  @type create_action_target_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_kinesis_stream_stream_encryption_details() :: %{
        "EncryptionType" => String.t() | Atom.t(),
        "KeyId" => String.t() | Atom.t()
      }

  """
  @type aws_kinesis_stream_stream_encryption_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_snapshot_details() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZone" => String.t() | Atom.t(),
        "DbInstanceIdentifier" => String.t() | Atom.t(),
        "DbSnapshotIdentifier" => String.t() | Atom.t(),
        "DbiResourceId" => String.t() | Atom.t(),
        "Encrypted" => boolean(),
        "Engine" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "InstanceCreateTime" => String.t() | Atom.t(),
        "Iops" => integer(),
        "KmsKeyId" => String.t() | Atom.t(),
        "LicenseModel" => String.t() | Atom.t(),
        "MasterUsername" => String.t() | Atom.t(),
        "OptionGroupName" => String.t() | Atom.t(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "SnapshotCreateTime" => String.t() | Atom.t(),
        "SnapshotType" => String.t() | Atom.t(),
        "SourceDbSnapshotIdentifier" => String.t() | Atom.t(),
        "SourceRegion" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StorageType" => String.t() | Atom.t(),
        "TdeCredentialArn" => String.t() | Atom.t(),
        "Timezone" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_snapshot_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_enable_standards_response() :: %{
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type batch_enable_standards_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_domain_endpoint_options() :: %{
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => String.t() | Atom.t()
      }

  """
  @type aws_elasticsearch_domain_domain_endpoint_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compliance() :: %{
        "AssociatedStandards" => list(associated_standard()),
        "RelatedRequirements" => list(String.t() | Atom.t()),
        "SecurityControlId" => String.t() | Atom.t(),
        "SecurityControlParameters" => list(security_control_parameter()),
        "Status" => list(any()),
        "StatusReasons" => list(status_reason())
      }

  """
  @type compliance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      file_paths() :: %{
        "FileName" => String.t() | Atom.t(),
        "FilePath" => String.t() | Atom.t(),
        "Hash" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t()
      }

  """
  @type file_paths() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sensitive_data_detections() :: %{
        "Count" => float(),
        "Occurrences" => occurrences(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type sensitive_data_detections() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_action_target_request() :: %{}

  """
  @type delete_action_target_request() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_details() :: %{
        "ClusterArn" => String.t() | Atom.t(),
        "Containers" => list(aws_ecs_container_details()),
        "CreatedAt" => String.t() | Atom.t(),
        "Group" => String.t() | Atom.t(),
        "StartedAt" => String.t() | Atom.t(),
        "StartedBy" => String.t() | Atom.t(),
        "TaskDefinitionArn" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t(),
        "Volumes" => list(aws_ecs_task_volume_details())
      }

  """
  @type aws_ecs_task_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_associated_role() :: %{
        "FeatureName" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_instance_associated_role() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_policy_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type create_configuration_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_access_point_vpc_configuration_details() :: %{
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_s3_access_point_vpc_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_attached_managed_policy() :: %{
        "PolicyArn" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_attached_managed_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_sqs_queue_details() :: %{
        "DeadLetterTargetArn" => String.t() | Atom.t(),
        "KmsDataKeyReusePeriodSeconds" => integer(),
        "KmsMasterKeyId" => String.t() | Atom.t(),
        "QueueName" => String.t() | Atom.t()
      }

  """
  @type aws_sqs_queue_details() :: %{String.t() | Atom.t() => any()}

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
  @type automation_rules_finding_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_autonomous_system() :: %{
        "Name" => String.t() | Atom.t(),
        "Number" => integer()
      }

  """
  @type network_autonomous_system() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_private_ip_address_detail() :: %{
        "PrivateDnsName" => String.t() | Atom.t(),
        "PrivateIpAddress" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_interface_private_ip_address_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_details() :: %{
        "AdditionalAuthenticationProviders" => list(aws_app_sync_graph_ql_api_additional_authentication_providers_details()),
        "ApiId" => String.t() | Atom.t(),
        "Arn" => String.t() | Atom.t(),
        "AuthenticationType" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "LambdaAuthorizerConfig" => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
        "LogConfig" => aws_app_sync_graph_ql_api_log_config_details(),
        "Name" => String.t() | Atom.t(),
        "OpenIdConnectConfig" => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
        "UserPoolConfig" => aws_app_sync_graph_ql_api_user_pool_config_details(),
        "WafWebAclArn" => String.t() | Atom.t(),
        "XrayEnabled" => boolean()
      }

  """
  @type aws_app_sync_graph_ql_api_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_variables_ip_sets_details() :: %{
        "Definition" => list(String.t() | Atom.t())
      }

  """
  @type rule_group_variables_ip_sets_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_standards_control_associations_request() :: %{
        required("StandardsControlAssociationUpdates") => list(standards_control_association_update())
      }

  """
  @type batch_update_standards_control_associations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_pending_cloud_watch_logs_exports() :: %{
        "LogTypesToDisable" => list(String.t() | Atom.t()),
        "LogTypesToEnable" => list(String.t() | Atom.t())
      }

  """
  @type aws_rds_pending_cloud_watch_logs_exports() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_configuration_policy_associations_response() :: %{
        "ConfigurationPolicyAssociations" => list(configuration_policy_association_summary()),
        "UnprocessedConfigurationPolicyAssociations" => list(unprocessed_configuration_policy_association())
      }

  """
  @type batch_get_configuration_policy_associations_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_aggregators_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_aggregators_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_domain_validation_option() :: %{
        "DomainName" => String.t() | Atom.t(),
        "ResourceRecord" => aws_certificate_manager_certificate_resource_record(),
        "ValidationDomain" => String.t() | Atom.t(),
        "ValidationEmails" => list(String.t() | Atom.t()),
        "ValidationMethod" => String.t() | Atom.t(),
        "ValidationStatus" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_domain_validation_option() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      organization_configuration() :: %{
        "ConfigurationType" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type organization_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_action_details() :: %{
        "Allow" => aws_wafv2_action_allow_details(),
        "Block" => aws_wafv2_action_block_details()
      }

  """
  @type aws_wafv2_web_acl_action_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: %{
        "Predicate" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_iam_group_details() :: %{
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | Atom.t(),
        "GroupId" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "GroupPolicyList" => list(aws_iam_group_policy()),
        "Path" => String.t() | Atom.t()
      }

  """
  @type aws_iam_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_standards_control_response() :: %{}

  """
  @type update_standards_control_response() :: %{}

  @typedoc """

  ## Example:

      resource_findings_summary() :: %{
        "FindingType" => String.t() | Atom.t(),
        "ProductName" => String.t() | Atom.t(),
        "Severities" => resource_severity_breakdown(),
        "TotalFindings" => integer()
      }

  """
  @type resource_findings_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_metadata() :: %{
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() :: %{
        "LogGroupArn" => String.t() | Atom.t()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_endpoint() :: %{
        "Address" => String.t() | Atom.t(),
        "HostedZoneId" => String.t() | Atom.t(),
        "Port" => integer()
      }

  """
  @type aws_rds_db_instance_endpoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_event_subscription_details() :: %{
        "CustSubscriptionId" => String.t() | Atom.t(),
        "CustomerAwsId" => String.t() | Atom.t(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t() | Atom.t()),
        "EventSubscriptionArn" => String.t() | Atom.t(),
        "SnsTopicArn" => String.t() | Atom.t(),
        "SourceIdsList" => list(String.t() | Atom.t()),
        "SourceType" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "SubscriptionCreationTime" => String.t() | Atom.t()
      }

  """
  @type aws_rds_event_subscription_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_subnet_details() :: %{
        "AssignIpv6AddressOnCreation" => boolean(),
        "AvailabilityZone" => String.t() | Atom.t(),
        "AvailabilityZoneId" => String.t() | Atom.t(),
        "AvailableIpAddressCount" => integer(),
        "CidrBlock" => String.t() | Atom.t(),
        "DefaultForAz" => boolean(),
        "Ipv6CidrBlockAssociationSet" => list(ipv6_cidr_block_association()),
        "MapPublicIpOnLaunch" => boolean(),
        "OwnerId" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t(),
        "SubnetArn" => String.t() | Atom.t(),
        "SubnetId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_subnet_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_details() :: %{
        "DefaultVersionNumber" => float(),
        "Id" => String.t() | Atom.t(),
        "LatestVersionNumber" => float(),
        "LaunchTemplateData" => aws_ec2_launch_template_data_details(),
        "LaunchTemplateName" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_metadata_options_details() :: %{
        "HttpEndpoint" => String.t() | Atom.t(),
        "HttpProtocolIpv6" => String.t() | Atom.t(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | Atom.t(),
        "InstanceMetadataTags" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_metadata_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_cluster_details() :: %{
        "Status" => String.t() | Atom.t(),
        "Engine" => String.t() | Atom.t(),
        "VpcSecurityGroups" => list(aws_rds_db_instance_vpc_security_group()),
        "DatabaseName" => String.t() | Atom.t(),
        "PreferredMaintenanceWindow" => String.t() | Atom.t(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "PreferredBackupWindow" => String.t() | Atom.t(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t() | Atom.t(),
        "ReadReplicaIdentifiers" => list(String.t() | Atom.t()),
        "CopyTagsToSnapshot" => boolean(),
        "DbClusterIdentifier" => String.t() | Atom.t(),
        "DbClusterParameterGroup" => String.t() | Atom.t(),
        "HttpEndpointEnabled" => boolean(),
        "AutoMinorVersionUpgrade" => boolean(),
        "ClusterCreateTime" => String.t() | Atom.t(),
        "Port" => integer(),
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "CrossAccountClone" => boolean(),
        "DbClusterOptionGroupMemberships" => list(aws_rds_db_cluster_option_group_membership()),
        "MasterUsername" => String.t() | Atom.t(),
        "DbClusterResourceId" => String.t() | Atom.t(),
        "ReaderEndpoint" => String.t() | Atom.t(),
        "EnabledCloudWatchLogsExports" => list(String.t() | Atom.t()),
        "CustomEndpoints" => list(String.t() | Atom.t()),
        "DeletionProtection" => boolean(),
        "DomainMemberships" => list(aws_rds_db_domain_membership()),
        "MultiAz" => boolean(),
        "EngineMode" => String.t() | Atom.t(),
        "ActivityStreamStatus" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "AllocatedStorage" => integer(),
        "HostedZoneId" => String.t() | Atom.t(),
        "AssociatedRoles" => list(aws_rds_db_cluster_associated_role()),
        "DbSubnetGroup" => String.t() | Atom.t(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => String.t() | Atom.t(),
        "DbClusterMembers" => list(aws_rds_db_cluster_member())
      }

  """
  @type aws_rds_db_cluster_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_standards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type describe_standards_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_action_block_details() :: %{
        "CustomResponse" => aws_wafv2_custom_response_details()
      }

  """
  @type aws_wafv2_action_block_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "AccountId" => String.t() | Atom.t(),
        "InvitationId" => String.t() | Atom.t(),
        "InvitedAt" => non_neg_integer(),
        "MemberStatus" => String.t() | Atom.t()
      }

  """
  @type invitation() :: %{String.t() | Atom.t() => any()}

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
        "AccessKeyId" => String.t() | Atom.t(),
        "AccountId" => String.t() | Atom.t(),
        "CreatedAt" => String.t() | Atom.t(),
        "PrincipalId" => String.t() | Atom.t(),
        "PrincipalName" => String.t() | Atom.t(),
        "PrincipalType" => String.t() | Atom.t(),
        "SessionContext" => aws_iam_access_key_session_context(),
        "Status" => list(any()),
        "UserName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_access_key_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_key_schema() :: %{
        "AttributeName" => String.t() | Atom.t(),
        "KeyType" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_key_schema() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      related_finding() :: %{
        "Id" => String.t() | Atom.t(),
        "ProductArn" => String.t() | Atom.t()
      }

  """
  @type related_finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_automation_rules_response() :: %{
        "ProcessedAutomationRules" => list(String.t() | Atom.t()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_update_automation_rules_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_products_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ProductArn") => String.t() | Atom.t()
      }

  """
  @type describe_products_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context() :: %{
        "Attributes" => aws_iam_access_key_session_context_attributes(),
        "SessionIssuer" => aws_iam_access_key_session_context_session_issuer()
      }

  """
  @type aws_iam_access_key_session_context() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_details() :: %{
        "AssociateCarrierIpAddress" => boolean(),
        "AssociatePublicIpAddress" => boolean(),
        "DeleteOnTermination" => boolean(),
        "Description" => String.t() | Atom.t(),
        "DeviceIndex" => integer(),
        "Groups" => list(String.t() | Atom.t()),
        "InterfaceType" => String.t() | Atom.t(),
        "Ipv4PrefixCount" => integer(),
        "Ipv4Prefixes" => list(aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details()),
        "Ipv6AddressCount" => integer(),
        "Ipv6Addresses" => list(aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details()),
        "Ipv6PrefixCount" => integer(),
        "Ipv6Prefixes" => list(aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details()),
        "NetworkCardIndex" => integer(),
        "NetworkInterfaceId" => String.t() | Atom.t(),
        "PrivateIpAddress" => String.t() | Atom.t(),
        "PrivateIpAddresses" => list(aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details()),
        "SecondaryPrivateIpAddressCount" => integer(),
        "SubnetId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_status_info() :: %{
        "Message" => String.t() | Atom.t(),
        "Normal" => boolean(),
        "Status" => String.t() | Atom.t(),
        "StatusType" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_status_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_details() :: %{
        "BackupSizeInBytes" => float(),
        "BackupVaultArn" => String.t() | Atom.t(),
        "BackupVaultName" => String.t() | Atom.t(),
        "CalculatedLifecycle" => aws_backup_recovery_point_calculated_lifecycle_details(),
        "CompletionDate" => String.t() | Atom.t(),
        "CreatedBy" => aws_backup_recovery_point_created_by_details(),
        "CreationDate" => String.t() | Atom.t(),
        "EncryptionKeyArn" => String.t() | Atom.t(),
        "IamRoleArn" => String.t() | Atom.t(),
        "IsEncrypted" => boolean(),
        "LastRestoreTime" => String.t() | Atom.t(),
        "Lifecycle" => aws_backup_recovery_point_lifecycle_details(),
        "RecoveryPointArn" => String.t() | Atom.t(),
        "ResourceArn" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t(),
        "SourceBackupVaultArn" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t(),
        "StorageClass" => String.t() | Atom.t()
      }

  """
  @type aws_backup_recovery_point_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_item() :: %{
        "CustomOriginConfig" => aws_cloud_front_distribution_origin_custom_origin_config(),
        "DomainName" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "OriginPath" => String.t() | Atom.t(),
        "S3OriginConfig" => aws_cloud_front_distribution_origin_s3_origin_config()
      }

  """
  @type aws_cloud_front_distribution_origin_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_health_check_details() :: %{
        "Command" => list(String.t() | Atom.t()),
        "Interval" => integer(),
        "Retries" => integer(),
        "StartPeriod" => integer(),
        "Timeout" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_health_check_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_elb_load_balancer_access_log() :: %{
        "EmitInterval" => integer(),
        "Enabled" => boolean(),
        "S3BucketName" => String.t() | Atom.t(),
        "S3BucketPrefix" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_access_log() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_standards_control_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("SecurityControlId") => String.t() | Atom.t()
      }

  """
  @type list_standards_control_associations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_association() :: %{
        "NetworkAclAssociationId" => String.t() | Atom.t(),
        "NetworkAclId" => String.t() | Atom.t(),
        "SubnetId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_acl_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_aggregators_v2_response() :: %{
        "AggregatorsV2" => list(aggregator_v2()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_aggregators_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      insight_result_value() :: %{
        "Count" => integer(),
        "GroupByAttributeValue" => String.t() | Atom.t()
      }

  """
  @type insight_result_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resources_filters() :: %{
        "CompositeFilters" => list(resources_composite_filter()),
        "CompositeOperator" => list(any())
      }

  """
  @type resources_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_disable_standards_response() :: %{
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type batch_disable_standards_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_user_policy() :: %{
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_user_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_security_finding_identifier() :: %{
        "Id" => String.t() | Atom.t(),
        "ProductArn" => String.t() | Atom.t()
      }

  """
  @type aws_security_finding_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_groups() :: %{
        "Items" => list(aws_cloud_front_distribution_origin_group())
      }

  """
  @type aws_cloud_front_distribution_origin_groups() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_option_group_membership() :: %{
        "DbClusterOptionGroupName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_cluster_option_group_membership() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_details() :: %{
        "Associations" => list(aws_ec2_network_acl_association()),
        "Entries" => list(aws_ec2_network_acl_entry()),
        "IsDefault" => boolean(),
        "NetworkAclId" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_acl_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_network_interfaces_details() :: %{
        "NetworkInterfaceId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_instance_network_interfaces_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_geo_location() :: %{
        "City" => String.t() | Atom.t(),
        "Country" => String.t() | Atom.t(),
        "Lat" => float(),
        "Lon" => float()
      }

  """
  @type network_geo_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_replication_config_details() :: %{
        "State" => String.t() | Atom.t()
      }

  """
  @type aws_events_endpoint_replication_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group() :: %{
        "FailoverCriteria" => aws_cloud_front_distribution_origin_group_failover()
      }

  """
  @type aws_cloud_front_distribution_origin_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      parameter_definition() :: %{
        "ConfigurationOptions" => list(),
        "Description" => String.t() | Atom.t()
      }

  """
  @type parameter_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_global_secondary_index() :: %{
        "Backfilling" => boolean(),
        "IndexArn" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexSizeBytes" => float(),
        "IndexStatus" => String.t() | Atom.t(),
        "ItemCount" => integer(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "Projection" => aws_dynamo_db_table_projection(),
        "ProvisionedThroughput" => aws_dynamo_db_table_provisioned_throughput()
      }

  """
  @type aws_dynamo_db_table_global_secondary_index() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_history_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StartTime") => non_neg_integer(),
        required("FindingIdentifier") => aws_security_finding_identifier()
      }

  """
  @type get_finding_history_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "CertificateAuthorityData" => String.t() | Atom.t(),
        "ClusterStatus" => String.t() | Atom.t(),
        "Endpoint" => String.t() | Atom.t(),
        "Logging" => aws_eks_cluster_logging_details(),
        "Name" => String.t() | Atom.t(),
        "ResourcesVpcConfig" => aws_eks_cluster_resources_vpc_config_details(),
        "RoleArn" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_eks_cluster_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_deferred_maintenance_window() :: %{
        "DeferMaintenanceEndTime" => String.t() | Atom.t(),
        "DeferMaintenanceIdentifier" => String.t() | Atom.t(),
        "DeferMaintenanceStartTime" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_deferred_maintenance_window() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_endpoint_service_details() :: %{
        "AcceptanceRequired" => boolean(),
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "BaseEndpointDnsNames" => list(String.t() | Atom.t()),
        "GatewayLoadBalancerArns" => list(String.t() | Atom.t()),
        "ManagesVpcEndpoints" => boolean(),
        "NetworkLoadBalancerArns" => list(String.t() | Atom.t()),
        "PrivateDnsName" => String.t() | Atom.t(),
        "ServiceId" => String.t() | Atom.t(),
        "ServiceName" => String.t() | Atom.t(),
        "ServiceState" => String.t() | Atom.t(),
        "ServiceType" => list(aws_ec2_vpc_endpoint_service_service_type_details())
      }

  """
  @type aws_ec2_vpc_endpoint_service_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_connection_settings() :: %{
        "IdleTimeout" => integer()
      }

  """
  @type aws_elb_load_balancer_connection_settings() :: %{String.t() | Atom.t() => any()}

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
        "Types" => list(String.t() | Atom.t()),
        "UserDefinedFields" => map(),
        "VerificationState" => list(any()),
        "Workflow" => workflow_update()
      }

  """
  @type automation_rules_finding_fields_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_filter() :: %{
        "S3KeyFilter" => aws_s3_bucket_notification_configuration_s3_key_filter()
      }

  """
  @type aws_s3_bucket_notification_configuration_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_configuration_details() :: %{
        "DeploymentCircuitBreaker" => aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details(),
        "MaximumPercent" => integer(),
        "MinimumHealthyPercent" => integer()
      }

  """
  @type aws_ecs_service_deployment_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_enclave_options_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_enclave_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      enable_security_hub_response() :: %{}

  """
  @type enable_security_hub_response() :: %{}

  @typedoc """

  ## Example:

      ocsf_finding_identifier() :: %{
        "CloudAccountUid" => String.t() | Atom.t(),
        "FindingInfoUid" => String.t() | Atom.t(),
        "MetadataProductUid" => String.t() | Atom.t()
      }

  """
  @type ocsf_finding_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stateless_custom_publish_metric_action_dimension() :: %{
        "Value" => String.t() | Atom.t()
      }

  """
  @type stateless_custom_publish_metric_action_dimension() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_security_group() :: %{
        "ClusterSecurityGroupName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_cluster_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: %{
        "DirectoryId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      cell() :: %{
        "CellReference" => String.t() | Atom.t(),
        "Column" => float(),
        "ColumnName" => String.t() | Atom.t(),
        "Row" => float()
      }

  """
  @type cell() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_backup_backup_vault_notifications_details() :: %{
        "BackupVaultEvents" => list(String.t() | Atom.t()),
        "SnsTopicArn" => String.t() | Atom.t()
      }

  """
  @type aws_backup_backup_vault_notifications_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_control_association_id() :: %{
        "SecurityControlId" => String.t() | Atom.t(),
        "StandardsArn" => String.t() | Atom.t()
      }

  """
  @type standards_control_association_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_logging_configuration() :: %{
        "DestinationBucketName" => String.t() | Atom.t(),
        "LogFilePrefix" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_logging_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_action_targets_response() :: %{
        "ActionTargets" => list(action_target()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type describe_action_targets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_option_group_membership() :: %{
        "OptionGroupName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_option_group_membership() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_details() :: %{
        "ExecuteCommandConfiguration" => aws_ecs_cluster_configuration_execute_command_configuration_details()
      }

  """
  @type aws_ecs_cluster_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_insight_results_response() :: %{
        "InsightResults" => insight_results()
      }

  """
  @type get_insight_results_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration() :: %{
        "Configurations" => list(aws_s3_bucket_notification_configuration_detail())
      }

  """
  @type aws_s3_bucket_notification_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_metadata_options() :: %{
        "HttpEndpoint" => String.t() | Atom.t(),
        "HttpProtocolIpv6" => String.t() | Atom.t(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | Atom.t(),
        "InstanceMetadataTags" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_instance_metadata_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() :: %{
        "CloudWatchEncryptionEnabled" => boolean(),
        "CloudWatchLogGroupName" => String.t() | Atom.t(),
        "S3BucketName" => String.t() | Atom.t(),
        "S3EncryptionEnabled" => boolean(),
        "S3KeyPrefix" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateless_custom_actions_details() :: %{
        "ActionDefinition" => stateless_custom_action_definition(),
        "ActionName" => String.t() | Atom.t()
      }

  """
  @type firewall_policy_stateless_custom_actions_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_products_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type describe_products_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_details() :: %{
        "ClusterInfo" => aws_msk_cluster_cluster_info_details()
      }

  """
  @type aws_msk_cluster_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_license_set_details() :: %{
        "LicenseConfigurationArn" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_license_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_list_details() :: %{
        "GeneratedRulesType" => String.t() | Atom.t(),
        "TargetTypes" => list(String.t() | Atom.t()),
        "Targets" => list(String.t() | Atom.t())
      }

  """
  @type rule_group_source_list_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_pending_modified_values() :: %{
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "ClusterIdentifier" => String.t() | Atom.t(),
        "ClusterType" => String.t() | Atom.t(),
        "ClusterVersion" => String.t() | Atom.t(),
        "EncryptionType" => String.t() | Atom.t(),
        "EnhancedVpcRouting" => boolean(),
        "MaintenanceTrackName" => String.t() | Atom.t(),
        "MasterUserPassword" => String.t() | Atom.t(),
        "NodeType" => String.t() | Atom.t(),
        "NumberOfNodes" => integer(),
        "PubliclyAccessible" => boolean()
      }

  """
  @type aws_redshift_cluster_pending_modified_values() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_resource_requirements_details() :: %{
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_resource_requirements_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_details() :: %{
        "CloudWatchLogs" => aws_code_build_project_logs_config_cloud_watch_logs_details(),
        "S3Logs" => aws_code_build_project_logs_config_s3_logs_details()
      }

  """
  @type aws_code_build_project_logs_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_connection_draining() :: %{
        "Enabled" => boolean(),
        "Timeout" => integer()
      }

  """
  @type aws_elb_load_balancer_connection_draining() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: %{
        "Autoprovision" => boolean(),
        "Driver" => String.t() | Atom.t(),
        "DriverOpts" => map(),
        "Labels" => map(),
        "Scope" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_rules_action_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rule_group_rules_action_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_action_target_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("Name") => String.t() | Atom.t()
      }

  """
  @type update_action_target_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("Filters") => aws_security_finding_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_findings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: %{
        "Primary" => boolean(),
        "PrivateIpAddress" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_aggregator_v2_request() :: %{
        optional("LinkedRegions") => list(String.t() | Atom.t()),
        required("RegionLinkingMode") => String.t() | Atom.t()
      }

  """
  @type update_aggregator_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_routes_details() :: %{
        "DestinationCidrBlock" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpn_connection_routes_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_log_config_details() :: %{
        "CloudWatchLogsRoleArn" => String.t() | Atom.t(),
        "ExcludeVerboseContent" => boolean(),
        "FieldLogLevel" => String.t() | Atom.t()
      }

  """
  @type aws_app_sync_graph_ql_api_log_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_backup_plan_details() :: %{
        "AdvancedBackupSettings" => list(aws_backup_backup_plan_advanced_backup_settings_details()),
        "BackupPlanName" => String.t() | Atom.t(),
        "BackupPlanRule" => list(aws_backup_backup_plan_rule_details())
      }

  """
  @type aws_backup_backup_plan_backup_plan_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_predicate_list_details() :: %{
        "DataId" => String.t() | Atom.t(),
        "Negated" => boolean(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rule_predicate_list_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_sns_topic_details() :: %{
        "ApplicationSuccessFeedbackRoleArn" => String.t() | Atom.t(),
        "FirehoseFailureFeedbackRoleArn" => String.t() | Atom.t(),
        "FirehoseSuccessFeedbackRoleArn" => String.t() | Atom.t(),
        "HttpFailureFeedbackRoleArn" => String.t() | Atom.t(),
        "HttpSuccessFeedbackRoleArn" => String.t() | Atom.t(),
        "KmsMasterKeyId" => String.t() | Atom.t(),
        "Owner" => String.t() | Atom.t(),
        "SqsFailureFeedbackRoleArn" => String.t() | Atom.t(),
        "SqsSuccessFeedbackRoleArn" => String.t() | Atom.t(),
        "Subscription" => list(aws_sns_topic_subscription()),
        "TopicName" => String.t() | Atom.t()
      }

  """
  @type aws_sns_topic_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      country() :: %{
        "CountryCode" => String.t() | Atom.t(),
        "CountryName" => String.t() | Atom.t()
      }

  """
  @type country() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_standards_controls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type describe_standards_controls_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_control_definition() :: %{
        "CurrentRegionAvailability" => list(any()),
        "CustomizableProperties" => list(list(any())()),
        "Description" => String.t() | Atom.t(),
        "ParameterDefinitions" => map(),
        "RemediationUrl" => String.t() | Atom.t(),
        "SecurityControlId" => String.t() | Atom.t(),
        "SeverityRating" => list(any()),
        "Title" => String.t() | Atom.t()
      }

  """
  @type security_control_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_automation_rule_v2_request() :: %{
        optional("Actions") => list(automation_rules_action_v2()),
        optional("Criteria") => list(),
        optional("Description") => String.t() | Atom.t(),
        optional("RuleName") => String.t() | Atom.t(),
        optional("RuleOrder") => float(),
        optional("RuleStatus") => list(any())
      }

  """
  @type update_automation_rule_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_remote_ip_details() :: %{
        "City" => city(),
        "Country" => country(),
        "GeoLocation" => geo_location(),
        "IpAddressV4" => String.t() | Atom.t(),
        "Organization" => ip_organization_details()
      }

  """
  @type action_remote_ip_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_transit_gateway_details() :: %{
        "AmazonSideAsn" => integer(),
        "AssociationDefaultRouteTableId" => String.t() | Atom.t(),
        "AutoAcceptSharedAttachments" => String.t() | Atom.t(),
        "DefaultRouteTableAssociation" => String.t() | Atom.t(),
        "DefaultRouteTablePropagation" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "DnsSupport" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "MulticastSupport" => String.t() | Atom.t(),
        "PropagationDefaultRouteTableId" => String.t() | Atom.t(),
        "TransitGatewayCidrBlocks" => list(String.t() | Atom.t()),
        "VpnEcmpSupport" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_transit_gateway_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: %{
        "LaunchTemplateId" => String.t() | Atom.t(),
        "LaunchTemplateName" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_access_point_details() :: %{
        "AccessPointArn" => String.t() | Atom.t(),
        "Alias" => String.t() | Atom.t(),
        "Bucket" => String.t() | Atom.t(),
        "BucketAccountId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "NetworkOrigin" => String.t() | Atom.t(),
        "PublicAccessBlockConfiguration" => aws_s3_account_public_access_block_details(),
        "VpcConfiguration" => aws_s3_access_point_vpc_configuration_details()
      }

  """
  @type aws_s3_access_point_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      code_vulnerabilities_file_path() :: %{
        "EndLine" => integer(),
        "FileName" => String.t() | Atom.t(),
        "FilePath" => String.t() | Atom.t(),
        "StartLine" => integer()
      }

  """
  @type code_vulnerabilities_file_path() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_flow_logs_details() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_flow_logs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecr_repository_lifecycle_policy_details() :: %{
        "LifecyclePolicyText" => String.t() | Atom.t(),
        "RegistryId" => String.t() | Atom.t()
      }

  """
  @type aws_ecr_repository_lifecycle_policy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ocsf_map_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => map_filter()
      }

  """
  @type ocsf_map_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Capacity" => float(),
        "CaptchaConfig" => aws_wafv2_web_acl_captcha_config_details(),
        "DefaultAction" => aws_wafv2_web_acl_action_details(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "ManagedbyFirewallManager" => boolean(),
        "Name" => String.t() | Atom.t(),
        "Rules" => list(aws_wafv2_rules_details()),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_web_acl_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_role_details() :: %{
        "AssumeRolePolicyDocument" => String.t() | Atom.t(),
        "AttachedManagedPolicies" => list(aws_iam_attached_managed_policy()),
        "CreateDate" => String.t() | Atom.t(),
        "InstanceProfileList" => list(aws_iam_instance_profile()),
        "MaxSessionDuration" => integer(),
        "Path" => String.t() | Atom.t(),
        "PermissionsBoundary" => aws_iam_permissions_boundary(),
        "RoleId" => String.t() | Atom.t(),
        "RoleName" => String.t() | Atom.t(),
        "RolePolicyList" => list(aws_iam_role_policy())
      }

  """
  @type aws_iam_role_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_option_setting() :: %{
        "Namespace" => String.t() | Atom.t(),
        "OptionName" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_elastic_beanstalk_environment_option_setting() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_created_by_details() :: %{
        "BackupPlanArn" => String.t() | Atom.t(),
        "BackupPlanId" => String.t() | Atom.t(),
        "BackupPlanVersion" => String.t() | Atom.t(),
        "BackupRuleId" => String.t() | Atom.t()
      }

  """
  @type aws_backup_recovery_point_created_by_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_history_update_source() :: %{
        "Identity" => String.t() | Atom.t(),
        "Type" => list(any())
      }

  """
  @type finding_history_update_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_automation_rule_v2_response() :: %{
        "Actions" => list(automation_rules_action_v2()),
        "CreatedAt" => non_neg_integer(),
        "Criteria" => list(),
        "Description" => String.t() | Atom.t(),
        "RuleArn" => String.t() | Atom.t(),
        "RuleId" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "RuleOrder" => float(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_automation_rule_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_organization_admin_account_request() :: %{
        optional("Feature") => list(any()),
        required("AdminAccountId") => String.t() | Atom.t()
      }

  """
  @type disable_organization_admin_account_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_eip_details() :: %{
        "AllocationId" => String.t() | Atom.t(),
        "AssociationId" => String.t() | Atom.t(),
        "Domain" => String.t() | Atom.t(),
        "InstanceId" => String.t() | Atom.t(),
        "NetworkBorderGroup" => String.t() | Atom.t(),
        "NetworkInterfaceId" => String.t() | Atom.t(),
        "NetworkInterfaceOwnerId" => String.t() | Atom.t(),
        "PrivateIpAddress" => String.t() | Atom.t(),
        "PublicIp" => String.t() | Atom.t(),
        "PublicIpv4Pool" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_eip_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_security_control_definitions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "SecurityControlDefinitions" => list(security_control_definition())
      }

  """
  @type list_security_control_definitions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_automation_rules_request() :: %{
        required("UpdateAutomationRulesRequestItems") => list(update_automation_rules_request_item())
      }

  """
  @type batch_update_automation_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      resources_number_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => number_filter()
      }

  """
  @type resources_number_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_standards_control_association() :: %{
        "ErrorCode" => list(any()),
        "ErrorReason" => String.t() | Atom.t(),
        "StandardsControlAssociationId" => standards_control_association_id()
      }

  """
  @type unprocessed_standards_control_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_connection_log_options_details() :: %{
        "CloudwatchLogGroup" => String.t() | Atom.t(),
        "CloudwatchLogStream" => String.t() | Atom.t(),
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_client_vpn_endpoint_connection_log_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_source_ports() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_source_ports() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type delete_members_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_history_update() :: %{
        "NewValue" => String.t() | Atom.t(),
        "OldValue" => String.t() | Atom.t(),
        "UpdatedField" => String.t() | Atom.t()
      }

  """
  @type finding_history_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_restore_summary() :: %{
        "RestoreDateTime" => String.t() | Atom.t(),
        "RestoreInProgress" => boolean(),
        "SourceBackupArn" => String.t() | Atom.t(),
        "SourceTableArn" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_restore_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      parameter_configuration() :: %{
        "Value" => list(),
        "ValueType" => list(any())
      }

  """
  @type parameter_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invite_members_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type invite_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      insight_results() :: %{
        "GroupByAttribute" => String.t() | Atom.t(),
        "InsightArn" => String.t() | Atom.t(),
        "ResultValues" => list(insight_result_value())
      }

  """
  @type insight_results() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_details() :: %{
        "EncryptionAtRest" => aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details(),
        "EncryptionInTransit" => aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_details() :: %{
          String.t()
          | Atom.t() => any()
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
        "Cluster" => String.t() | Atom.t(),
        "DeploymentConfiguration" => aws_ecs_service_deployment_configuration_details(),
        "DeploymentController" => aws_ecs_service_deployment_controller_details(),
        "DesiredCount" => integer(),
        "EnableEcsManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "HealthCheckGracePeriodSeconds" => integer(),
        "LaunchType" => String.t() | Atom.t(),
        "LoadBalancers" => list(aws_ecs_service_load_balancers_details()),
        "Name" => String.t() | Atom.t(),
        "NetworkConfiguration" => aws_ecs_service_network_configuration_details(),
        "PlacementConstraints" => list(aws_ecs_service_placement_constraints_details()),
        "PlacementStrategies" => list(aws_ecs_service_placement_strategies_details()),
        "PlatformVersion" => String.t() | Atom.t(),
        "PropagateTags" => String.t() | Atom.t(),
        "Role" => String.t() | Atom.t(),
        "SchedulingStrategy" => String.t() | Atom.t(),
        "ServiceArn" => String.t() | Atom.t(),
        "ServiceName" => String.t() | Atom.t(),
        "ServiceRegistries" => list(aws_ecs_service_service_registries_details()),
        "TaskDefinition" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_standards_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Standards" => list(standard())
      }

  """
  @type describe_standards_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      user_account() :: %{
        "Name" => String.t() | Atom.t(),
        "Uid" => String.t() | Atom.t()
      }

  """
  @type user_account() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ip_organization_details() :: %{
        "Asn" => integer(),
        "AsnOrg" => String.t() | Atom.t(),
        "Isp" => String.t() | Atom.t(),
        "Org" => String.t() | Atom.t()
      }

  """
  @type ip_organization_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group_failover_status_codes() :: %{
        "Items" => list(integer()),
        "Quantity" => integer()
      }

  """
  @type aws_cloud_front_distribution_origin_group_failover_status_codes() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_definition() :: %{
        "Actions" => list(String.t() | Atom.t()),
        "MatchAttributes" => rule_group_source_stateless_rule_match_attributes()
      }

  """
  @type rule_group_source_stateless_rule_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_status_reason() :: %{
        "StatusReasonCode" => list(any())
      }

  """
  @type standards_status_reason() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cors_configuration() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t() | Atom.t()),
        "AllowMethods" => list(String.t() | Atom.t()),
        "AllowOrigins" => list(String.t() | Atom.t()),
        "ExposeHeaders" => list(String.t() | Atom.t()),
        "MaxAge" => integer()
      }

  """
  @type aws_cors_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_automation_rules_v2_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Rules" => list(automation_rules_metadata_v2())
      }

  """
  @type list_automation_rules_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_details() :: %{
        "Capabilities" => list(String.t() | Atom.t()),
        "CreationTime" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "DisableRollback" => boolean(),
        "DriftInformation" => aws_cloud_formation_stack_drift_information_details(),
        "EnableTerminationProtection" => boolean(),
        "LastUpdatedTime" => String.t() | Atom.t(),
        "NotificationArns" => list(String.t() | Atom.t()),
        "Outputs" => list(aws_cloud_formation_stack_outputs_details()),
        "RoleArn" => String.t() | Atom.t(),
        "StackId" => String.t() | Atom.t(),
        "StackName" => String.t() | Atom.t(),
        "StackStatus" => String.t() | Atom.t(),
        "StackStatusReason" => String.t() | Atom.t(),
        "TimeoutInMinutes" => integer()
      }

  """
  @type aws_cloud_formation_stack_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associated_standard() :: %{
        "StandardsId" => String.t() | Atom.t()
      }

  """
  @type associated_standard() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_snapshot_copy_status() :: %{
        "DestinationRegion" => String.t() | Atom.t(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "RetentionPeriod" => integer(),
        "SnapshotCopyGrantName" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_cluster_snapshot_copy_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      severity() :: %{
        "Label" => list(any()),
        "Normalized" => integer(),
        "Original" => String.t() | Atom.t(),
        "Product" => float()
      }

  """
  @type severity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_connection() :: %{
        "Direction" => list(any())
      }

  """
  @type network_connection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_iam_role() :: %{
        "ApplyStatus" => String.t() | Atom.t(),
        "IamRoleArn" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_iam_role() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_users_details() :: %{
        "PendingChange" => String.t() | Atom.t(),
        "Username" => String.t() | Atom.t()
      }

  """
  @type aws_amazon_mq_broker_users_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: %{
        "AbortIncompleteMultipartUpload" => aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details(),
        "ExpirationDate" => String.t() | Atom.t(),
        "ExpirationInDays" => integer(),
        "ExpiredObjectDeleteMarker" => boolean(),
        "Filter" => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details(),
        "ID" => String.t() | Atom.t(),
        "NoncurrentVersionExpirationInDays" => integer(),
        "NoncurrentVersionTransitions" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details()),
        "Prefix" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "Transitions" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details())
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_lambda_function_environment() :: %{
        "Error" => aws_lambda_function_environment_error(),
        "Variables" => map()
      }

  """
  @type aws_lambda_function_environment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_details() :: %{
        "BackupPlan" => aws_backup_backup_plan_backup_plan_details(),
        "BackupPlanArn" => String.t() | Atom.t(),
        "BackupPlanId" => String.t() | Atom.t(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type aws_backup_backup_plan_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_configuration_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standard() :: %{
        "Description" => String.t() | Atom.t(),
        "EnabledByDefault" => boolean(),
        "Name" => String.t() | Atom.t(),
        "StandardsArn" => String.t() | Atom.t(),
        "StandardsManagedBy" => standards_managed_by()
      }

  """
  @type standard() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_hibernation_options_details() :: %{
        "Configured" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_hibernation_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_delete_automation_rules_request() :: %{
        required("AutomationRulesArns") => list(String.t() | Atom.t())
      }

  """
  @type batch_delete_automation_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_health_check() :: %{
        "HealthyThreshold" => integer(),
        "Interval" => integer(),
        "Target" => String.t() | Atom.t(),
        "Timeout" => integer(),
        "UnhealthyThreshold" => integer()
      }

  """
  @type aws_elb_load_balancer_health_check() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_details() :: %{
        "DefaultAction" => String.t() | Atom.t(),
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RulesList" => list(aws_waf_regional_web_acl_rules_list_details()),
        "WebAclId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_web_acl_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_standards_control_associations_request() :: %{
        required("StandardsControlAssociationIds") => list(standards_control_association_id())
      }

  """
  @type batch_get_standards_control_associations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_vpc_options() :: %{
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t()),
        "VPCId" => String.t() | Atom.t()
      }

  """
  @type aws_elasticsearch_domain_vpc_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_custom_http_header() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_wafv2_custom_http_header() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_logs_details() :: %{
        "Audit" => boolean(),
        "AuditLogGroup" => String.t() | Atom.t(),
        "General" => boolean(),
        "GeneralLogGroup" => String.t() | Atom.t(),
        "Pending" => aws_amazon_mq_broker_logs_pending_details()
      }

  """
  @type aws_amazon_mq_broker_logs_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      double_configuration_options() :: %{
        "DefaultValue" => float(),
        "Max" => float(),
        "Min" => float()
      }

  """
  @type double_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vulnerability_vendor() :: %{
        "Name" => String.t() | Atom.t(),
        "Url" => String.t() | Atom.t(),
        "VendorCreatedAt" => String.t() | Atom.t(),
        "VendorSeverity" => String.t() | Atom.t(),
        "VendorUpdatedAt" => String.t() | Atom.t()
      }

  """
  @type vulnerability_vendor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_logging_cluster_logging_details() :: %{
        "Enabled" => boolean(),
        "Types" => list(String.t() | Atom.t())
      }

  """
  @type aws_eks_cluster_logging_cluster_logging_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_v2_response() :: %{
        "Connectors" => list(connector_summary()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_connectors_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_source() :: %{
        "GitCloneDepth" => integer(),
        "InsecureSsl" => boolean(),
        "Location" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_placement_details() :: %{
        "Affinity" => String.t() | Atom.t(),
        "AvailabilityZone" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "HostId" => String.t() | Atom.t(),
        "HostResourceGroupArn" => String.t() | Atom.t(),
        "PartitionNumber" => integer(),
        "SpreadDomain" => String.t() | Atom.t(),
        "Tenancy" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_placement_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_sources() :: %{
        "AddressDefinition" => String.t() | Atom.t()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_sources() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_details() :: %{
        "ApplicationName" => String.t() | Atom.t(),
        "Cname" => String.t() | Atom.t(),
        "DateCreated" => String.t() | Atom.t(),
        "DateUpdated" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "EndpointUrl" => String.t() | Atom.t(),
        "EnvironmentArn" => String.t() | Atom.t(),
        "EnvironmentId" => String.t() | Atom.t(),
        "EnvironmentLinks" => list(aws_elastic_beanstalk_environment_environment_link()),
        "EnvironmentName" => String.t() | Atom.t(),
        "OptionSettings" => list(aws_elastic_beanstalk_environment_option_setting()),
        "PlatformArn" => String.t() | Atom.t(),
        "SolutionStackName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "Tier" => aws_elastic_beanstalk_environment_tier(),
        "VersionLabel" => String.t() | Atom.t()
      }

  """
  @type aws_elastic_beanstalk_environment_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_registrations_v2_request() :: %{
        required("AuthCode") => String.t() | Atom.t(),
        required("AuthState") => String.t() | Atom.t()
      }

  """
  @type connector_registrations_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateful_rules_details() :: %{
        "Action" => String.t() | Atom.t(),
        "Header" => rule_group_source_stateful_rules_header_details(),
        "RuleOptions" => list(rule_group_source_stateful_rules_options_details())
      }

  """
  @type rule_group_source_stateful_rules_details() :: %{String.t() | Atom.t() => any()}

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
  @type batch_enable_standards_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_log_publishing_options() :: %{
        "AuditLogs" => aws_elasticsearch_domain_log_publishing_options_log_config(),
        "IndexSlowLogs" => aws_elasticsearch_domain_log_publishing_options_log_config(),
        "SearchSlowLogs" => aws_elasticsearch_domain_log_publishing_options_log_config()
      }

  """
  @type aws_elasticsearch_domain_log_publishing_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_control_association_summary() :: %{
        "AssociationStatus" => list(any()),
        "RelatedRequirements" => list(String.t() | Atom.t()),
        "SecurityControlArn" => String.t() | Atom.t(),
        "SecurityControlId" => String.t() | Atom.t(),
        "StandardsArn" => String.t() | Atom.t(),
        "StandardsControlDescription" => String.t() | Atom.t(),
        "StandardsControlTitle" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer(),
        "UpdatedReason" => String.t() | Atom.t()
      }

  """
  @type standards_control_association_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_network_configuration_details() :: %{
        "AwsVpcConfiguration" => aws_ecs_service_network_configuration_aws_vpc_configuration_details()
      }

  """
  @type aws_ecs_service_network_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateful_rules_options_details() :: %{
        "Keyword" => String.t() | Atom.t(),
        "Settings" => list(String.t() | Atom.t())
      }

  """
  @type rule_group_source_stateful_rules_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_logging() :: %{
        "Bucket" => String.t() | Atom.t(),
        "Enabled" => boolean(),
        "IncludeCookies" => boolean(),
        "Prefix" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_logging() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: %{
        "DeleteOnTermination" => boolean(),
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "SnapshotId" => String.t() | Atom.t(),
        "VolumeSize" => integer(),
        "VolumeType" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group() :: %{
        "DbSubnetGroupArn" => String.t() | Atom.t(),
        "DbSubnetGroupDescription" => String.t() | Atom.t(),
        "DbSubnetGroupName" => String.t() | Atom.t(),
        "SubnetGroupStatus" => String.t() | Atom.t(),
        "Subnets" => list(aws_rds_db_subnet_group_subnet()),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_subnet_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      data_classification_details() :: %{
        "DetailedResultsLocation" => String.t() | Atom.t(),
        "Result" => classification_result()
      }

  """
  @type data_classification_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rules_details() :: %{
        "Priority" => integer(),
        "RuleDefinition" => rule_group_source_stateless_rule_definition()
      }

  """
  @type rule_group_source_stateless_rules_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: %{
        "AuthorizationConfig" => aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details(),
        "FilesystemId" => String.t() | Atom.t(),
        "RootDirectory" => String.t() | Atom.t(),
        "TransitEncryption" => String.t() | Atom.t(),
        "TransitEncryptionPort" => integer()
      }

  """
  @type aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_response() :: %{}

  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule_condition() :: %{
        "HttpErrorCodeReturnedEquals" => String.t() | Atom.t(),
        "KeyPrefixEquals" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule_condition() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      group_by_value() :: %{
        "Count" => integer(),
        "FieldValue" => String.t() | Atom.t()
      }

  """
  @type group_by_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_hsm_status() :: %{
        "HsmClientCertificateIdentifier" => String.t() | Atom.t(),
        "HsmConfigurationIdentifier" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_hsm_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: %{
        "Count" => integer(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: %{
        "AssignPublicIp" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "Subnets" => list(String.t() | Atom.t())
      }

  """
  @type aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
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
  @type occurrences() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_details() :: %{
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PredicateList" => list(aws_waf_regional_rule_predicate_list_details()),
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rule_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_ip_range() :: %{
        "CidrIp" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_security_group_ip_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_web_acl_details() :: %{
        "DefaultAction" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Rules" => list(aws_waf_web_acl_rule()),
        "WebAclId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_web_acl_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | Atom.t(),
        "AggregatorV2Arn" => String.t() | Atom.t(),
        "LinkedRegions" => list(String.t() | Atom.t()),
        "RegionLinkingMode" => String.t() | Atom.t()
      }

  """
  @type update_aggregator_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_artifacts_details() :: %{
        "ArtifactIdentifier" => String.t() | Atom.t(),
        "EncryptionDisabled" => boolean(),
        "Location" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "NamespaceType" => String.t() | Atom.t(),
        "OverrideArtifactName" => boolean(),
        "Packaging" => String.t() | Atom.t(),
        "Path" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_artifacts_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      boolean_filter() :: %{
        "Value" => boolean()
      }

  """
  @type boolean_filter() :: %{String.t() | Atom.t() => any()}

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
  @type resource_severity_breakdown() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_disassociation_response() :: %{}

  """
  @type start_configuration_policy_disassociation_response() :: %{}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: %{
          String.t()
          | Atom.t() => any()
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
  @type describe_organization_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_associated_role() :: %{
        "RoleArn" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_cluster_associated_role() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_rule_copy_actions_details() :: %{
        "DestinationBackupVaultArn" => String.t() | Atom.t(),
        "Lifecycle" => aws_backup_backup_plan_lifecycle_details()
      }

  """
  @type aws_backup_backup_plan_rule_copy_actions_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() :: %{
        "LaunchTemplateId" => String.t() | Atom.t(),
        "LaunchTemplateName" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_stage_details() :: %{
        "AccessLogSettings" => aws_api_gateway_access_log_settings(),
        "CacheClusterEnabled" => boolean(),
        "CacheClusterSize" => String.t() | Atom.t(),
        "CacheClusterStatus" => String.t() | Atom.t(),
        "CanarySettings" => aws_api_gateway_canary_settings(),
        "ClientCertificateId" => String.t() | Atom.t(),
        "CreatedDate" => String.t() | Atom.t(),
        "DeploymentId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "DocumentationVersion" => String.t() | Atom.t(),
        "LastUpdatedDate" => String.t() | Atom.t(),
        "MethodSettings" => list(aws_api_gateway_method_settings()),
        "StageName" => String.t() | Atom.t(),
        "TracingEnabled" => boolean(),
        "Variables" => map(),
        "WebAclArn" => String.t() | Atom.t()
      }

  """
  @type aws_api_gateway_stage_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_control() :: %{
        "ControlId" => String.t() | Atom.t(),
        "ControlStatus" => list(any()),
        "ControlStatusUpdatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "DisabledReason" => String.t() | Atom.t(),
        "RelatedRequirements" => list(String.t() | Atom.t()),
        "RemediationUrl" => String.t() | Atom.t(),
        "SeverityRating" => list(any()),
        "StandardsControlArn" => String.t() | Atom.t(),
        "Title" => String.t() | Atom.t()
      }

  """
  @type standards_control() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_domain_membership() :: %{
        "Domain" => String.t() | Atom.t(),
        "Fqdn" => String.t() | Atom.t(),
        "IamRoleName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_domain_membership() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_renewal_summary() :: %{
        "DomainValidationOptions" => list(aws_certificate_manager_certificate_domain_validation_option()),
        "RenewalStatus" => String.t() | Atom.t(),
        "RenewalStatusReason" => String.t() | Atom.t(),
        "UpdatedAt" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_renewal_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() :: %{
        "DaysAfterInitiation" => integer()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_security_control_response() :: %{}

  """
  @type update_security_control_response() :: %{}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_replica() :: %{
        "GlobalSecondaryIndexes" => list(aws_dynamo_db_table_replica_global_secondary_index()),
        "KmsMasterKeyId" => String.t() | Atom.t(),
        "ProvisionedThroughputOverride" => aws_dynamo_db_table_provisioned_throughput_override(),
        "RegionName" => String.t() | Atom.t(),
        "ReplicaStatus" => String.t() | Atom.t(),
        "ReplicaStatusDescription" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_replica() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_security_hub_v2_response() :: %{
        "HubV2Arn" => String.t() | Atom.t(),
        "SubscribedAt" => String.t() | Atom.t()
      }

  """
  @type describe_security_hub_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_details() :: %{
        "AllocatedStorage" => integer(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AvailabilityZone" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "KmsKeyId" => String.t() | Atom.t(),
        "MultiAZ" => boolean(),
        "PreferredMaintenanceWindow" => String.t() | Atom.t(),
        "PubliclyAccessible" => boolean(),
        "ReplicationInstanceClass" => String.t() | Atom.t(),
        "ReplicationInstanceIdentifier" => String.t() | Atom.t(),
        "ReplicationSubnetGroup" => aws_dms_replication_instance_replication_subnet_group_details(),
        "VpcSecurityGroups" => list(aws_dms_replication_instance_vpc_security_groups_details())
      }

  """
  @type aws_dms_replication_instance_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_access_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type invalid_access_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_lb_cookie_stickiness_policy() :: %{
        "CookieExpirationPeriod" => float(),
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_elb_lb_cookie_stickiness_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: %{
        "Ipv6Prefix" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: %{
        "Ipv4Prefix" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_destinations_details() :: %{
        "CloudWatchLogsLogGroup" => aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_destinations_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: %{
        "DedicatedMasterCount" => integer(),
        "DedicatedMasterEnabled" => boolean(),
        "DedicatedMasterType" => String.t() | Atom.t(),
        "InstanceCount" => integer(),
        "InstanceType" => String.t() | Atom.t(),
        "ZoneAwarenessConfig" => aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details(),
        "ZoneAwarenessEnabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      rule_group_source_stateless_rules_and_custom_actions_details() :: %{
        "CustomActions" => list(rule_group_source_custom_actions_details()),
        "StatelessRules" => list(rule_group_source_stateless_rules_details())
      }

  """
  @type rule_group_source_stateless_rules_and_custom_actions_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_rule() :: %{
        "ApplyServerSideEncryptionByDefault" => aws_s3_bucket_server_side_encryption_by_default()
      }

  """
  @type aws_s3_bucket_server_side_encryption_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      configuration_policy_summary() :: %{
        "Arn" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ServiceEnabled" => boolean(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type configuration_policy_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_details() :: %{
        "CertificateAuthorityArn" => String.t() | Atom.t(),
        "CreatedAt" => String.t() | Atom.t(),
        "DomainName" => String.t() | Atom.t(),
        "DomainValidationOptions" => list(aws_certificate_manager_certificate_domain_validation_option()),
        "ExtendedKeyUsages" => list(aws_certificate_manager_certificate_extended_key_usage()),
        "FailureReason" => String.t() | Atom.t(),
        "ImportedAt" => String.t() | Atom.t(),
        "InUseBy" => list(String.t() | Atom.t()),
        "IssuedAt" => String.t() | Atom.t(),
        "Issuer" => String.t() | Atom.t(),
        "KeyAlgorithm" => String.t() | Atom.t(),
        "KeyUsages" => list(aws_certificate_manager_certificate_key_usage()),
        "NotAfter" => String.t() | Atom.t(),
        "NotBefore" => String.t() | Atom.t(),
        "Options" => aws_certificate_manager_certificate_options(),
        "RenewalEligibility" => String.t() | Atom.t(),
        "RenewalSummary" => aws_certificate_manager_certificate_renewal_summary(),
        "Serial" => String.t() | Atom.t(),
        "SignatureAlgorithm" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "Subject" => String.t() | Atom.t(),
        "SubjectAlternativeNames" => list(String.t() | Atom.t()),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_enabled_standards_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "StandardsSubscriptions" => list(standards_subscription())
      }

  """
  @type get_enabled_standards_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_vpc_details() :: %{
        "Id" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t()
      }

  """
  @type aws_route53_hosted_zone_vpc_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_instance_profile() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreateDate" => String.t() | Atom.t(),
        "InstanceProfileId" => String.t() | Atom.t(),
        "InstanceProfileName" => String.t() | Atom.t(),
        "Path" => String.t() | Atom.t(),
        "Roles" => list(aws_iam_instance_profile_role())
      }

  """
  @type aws_iam_instance_profile() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dns_request_action() :: %{
        "Blocked" => boolean(),
        "Domain" => String.t() | Atom.t(),
        "Protocol" => String.t() | Atom.t()
      }

  """
  @type dns_request_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resources_composite_filter() :: %{
        "DateFilters" => list(resources_date_filter()),
        "MapFilters" => list(resources_map_filter()),
        "NumberFilters" => list(resources_number_filter()),
        "Operator" => list(any()),
        "StringFilters" => list(resources_string_filter())
      }

  """
  @type resources_composite_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_controls_configuration() :: %{
        "DisabledSecurityControlIdentifiers" => list(String.t() | Atom.t()),
        "EnabledSecurityControlIdentifiers" => list(String.t() | Atom.t()),
        "SecurityControlCustomParameters" => list(security_control_custom_parameter())
      }

  """
  @type security_controls_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() :: %{
        "EbsVolumes" => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_security_hub_configuration_request() :: %{
        optional("AutoEnableControls") => boolean(),
        optional("ControlFindingGenerator") => list(any())
      }

  """
  @type update_security_hub_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type get_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_variables_port_sets_details() :: %{
        "Definition" => list(String.t() | Atom.t())
      }

  """
  @type rule_group_variables_port_sets_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() :: %{
        "CapacityReservationId" => String.t() | Atom.t(),
        "CapacityReservationResourceGroupArn" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        required("AccountDetails") => list(account_details())
      }

  """
  @type create_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_primary_details() :: %{
        "HealthCheck" => String.t() | Atom.t()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_primary_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_elb_load_balancer_policies() :: %{
        "AppCookieStickinessPolicies" => list(aws_elb_app_cookie_stickiness_policy()),
        "LbCookieStickinessPolicies" => list(aws_elb_lb_cookie_stickiness_policy()),
        "OtherPolicies" => list(String.t() | Atom.t())
      }

  """
  @type aws_elb_load_balancer_policies() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_ticket_v2_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        required("ConnectorId") => String.t() | Atom.t(),
        required("FindingMetadataUid") => String.t() | Atom.t()
      }

  """
  @type create_ticket_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_replica_global_secondary_index() :: %{
        "IndexName" => String.t() | Atom.t(),
        "ProvisionedThroughputOverride" => aws_dynamo_db_table_provisioned_throughput_override()
      }

  """
  @type aws_dynamo_db_table_replica_global_secondary_index() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_automation_rule_v2_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("RuleStatus") => list(any()),
        optional("Tags") => map(),
        required("Actions") => list(automation_rules_action_v2()),
        required("Criteria") => list(),
        required("Description") => String.t() | Atom.t(),
        required("RuleName") => String.t() | Atom.t(),
        required("RuleOrder") => float()
      }

  """
  @type create_automation_rule_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      icmp_type_code() :: %{
        "Code" => integer(),
        "Type" => integer()
      }

  """
  @type icmp_type_code() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_lifecycle_details() :: %{
        "DeleteAfterDays" => float(),
        "MoveToColdStorageAfterDays" => float()
      }

  """
  @type aws_backup_recovery_point_lifecycle_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_market_options_details() :: %{
        "MarketType" => String.t() | Atom.t(),
        "SpotOptions" => aws_ec2_launch_template_data_instance_market_options_spot_options_details()
      }

  """
  @type aws_ec2_launch_template_data_instance_market_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() :: %{
        "EncryptionOption" => String.t() | Atom.t(),
        "KmsKey" => String.t() | Atom.t()
      }

  """
  @type aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_attachment() :: %{
        "AttachTime" => String.t() | Atom.t(),
        "AttachmentId" => String.t() | Atom.t(),
        "DeleteOnTermination" => boolean(),
        "DeviceIndex" => integer(),
        "InstanceId" => String.t() | Atom.t(),
        "InstanceOwnerId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_interface_attachment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_variables() :: %{
        "IpSets" => rule_group_variables_ip_sets_details(),
        "PortSets" => rule_group_variables_port_sets_details()
      }

  """
  @type rule_group_variables() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_access_key_session_context_session_issuer() :: %{
        "AccountId" => String.t() | Atom.t(),
        "Arn" => String.t() | Atom.t(),
        "PrincipalId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "UserName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_access_key_session_context_session_issuer() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_members_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type disassociate_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_route_settings() :: %{
        "DataTraceEnabled" => boolean(),
        "DetailedMetricsEnabled" => boolean(),
        "LoggingLevel" => String.t() | Atom.t(),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float()
      }

  """
  @type aws_api_gateway_v2_route_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_volume_details() :: %{
        "Attachments" => list(aws_ec2_volume_attachment()),
        "CreateTime" => String.t() | Atom.t(),
        "DeviceName" => String.t() | Atom.t(),
        "Encrypted" => boolean(),
        "KmsKeyId" => String.t() | Atom.t(),
        "Size" => integer(),
        "SnapshotId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "VolumeId" => String.t() | Atom.t(),
        "VolumeScanStatus" => String.t() | Atom.t(),
        "VolumeType" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_volume_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "Findings" => list(aws_security_finding()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type get_findings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_group_details() :: %{
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RuleGroupId" => String.t() | Atom.t(),
        "Rules" => list(aws_waf_rule_group_rules_details())
      }

  """
  @type aws_waf_rule_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_details() :: %{
        "CacheBehaviors" => aws_cloud_front_distribution_cache_behaviors(),
        "DefaultCacheBehavior" => aws_cloud_front_distribution_default_cache_behavior(),
        "DefaultRootObject" => String.t() | Atom.t(),
        "DomainName" => String.t() | Atom.t(),
        "ETag" => String.t() | Atom.t(),
        "LastModifiedTime" => String.t() | Atom.t(),
        "Logging" => aws_cloud_front_distribution_logging(),
        "OriginGroups" => aws_cloud_front_distribution_origin_groups(),
        "Origins" => aws_cloud_front_distribution_origins(),
        "Status" => String.t() | Atom.t(),
        "ViewerCertificate" => aws_cloud_front_distribution_viewer_certificate(),
        "WebAclId" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_cache_behavior() :: %{
        "ViewerProtocolPolicy" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_cache_behavior() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_details() :: %{
        "GroupId" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "IpPermissions" => list(aws_ec2_security_group_ip_permission()),
        "IpPermissionsEgress" => list(aws_ec2_security_group_ip_permission()),
        "OwnerId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_security_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_container_details() :: %{
        "Image" => String.t() | Atom.t(),
        "MountPoints" => list(aws_mount_point()),
        "Name" => String.t() | Atom.t(),
        "Privileged" => boolean()
      }

  """
  @type aws_ecs_container_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_service_registries_details() :: %{
        "ContainerName" => String.t() | Atom.t(),
        "ContainerPort" => integer(),
        "Port" => integer(),
        "RegistryArn" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_service_registries_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_environment_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_environment_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      vulnerability_code_vulnerabilities() :: %{
        "Cwes" => list(String.t() | Atom.t()),
        "FilePath" => code_vulnerabilities_file_path(),
        "SourceArn" => String.t() | Atom.t()
      }

  """
  @type vulnerability_code_vulnerabilities() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_action_target_response() :: %{}

  """
  @type update_action_target_response() :: %{}

  @typedoc """

  ## Example:

      aws_dms_endpoint_details() :: %{
        "CertificateArn" => String.t() | Atom.t(),
        "DatabaseName" => String.t() | Atom.t(),
        "EndpointArn" => String.t() | Atom.t(),
        "EndpointIdentifier" => String.t() | Atom.t(),
        "EndpointType" => String.t() | Atom.t(),
        "EngineName" => String.t() | Atom.t(),
        "ExternalId" => String.t() | Atom.t(),
        "ExtraConnectionAttributes" => String.t() | Atom.t(),
        "KmsKeyId" => String.t() | Atom.t(),
        "Port" => integer(),
        "ServerName" => String.t() | Atom.t(),
        "SslMode" => String.t() | Atom.t(),
        "Username" => String.t() | Atom.t()
      }

  """
  @type aws_dms_endpoint_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "Text" => String.t() | Atom.t(),
        "Url" => String.t() | Atom.t()
      }

  """
  @type recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_aggregator() :: %{
        "FindingAggregatorArn" => String.t() | Atom.t()
      }

  """
  @type finding_aggregator() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type delete_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_dns_logs_details() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_dns_logs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      invite_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type invite_members_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_s3_key_filter() :: %{
        "FilterRules" => list(aws_s3_bucket_notification_configuration_s3_key_filter_rule())
      }

  """
  @type aws_s3_bucket_notification_configuration_s3_key_filter() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_redshift_cluster_vpc_security_group() :: %{
        "Status" => String.t() | Atom.t(),
        "VpcSecurityGroupId" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_vpc_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: %{
        "MinimumInstanceMetadataServiceVersion" => String.t() | Atom.t()
      }

  """
  @type aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_vgw_telemetry_details() :: %{
        "AcceptedRouteCount" => integer(),
        "CertificateArn" => String.t() | Atom.t(),
        "LastStatusChange" => String.t() | Atom.t(),
        "OutsideIpAddress" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpn_connection_vgw_telemetry_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_response() :: %{
        "ProcessedFindings" => list(batch_update_findings_v2_processed_finding()),
        "UnprocessedFindings" => list(batch_update_findings_v2_unprocessed_finding())
      }

  """
  @type batch_update_findings_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      vpc_info_cidr_block_set_details() :: %{
        "CidrBlock" => String.t() | Atom.t()
      }

  """
  @type vpc_info_cidr_block_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_billing_mode_summary() :: %{
        "BillingMode" => String.t() | Atom.t(),
        "LastUpdateToPayPerRequestDateTime" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_billing_mode_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_metadata_v2() :: %{
        "Actions" => list(automation_rules_action_type_object_v2()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "RuleArn" => String.t() | Atom.t(),
        "RuleId" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "RuleOrder" => float(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_metadata_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      signal() :: %{
        "ActorIds" => list(String.t() | Atom.t()),
        "Count" => integer(),
        "CreatedAt" => float(),
        "EndpointIds" => list(String.t() | Atom.t()),
        "FirstSeenAt" => float(),
        "Id" => String.t() | Atom.t(),
        "LastSeenAt" => float(),
        "Name" => String.t() | Atom.t(),
        "ProductArn" => String.t() | Atom.t(),
        "ResourceIds" => list(String.t() | Atom.t()),
        "Severity" => float(),
        "SignalIndicators" => list(indicator()),
        "Title" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "UpdatedAt" => float()
      }

  """
  @type signal() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      account_details() :: %{
        "AccountId" => String.t() | Atom.t(),
        "Email" => String.t() | Atom.t()
      }

  """
  @type account_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_wafv2_custom_response_details() :: %{
        "CustomResponseBodyKey" => String.t() | Atom.t(),
        "ResponseCode" => integer(),
        "ResponseHeaders" => list(aws_wafv2_custom_http_header())
      }

  """
  @type aws_wafv2_custom_response_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_secondary_details() :: %{
        "Route" => String.t() | Atom.t()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_secondary_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_group_rules_details() :: %{
        "Action" => aws_waf_rule_group_rules_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rule_group_rules_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() :: %{
        "Reason" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_cloud_trail_details() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_cloud_trail_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_s3_origin_config() :: %{
        "OriginAccessIdentity" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_origin_s3_origin_config() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_update_findings_v2_request() :: %{
        optional("Comment") => String.t() | Atom.t(),
        optional("FindingIdentifiers") => list(ocsf_finding_identifier()),
        optional("MetadataUids") => list(String.t() | Atom.t()),
        optional("SeverityId") => integer(),
        optional("StatusId") => integer()
      }

  """
  @type batch_update_findings_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_automation_rules_response() :: %{
        "Rules" => list(automation_rules_config()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_get_automation_rules_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      load_balancer_state() :: %{
        "Code" => String.t() | Atom.t(),
        "Reason" => String.t() | Atom.t()
      }

  """
  @type load_balancer_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      string_list_configuration_options() :: %{
        "DefaultValue" => list(String.t() | Atom.t()),
        "ExpressionDescription" => String.t() | Atom.t(),
        "MaxItems" => integer(),
        "Re2Expression" => String.t() | Atom.t()
      }

  """
  @type string_list_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_event_schemas_registry_details() :: %{
        "Description" => String.t() | Atom.t(),
        "RegistryArn" => String.t() | Atom.t(),
        "RegistryName" => String.t() | Atom.t()
      }

  """
  @type aws_event_schemas_registry_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: %{
        "AttributeName" => String.t() | Atom.t(),
        "AttributeValues" => list(String.t() | Atom.t())
      }

  """
  @type aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_get_automation_rules_request() :: %{
        required("AutomationRulesArns") => list(String.t() | Atom.t())
      }

  """
  @type batch_get_automation_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      result() :: %{
        "AccountId" => String.t() | Atom.t(),
        "ProcessingResult" => String.t() | Atom.t()
      }

  """
  @type result() :: %{String.t() | Atom.t() => any()}

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
  @type aws_guard_duty_detector_data_sources_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      workflow() :: %{
        "Status" => list(any())
      }

  """
  @type workflow() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_insight_response() :: %{
        "InsightArn" => String.t() | Atom.t()
      }

  """
  @type create_insight_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sort_criterion() :: %{
        "Field" => String.t() | Atom.t(),
        "SortOrder" => list(any())
      }

  """
  @type sort_criterion() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_config() :: %{
        "Actions" => list(automation_rules_action()),
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | Atom.t(),
        "Criteria" => automation_rules_finding_filters(),
        "Description" => String.t() | Atom.t(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type automation_rules_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment_registry_credential() :: %{
        "Credential" => String.t() | Atom.t(),
        "CredentialProvider" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_environment_registry_credential() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_backup_backup_plan_rule_details() :: %{
        "CompletionWindowMinutes" => float(),
        "CopyActions" => list(aws_backup_backup_plan_rule_copy_actions_details()),
        "EnableContinuousBackup" => boolean(),
        "Lifecycle" => aws_backup_backup_plan_lifecycle_details(),
        "RuleId" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "ScheduleExpression" => String.t() | Atom.t(),
        "StartWindowMinutes" => float(),
        "TargetBackupVault" => String.t() | Atom.t()
      }

  """
  @type aws_backup_backup_plan_rule_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      keyword_filter() :: %{
        "Value" => String.t() | Atom.t()
      }

  """
  @type keyword_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      product() :: %{
        "ActivationUrl" => String.t() | Atom.t(),
        "Categories" => list(String.t() | Atom.t()),
        "CompanyName" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "IntegrationTypes" => list(list(any())()),
        "MarketplaceUrl" => String.t() | Atom.t(),
        "ProductArn" => String.t() | Atom.t(),
        "ProductName" => String.t() | Atom.t(),
        "ProductSubscriptionResourcePolicy" => String.t() | Atom.t()
      }

  """
  @type product() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_route53_query_logging_config_details() :: %{
        "CloudWatchLogsLogGroupArn" => cloud_watch_logs_log_group_arn_config_details()
      }

  """
  @type aws_route53_query_logging_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration() :: %{
        "ObjectLockEnabled" => String.t() | Atom.t(),
        "Rule" => aws_s3_bucket_object_lock_configuration_rule_details()
      }

  """
  @type aws_s3_bucket_object_lock_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_object_details() :: %{
        "Config" => aws_route53_hosted_zone_config_details(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_route53_hosted_zone_object_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_capacity_reservation_specification_details() :: %{
        "CapacityReservationPreference" => String.t() | Atom.t(),
        "CapacityReservationTarget" => aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details()
      }

  """
  @type aws_ec2_launch_template_data_capacity_reservation_specification_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_cluster_snapshot_details() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "ClusterCreateTime" => String.t() | Atom.t(),
        "DbClusterIdentifier" => String.t() | Atom.t(),
        "DbClusterSnapshotAttributes" => list(aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute()),
        "DbClusterSnapshotIdentifier" => String.t() | Atom.t(),
        "Engine" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "IamDatabaseAuthenticationEnabled" => boolean(),
        "KmsKeyId" => String.t() | Atom.t(),
        "LicenseModel" => String.t() | Atom.t(),
        "MasterUsername" => String.t() | Atom.t(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "SnapshotCreateTime" => String.t() | Atom.t(),
        "SnapshotType" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StorageEncrypted" => boolean(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_cluster_snapshot_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      software_package() :: %{
        "Architecture" => String.t() | Atom.t(),
        "Epoch" => String.t() | Atom.t(),
        "FilePath" => String.t() | Atom.t(),
        "FixedInVersion" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PackageManager" => String.t() | Atom.t(),
        "Release" => String.t() | Atom.t(),
        "Remediation" => String.t() | Atom.t(),
        "SourceLayerArn" => String.t() | Atom.t(),
        "SourceLayerHash" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type software_package() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type invalid_input_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_now_detail() :: %{
        "AuthStatus" => list(any()),
        "ClientId" => String.t() | Atom.t(),
        "InstanceName" => String.t() | Atom.t()
      }

  """
  @type service_now_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      port_range_from_to() :: %{
        "From" => integer(),
        "To" => integer()
      }

  """
  @type port_range_from_to() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      volume_mount() :: %{
        "MountPath" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type volume_mount() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_restore_status() :: %{
        "CurrentRestoreRateInMegaBytesPerSecond" => float(),
        "ElapsedTimeInSeconds" => float(),
        "EstimatedTimeToCompletionInSeconds" => float(),
        "ProgressInMegaBytes" => float(),
        "SnapshotSizeInMegaBytes" => float(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_restore_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_disassociation_request() :: %{
        optional("Target") => list(),
        required("ConfigurationPolicyIdentifier") => String.t() | Atom.t()
      }

  """
  @type start_configuration_policy_disassociation_request() :: %{String.t() | Atom.t() => any()}

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
  @type resource_group_by_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_standards_control_association_update() :: %{
        "ErrorCode" => list(any()),
        "ErrorReason" => String.t() | Atom.t(),
        "StandardsControlAssociationUpdate" => standards_control_association_update()
      }

  """
  @type unprocessed_standards_control_association_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_finding_aggregator_request() :: %{
        optional("Regions") => list(String.t() | Atom.t()),
        required("FindingAggregatorArn") => String.t() | Atom.t(),
        required("RegionLinkingMode") => String.t() | Atom.t()
      }

  """
  @type update_finding_aggregator_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_code() :: %{
        "S3Bucket" => String.t() | Atom.t(),
        "S3Key" => String.t() | Atom.t(),
        "S3ObjectVersion" => String.t() | Atom.t(),
        "ZipFile" => String.t() | Atom.t()
      }

  """
  @type aws_lambda_function_code() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_resource_record() :: %{
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_resource_record() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_ssl_protocols() :: %{
        "Items" => list(String.t() | Atom.t()),
        "Quantity" => integer()
      }

  """
  @type aws_cloud_front_distribution_origin_ssl_protocols() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "DateRange" => date_range(),
        "End" => String.t() | Atom.t(),
        "Start" => String.t() | Atom.t()
      }

  """
  @type date_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: %{
        "InstancesDistribution" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details(),
        "LaunchTemplate" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_private_dns_name_options_details() :: %{
        "EnableResourceNameDnsAAAARecord" => boolean(),
        "EnableResourceNameDnsARecord" => boolean(),
        "HostnameType" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_private_dns_name_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_configuration_policy_associations_response() :: %{
        "ConfigurationPolicyAssociationSummaries" => list(configuration_policy_association_summary()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_configuration_policy_associations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: %{
        "ContainerPath" => String.t() | Atom.t(),
        "MountOptions" => list(String.t() | Atom.t()),
        "Size" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_sage_maker_notebook_instance_details() :: %{
        "AcceleratorTypes" => list(String.t() | Atom.t()),
        "AdditionalCodeRepositories" => list(String.t() | Atom.t()),
        "DefaultCodeRepository" => String.t() | Atom.t(),
        "DirectInternetAccess" => String.t() | Atom.t(),
        "FailureReason" => String.t() | Atom.t(),
        "InstanceMetadataServiceConfiguration" => aws_sage_maker_notebook_instance_metadata_service_configuration_details(),
        "InstanceType" => String.t() | Atom.t(),
        "KmsKeyId" => String.t() | Atom.t(),
        "NetworkInterfaceId" => String.t() | Atom.t(),
        "NotebookInstanceArn" => String.t() | Atom.t(),
        "NotebookInstanceLifecycleConfigName" => String.t() | Atom.t(),
        "NotebookInstanceName" => String.t() | Atom.t(),
        "NotebookInstanceStatus" => String.t() | Atom.t(),
        "PlatformIdentifier" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "RootAccess" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "SubnetId" => String.t() | Atom.t(),
        "Url" => String.t() | Atom.t(),
        "VolumeSizeInGB" => integer()
      }

  """
  @type aws_sage_maker_notebook_instance_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_association_request() :: %{
        required("Target") => list()
      }

  """
  @type get_configuration_policy_association_request() :: %{String.t() | Atom.t() => any()}

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
        "Domain" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Ip" => String.t() | Atom.t(),
        "Location" => network_geo_location(),
        "Port" => integer()
      }

  """
  @type network_endpoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_trail_trail_details() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | Atom.t(),
        "CloudWatchLogsRoleArn" => String.t() | Atom.t(),
        "HasCustomEventSelectors" => boolean(),
        "HomeRegion" => String.t() | Atom.t(),
        "IncludeGlobalServiceEvents" => boolean(),
        "IsMultiRegionTrail" => boolean(),
        "IsOrganizationTrail" => boolean(),
        "KmsKeyId" => String.t() | Atom.t(),
        "LogFileValidationEnabled" => boolean(),
        "Name" => String.t() | Atom.t(),
        "S3BucketName" => String.t() | Atom.t(),
        "S3KeyPrefix" => String.t() | Atom.t(),
        "SnsTopicArn" => String.t() | Atom.t(),
        "SnsTopicName" => String.t() | Atom.t(),
        "TrailArn" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_trail_trail_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_options_tunnel_options_details() :: %{
        "DpdTimeoutSeconds" => integer(),
        "IkeVersions" => list(String.t() | Atom.t()),
        "OutsideIpAddress" => String.t() | Atom.t(),
        "Phase1DhGroupNumbers" => list(integer()),
        "Phase1EncryptionAlgorithms" => list(String.t() | Atom.t()),
        "Phase1IntegrityAlgorithms" => list(String.t() | Atom.t()),
        "Phase1LifetimeSeconds" => integer(),
        "Phase2DhGroupNumbers" => list(integer()),
        "Phase2EncryptionAlgorithms" => list(String.t() | Atom.t()),
        "Phase2IntegrityAlgorithms" => list(String.t() | Atom.t()),
        "Phase2LifetimeSeconds" => integer(),
        "PreSharedKey" => String.t() | Atom.t(),
        "RekeyFuzzPercentage" => integer(),
        "RekeyMarginTimeSeconds" => integer(),
        "ReplayWindowSize" => integer(),
        "TunnelInsideCidr" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpn_connection_options_tunnel_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_system_controls_details() :: %{
        "Namespace" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_system_controls_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_security_group_prefix_list_id() :: %{
        "PrefixListId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_security_group_prefix_list_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_details() :: %{
        "AuthenticationOptions" => list(aws_ec2_client_vpn_endpoint_authentication_options_details()),
        "ClientCidrBlock" => String.t() | Atom.t(),
        "ClientConnectOptions" => aws_ec2_client_vpn_endpoint_client_connect_options_details(),
        "ClientLoginBannerOptions" => aws_ec2_client_vpn_endpoint_client_login_banner_options_details(),
        "ClientVpnEndpointId" => String.t() | Atom.t(),
        "ConnectionLogOptions" => aws_ec2_client_vpn_endpoint_connection_log_options_details(),
        "Description" => String.t() | Atom.t(),
        "DnsServer" => list(String.t() | Atom.t()),
        "SecurityGroupIdSet" => list(String.t() | Atom.t()),
        "SelfServicePortalUrl" => String.t() | Atom.t(),
        "ServerCertificateArn" => String.t() | Atom.t(),
        "SessionTimeoutHours" => integer(),
        "SplitTunnel" => boolean(),
        "TransportProtocol" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t(),
        "VpnPort" => integer()
      }

  """
  @type aws_ec2_client_vpn_endpoint_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      jira_cloud_detail() :: %{
        "AuthStatus" => list(any()),
        "AuthUrl" => String.t() | Atom.t(),
        "CloudId" => String.t() | Atom.t(),
        "Domain" => String.t() | Atom.t(),
        "ProjectKey" => String.t() | Atom.t()
      }

  """
  @type jira_cloud_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_group_failover() :: %{
        "StatusCodes" => aws_cloud_front_distribution_origin_group_failover_status_codes()
      }

  """
  @type aws_cloud_front_distribution_origin_group_failover() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_secrets_manager_secret_details() :: %{
        "Deleted" => boolean(),
        "Description" => String.t() | Atom.t(),
        "KmsKeyId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RotationEnabled" => boolean(),
        "RotationLambdaArn" => String.t() | Atom.t(),
        "RotationOccurredWithinFrequency" => boolean(),
        "RotationRules" => aws_secrets_manager_secret_rotation_rules()
      }

  """
  @type aws_secrets_manager_secret_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_network_firewall_rule_group_details() :: %{
        "Capacity" => integer(),
        "Description" => String.t() | Atom.t(),
        "RuleGroup" => rule_group_details(),
        "RuleGroupArn" => String.t() | Atom.t(),
        "RuleGroupId" => String.t() | Atom.t(),
        "RuleGroupName" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_network_firewall_rule_group_details() :: %{String.t() | Atom.t() => any()}

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
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_finding_aggregator_request() :: %{
        optional("Regions") => list(String.t() | Atom.t()),
        required("RegionLinkingMode") => String.t() | Atom.t()
      }

  """
  @type create_finding_aggregator_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_history_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Records" => list(finding_history_record())
      }

  """
  @type get_finding_history_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_automation_rules_request_item() :: %{
        "Actions" => list(automation_rules_action()),
        "Criteria" => automation_rules_finding_filters(),
        "Description" => String.t() | Atom.t(),
        "IsTerminal" => boolean(),
        "RuleArn" => String.t() | Atom.t(),
        "RuleName" => String.t() | Atom.t(),
        "RuleOrder" => integer(),
        "RuleStatus" => list(any())
      }

  """
  @type update_automation_rules_request_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_object_details() :: %{
        "ContentType" => String.t() | Atom.t(),
        "ETag" => String.t() | Atom.t(),
        "LastModified" => String.t() | Atom.t(),
        "SSEKMSKeyId" => String.t() | Atom.t(),
        "ServerSideEncryption" => String.t() | Atom.t(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type aws_s3_object_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_encryption_at_rest_options() :: %{
        "Enabled" => boolean(),
        "KmsKeyId" => String.t() | Atom.t()
      }

  """
  @type aws_elasticsearch_domain_encryption_at_rest_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_cloud_watch_logs_details() :: %{
        "GroupName" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "StreamName" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_logs_config_cloud_watch_logs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      health_check() :: %{
        "ConnectorStatus" => list(any()),
        "LastCheckedAt" => non_neg_integer(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type health_check() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_members_response() :: %{}

  """
  @type disassociate_members_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_log_configuration_details() :: %{
        "LogDriver" => String.t() | Atom.t(),
        "Options" => map(),
        "SecretOptions" => list(aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details())
      }

  """
  @type aws_ecs_task_definition_container_definitions_log_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
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
        "ErrorReason" => String.t() | Atom.t(),
        "SecurityControlId" => String.t() | Atom.t()
      }

  """
  @type unprocessed_security_control() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_listener_description() :: %{
        "Listener" => aws_elb_load_balancer_listener(),
        "PolicyNames" => list(String.t() | Atom.t())
      }

  """
  @type aws_elb_load_balancer_listener_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_target() :: %{
        "ActionTargetArn" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type action_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_volume_attachment() :: %{
        "AttachTime" => String.t() | Atom.t(),
        "DeleteOnTermination" => boolean(),
        "InstanceId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_volume_attachment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_findings_request() :: %{
        optional("Confidence") => integer(),
        optional("Criticality") => integer(),
        optional("Note") => note_update(),
        optional("RelatedFindings") => list(related_finding()),
        optional("Severity") => severity_update(),
        optional("Types") => list(String.t() | Atom.t()),
        optional("UserDefinedFields") => map(),
        optional("VerificationState") => list(any()),
        optional("Workflow") => workflow_update(),
        required("FindingIdentifiers") => list(aws_security_finding_identifier())
      }

  """
  @type batch_update_findings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_unprocessed_finding() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | Atom.t(),
        "FindingIdentifier" => ocsf_finding_identifier(),
        "MetadataUid" => String.t() | Atom.t()
      }

  """
  @type batch_update_findings_v2_unprocessed_finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generator_details() :: %{
        "Description" => String.t() | Atom.t(),
        "Labels" => list(String.t() | Atom.t()),
        "Name" => String.t() | Atom.t()
      }

  """
  @type generator_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      detection() :: %{
        "Sequence" => sequence()
      }

  """
  @type detection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_app_cookie_stickiness_policy() :: %{
        "CookieName" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_elb_app_cookie_stickiness_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc_info_ipv6_cidr_block_set_details() :: %{
        "Ipv6CidrBlock" => String.t() | Atom.t()
      }

  """
  @type vpc_info_ipv6_cidr_block_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_automation_rule_request() :: %{
        optional("IsTerminal") => boolean(),
        optional("RuleStatus") => list(any()),
        optional("Tags") => map(),
        required("Actions") => list(automation_rules_action()),
        required("Criteria") => automation_rules_finding_filters(),
        required("Description") => String.t() | Atom.t(),
        required("RuleName") => String.t() | Atom.t(),
        required("RuleOrder") => integer()
      }

  """
  @type create_automation_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_peering_connection_status_details() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpc_peering_connection_status_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_details() :: %{
        "Label" => String.t() | Atom.t(),
        "LoggingConfiguration" => aws_step_function_state_machine_logging_configuration_details(),
        "Name" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "StateMachineArn" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "TracingConfiguration" => aws_step_function_state_machine_tracing_configuration_details(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_step_function_state_machine_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_destinations() :: %{
        "AddressDefinition" => String.t() | Atom.t()
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_destinations() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_insights_response() :: %{
        "Insights" => list(insight()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type get_insights_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_metadata_options() :: %{
        "HttpEndpoint" => String.t() | Atom.t(),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_launch_configuration_metadata_options() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      waf_override_action() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type waf_override_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_rest_api_details() :: %{
        "ApiKeySource" => String.t() | Atom.t(),
        "BinaryMediaTypes" => list(String.t() | Atom.t()),
        "CreatedDate" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "EndpointConfiguration" => aws_api_gateway_endpoint_configuration(),
        "Id" => String.t() | Atom.t(),
        "MinimumCompressionSize" => integer(),
        "Name" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_api_gateway_rest_api_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_group_policy() :: %{
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_group_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_rate_based_rule_match_predicate() :: %{
        "DataId" => String.t() | Atom.t(),
        "Negated" => boolean(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rate_based_rule_match_predicate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      actor_user() :: %{
        "Account" => user_account(),
        "CredentialUid" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Uid" => String.t() | Atom.t()
      }

  """
  @type actor_user() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resources_v2_request() :: %{
        optional("Filters") => resources_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_resources_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_logging_details() :: %{
        "ClusterLogging" => list(aws_eks_cluster_logging_cluster_logging_details())
      }

  """
  @type aws_eks_cluster_logging_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rule_group_rules_details() :: %{
        "Action" => aws_waf_regional_rule_group_rules_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rule_group_rules_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standards_control_association_detail() :: %{
        "AssociationStatus" => list(any()),
        "RelatedRequirements" => list(String.t() | Atom.t()),
        "SecurityControlArn" => String.t() | Atom.t(),
        "SecurityControlId" => String.t() | Atom.t(),
        "StandardsArn" => String.t() | Atom.t(),
        "StandardsControlArns" => list(String.t() | Atom.t()),
        "StandardsControlDescription" => String.t() | Atom.t(),
        "StandardsControlTitle" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer(),
        "UpdatedReason" => String.t() | Atom.t()
      }

  """
  @type standards_control_association_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_root_directory_creation_info_details() :: %{
        "OwnerGid" => String.t() | Atom.t(),
        "OwnerUid" => String.t() | Atom.t(),
        "Permissions" => String.t() | Atom.t()
      }

  """
  @type aws_efs_access_point_root_directory_creation_info_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      accept_invitation_response() :: %{}

  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:

      decline_invitations_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type decline_invitations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "Subnets" => list(String.t() | Atom.t()),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_vpc_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_cluster_member() :: %{
        "DbClusterParameterGroupStatus" => String.t() | Atom.t(),
        "DbInstanceIdentifier" => String.t() | Atom.t(),
        "IsClusterWriter" => boolean(),
        "PromotionTier" => integer()
      }

  """
  @type aws_rds_db_cluster_member() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_action_target_request() :: %{
        required("Description") => String.t() | Atom.t(),
        required("Id") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_action_target_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_placement_strategies_details() :: %{
        "Field" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_placement_strategies_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_rate_based_rule_details() :: %{
        "MatchPredicates" => list(aws_waf_rate_based_rule_match_predicate()),
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RateKey" => String.t() | Atom.t(),
        "RateLimit" => float(),
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rate_based_rule_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_master_account_response() :: %{
        "Master" => invitation()
      }

  """
  @type get_master_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_automation_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_automation_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_tracing_configuration_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_step_function_state_machine_tracing_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_environment_files_details() :: %{
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_environment_files_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_api_gateway_canary_settings() :: %{
        "DeploymentId" => String.t() | Atom.t(),
        "PercentTraffic" => float(),
        "StageVariableOverrides" => map(),
        "UseStageCache" => boolean()
      }

  """
  @type aws_api_gateway_canary_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: %{
        "ImmunityTime" => float()
      }

  """
  @type aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_enabled_products_for_import_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_enabled_products_for_import_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_products_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Products" => list(product())
      }

  """
  @type describe_products_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_web_acl_rule() :: %{
        "Action" => waf_action(),
        "ExcludedRules" => list(waf_excluded_rule()),
        "OverrideAction" => waf_override_action(),
        "Priority" => integer(),
        "RuleId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_web_acl_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cidr_block_association() :: %{
        "AssociationId" => String.t() | Atom.t(),
        "CidrBlock" => String.t() | Atom.t(),
        "CidrBlockState" => String.t() | Atom.t()
      }

  """
  @type cidr_block_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_peering_connection_vpc_info_details() :: %{
        "CidrBlock" => String.t() | Atom.t(),
        "CidrBlockSet" => list(vpc_info_cidr_block_set_details()),
        "Ipv6CidrBlockSet" => list(vpc_info_ipv6_cidr_block_set_details()),
        "OwnerId" => String.t() | Atom.t(),
        "PeeringOptions" => vpc_info_peering_options_details(),
        "Region" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpc_peering_connection_vpc_info_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_call_action() :: %{
        "AffectedResources" => map(),
        "Api" => String.t() | Atom.t(),
        "CallerType" => String.t() | Atom.t(),
        "DomainDetails" => aws_api_call_action_domain_details(),
        "FirstSeen" => String.t() | Atom.t(),
        "LastSeen" => String.t() | Atom.t(),
        "RemoteIpDetails" => action_remote_ip_details(),
        "ServiceName" => String.t() | Atom.t()
      }

  """
  @type aws_api_call_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_vpc_security_group() :: %{
        "Status" => String.t() | Atom.t(),
        "VpcSecurityGroupId" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_instance_vpc_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_instance_details() :: %{
        "LatestRestorableTime" => String.t() | Atom.t(),
        "DBName" => String.t() | Atom.t(),
        "StatusInfos" => list(aws_rds_db_status_info()),
        "Engine" => String.t() | Atom.t(),
        "VpcSecurityGroups" => list(aws_rds_db_instance_vpc_security_group()),
        "PerformanceInsightsKmsKeyId" => String.t() | Atom.t(),
        "CACertificateIdentifier" => String.t() | Atom.t(),
        "Timezone" => String.t() | Atom.t(),
        "PreferredMaintenanceWindow" => String.t() | Atom.t(),
        "Iops" => integer(),
        "MonitoringInterval" => integer(),
        "ReadReplicaDBInstanceIdentifiers" => list(String.t() | Atom.t()),
        "OptionGroupMemberships" => list(aws_rds_db_option_group_membership()),
        "PreferredBackupWindow" => String.t() | Atom.t(),
        "PendingModifiedValues" => aws_rds_db_pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "PromotionTier" => integer(),
        "ReadReplicaSourceDBInstanceIdentifier" => String.t() | Atom.t(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t() | Atom.t(),
        "DbInstanceStatus" => String.t() | Atom.t(),
        "DbSecurityGroups" => list(String.t() | Atom.t()),
        "AvailabilityZone" => String.t() | Atom.t(),
        "CopyTagsToSnapshot" => boolean(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "DBInstanceClass" => String.t() | Atom.t(),
        "ReadReplicaDBClusterIdentifiers" => list(String.t() | Atom.t()),
        "EnhancedMonitoringResourceArn" => String.t() | Atom.t(),
        "DbParameterGroups" => list(aws_rds_db_parameter_group()),
        "AutoMinorVersionUpgrade" => boolean(),
        "DbiResourceId" => String.t() | Atom.t(),
        "TdeCredentialArn" => String.t() | Atom.t(),
        "MasterUsername" => String.t() | Atom.t(),
        "LicenseModel" => String.t() | Atom.t(),
        "EnabledCloudWatchLogsExports" => list(String.t() | Atom.t()),
        "DBInstanceIdentifier" => String.t() | Atom.t(),
        "DBClusterIdentifier" => String.t() | Atom.t(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t() | Atom.t(),
        "PerformanceInsightsRetentionPeriod" => integer(),
        "InstanceCreateTime" => String.t() | Atom.t(),
        "DomainMemberships" => list(aws_rds_db_domain_membership()),
        "MultiAz" => boolean(),
        "DbInstancePort" => integer(),
        "SecondaryAvailabilityZone" => String.t() | Atom.t(),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t() | Atom.t(),
        "AllocatedStorage" => integer(),
        "AssociatedRoles" => list(aws_rds_db_instance_associated_role()),
        "DbSubnetGroup" => aws_rds_db_subnet_group(),
        "MaxAllocatedStorage" => integer(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => aws_rds_db_instance_endpoint(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t() | Atom.t(),
        "MonitoringRoleArn" => String.t() | Atom.t(),
        "ListenerEndpoint" => aws_rds_db_instance_endpoint()
      }

  """
  @type aws_rds_db_instance_details() :: %{String.t() | Atom.t() => any()}

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
  @type get_security_control_definition_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_inference_accelerators_details() :: %{
        "DeviceName" => String.t() | Atom.t(),
        "DeviceType" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_inference_accelerators_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      delete_invitations_request() :: %{
        required("AccountIds") => list(String.t() | Atom.t())
      }

  """
  @type delete_invitations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() :: %{
        "OnDemandAllocationStrategy" => String.t() | Atom.t(),
        "OnDemandBaseCapacity" => integer(),
        "OnDemandPercentageAboveBaseCapacity" => integer(),
        "SpotAllocationStrategy" => String.t() | Atom.t(),
        "SpotInstancePools" => integer(),
        "SpotMaxPrice" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_kms_key_details() :: %{
        "AWSAccountId" => String.t() | Atom.t(),
        "CreationDate" => float(),
        "Description" => String.t() | Atom.t(),
        "KeyId" => String.t() | Atom.t(),
        "KeyManager" => String.t() | Atom.t(),
        "KeyRotationStatus" => boolean(),
        "KeyState" => String.t() | Atom.t(),
        "Origin" => String.t() | Atom.t()
      }

  """
  @type aws_kms_key_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: %{
        "LaunchTemplateSpecification" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification(),
        "Overrides" => list(aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details())
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_tls_details() :: %{
        "CertificateAuthorityArnList" => list(String.t() | Atom.t()),
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_tls_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_findings_response() :: %{}

  """
  @type update_findings_response() :: %{}

  @typedoc """

  ## Example:

      aws_s3_bucket_details() :: %{
        "AccessControlList" => String.t() | Atom.t(),
        "BucketLifecycleConfiguration" => aws_s3_bucket_bucket_lifecycle_configuration_details(),
        "BucketLoggingConfiguration" => aws_s3_bucket_logging_configuration(),
        "BucketNotificationConfiguration" => aws_s3_bucket_notification_configuration(),
        "BucketVersioningConfiguration" => aws_s3_bucket_bucket_versioning_configuration(),
        "BucketWebsiteConfiguration" => aws_s3_bucket_website_configuration(),
        "CreatedAt" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ObjectLockConfiguration" => aws_s3_bucket_object_lock_configuration(),
        "OwnerAccountId" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "OwnerName" => String.t() | Atom.t(),
        "PublicAccessBlockConfiguration" => aws_s3_account_public_access_block_details(),
        "ServerSideEncryptionConfiguration" => aws_s3_bucket_server_side_encryption_configuration()
      }

  """
  @type aws_s3_bucket_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_action_v2() :: %{
        "ExternalIntegrationConfiguration" => external_integration_configuration(),
        "FindingFieldsUpdate" => automation_rules_finding_fields_update_v2(),
        "Type" => list(any())
      }

  """
  @type automation_rules_action_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_policy_details() :: %{
        "Description" => String.t() | Atom.t(),
        "FirewallPolicy" => firewall_policy_details(),
        "FirewallPolicyArn" => String.t() | Atom.t(),
        "FirewallPolicyId" => String.t() | Atom.t(),
        "FirewallPolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_network_firewall_firewall_policy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_by_result() :: %{
        "GroupByField" => String.t() | Atom.t(),
        "GroupByValues" => list(group_by_value())
      }

  """
  @type group_by_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_eks_cluster_resources_vpc_config_details() :: %{
        "EndpointPublicAccess" => boolean(),
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t())
      }

  """
  @type aws_eks_cluster_resources_vpc_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_enabled_products_for_import_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ProductSubscriptions" => list(String.t() | Atom.t())
      }

  """
  @type list_enabled_products_for_import_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resources_map_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => map_filter()
      }

  """
  @type resources_map_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_domain_endpoint_options_details() :: %{
        "CustomEndpoint" => String.t() | Atom.t(),
        "CustomEndpointCertificateArn" => String.t() | Atom.t(),
        "CustomEndpointEnabled" => boolean(),
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => String.t() | Atom.t()
      }

  """
  @type aws_open_search_service_domain_domain_endpoint_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() :: %{
        "AccessPointId" => String.t() | Atom.t(),
        "Iam" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_rate_based_rule_match_predicate() :: %{
        "DataId" => String.t() | Atom.t(),
        "Negated" => boolean(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rate_based_rule_match_predicate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_posix_user_details() :: %{
        "Gid" => String.t() | Atom.t(),
        "SecondaryGids" => list(String.t() | Atom.t()),
        "Uid" => String.t() | Atom.t()
      }

  """
  @type aws_efs_access_point_posix_user_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_rule_predicate_list_details() :: %{
        "DataId" => String.t() | Atom.t(),
        "Negated" => boolean(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rule_predicate_list_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      port_range() :: %{
        "Begin" => integer(),
        "End" => integer()
      }

  """
  @type port_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_policies_response() :: %{
        "ConfigurationPolicySummaries" => list(configuration_policy_summary()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_configuration_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_ldap_server_metadata_details() :: %{
        "Hosts" => list(String.t() | Atom.t()),
        "RoleBase" => String.t() | Atom.t(),
        "RoleName" => String.t() | Atom.t(),
        "RoleSearchMatching" => String.t() | Atom.t(),
        "RoleSearchSubtree" => boolean(),
        "ServiceAccountUsername" => String.t() | Atom.t(),
        "UserBase" => String.t() | Atom.t(),
        "UserRoleName" => String.t() | Atom.t(),
        "UserSearchMatching" => String.t() | Atom.t(),
        "UserSearchSubtree" => boolean()
      }

  """
  @type aws_amazon_mq_broker_ldap_server_metadata_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_provider_fields() :: %{
        "Confidence" => integer(),
        "Criticality" => integer(),
        "RelatedFindings" => list(related_finding()),
        "Severity" => finding_provider_severity(),
        "Types" => list(String.t() | Atom.t())
      }

  """
  @type finding_provider_fields() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type resource_tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnableStandards") => list(any()),
        optional("OrganizationConfiguration") => organization_configuration(),
        required("AutoEnable") => boolean()
      }

  """
  @type update_organization_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        optional("Feature") => list(any()),
        required("AdminAccountId") => String.t() | Atom.t()
      }

  """
  @type enable_organization_admin_account_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_replication_subnet_group_details() :: %{
        "ReplicationSubnetGroupIdentifier" => String.t() | Atom.t()
      }

  """
  @type aws_dms_replication_instance_replication_subnet_group_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_sns_topic_subscription() :: %{
        "Endpoint" => String.t() | Atom.t(),
        "Protocol" => String.t() | Atom.t()
      }

  """
  @type aws_sns_topic_subscription() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_route53_hosted_zone_config_details() :: %{
        "Comment" => String.t() | Atom.t()
      }

  """
  @type aws_route53_hosted_zone_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      external_integration_configuration() :: %{
        "ConnectorArn" => String.t() | Atom.t()
      }

  """
  @type external_integration_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_formation_stack_outputs_details() :: %{
        "Description" => String.t() | Atom.t(),
        "OutputKey" => String.t() | Atom.t(),
        "OutputValue" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_formation_stack_outputs_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      threat_intel_indicator() :: %{
        "Category" => list(any()),
        "LastObservedAt" => String.t() | Atom.t(),
        "Source" => String.t() | Atom.t(),
        "SourceUrl" => String.t() | Atom.t(),
        "Type" => list(any()),
        "Value" => String.t() | Atom.t()
      }

  """
  @type threat_intel_indicator() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_findings_response() :: %{
        "ProcessedFindings" => list(aws_security_finding_identifier()),
        "UnprocessedFindings" => list(batch_update_findings_unprocessed_finding())
      }

  """
  @type batch_update_findings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      geo_location() :: %{
        "Lat" => float(),
        "Lon" => float()
      }

  """
  @type geo_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_statistics_v2_request() :: %{
        optional("MaxStatisticResults") => integer(),
        optional("SortOrder") => list(any()),
        required("GroupByRules") => list(group_by_rule())
      }

  """
  @type get_finding_statistics_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "ActionType" => String.t() | Atom.t(),
        "AwsApiCallAction" => aws_api_call_action(),
        "DnsRequestAction" => dns_request_action(),
        "NetworkConnectionAction" => network_connection_action(),
        "PortProbeAction" => port_probe_action()
      }

  """
  @type action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_log_publishing_option() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | Atom.t(),
        "Enabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_log_publishing_option() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: %{
        "AuthenticationType" => String.t() | Atom.t(),
        "LambdaAuthorizerConfig" => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
        "OpenIdConnectConfig" => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
        "UserPoolConfig" => aws_app_sync_graph_ql_api_user_pool_config_details()
      }

  """
  @type aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_connectors_v2_request() :: %{
        optional("ConnectorStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ProviderName") => list(any())
      }

  """
  @type list_connectors_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_data_identifiers_detections() :: %{
        "Arn" => String.t() | Atom.t(),
        "Count" => float(),
        "Name" => String.t() | Atom.t(),
        "Occurrences" => occurrences()
      }

  """
  @type custom_data_identifiers_detections() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | Atom.t(),
        "FindingAggregatorArn" => String.t() | Atom.t(),
        "RegionLinkingMode" => String.t() | Atom.t(),
        "Regions" => list(String.t() | Atom.t())
      }

  """
  @type create_finding_aggregator_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_details() :: %{
        "DataSources" => aws_guard_duty_detector_data_sources_details(),
        "Features" => list(aws_guard_duty_detector_features_details()),
        "FindingPublishingFrequency" => String.t() | Atom.t(),
        "ServiceRole" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_service_software_options() :: %{
        "AutomatedUpdateDate" => String.t() | Atom.t(),
        "Cancellable" => boolean(),
        "CurrentVersion" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "NewVersion" => String.t() | Atom.t(),
        "UpdateAvailable" => boolean(),
        "UpdateStatus" => String.t() | Atom.t()
      }

  """
  @type aws_elasticsearch_domain_service_software_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateful_rule_group_references_details() :: %{
        "ResourceArn" => String.t() | Atom.t()
      }

  """
  @type firewall_policy_stateful_rule_group_references_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_iam_permissions_boundary() :: %{
        "PermissionsBoundaryArn" => String.t() | Atom.t(),
        "PermissionsBoundaryType" => String.t() | Atom.t()
      }

  """
  @type aws_iam_permissions_boundary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_vault_details() :: %{
        "AccessPolicy" => String.t() | Atom.t(),
        "BackupVaultArn" => String.t() | Atom.t(),
        "BackupVaultName" => String.t() | Atom.t(),
        "EncryptionKeyArn" => String.t() | Atom.t(),
        "Notifications" => aws_backup_backup_vault_notifications_details()
      }

  """
  @type aws_backup_backup_vault_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() :: %{
        "SamlProviderArn" => String.t() | Atom.t(),
        "SelfServiceSamlProviderArn" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      propagating_vgw_set_details() :: %{
        "GatewayId" => String.t() | Atom.t()
      }

  """
  @type propagating_vgw_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_invitations_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type delete_invitations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_import_findings_response() :: %{
        "FailedCount" => integer(),
        "FailedFindings" => list(import_findings_error()),
        "SuccessCount" => integer()
      }

  """
  @type batch_import_findings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      port_probe_action() :: %{
        "Blocked" => boolean(),
        "PortProbeDetails" => list(port_probe_detail())
      }

  """
  @type port_probe_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_action_count_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_rules_action_count_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_xray_encryption_config_details() :: %{
        "KeyId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_xray_encryption_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("Feature") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_organization_admin_accounts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ocsf_date_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => date_filter()
      }

  """
  @type ocsf_date_filter() :: %{String.t() | Atom.t() => any()}

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
  @type aws_elb_load_balancer_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      standards_control_association_update() :: %{
        "AssociationStatus" => list(any()),
        "SecurityControlId" => String.t() | Atom.t(),
        "StandardsArn" => String.t() | Atom.t(),
        "UpdatedReason" => String.t() | Atom.t()
      }

  """
  @type standards_control_association_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      rule_group_details() :: %{
        "RuleVariables" => rule_group_variables(),
        "RulesSource" => rule_group_source()
      }

  """
  @type rule_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_policy_request() :: %{
        optional("ConfigurationPolicy") => list(),
        optional("Description") => String.t() | Atom.t(),
        optional("Name") => String.t() | Atom.t(),
        optional("UpdatedReason") => String.t() | Atom.t()
      }

  """
  @type update_configuration_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_details() :: %{
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "BackendServerDescriptions" => list(aws_elb_load_balancer_backend_server_description()),
        "CanonicalHostedZoneName" => String.t() | Atom.t(),
        "CanonicalHostedZoneNameID" => String.t() | Atom.t(),
        "CreatedTime" => String.t() | Atom.t(),
        "DnsName" => String.t() | Atom.t(),
        "HealthCheck" => aws_elb_load_balancer_health_check(),
        "Instances" => list(aws_elb_load_balancer_instance()),
        "ListenerDescriptions" => list(aws_elb_load_balancer_listener_description()),
        "LoadBalancerAttributes" => aws_elb_load_balancer_attributes(),
        "LoadBalancerName" => String.t() | Atom.t(),
        "Policies" => aws_elb_load_balancer_policies(),
        "Scheme" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "SourceSecurityGroup" => aws_elb_load_balancer_source_security_group(),
        "Subnets" => list(String.t() | Atom.t()),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      threat() :: %{
        "FilePaths" => list(file_paths()),
        "ItemCount" => integer(),
        "Name" => String.t() | Atom.t(),
        "Severity" => String.t() | Atom.t()
      }

  """
  @type threat() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ssm_patch_compliance_details() :: %{
        "Patch" => aws_ssm_patch()
      }

  """
  @type aws_ssm_patch_compliance_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_hub_response() :: %{
        "AutoEnableControls" => boolean(),
        "ControlFindingGenerator" => list(any()),
        "HubArn" => String.t() | Atom.t(),
        "SubscribedAt" => String.t() | Atom.t()
      }

  """
  @type describe_hub_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_controller_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_deployment_controller_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_details() :: %{
        "IamInstanceProfileArn" => String.t() | Atom.t(),
        "ImageId" => String.t() | Atom.t(),
        "IpV4Addresses" => list(String.t() | Atom.t()),
        "IpV6Addresses" => list(String.t() | Atom.t()),
        "KeyName" => String.t() | Atom.t(),
        "LaunchedAt" => String.t() | Atom.t(),
        "MetadataOptions" => aws_ec2_instance_metadata_options(),
        "Monitoring" => aws_ec2_instance_monitoring_details(),
        "NetworkInterfaces" => list(aws_ec2_instance_network_interfaces_details()),
        "SubnetId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "VirtualizationType" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_instance_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_user_id_group_pair() :: %{
        "GroupId" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "PeeringStatus" => String.t() | Atom.t(),
        "UserId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t(),
        "VpcPeeringConnectionId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_security_group_user_id_group_pair() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_import_findings_request() :: %{
        required("Findings") => list(aws_security_finding())
      }

  """
  @type batch_import_findings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_projection() :: %{
        "NonKeyAttributes" => list(String.t() | Atom.t()),
        "ProjectionType" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_projection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_automation_rule_v2_request() :: %{}

  """
  @type delete_automation_rule_v2_request() :: %{}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_vpc_options_details() :: %{
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t())
      }

  """
  @type aws_open_search_service_domain_vpc_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      composite_filter() :: %{
        "BooleanFilters" => list(ocsf_boolean_filter()),
        "DateFilters" => list(ocsf_date_filter()),
        "MapFilters" => list(ocsf_map_filter()),
        "NumberFilters" => list(ocsf_number_filter()),
        "Operator" => list(any()),
        "StringFilters" => list(ocsf_string_filter())
      }

  """
  @type composite_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_insight_response() :: %{
        "InsightArn" => String.t() | Atom.t()
      }

  """
  @type delete_insight_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_invitations_count_request() :: %{}

  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:

      get_resources_v2_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Resources" => list(resource_result())
      }

  """
  @type get_resources_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_action_details() :: %{
        "Allow" => aws_wafv2_action_allow_details(),
        "Block" => aws_wafv2_action_block_details(),
        "Captcha" => aws_wafv2_rules_action_captcha_details(),
        "Count" => aws_wafv2_rules_action_count_details()
      }

  """
  @type aws_wafv2_rules_action_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_security_controls_response() :: %{
        "SecurityControls" => list(security_control()),
        "UnprocessedIds" => list(unprocessed_security_control())
      }

  """
  @type batch_get_security_controls_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_details() :: %{
        "DockerVolumeConfiguration" => aws_ecs_task_definition_volumes_docker_volume_configuration_details(),
        "EfsVolumeConfiguration" => aws_ecs_task_definition_volumes_efs_volume_configuration_details(),
        "Host" => aws_ecs_task_definition_volumes_host_details(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_volumes_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_user_pool_config_details() :: %{
        "AppIdClientRegex" => String.t() | Atom.t(),
        "AwsRegion" => String.t() | Atom.t(),
        "DefaultAction" => String.t() | Atom.t(),
        "UserPoolId" => String.t() | Atom.t()
      }

  """
  @type aws_app_sync_graph_ql_api_user_pool_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_lifecycle_details() :: %{
        "DeleteAfterDays" => float(),
        "MoveToColdStorageAfterDays" => float()
      }

  """
  @type aws_backup_backup_plan_lifecycle_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_processor_feature() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_processor_feature() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_details() :: %{
        "Command" => list(String.t() | Atom.t()),
        "MemoryReservation" => integer(),
        "StartTimeout" => integer(),
        "LinuxParameters" => aws_ecs_task_definition_container_definitions_linux_parameters_details(),
        "PortMappings" => list(aws_ecs_task_definition_container_definitions_port_mappings_details()),
        "Hostname" => String.t() | Atom.t(),
        "Privileged" => boolean(),
        "WorkingDirectory" => String.t() | Atom.t(),
        "Image" => String.t() | Atom.t(),
        "EnvironmentFiles" => list(aws_ecs_task_definition_container_definitions_environment_files_details()),
        "Ulimits" => list(aws_ecs_task_definition_container_definitions_ulimits_details()),
        "StopTimeout" => integer(),
        "ExtraHosts" => list(aws_ecs_task_definition_container_definitions_extra_hosts_details()),
        "LogConfiguration" => aws_ecs_task_definition_container_definitions_log_configuration_details(),
        "Secrets" => list(aws_ecs_task_definition_container_definitions_secrets_details()),
        "DockerSecurityOptions" => list(String.t() | Atom.t()),
        "SystemControls" => list(aws_ecs_task_definition_container_definitions_system_controls_details()),
        "HealthCheck" => aws_ecs_task_definition_container_definitions_health_check_details(),
        "DnsServers" => list(String.t() | Atom.t()),
        "PseudoTerminal" => boolean(),
        "RepositoryCredentials" => aws_ecs_task_definition_container_definitions_repository_credentials_details(),
        "DockerLabels" => map(),
        "DisableNetworking" => boolean(),
        "User" => String.t() | Atom.t(),
        "Environment" => list(aws_ecs_task_definition_container_definitions_environment_details()),
        "FirelensConfiguration" => aws_ecs_task_definition_container_definitions_firelens_configuration_details(),
        "MountPoints" => list(aws_ecs_task_definition_container_definitions_mount_points_details()),
        "VolumesFrom" => list(aws_ecs_task_definition_container_definitions_volumes_from_details()),
        "DependsOn" => list(aws_ecs_task_definition_container_definitions_depends_on_details()),
        "DnsSearchDomains" => list(String.t() | Atom.t()),
        "Interactive" => boolean(),
        "Links" => list(String.t() | Atom.t()),
        "ResourceRequirements" => list(aws_ecs_task_definition_container_definitions_resource_requirements_details()),
        "Essential" => boolean(),
        "Name" => String.t() | Atom.t(),
        "ReadonlyRootFilesystem" => boolean(),
        "EntryPoint" => list(String.t() | Atom.t()),
        "Cpu" => integer(),
        "Memory" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_node_to_node_encryption_options_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_open_search_service_domain_node_to_node_encryption_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      city() :: %{
        "CityName" => String.t() | Atom.t()
      }

  """
  @type city() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        required("InvitationId") => String.t() | Atom.t(),
        required("MasterId") => String.t() | Atom.t()
      }

  """
  @type accept_invitation_request() :: %{String.t() | Atom.t() => any()}

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
        "ConfigurationPolicyId" => String.t() | Atom.t()
      }

  """
  @type association_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: %{
        "BlockDurationMinutes" => integer(),
        "InstanceInterruptionBehavior" => String.t() | Atom.t(),
        "MaxPrice" => String.t() | Atom.t(),
        "SpotInstanceType" => String.t() | Atom.t(),
        "ValidUntil" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_details() :: %{
        "AcceleratorCount" => aws_ec2_launch_template_data_instance_requirements_accelerator_count_details(),
        "AcceleratorManufacturers" => list(String.t() | Atom.t()),
        "AcceleratorNames" => list(String.t() | Atom.t()),
        "AcceleratorTotalMemoryMiB" => aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details(),
        "AcceleratorTypes" => list(String.t() | Atom.t()),
        "BareMetal" => String.t() | Atom.t(),
        "BaselineEbsBandwidthMbps" => aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details(),
        "BurstablePerformance" => String.t() | Atom.t(),
        "CpuManufacturers" => list(String.t() | Atom.t()),
        "ExcludedInstanceTypes" => list(String.t() | Atom.t()),
        "InstanceGenerations" => list(String.t() | Atom.t()),
        "LocalStorage" => String.t() | Atom.t(),
        "LocalStorageTypes" => list(String.t() | Atom.t()),
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
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("OnlyAssociated") => boolean()
      }

  """
  @type list_members_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "Members" => list(member()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_members_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_finding_fields_update_v2() :: %{
        "Comment" => String.t() | Atom.t(),
        "SeverityId" => integer(),
        "StatusId" => integer()
      }

  """
  @type automation_rules_finding_fields_update_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_security_group_ip_permission() :: %{
        "FromPort" => integer(),
        "IpProtocol" => String.t() | Atom.t(),
        "IpRanges" => list(aws_ec2_security_group_ip_range()),
        "Ipv6Ranges" => list(aws_ec2_security_group_ipv6_range()),
        "PrefixListIds" => list(aws_ec2_security_group_prefix_list_id()),
        "ToPort" => integer(),
        "UserIdGroupPairs" => list(aws_ec2_security_group_user_id_group_pair())
      }

  """
  @type aws_ec2_security_group_ip_permission() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_step_function_state_machine_logging_configuration_details() :: %{
        "Destinations" => list(aws_step_function_state_machine_logging_configuration_destinations_details()),
        "IncludeExecutionData" => boolean(),
        "Level" => String.t() | Atom.t()
      }

  """
  @type aws_step_function_state_machine_logging_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_details() :: %{
        "Category" => String.t() | Atom.t(),
        "CustomerGatewayConfiguration" => String.t() | Atom.t(),
        "CustomerGatewayId" => String.t() | Atom.t(),
        "Options" => aws_ec2_vpn_connection_options_details(),
        "Routes" => list(aws_ec2_vpn_connection_routes_details()),
        "State" => String.t() | Atom.t(),
        "TransitGatewayId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "VgwTelemetry" => list(aws_ec2_vpn_connection_vgw_telemetry_details()),
        "VpnConnectionId" => String.t() | Atom.t(),
        "VpnGatewayId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpn_connection_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resources_statistics_v2_response() :: %{
        "GroupByResults" => list(group_by_result())
      }

  """
  @type get_resources_statistics_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firewall_policy_stateless_rule_group_references_details() :: %{
        "Priority" => integer(),
        "ResourceArn" => String.t() | Atom.t()
      }

  """
  @type firewall_policy_stateless_rule_group_references_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      ocsf_boolean_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => boolean_filter()
      }

  """
  @type ocsf_boolean_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: %{
        "Enable" => boolean(),
        "Rollback" => boolean()
      }

  """
  @type aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_enabled_standards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StandardsSubscriptionArns") => list(String.t() | Atom.t())
      }

  """
  @type get_enabled_standards_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_history_record() :: %{
        "FindingCreated" => boolean(),
        "FindingIdentifier" => aws_security_finding_identifier(),
        "NextToken" => String.t() | Atom.t(),
        "UpdateSource" => finding_history_update_source(),
        "UpdateTime" => non_neg_integer(),
        "Updates" => list(finding_history_update())
      }

  """
  @type finding_history_record() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_default_capacity_provider_strategy_details() :: %{
        "Base" => integer(),
        "CapacityProvider" => String.t() | Atom.t(),
        "Weight" => integer()
      }

  """
  @type aws_ecs_cluster_default_capacity_provider_strategy_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      jira_cloud_provider_configuration() :: %{
        "ProjectKey" => String.t() | Atom.t()
      }

  """
  @type jira_cloud_provider_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_rule_group_rules_action_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rule_group_rules_action_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_details() :: %{
        "Artifacts" => list(aws_code_build_project_artifacts_details()),
        "EncryptionKey" => String.t() | Atom.t(),
        "Environment" => aws_code_build_project_environment(),
        "LogsConfig" => aws_code_build_project_logs_config_details(),
        "Name" => String.t() | Atom.t(),
        "SecondaryArtifacts" => list(aws_code_build_project_artifacts_details()),
        "ServiceRole" => String.t() | Atom.t(),
        "Source" => aws_code_build_project_source(),
        "VpcConfig" => aws_code_build_project_vpc_config()
      }

  """
  @type aws_code_build_project_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resources_date_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => date_filter()
      }

  """
  @type resources_date_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_instance_monitoring_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_auto_scaling_launch_configuration_instance_monitoring_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      standards_subscription_request() :: %{
        "StandardsArn" => String.t() | Atom.t(),
        "StandardsInput" => map()
      }

  """
  @type standards_subscription_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_details() :: %{
        "AccessPolicies" => String.t() | Atom.t(),
        "DomainEndpointOptions" => aws_elasticsearch_domain_domain_endpoint_options(),
        "DomainId" => String.t() | Atom.t(),
        "DomainName" => String.t() | Atom.t(),
        "ElasticsearchClusterConfig" => aws_elasticsearch_domain_elasticsearch_cluster_config_details(),
        "ElasticsearchVersion" => String.t() | Atom.t(),
        "EncryptionAtRestOptions" => aws_elasticsearch_domain_encryption_at_rest_options(),
        "Endpoint" => String.t() | Atom.t(),
        "Endpoints" => map(),
        "LogPublishingOptions" => aws_elasticsearch_domain_log_publishing_options(),
        "NodeToNodeEncryptionOptions" => aws_elasticsearch_domain_node_to_node_encryption_options(),
        "ServiceSoftwareOptions" => aws_elasticsearch_domain_service_software_options(),
        "VPCOptions" => aws_elasticsearch_domain_vpc_options()
      }

  """
  @type aws_elasticsearch_domain_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_monitoring_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_launch_template_data_monitoring_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_endpoint_service_service_type_details() :: %{
        "ServiceType" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpc_endpoint_service_service_type_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_security_group() :: %{
        "GroupId" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_interface_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_secrets_manager_secret_rotation_rules() :: %{
        "AutomaticallyAfterDays" => integer()
      }

  """
  @type aws_secrets_manager_secret_rotation_rules() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_authentication_options_details() :: %{
        "ActiveDirectory" => aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details(),
        "FederatedAuthentication" => aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details(),
        "MutualAuthentication" => aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_client_vpn_endpoint_authentication_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_by_default() :: %{
        "KMSMasterKeyID" => String.t() | Atom.t(),
        "SSEAlgorithm" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_server_side_encryption_by_default() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_products_v2_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ProductsV2" => list(product_v2())
      }

  """
  @type describe_products_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rule_group_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Capacity" => float(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Rules" => list(aws_wafv2_rules_details()),
        "Scope" => String.t() | Atom.t(),
        "VisibilityConfig" => aws_wafv2_visibility_config_details()
      }

  """
  @type aws_wafv2_rule_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "ConnectorArn" => String.t() | Atom.t(),
        "ConnectorId" => String.t() | Atom.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ProviderSummary" => provider_summary()
      }

  """
  @type connector_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_association_response() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | Atom.t(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | Atom.t(),
        "TargetId" => String.t() | Atom.t(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type start_configuration_policy_association_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stateless_custom_publish_metric_action() :: %{
        "Dimensions" => list(stateless_custom_publish_metric_action_dimension())
      }

  """
  @type stateless_custom_publish_metric_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origins() :: %{
        "Items" => list(aws_cloud_front_distribution_origin_item())
      }

  """
  @type aws_cloud_front_distribution_origins() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_finding_aggregators_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_finding_aggregators_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network() :: %{
        "DestinationDomain" => String.t() | Atom.t(),
        "DestinationIpV4" => String.t() | Atom.t(),
        "DestinationIpV6" => String.t() | Atom.t(),
        "DestinationPort" => integer(),
        "Direction" => list(any()),
        "OpenPortRange" => port_range(),
        "Protocol" => String.t() | Atom.t(),
        "SourceDomain" => String.t() | Atom.t(),
        "SourceIpV4" => String.t() | Atom.t(),
        "SourceIpV6" => String.t() | Atom.t(),
        "SourceMac" => String.t() | Atom.t(),
        "SourcePort" => integer()
      }

  """
  @type network() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_stream_specification() :: %{
        "StreamEnabled" => boolean(),
        "StreamViewType" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_stream_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group_subnet() :: %{
        "SubnetAvailabilityZone" => aws_rds_db_subnet_group_subnet_availability_zone(),
        "SubnetIdentifier" => String.t() | Atom.t(),
        "SubnetStatus" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_subnet_group_subnet() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_detail() :: %{
        "Destination" => String.t() | Atom.t(),
        "Events" => list(String.t() | Atom.t()),
        "Filter" => aws_s3_bucket_notification_configuration_filter(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_notification_configuration_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_security_hub_v2_request() :: %{}

  """
  @type describe_security_hub_v2_request() :: %{}

  @typedoc """

  ## Example:

      list_automation_rules_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_automation_rules_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
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

      get_master_account_request() :: %{}

  """
  @type get_master_account_request() :: %{}

  @typedoc """

  ## Example:

      aws_api_gateway_endpoint_configuration() :: %{
        "Types" => list(String.t() | Atom.t())
      }

  """
  @type aws_api_gateway_endpoint_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecr_repository_image_scanning_configuration_details() :: %{
        "ScanOnPush" => boolean()
      }

  """
  @type aws_ecr_repository_image_scanning_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
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
        "ExpirationTime" => String.t() | Atom.t(),
        "RequesterVpcInfo" => aws_ec2_vpc_peering_connection_vpc_info_details(),
        "Status" => aws_ec2_vpc_peering_connection_status_details(),
        "VpcPeeringConnectionId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpc_peering_connection_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_role_policy() :: %{
        "PolicyName" => String.t() | Atom.t()
      }

  """
  @type aws_iam_role_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_iam_instance_profile_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_iam_instance_profile_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_service_software_options_details() :: %{
        "AutomatedUpdateDate" => String.t() | Atom.t(),
        "Cancellable" => boolean(),
        "CurrentVersion" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "NewVersion" => String.t() | Atom.t(),
        "OptionalDeployment" => boolean(),
        "UpdateAvailable" => boolean(),
        "UpdateStatus" => String.t() | Atom.t()
      }

  """
  @type aws_open_search_service_domain_service_software_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_master_user_options_details() :: %{
        "MasterUserArn" => String.t() | Atom.t(),
        "MasterUserName" => String.t() | Atom.t(),
        "MasterUserPassword" => String.t() | Atom.t()
      }

  """
  @type aws_open_search_service_domain_master_user_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_code_build_project_logs_config_s3_logs_details() :: %{
        "EncryptionDisabled" => boolean(),
        "Location" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_logs_config_s3_logs_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_action() :: %{
        "FindingFieldsUpdate" => automation_rules_finding_fields_update(),
        "Type" => list(any())
      }

  """
  @type automation_rules_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_details() :: %{
        "DeleteProtection" => boolean(),
        "Description" => String.t() | Atom.t(),
        "FirewallArn" => String.t() | Atom.t(),
        "FirewallId" => String.t() | Atom.t(),
        "FirewallName" => String.t() | Atom.t(),
        "FirewallPolicyArn" => String.t() | Atom.t(),
        "FirewallPolicyChangeProtection" => boolean(),
        "SubnetChangeProtection" => boolean(),
        "SubnetMappings" => list(aws_network_firewall_firewall_subnet_mappings_details()),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_network_firewall_firewall_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_ulimits_details() :: %{
        "HardLimit" => integer(),
        "Name" => String.t() | Atom.t(),
        "SoftLimit" => integer()
      }

  """
  @type aws_ecs_task_definition_container_definitions_ulimits_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_findings_request() :: %{
        optional("Note") => note_update(),
        optional("RecordState") => list(any()),
        required("Filters") => aws_security_finding_filters()
      }

  """
  @type update_findings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_standards_control_associations_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "StandardsControlAssociationSummaries" => list(standards_control_association_summary())
      }

  """
  @type list_standards_control_associations_response() :: %{String.t() | Atom.t() => any()}

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
  @type rule_group_source_stateless_rule_match_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ssm_compliance_summary() :: %{
        "ComplianceType" => String.t() | Atom.t(),
        "CompliantCriticalCount" => integer(),
        "CompliantHighCount" => integer(),
        "CompliantInformationalCount" => integer(),
        "CompliantLowCount" => integer(),
        "CompliantMediumCount" => integer(),
        "CompliantUnspecifiedCount" => integer(),
        "ExecutionType" => String.t() | Atom.t(),
        "NonCompliantCriticalCount" => integer(),
        "NonCompliantHighCount" => integer(),
        "NonCompliantInformationalCount" => integer(),
        "NonCompliantLowCount" => integer(),
        "NonCompliantMediumCount" => integer(),
        "NonCompliantUnspecifiedCount" => integer(),
        "OverallSeverity" => String.t() | Atom.t(),
        "PatchBaselineId" => String.t() | Atom.t(),
        "PatchGroup" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_ssm_compliance_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: %{
        "Name" => list(any()),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_certificate_manager_certificate_key_usage() :: %{
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_certificate_manager_certificate_key_usage() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_security_control_request() :: %{
        optional("LastUpdateReason") => String.t() | Atom.t(),
        required("Parameters") => map(),
        required("SecurityControlId") => String.t() | Atom.t()
      }

  """
  @type update_security_control_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_security_group_ec2_security_group() :: %{
        "Ec2SecurityGroupId" => String.t() | Atom.t(),
        "Ec2SecurityGroupName" => String.t() | Atom.t(),
        "Ec2SecurityGroupOwnerId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_security_group_ec2_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_policy_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "ConfigurationPolicy" => list(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type update_configuration_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_details() :: %{
        "DBName" => String.t() | Atom.t(),
        "AutomatedSnapshotRetentionPeriod" => integer(),
        "VpcSecurityGroups" => list(aws_redshift_cluster_vpc_security_group()),
        "Encrypted" => boolean(),
        "PendingActions" => list(String.t() | Atom.t()),
        "EnhancedVpcRouting" => boolean(),
        "PreferredMaintenanceWindow" => String.t() | Atom.t(),
        "ClusterAvailabilityStatus" => String.t() | Atom.t(),
        "ClusterRevisionNumber" => String.t() | Atom.t(),
        "RestoreStatus" => aws_redshift_cluster_restore_status(),
        "PendingModifiedValues" => aws_redshift_cluster_pending_modified_values(),
        "KmsKeyId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t(),
        "ClusterSecurityGroups" => list(aws_redshift_cluster_cluster_security_group()),
        "AvailabilityZone" => String.t() | Atom.t(),
        "ManualSnapshotRetentionPeriod" => integer(),
        "SnapshotScheduleState" => String.t() | Atom.t(),
        "ExpectedNextSnapshotScheduleTimeStatus" => String.t() | Atom.t(),
        "ResizeInfo" => aws_redshift_cluster_resize_info(),
        "ClusterCreateTime" => String.t() | Atom.t(),
        "AllowVersionUpgrade" => boolean(),
        "ClusterSnapshotCopyStatus" => aws_redshift_cluster_cluster_snapshot_copy_status(),
        "NodeType" => String.t() | Atom.t(),
        "HsmStatus" => aws_redshift_cluster_hsm_status(),
        "MaintenanceTrackName" => String.t() | Atom.t(),
        "ClusterSubnetGroupName" => String.t() | Atom.t(),
        "ClusterNodes" => list(aws_redshift_cluster_cluster_node()),
        "ClusterStatus" => String.t() | Atom.t(),
        "MasterUsername" => String.t() | Atom.t(),
        "ClusterVersion" => String.t() | Atom.t(),
        "ClusterIdentifier" => String.t() | Atom.t(),
        "ClusterPublicKey" => String.t() | Atom.t(),
        "NumberOfNodes" => integer(),
        "IamRoles" => list(aws_redshift_cluster_iam_role()),
        "NextMaintenanceWindowStartTime" => String.t() | Atom.t(),
        "PubliclyAccessible" => boolean(),
        "ElasticResizeNumberOfNodeOptions" => String.t() | Atom.t(),
        "Endpoint" => aws_redshift_cluster_endpoint(),
        "SnapshotScheduleIdentifier" => String.t() | Atom.t(),
        "ElasticIpStatus" => aws_redshift_cluster_elastic_ip_status(),
        "DeferredMaintenanceWindows" => list(aws_redshift_cluster_deferred_maintenance_window()),
        "ClusterParameterGroups" => list(aws_redshift_cluster_cluster_parameter_group()),
        "ExpectedNextSnapshotScheduleTime" => String.t() | Atom.t(),
        "LoggingStatus" => aws_redshift_cluster_logging_status()
      }

  """
  @type aws_redshift_cluster_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_action_target_response() :: %{
        "ActionTargetArn" => String.t() | Atom.t()
      }

  """
  @type delete_action_target_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_server_side_encryption_configuration() :: %{
        "Rules" => list(aws_s3_bucket_server_side_encryption_rule())
      }

  """
  @type aws_s3_bucket_server_side_encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_invitations_count_response() :: %{
        "InvitationsCount" => integer()
      }

  """
  @type get_invitations_count_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_findings_v2_request() :: %{
        optional("Filters") => ocsf_finding_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("SortCriteria") => list(sort_criterion())
      }

  """
  @type get_findings_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_action_allow_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_action_allow_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_details() :: %{
        "ResultConfiguration" => aws_athena_work_group_configuration_result_configuration_details()
      }

  """
  @type aws_athena_work_group_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_visibility_config_details() :: %{
        "CloudWatchMetricsEnabled" => boolean(),
        "MetricName" => String.t() | Atom.t(),
        "SampledRequestsEnabled" => boolean()
      }

  """
  @type aws_wafv2_visibility_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_eventbus_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Policy" => String.t() | Atom.t()
      }

  """
  @type aws_events_eventbus_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_by_rule() :: %{
        "Filters" => ocsf_finding_filters(),
        "GroupByField" => list(any())
      }

  """
  @type group_by_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_layer() :: %{
        "Arn" => String.t() | Atom.t(),
        "CodeSize" => integer()
      }

  """
  @type aws_lambda_function_layer() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_connector_v2_request() :: %{
        optional("ClientSecret") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("Provider") => list()
      }

  """
  @type update_connector_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_invitations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_cache_behaviors() :: %{
        "Items" => list(aws_cloud_front_distribution_cache_behavior())
      }

  """
  @type aws_cloud_front_distribution_cache_behaviors() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_policy_association_request() :: %{
        required("ConfigurationPolicyIdentifier") => String.t() | Atom.t(),
        required("Target") => list()
      }

  """
  @type start_configuration_policy_association_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_control_parameter() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => list(String.t() | Atom.t())
      }

  """
  @type security_control_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_port_mappings_details() :: %{
        "ContainerPort" => integer(),
        "HostPort" => integer(),
        "Protocol" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_port_mappings_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_override_action_details() :: %{
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_override_action_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_events_endpoint_event_buses_details() :: %{
        "EventBusArn" => String.t() | Atom.t()
      }

  """
  @type aws_events_endpoint_event_buses_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_launch_configuration_block_device_mappings_details() :: %{
        "DeviceName" => String.t() | Atom.t(),
        "Ebs" => aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details(),
        "NoDevice" => boolean(),
        "VirtualName" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_launch_configuration_block_device_mappings_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_network_interface_ip_v6_address_detail() :: %{
        "IpV6Address" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_network_interface_ip_v6_address_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_instance() :: %{
        "InstanceId" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enum_configuration_options() :: %{
        "AllowedValues" => list(String.t() | Atom.t()),
        "DefaultValue" => String.t() | Atom.t()
      }

  """
  @type enum_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: %{
        "Date" => String.t() | Atom.t(),
        "Days" => integer(),
        "StorageClass" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      custom_data_identifiers_result() :: %{
        "Detections" => list(custom_data_identifiers_detections()),
        "TotalCount" => float()
      }

  """
  @type custom_data_identifiers_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_encryption_options_details() :: %{
        "KmsKeyId" => String.t() | Atom.t(),
        "UseAwsOwnedKey" => boolean()
      }

  """
  @type aws_amazon_mq_broker_encryption_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: %{
        "DataVolumeKMSKeyId" => String.t() | Atom.t()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_redshift_cluster_elastic_ip_status() :: %{
        "ElasticIp" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_elastic_ip_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_findings_v2_processed_finding() :: %{
        "FindingIdentifier" => ocsf_finding_identifier(),
        "MetadataUid" => String.t() | Atom.t()
      }

  """
  @type batch_update_findings_v2_processed_finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_statistics_v2_response() :: %{
        "GroupByResults" => list(group_by_result())
      }

  """
  @type get_finding_statistics_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      route_set_details() :: %{
        "CarrierGatewayId" => String.t() | Atom.t(),
        "CoreNetworkArn" => String.t() | Atom.t(),
        "DestinationCidrBlock" => String.t() | Atom.t(),
        "DestinationIpv6CidrBlock" => String.t() | Atom.t(),
        "DestinationPrefixListId" => String.t() | Atom.t(),
        "EgressOnlyInternetGatewayId" => String.t() | Atom.t(),
        "GatewayId" => String.t() | Atom.t(),
        "InstanceId" => String.t() | Atom.t(),
        "InstanceOwnerId" => String.t() | Atom.t(),
        "LocalGatewayId" => String.t() | Atom.t(),
        "NatGatewayId" => String.t() | Atom.t(),
        "NetworkInterfaceId" => String.t() | Atom.t(),
        "Origin" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t(),
        "TransitGatewayId" => String.t() | Atom.t(),
        "VpcPeeringConnectionId" => String.t() | Atom.t()
      }

  """
  @type route_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      actor() :: %{
        "Id" => String.t() | Atom.t(),
        "Session" => actor_session(),
        "User" => actor_user()
      }

  """
  @type actor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_findings_v2_response() :: %{
        "Findings" => list(any()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type get_findings_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_athena_work_group_configuration_result_configuration_details() :: %{
        "EncryptionConfiguration" => aws_athena_work_group_configuration_result_configuration_encryption_configuration_details()
      }

  """
  @type aws_athena_work_group_configuration_result_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_connector_v2_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("KmsKeyArn") => String.t() | Atom.t(),
        optional("Tags") => map(),
        required("Name") => String.t() | Atom.t(),
        required("Provider") => list()
      }

  """
  @type create_connector_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t() | Atom.t(),
        "AdministratorId" => String.t() | Atom.t(),
        "Email" => String.t() | Atom.t(),
        "InvitedAt" => non_neg_integer(),
        "MasterId" => String.t() | Atom.t(),
        "MemberStatus" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type member() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_routing_rule() :: %{
        "Condition" => aws_s3_bucket_website_configuration_routing_rule_condition(),
        "Redirect" => aws_s3_bucket_website_configuration_routing_rule_redirect()
      }

  """
  @type aws_s3_bucket_website_configuration_routing_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_task_details() :: %{
        "CdcStartPosition" => String.t() | Atom.t(),
        "CdcStartTime" => String.t() | Atom.t(),
        "CdcStopPosition" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "MigrationType" => String.t() | Atom.t(),
        "ReplicationInstanceArn" => String.t() | Atom.t(),
        "ReplicationTaskIdentifier" => String.t() | Atom.t(),
        "ReplicationTaskSettings" => String.t() | Atom.t(),
        "ResourceIdentifier" => String.t() | Atom.t(),
        "SourceEndpointArn" => String.t() | Atom.t(),
        "TableMappings" => String.t() | Atom.t(),
        "TargetEndpointArn" => String.t() | Atom.t(),
        "TaskData" => String.t() | Atom.t()
      }

  """
  @type aws_dms_replication_task_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "Comparison" => list(any()),
        "Value" => String.t() | Atom.t()
      }

  """
  @type string_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_finding_aggregators_response() :: %{
        "FindingAggregators" => list(finding_aggregator()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_finding_aggregators_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_policy_details() :: %{
        "AttachmentCount" => integer(),
        "CreateDate" => String.t() | Atom.t(),
        "DefaultVersionId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "IsAttachable" => boolean(),
        "Path" => String.t() | Atom.t(),
        "PermissionsBoundaryUsageCount" => integer(),
        "PolicyId" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t(),
        "PolicyVersionList" => list(aws_iam_policy_version()),
        "UpdateDate" => String.t() | Atom.t()
      }

  """
  @type aws_iam_policy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_security_controls_request() :: %{
        required("SecurityControlIds") => list(String.t() | Atom.t())
      }

  """
  @type batch_get_security_controls_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_response() :: %{
        "AdminAccountId" => String.t() | Atom.t(),
        "Feature" => list(any())
      }

  """
  @type enable_organization_admin_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_automation_rule() :: %{
        "ErrorCode" => integer(),
        "ErrorMessage" => String.t() | Atom.t(),
        "RuleArn" => String.t() | Atom.t()
      }

  """
  @type unprocessed_automation_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_automation_rule_response() :: %{
        "RuleArn" => String.t() | Atom.t()
      }

  """
  @type create_automation_rule_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_volume_details() :: %{
        "Host" => aws_ecs_task_volume_host_details(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_volume_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_cluster_parameter_status() :: %{
        "ParameterApplyErrorDescription" => String.t() | Atom.t(),
        "ParameterApplyStatus" => String.t() | Atom.t(),
        "ParameterName" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_cluster_parameter_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_sse_description() :: %{
        "InaccessibleEncryptionDateTime" => String.t() | Atom.t(),
        "KmsMasterKeyArn" => String.t() | Atom.t(),
        "SseType" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_sse_description() :: %{String.t() | Atom.t() => any()}

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
  @type configuration_policy_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      adjustment() :: %{
        "Metric" => String.t() | Atom.t(),
        "Reason" => String.t() | Atom.t()
      }

  """
  @type adjustment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_group_arn_config_details() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | Atom.t(),
        "HostedZoneId" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t()
      }

  """
  @type cloud_watch_logs_log_group_arn_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_logs_pending_details() :: %{
        "Audit" => boolean(),
        "General" => boolean()
      }

  """
  @type aws_amazon_mq_broker_logs_pending_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      note_update() :: %{
        "Text" => String.t() | Atom.t(),
        "UpdatedBy" => String.t() | Atom.t()
      }

  """
  @type note_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_root_directory_details() :: %{
        "CreationInfo" => aws_efs_access_point_root_directory_creation_info_details(),
        "Path" => String.t() | Atom.t()
      }

  """
  @type aws_efs_access_point_root_directory_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc_info_peering_options_details() :: %{
        "AllowDnsResolutionFromRemoteVpc" => boolean(),
        "AllowEgressFromLocalClassicLinkToRemoteVpc" => boolean(),
        "AllowEgressFromLocalVpcToRemoteClassicLink" => boolean()
      }

  """
  @type vpc_info_peering_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ocsf_finding_filters() :: %{
        "CompositeFilters" => list(composite_filter()),
        "CompositeOperator" => list(any())
      }

  """
  @type ocsf_finding_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: %{
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_maintenance_options_details() :: %{
        "AutoRecovery" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_maintenance_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      workflow_update() :: %{
        "Status" => list(any())
      }

  """
  @type workflow_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_action_targets_request() :: %{
        optional("ActionTargetArns") => list(String.t() | Atom.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type describe_action_targets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_acl_entry() :: %{
        "CidrBlock" => String.t() | Atom.t(),
        "Egress" => boolean(),
        "IcmpTypeCode" => icmp_type_code(),
        "Ipv6CidrBlock" => String.t() | Atom.t(),
        "PortRange" => port_range_from_to(),
        "Protocol" => String.t() | Atom.t(),
        "RuleAction" => String.t() | Atom.t(),
        "RuleNumber" => integer()
      }

  """
  @type aws_ec2_network_acl_entry() :: %{String.t() | Atom.t() => any()}

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
        "ImageId" => String.t() | Atom.t(),
        "InstanceInitiatedShutdownBehavior" => String.t() | Atom.t(),
        "InstanceMarketOptions" => aws_ec2_launch_template_data_instance_market_options_details(),
        "InstanceRequirements" => aws_ec2_launch_template_data_instance_requirements_details(),
        "InstanceType" => String.t() | Atom.t(),
        "KernelId" => String.t() | Atom.t(),
        "KeyName" => String.t() | Atom.t(),
        "LicenseSet" => list(aws_ec2_launch_template_data_license_set_details()),
        "MaintenanceOptions" => aws_ec2_launch_template_data_maintenance_options_details(),
        "MetadataOptions" => aws_ec2_launch_template_data_metadata_options_details(),
        "Monitoring" => aws_ec2_launch_template_data_monitoring_details(),
        "NetworkInterfaceSet" => list(aws_ec2_launch_template_data_network_interface_set_details()),
        "Placement" => aws_ec2_launch_template_data_placement_details(),
        "PrivateDnsNameOptions" => aws_ec2_launch_template_data_private_dns_name_options_details(),
        "RamDiskId" => String.t() | Atom.t(),
        "SecurityGroupIdSet" => list(String.t() | Atom.t()),
        "SecurityGroupSet" => list(String.t() | Atom.t()),
        "UserData" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_now_provider_configuration() :: %{
        "ClientId" => String.t() | Atom.t(),
        "ClientSecret" => String.t() | Atom.t(),
        "InstanceName" => String.t() | Atom.t()
      }

  """
  @type service_now_provider_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      association_set_details() :: %{
        "AssociationState" => association_state_details(),
        "GatewayId" => String.t() | Atom.t(),
        "Main" => boolean(),
        "RouteTableAssociationId" => String.t() | Atom.t(),
        "RouteTableId" => String.t() | Atom.t(),
        "SubnetId" => String.t() | Atom.t()
      }

  """
  @type association_set_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_versioning_configuration() :: %{
        "IsMfaDeleteEnabled" => boolean(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_bucket_versioning_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_origin_custom_origin_config() :: %{
        "HttpPort" => integer(),
        "HttpsPort" => integer(),
        "OriginKeepaliveTimeout" => integer(),
        "OriginProtocolPolicy" => String.t() | Atom.t(),
        "OriginReadTimeout" => integer(),
        "OriginSslProtocols" => aws_cloud_front_distribution_origin_ssl_protocols()
      }

  """
  @type aws_cloud_front_distribution_origin_custom_origin_config() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_open_search_service_domain_details() :: %{
        "AccessPolicies" => String.t() | Atom.t(),
        "AdvancedSecurityOptions" => aws_open_search_service_domain_advanced_security_options_details(),
        "Arn" => String.t() | Atom.t(),
        "ClusterConfig" => aws_open_search_service_domain_cluster_config_details(),
        "DomainEndpoint" => String.t() | Atom.t(),
        "DomainEndpointOptions" => aws_open_search_service_domain_domain_endpoint_options_details(),
        "DomainEndpoints" => map(),
        "DomainName" => String.t() | Atom.t(),
        "EncryptionAtRestOptions" => aws_open_search_service_domain_encryption_at_rest_options_details(),
        "EngineVersion" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "LogPublishingOptions" => aws_open_search_service_domain_log_publishing_options_details(),
        "NodeToNodeEncryptionOptions" => aws_open_search_service_domain_node_to_node_encryption_options_details(),
        "ServiceSoftwareOptions" => aws_open_search_service_domain_service_software_options_details(),
        "VpcOptions" => aws_open_search_service_domain_vpc_options_details()
      }

  """
  @type aws_open_search_service_domain_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_credit_specification_details() :: %{
        "CpuCredits" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_credit_specification_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: %{
        "Iam" => aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details(),
        "Scram" => aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details()
      }

  """
  @type aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_resources_statistics_v2_request() :: %{
        optional("MaxStatisticResults") => integer(),
        optional("SortOrder") => list(any()),
        required("GroupByRules") => list(resource_group_by_rule())
      }

  """
  @type get_resources_statistics_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_watch_alarm_dimensions_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_watch_alarm_dimensions_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      patch_summary() :: %{
        "FailedCount" => integer(),
        "Id" => String.t() | Atom.t(),
        "InstalledCount" => integer(),
        "InstalledOtherCount" => integer(),
        "InstalledPendingReboot" => integer(),
        "InstalledRejectedCount" => integer(),
        "MissingCount" => integer(),
        "Operation" => String.t() | Atom.t(),
        "OperationEndTime" => String.t() | Atom.t(),
        "OperationStartTime" => String.t() | Atom.t(),
        "RebootOption" => String.t() | Atom.t()
      }

  """
  @type patch_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_cluster_settings_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_cluster_cluster_settings_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: %{
        "ContainerPath" => String.t() | Atom.t(),
        "HostPath" => String.t() | Atom.t(),
        "Permissions" => list(String.t() | Atom.t())
      }

  """
  @type aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_security_group_ipv6_range() :: %{
        "CidrIpv6" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_security_group_ipv6_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_extra_hosts_details() :: %{
        "Hostname" => String.t() | Atom.t(),
        "IpAddress" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_extra_hosts_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_automation_rule_v2_response() :: %{}

  """
  @type update_automation_rule_v2_response() :: %{}

  @typedoc """

  ## Example:

      aws_network_firewall_firewall_subnet_mappings_details() :: %{
        "SubnetId" => String.t() | Atom.t()
      }

  """
  @type aws_network_firewall_firewall_subnet_mappings_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration_rule_details() :: %{
        "DefaultRetention" => aws_s3_bucket_object_lock_configuration_rule_default_retention_details()
      }

  """
  @type aws_s3_bucket_object_lock_configuration_rule_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_aggregator_v2_request() :: %{}

  """
  @type get_aggregator_v2_request() :: %{}

  @typedoc """

  ## Example:

      create_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | Atom.t(),
        "AggregatorV2Arn" => String.t() | Atom.t(),
        "LinkedRegions" => list(String.t() | Atom.t()),
        "RegionLinkingMode" => String.t() | Atom.t()
      }

  """
  @type create_aggregator_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_finding_aggregator_response() :: %{}

  """
  @type delete_finding_aggregator_response() :: %{}

  @typedoc """

  ## Example:

      batch_update_findings_unprocessed_finding() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "FindingIdentifier" => aws_security_finding_identifier()
      }

  """
  @type batch_update_findings_unprocessed_finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_policy_associations_request() :: %{
        optional("Filters") => association_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_configuration_policy_associations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_import_findings_for_product_response() :: %{
        "ProductSubscriptionArn" => String.t() | Atom.t()
      }

  """
  @type enable_import_findings_for_product_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_log_publishing_options_details() :: %{
        "AuditLogs" => aws_open_search_service_domain_log_publishing_option(),
        "IndexSlowLogs" => aws_open_search_service_domain_log_publishing_option(),
        "SearchSlowLogs" => aws_open_search_service_domain_log_publishing_option()
      }

  """
  @type aws_open_search_service_domain_log_publishing_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_security_control_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StandardsArn") => String.t() | Atom.t()
      }

  """
  @type list_security_control_definitions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_result() :: %{
        "AccountId" => String.t() | Atom.t(),
        "FindingsSummary" => list(resource_findings_summary()),
        "Region" => String.t() | Atom.t(),
        "ResourceArn" => String.t() | Atom.t(),
        "ResourceCategory" => list(any()),
        "ResourceConfig" => any(),
        "ResourceCreationTimeDt" => String.t() | Atom.t(),
        "ResourceDetailCaptureTimeDt" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t(),
        "ResourceTags" => list(resource_tag()),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type resource_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_waf_regional_web_acl_rules_list_details() :: %{
        "Action" => aws_waf_regional_web_acl_rules_list_action_details(),
        "OverrideAction" => aws_waf_regional_web_acl_rules_list_override_action_details(),
        "Priority" => integer(),
        "RuleId" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_web_acl_rules_list_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resources_string_filter() :: %{
        "FieldName" => list(any()),
        "Filter" => string_filter()
      }

  """
  @type resources_string_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_bucket_lifecycle_configuration_details() :: %{
        "Rules" => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_details())
      }

  """
  @type aws_s3_bucket_bucket_lifecycle_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      malware() :: %{
        "Name" => String.t() | Atom.t(),
        "Path" => String.t() | Atom.t(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type malware() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_cross_zone_load_balancing() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_elb_load_balancer_cross_zone_load_balancing() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_web_acl_captcha_config_details() :: %{
        "ImmunityTimeProperty" => aws_wafv2_web_acl_captcha_config_immunity_time_property_details()
      }

  """
  @type aws_wafv2_web_acl_captcha_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_advanced_security_options_details() :: %{
        "Enabled" => boolean(),
        "InternalUserDatabaseEnabled" => boolean(),
        "MasterUserOptions" => aws_open_search_service_domain_master_user_options_details()
      }

  """
  @type aws_open_search_service_domain_advanced_security_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: %{
        "ClientBroker" => String.t() | Atom.t(),
        "InCluster" => boolean()
      }

  """
  @type aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_athena_work_group_details() :: %{
        "Configuration" => aws_athena_work_group_configuration_details(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t()
      }

  """
  @type aws_athena_work_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cvss() :: %{
        "Adjustments" => list(adjustment()),
        "BaseScore" => float(),
        "BaseVector" => String.t() | Atom.t(),
        "Source" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type cvss() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_open_search_service_domain_encryption_at_rest_options_details() :: %{
        "Enabled" => boolean(),
        "KmsKeyId" => String.t() | Atom.t()
      }

  """
  @type aws_open_search_service_domain_encryption_at_rest_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_security_finding() :: %{
        "Region" => String.t() | Atom.t(),
        "GeneratorDetails" => generator_details(),
        "CompanyName" => String.t() | Atom.t(),
        "Types" => list(String.t() | Atom.t()),
        "Compliance" => compliance(),
        "Vulnerabilities" => list(vulnerability()),
        "UserDefinedFields" => map(),
        "Network" => network(),
        "ProcessedAt" => String.t() | Atom.t(),
        "Malware" => list(malware()),
        "Severity" => severity(),
        "NetworkPath" => list(network_path_component()),
        "WorkflowState" => list(any()),
        "ProductName" => String.t() | Atom.t(),
        "Confidence" => integer(),
        "CreatedAt" => String.t() | Atom.t(),
        "Remediation" => remediation(),
        "ThreatIntelIndicators" => list(threat_intel_indicator()),
        "UpdatedAt" => String.t() | Atom.t(),
        "AwsAccountId" => String.t() | Atom.t(),
        "Resources" => list(resource()),
        "Id" => String.t() | Atom.t(),
        "Detection" => detection(),
        "ProductArn" => String.t() | Atom.t(),
        "SchemaVersion" => String.t() | Atom.t(),
        "SourceUrl" => String.t() | Atom.t(),
        "FindingProviderFields" => finding_provider_fields(),
        "AwsAccountName" => String.t() | Atom.t(),
        "FirstObservedAt" => String.t() | Atom.t(),
        "Workflow" => workflow(),
        "GeneratorId" => String.t() | Atom.t(),
        "Note" => note(),
        "RecordState" => list(any()),
        "Title" => String.t() | Atom.t(),
        "Threats" => list(threat()),
        "Sample" => boolean(),
        "Criticality" => integer(),
        "LastObservedAt" => String.t() | Atom.t(),
        "Action" => action(),
        "PatchSummary" => patch_summary(),
        "Description" => String.t() | Atom.t(),
        "RelatedFindings" => list(related_finding()),
        "ProductFields" => map(),
        "VerificationState" => list(any()),
        "Process" => process_details()
      }

  """
  @type aws_security_finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_routing_config_failover_config_details() :: %{
        "Primary" => aws_events_endpoint_routing_config_failover_config_primary_details(),
        "Secondary" => aws_events_endpoint_routing_config_failover_config_secondary_details()
      }

  """
  @type aws_events_endpoint_routing_config_failover_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_instance_monitoring_details() :: %{
        "State" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_instance_monitoring_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_finding_aggregator_request() :: %{}

  """
  @type get_finding_aggregator_request() :: %{}

  @typedoc """

  ## Example:

      aws_lambda_function_tracing_config() :: %{
        "Mode" => String.t() | Atom.t()
      }

  """
  @type aws_lambda_function_tracing_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_security_hub_v2_response() :: %{
        "HubV2Arn" => String.t() | Atom.t()
      }

  """
  @type enable_security_hub_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_details() :: %{
        "AvailabilityZones" => list(aws_auto_scaling_auto_scaling_group_availability_zones_list_details()),
        "CapacityRebalance" => boolean(),
        "CreatedTime" => String.t() | Atom.t(),
        "HealthCheckGracePeriod" => integer(),
        "HealthCheckType" => String.t() | Atom.t(),
        "LaunchConfigurationName" => String.t() | Atom.t(),
        "LaunchTemplate" => aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification(),
        "LoadBalancerNames" => list(String.t() | Atom.t()),
        "MixedInstancesPolicy" => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_source_security_group() :: %{
        "GroupName" => String.t() | Atom.t(),
        "OwnerAlias" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_source_security_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: %{
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerUri" => String.t() | Atom.t(),
        "IdentityValidationExpression" => String.t() | Atom.t()
      }

  """
  @type aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      actor_session() :: %{
        "CreatedTime" => float(),
        "Issuer" => String.t() | Atom.t(),
        "MfaStatus" => list(any()),
        "Uid" => String.t() | Atom.t()
      }

  """
  @type actor_session() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_policy_version() :: %{
        "CreateDate" => String.t() | Atom.t(),
        "IsDefaultVersion" => boolean(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type aws_iam_policy_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_backup_plan_advanced_backup_settings_details() :: %{
        "BackupOptions" => map(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type aws_backup_backup_plan_advanced_backup_settings_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() :: %{
        "InstanceType" => String.t() | Atom.t(),
        "WeightedCapacity" => String.t() | Atom.t()
      }

  """
  @type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_aggregator_v2_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("LinkedRegions") => list(String.t() | Atom.t()),
        optional("Tags") => map(),
        required("RegionLinkingMode") => String.t() | Atom.t()
      }

  """
  @type create_aggregator_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: %{
        "Days" => integer(),
        "Mode" => String.t() | Atom.t(),
        "Years" => integer()
      }

  """
  @type aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration_redirect_to() :: %{
        "Hostname" => String.t() | Atom.t(),
        "Protocol" => String.t() | Atom.t()
      }

  """
  @type aws_s3_bucket_website_configuration_redirect_to() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_call_action_domain_details() :: %{
        "Domain" => String.t() | Atom.t()
      }

  """
  @type aws_api_call_action_domain_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_import_findings_for_product_request() :: %{
        required("ProductArn") => String.t() | Atom.t()
      }

  """
  @type enable_import_findings_for_product_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      date_range() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }

  """
  @type date_range() :: %{String.t() | Atom.t() => any()}

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
  @type resource_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_insight_request() :: %{
        required("Filters") => aws_security_finding_filters(),
        required("GroupByAttribute") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_insight_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_proxy_configuration_details() :: %{
        "ContainerName" => String.t() | Atom.t(),
        "ProxyConfigurationProperties" => list(aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details()),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_proxy_configuration_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      insight() :: %{
        "Filters" => aws_security_finding_filters(),
        "GroupByAttribute" => String.t() | Atom.t(),
        "InsightArn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type insight() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_path_component_details() :: %{
        "Address" => list(String.t() | Atom.t()),
        "PortRanges" => list(port_range())
      }

  """
  @type network_path_component_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_placement_constraints_details() :: %{
        "Expression" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_placement_constraints_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_configuration_policy_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("Tags") => map(),
        required("ConfigurationPolicy") => list(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_configuration_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_backend_server_description() :: %{
        "InstancePort" => integer(),
        "PolicyNames" => list(String.t() | Atom.t())
      }

  """
  @type aws_elb_load_balancer_backend_server_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_cluster_details() :: %{
        "ActiveServicesCount" => integer(),
        "CapacityProviders" => list(String.t() | Atom.t()),
        "ClusterArn" => String.t() | Atom.t(),
        "ClusterName" => String.t() | Atom.t(),
        "ClusterSettings" => list(aws_ecs_cluster_cluster_settings_details()),
        "Configuration" => aws_ecs_cluster_configuration_details(),
        "DefaultCapacityProviderStrategy" => list(aws_ecs_cluster_default_capacity_provider_strategy_details()),
        "RegisteredContainerInstancesCount" => integer(),
        "RunningTasksCount" => integer(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_cluster_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_administrator_invitation_response() :: %{}

  """
  @type accept_administrator_invitation_response() :: %{}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_details() :: %{
        "ContainerDefinitions" => list(aws_ecs_task_definition_container_definitions_details()),
        "Cpu" => String.t() | Atom.t(),
        "ExecutionRoleArn" => String.t() | Atom.t(),
        "Family" => String.t() | Atom.t(),
        "InferenceAccelerators" => list(aws_ecs_task_definition_inference_accelerators_details()),
        "IpcMode" => String.t() | Atom.t(),
        "Memory" => String.t() | Atom.t(),
        "NetworkMode" => String.t() | Atom.t(),
        "PidMode" => String.t() | Atom.t(),
        "PlacementConstraints" => list(aws_ecs_task_definition_placement_constraints_details()),
        "ProxyConfiguration" => aws_ecs_task_definition_proxy_configuration_details(),
        "RequiresCompatibilities" => list(String.t() | Atom.t()),
        "Status" => String.t() | Atom.t(),
        "TaskRoleArn" => String.t() | Atom.t(),
        "Volumes" => list(aws_ecs_task_definition_volumes_details())
      }

  """
  @type aws_ecs_task_definition_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stateless_custom_action_definition() :: %{
        "PublishMetricAction" => stateless_custom_publish_metric_action()
      }

  """
  @type stateless_custom_action_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_features_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_features_details() :: %{String.t() | Atom.t() => any()}

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
  @type aws_events_endpoint_routing_config_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_hub_policy() :: %{
        "EnabledStandardIdentifiers" => list(String.t() | Atom.t()),
        "SecurityControlsConfiguration" => security_controls_configuration(),
        "ServiceEnabled" => boolean()
      }

  """
  @type security_hub_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_security_hub_request() :: %{
        optional("ControlFindingGenerator") => list(any()),
        optional("EnableDefaultStandards") => boolean(),
        optional("Tags") => map()
      }

  """
  @type enable_security_hub_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_additional_attribute() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_additional_attribute() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_provisioned_throughput() :: %{
        "LastDecreaseDateTime" => String.t() | Atom.t(),
        "LastIncreaseDateTime" => String.t() | Atom.t(),
        "NumberOfDecreasesToday" => integer(),
        "ReadCapacityUnits" => integer(),
        "WriteCapacityUnits" => integer()
      }

  """
  @type aws_dynamo_db_table_provisioned_throughput() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_secrets_details() :: %{
        "Name" => String.t() | Atom.t(),
        "ValueFrom" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_secrets_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_rds_db_subnet_group_subnet_availability_zone() :: %{
        "Name" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_subnet_group_subnet_availability_zone() :: %{String.t() | Atom.t() => any()}

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
        "Architecture" => String.t() | Atom.t(),
        "ImageDigest" => String.t() | Atom.t(),
        "ImagePublishedAt" => String.t() | Atom.t(),
        "ImageTags" => list(String.t() | Atom.t()),
        "RegistryId" => String.t() | Atom.t(),
        "RepositoryName" => String.t() | Atom.t()
      }

  """
  @type aws_ecr_container_image_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_network_interface_details() :: %{
        "Attachment" => aws_ec2_network_interface_attachment(),
        "IpV6Addresses" => list(aws_ec2_network_interface_ip_v6_address_detail()),
        "NetworkInterfaceId" => String.t() | Atom.t(),
        "PrivateIpAddresses" => list(aws_ec2_network_interface_private_ip_address_detail()),
        "PublicDnsName" => String.t() | Atom.t(),
        "PublicIp" => String.t() | Atom.t(),
        "SecurityGroups" => list(aws_ec2_network_interface_security_group()),
        "SourceDestCheck" => boolean()
      }

  """
  @type aws_ec2_network_interface_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_redshift_cluster_logging_status() :: %{
        "BucketName" => String.t() | Atom.t(),
        "LastFailureMessage" => String.t() | Atom.t(),
        "LastFailureTime" => String.t() | Atom.t(),
        "LastSuccessfulDeliveryTime" => String.t() | Atom.t(),
        "LoggingEnabled" => boolean(),
        "S3KeyPrefix" => String.t() | Atom.t()
      }

  """
  @type aws_redshift_cluster_logging_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() :: %{
        "Name" => String.t() | Atom.t(),
        "ValueFrom" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() ::
          %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      security_control_custom_parameter() :: %{
        "Parameters" => map(),
        "SecurityControlId" => String.t() | Atom.t()
      }

  """
  @type security_control_custom_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_maintenance_window_start_time_details() :: %{
        "DayOfWeek" => String.t() | Atom.t(),
        "TimeOfDay" => String.t() | Atom.t(),
        "TimeZone" => String.t() | Atom.t()
      }

  """
  @type aws_amazon_mq_broker_maintenance_window_start_time_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ecs_service_capacity_provider_strategy_details() :: %{
        "Base" => integer(),
        "CapacityProvider" => String.t() | Atom.t(),
        "Weight" => integer()
      }

  """
  @type aws_ecs_service_capacity_provider_strategy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_custom_request_handling_details() :: %{
        "InsertHeaders" => list(aws_wafv2_custom_http_header())
      }

  """
  @type aws_wafv2_custom_request_handling_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_guard_duty_detector_data_sources_s3_logs_details() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type aws_guard_duty_detector_data_sources_s3_logs_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_waf_rule_details() :: %{
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PredicateList" => list(aws_waf_rule_predicate_list_details()),
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_rule_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_automation_rule_v2_response() :: %{
        "RuleArn" => String.t() | Atom.t(),
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type create_automation_rule_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "AdminAccounts" => list(admin_account()),
        "Feature" => list(any()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_organization_admin_accounts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      product_v2() :: %{
        "ActivationUrl" => String.t() | Atom.t(),
        "Categories" => list(String.t() | Atom.t()),
        "CompanyName" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "IntegrationV2Types" => list(list(any())()),
        "MarketplaceUrl" => String.t() | Atom.t(),
        "ProductV2Name" => String.t() | Atom.t()
      }

  """
  @type product_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_connector_v2_response() :: %{}

  """
  @type update_connector_v2_response() :: %{}

  @typedoc """

  ## Example:

      batch_disable_standards_request() :: %{
        required("StandardsSubscriptionArns") => list(String.t() | Atom.t())
      }

  """
  @type batch_disable_standards_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      port_probe_detail() :: %{
        "LocalIpDetails" => action_local_ip_details(),
        "LocalPortDetails" => action_local_port_details(),
        "RemoteIpDetails" => action_remote_ip_details()
      }

  """
  @type port_probe_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_request() :: %{}

  """
  @type get_configuration_policy_request() :: %{}

  @typedoc """

  ## Example:

      aws_waf_regional_rate_based_rule_details() :: %{
        "MatchPredicates" => list(aws_waf_regional_rate_based_rule_match_predicate()),
        "MetricName" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RateKey" => String.t() | Atom.t(),
        "RateLimit" => float(),
        "RuleId" => String.t() | Atom.t()
      }

  """
  @type aws_waf_regional_rate_based_rule_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_s3_bucket_website_configuration() :: %{
        "ErrorDocument" => String.t() | Atom.t(),
        "IndexDocumentSuffix" => String.t() | Atom.t(),
        "RedirectAllRequestsTo" => aws_s3_bucket_website_configuration_redirect_to(),
        "RoutingRules" => list(aws_s3_bucket_website_configuration_routing_rule())
      }

  """
  @type aws_s3_bucket_website_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpc_details() :: %{
        "CidrBlockAssociationSet" => list(cidr_block_association()),
        "DhcpOptionsId" => String.t() | Atom.t(),
        "Ipv6CidrBlockAssociationSet" => list(ipv6_cidr_block_association()),
        "State" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_vpc_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enum_list_configuration_options() :: %{
        "AllowedValues" => list(String.t() | Atom.t()),
        "DefaultValue" => list(String.t() | Atom.t()),
        "MaxItems" => integer()
      }

  """
  @type enum_list_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_request() :: %{}

  """
  @type disassociate_from_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      aggregator_v2() :: %{
        "AggregatorV2Arn" => String.t() | Atom.t()
      }

  """
  @type aggregator_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_depends_on_details() :: %{
        "Condition" => String.t() | Atom.t(),
        "ContainerName" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_depends_on_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      provider_summary() :: %{
        "ConnectorStatus" => list(any()),
        "ProviderName" => list(any())
      }

  """
  @type provider_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dynamo_db_table_attribute_definition() :: %{
        "AttributeName" => String.t() | Atom.t(),
        "AttributeType" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_attribute_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_custom_actions_details() :: %{
        "ActionDefinition" => stateless_custom_action_definition(),
        "ActionName" => String.t() | Atom.t()
      }

  """
  @type rule_group_source_custom_actions_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment_environment_variables_details() :: %{
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_environment_environment_variables_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      standards_subscription() :: %{
        "StandardsArn" => String.t() | Atom.t(),
        "StandardsControlsUpdatable" => list(any()),
        "StandardsInput" => map(),
        "StandardsStatus" => list(any()),
        "StandardsStatusReason" => standards_status_reason(),
        "StandardsSubscriptionArn" => String.t() | Atom.t()
      }

  """
  @type standards_subscription() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_repository_credentials_details() :: %{
        "CredentialsParameter" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_repository_credentials_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_aggregator_v2_response() :: %{
        "AggregationRegion" => String.t() | Atom.t(),
        "AggregatorV2Arn" => String.t() | Atom.t(),
        "LinkedRegions" => list(String.t() | Atom.t()),
        "RegionLinkingMode" => String.t() | Atom.t()
      }

  """
  @type get_aggregator_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_details() :: %{
        "Architectures" => list(String.t() | Atom.t()),
        "Code" => aws_lambda_function_code(),
        "CodeSha256" => String.t() | Atom.t(),
        "DeadLetterConfig" => aws_lambda_function_dead_letter_config(),
        "Environment" => aws_lambda_function_environment(),
        "FunctionName" => String.t() | Atom.t(),
        "Handler" => String.t() | Atom.t(),
        "KmsKeyArn" => String.t() | Atom.t(),
        "LastModified" => String.t() | Atom.t(),
        "Layers" => list(aws_lambda_function_layer()),
        "MasterArn" => String.t() | Atom.t(),
        "MemorySize" => integer(),
        "PackageType" => String.t() | Atom.t(),
        "RevisionId" => String.t() | Atom.t(),
        "Role" => String.t() | Atom.t(),
        "Runtime" => String.t() | Atom.t(),
        "Timeout" => integer(),
        "TracingConfig" => aws_lambda_function_tracing_config(),
        "Version" => String.t() | Atom.t(),
        "VpcConfig" => aws_lambda_function_vpc_config()
      }

  """
  @type aws_lambda_function_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_volumes_host_details() :: %{
        "SourcePath" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_volumes_host_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_events_endpoint_details() :: %{
        "Arn" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "EndpointId" => String.t() | Atom.t(),
        "EndpointUrl" => String.t() | Atom.t(),
        "EventBuses" => list(aws_events_endpoint_event_buses_details()),
        "Name" => String.t() | Atom.t(),
        "ReplicationConfig" => aws_events_endpoint_replication_config_details(),
        "RoleArn" => String.t() | Atom.t(),
        "RoutingConfig" => aws_events_endpoint_routing_config_details(),
        "State" => String.t() | Atom.t(),
        "StateReason" => String.t() | Atom.t()
      }

  """
  @type aws_events_endpoint_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      jira_cloud_update_configuration() :: %{
        "ProjectKey" => String.t() | Atom.t()
      }

  """
  @type jira_cloud_update_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: %{
        "Ipv6Address" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_administrator_account_response() :: %{
        "Administrator" => invitation()
      }

  """
  @type get_administrator_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_app_sync_graph_ql_api_open_id_connect_config_details() :: %{
        "AuthTtL" => float(),
        "ClientId" => String.t() | Atom.t(),
        "IatTtL" => float(),
        "Issuer" => String.t() | Atom.t()
      }

  """
  @type aws_app_sync_graph_ql_api_open_id_connect_config_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_get_configuration_policy_associations_request() :: %{
        required("ConfigurationPolicyAssociationIdentifiers") => list(configuration_policy_association())
      }

  """
  @type batch_get_configuration_policy_associations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_standards_control_associations_response() :: %{
        "StandardsControlAssociationDetails" => list(standards_control_association_detail()),
        "UnprocessedAssociations" => list(unprocessed_standards_control_association())
      }

  """
  @type batch_get_standards_control_associations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_provider_severity() :: %{
        "Label" => list(any()),
        "Original" => String.t() | Atom.t()
      }

  """
  @type finding_provider_severity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_automation_rules_response() :: %{
        "ProcessedAutomationRules" => list(String.t() | Atom.t()),
        "UnprocessedAutomationRules" => list(unprocessed_automation_rule())
      }

  """
  @type batch_delete_automation_rules_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_parameter_group() :: %{
        "DbParameterGroupName" => String.t() | Atom.t(),
        "ParameterApplyStatus" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_parameter_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_connect_options_details() :: %{
        "Enabled" => boolean(),
        "LambdaFunctionArn" => String.t() | Atom.t(),
        "Status" => aws_ec2_client_vpn_endpoint_client_connect_options_status_details()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_connect_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_security_control_definition_request() :: %{
        required("SecurityControlId") => String.t() | Atom.t()
      }

  """
  @type get_security_control_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      note() :: %{
        "Text" => String.t() | Atom.t(),
        "UpdatedAt" => String.t() | Atom.t(),
        "UpdatedBy" => String.t() | Atom.t()
      }

  """
  @type note() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_v2_response() :: %{}

  """
  @type delete_connector_v2_response() :: %{}

  @typedoc """

  ## Example:

      list_configuration_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_configuration_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_node_to_node_encryption_options() :: %{
        "Enabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_node_to_node_encryption_options() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_dynamo_db_table_details() :: %{
        "AttributeDefinitions" => list(aws_dynamo_db_table_attribute_definition()),
        "BillingModeSummary" => aws_dynamo_db_table_billing_mode_summary(),
        "CreationDateTime" => String.t() | Atom.t(),
        "DeletionProtectionEnabled" => boolean(),
        "GlobalSecondaryIndexes" => list(aws_dynamo_db_table_global_secondary_index()),
        "GlobalTableVersion" => String.t() | Atom.t(),
        "ItemCount" => integer(),
        "KeySchema" => list(aws_dynamo_db_table_key_schema()),
        "LatestStreamArn" => String.t() | Atom.t(),
        "LatestStreamLabel" => String.t() | Atom.t(),
        "LocalSecondaryIndexes" => list(aws_dynamo_db_table_local_secondary_index()),
        "ProvisionedThroughput" => aws_dynamo_db_table_provisioned_throughput(),
        "Replicas" => list(aws_dynamo_db_table_replica()),
        "RestoreSummary" => aws_dynamo_db_table_restore_summary(),
        "SseDescription" => aws_dynamo_db_table_sse_description(),
        "StreamSpecification" => aws_dynamo_db_table_stream_specification(),
        "TableId" => String.t() | Atom.t(),
        "TableName" => String.t() | Atom.t(),
        "TableSizeBytes" => float(),
        "TableStatus" => String.t() | Atom.t()
      }

  """
  @type aws_dynamo_db_table_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      page() :: %{
        "LineRange" => range(),
        "OffsetRange" => range(),
        "PageNumber" => float()
      }

  """
  @type page() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elasticsearch_domain_log_publishing_options_log_config() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | Atom.t(),
        "Enabled" => boolean()
      }

  """
  @type aws_elasticsearch_domain_log_publishing_options_log_config() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "UnprocessedAccounts" => list(result())
      }

  """
  @type create_members_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_automation_rules_response() :: %{
        "AutomationRulesMetadata" => list(automation_rules_metadata()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_automation_rules_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_code_build_project_environment() :: %{
        "Certificate" => String.t() | Atom.t(),
        "EnvironmentVariables" => list(aws_code_build_project_environment_environment_variables_details()),
        "ImagePullCredentialsType" => String.t() | Atom.t(),
        "PrivilegedMode" => boolean(),
        "RegistryCredential" => aws_code_build_project_environment_registry_credential(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_code_build_project_environment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_policy_association_response() :: %{
        "AssociationStatus" => list(any()),
        "AssociationStatusMessage" => String.t() | Atom.t(),
        "AssociationType" => list(any()),
        "ConfigurationPolicyId" => String.t() | Atom.t(),
        "TargetId" => String.t() | Atom.t(),
        "TargetType" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type get_configuration_policy_association_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_cpu_options_details() :: %{
        "CoreCount" => integer(),
        "ThreadsPerCore" => integer()
      }

  """
  @type aws_ec2_launch_template_data_cpu_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rule_group_source_stateless_rule_match_attributes_tcp_flags() :: %{
        "Flags" => list(String.t() | Atom.t()),
        "Masks" => list(String.t() | Atom.t())
      }

  """
  @type rule_group_source_stateless_rule_match_attributes_tcp_flags() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_insight_request() :: %{
        optional("Filters") => aws_security_finding_filters(),
        optional("GroupByAttribute") => String.t() | Atom.t(),
        optional("Name") => String.t() | Atom.t()
      }

  """
  @type update_insight_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_vpn_connection_options_details() :: %{
        "StaticRoutesOnly" => boolean(),
        "TunnelOptions" => list(aws_ec2_vpn_connection_options_tunnel_options_details())
      }

  """
  @type aws_ec2_vpn_connection_options_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elb_load_balancer_listener() :: %{
        "InstancePort" => integer(),
        "InstanceProtocol" => String.t() | Atom.t(),
        "LoadBalancerPort" => integer(),
        "Protocol" => String.t() | Atom.t(),
        "SslCertificateId" => String.t() | Atom.t()
      }

  """
  @type aws_elb_load_balancer_listener() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      automation_rules_action_type_object_v2() :: %{
        "Type" => list(any())
      }

  """
  @type automation_rules_action_type_object_v2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      integer_configuration_options() :: %{
        "DefaultValue" => integer(),
        "Max" => integer(),
        "Min" => integer()
      }

  """
  @type integer_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_backup_recovery_point_calculated_lifecycle_details() :: %{
        "DeleteAt" => String.t() | Atom.t(),
        "MoveToColdStorageAt" => String.t() | Atom.t()
      }

  """
  @type aws_backup_recovery_point_calculated_lifecycle_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      string_configuration_options() :: %{
        "DefaultValue" => String.t() | Atom.t(),
        "ExpressionDescription" => String.t() | Atom.t(),
        "Re2Expression" => String.t() | Atom.t()
      }

  """
  @type string_configuration_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elbv2_load_balancer_details() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "CanonicalHostedZoneId" => String.t() | Atom.t(),
        "CreatedTime" => String.t() | Atom.t(),
        "DNSName" => String.t() | Atom.t(),
        "IpAddressType" => String.t() | Atom.t(),
        "LoadBalancerAttributes" => list(aws_elbv2_load_balancer_attribute()),
        "Scheme" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "State" => load_balancer_state(),
        "Type" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_elbv2_load_balancer_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ssm_patch() :: %{
        "ComplianceSummary" => aws_ssm_compliance_summary()
      }

  """
  @type aws_ssm_patch() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_route_table_details() :: %{
        "AssociationSet" => list(association_set_details()),
        "OwnerId" => String.t() | Atom.t(),
        "PropagatingVgwSet" => list(propagating_vgw_set_details()),
        "RouteSet" => list(route_set_details()),
        "RouteTableId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_route_table_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ip_filter() :: %{
        "Cidr" => String.t() | Atom.t()
      }

  """
  @type ip_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_dms_replication_instance_vpc_security_groups_details() :: %{
        "VpcSecurityGroupId" => String.t() | Atom.t()
      }

  """
  @type aws_dms_replication_instance_vpc_security_groups_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_cloud_watch_alarm_details() :: %{
        "ActionsEnabled" => boolean(),
        "AlarmActions" => list(String.t() | Atom.t()),
        "AlarmArn" => String.t() | Atom.t(),
        "AlarmConfigurationUpdatedTimestamp" => String.t() | Atom.t(),
        "AlarmDescription" => String.t() | Atom.t(),
        "AlarmName" => String.t() | Atom.t(),
        "ComparisonOperator" => String.t() | Atom.t(),
        "DatapointsToAlarm" => integer(),
        "Dimensions" => list(aws_cloud_watch_alarm_dimensions_details()),
        "EvaluateLowSampleCountPercentile" => String.t() | Atom.t(),
        "EvaluationPeriods" => integer(),
        "ExtendedStatistic" => String.t() | Atom.t(),
        "InsufficientDataActions" => list(String.t() | Atom.t()),
        "MetricName" => String.t() | Atom.t(),
        "Namespace" => String.t() | Atom.t(),
        "OkActions" => list(String.t() | Atom.t()),
        "Period" => integer(),
        "Statistic" => String.t() | Atom.t(),
        "Threshold" => float(),
        "ThresholdMetricId" => String.t() | Atom.t(),
        "TreatMissingData" => String.t() | Atom.t(),
        "Unit" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_watch_alarm_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_connector_v2_response() :: %{
        "AuthUrl" => String.t() | Atom.t(),
        "ConnectorArn" => String.t() | Atom.t(),
        "ConnectorId" => String.t() | Atom.t()
      }

  """
  @type create_connector_v2_response() :: %{String.t() | Atom.t() => any()}

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
  @type number_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_environment_error() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type aws_lambda_function_environment_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_wafv2_rules_action_captcha_details() :: %{
        "CustomRequestHandling" => aws_wafv2_custom_request_handling_details()
      }

  """
  @type aws_wafv2_rules_action_captcha_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_local_ip_details() :: %{
        "IpAddressV4" => String.t() | Atom.t()
      }

  """
  @type action_local_ip_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_efs_access_point_details() :: %{
        "AccessPointId" => String.t() | Atom.t(),
        "Arn" => String.t() | Atom.t(),
        "ClientToken" => String.t() | Atom.t(),
        "FileSystemId" => String.t() | Atom.t(),
        "PosixUser" => aws_efs_access_point_posix_user_details(),
        "RootDirectory" => aws_efs_access_point_root_directory_details()
      }

  """
  @type aws_efs_access_point_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_rds_db_pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "CaCertificateIdentifier" => String.t() | Atom.t(),
        "DbInstanceClass" => String.t() | Atom.t(),
        "DbInstanceIdentifier" => String.t() | Atom.t(),
        "DbSubnetGroupName" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "Iops" => integer(),
        "LicenseModel" => String.t() | Atom.t(),
        "MasterUserPassword" => String.t() | Atom.t(),
        "MultiAZ" => boolean(),
        "PendingCloudWatchLogsExports" => aws_rds_pending_cloud_watch_logs_exports(),
        "Port" => integer(),
        "ProcessorFeatures" => list(aws_rds_db_processor_feature()),
        "StorageType" => String.t() | Atom.t()
      }

  """
  @type aws_rds_db_pending_modified_values() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_elastic_beanstalk_environment_tier() :: %{
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Version" => String.t() | Atom.t()
      }

  """
  @type aws_elastic_beanstalk_environment_tier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_lambda_function_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t()),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type aws_lambda_function_vpc_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_front_distribution_viewer_certificate() :: %{
        "AcmCertificateArn" => String.t() | Atom.t(),
        "Certificate" => String.t() | Atom.t(),
        "CertificateSource" => String.t() | Atom.t(),
        "CloudFrontDefaultCertificate" => boolean(),
        "IamCertificateId" => String.t() | Atom.t(),
        "MinimumProtocolVersion" => String.t() | Atom.t(),
        "SslSupportMethod" => String.t() | Atom.t()
      }

  """
  @type aws_cloud_front_distribution_viewer_certificate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_api_gateway_v2_stage_details() :: %{
        "AccessLogSettings" => aws_api_gateway_access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | Atom.t(),
        "CreatedDate" => String.t() | Atom.t(),
        "DefaultRouteSettings" => aws_api_gateway_v2_route_settings(),
        "DeploymentId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "LastDeploymentStatusMessage" => String.t() | Atom.t(),
        "LastUpdatedDate" => String.t() | Atom.t(),
        "RouteSettings" => aws_api_gateway_v2_route_settings(),
        "StageName" => String.t() | Atom.t(),
        "StageVariables" => map()
      }

  """
  @type aws_api_gateway_v2_stage_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_security_hub_v2_request() :: %{
        optional("Tags") => map()
      }

  """
  @type enable_security_hub_v2_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_amazon_mq_broker_details() :: %{
        "AuthenticationStrategy" => String.t() | Atom.t(),
        "AutoMinorVersionUpgrade" => boolean(),
        "BrokerArn" => String.t() | Atom.t(),
        "BrokerId" => String.t() | Atom.t(),
        "BrokerName" => String.t() | Atom.t(),
        "DeploymentMode" => String.t() | Atom.t(),
        "EncryptionOptions" => aws_amazon_mq_broker_encryption_options_details(),
        "EngineType" => String.t() | Atom.t(),
        "EngineVersion" => String.t() | Atom.t(),
        "HostInstanceType" => String.t() | Atom.t(),
        "LdapServerMetadata" => aws_amazon_mq_broker_ldap_server_metadata_details(),
        "Logs" => aws_amazon_mq_broker_logs_details(),
        "MaintenanceWindowStartTime" => aws_amazon_mq_broker_maintenance_window_start_time_details(),
        "PubliclyAccessible" => boolean(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "StorageType" => String.t() | Atom.t(),
        "SubnetIds" => list(String.t() | Atom.t()),
        "Users" => list(aws_amazon_mq_broker_users_details())
      }

  """
  @type aws_amazon_mq_broker_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_finding_aggregator_response() :: %{
        "FindingAggregationRegion" => String.t() | Atom.t(),
        "FindingAggregatorArn" => String.t() | Atom.t(),
        "RegionLinkingMode" => String.t() | Atom.t(),
        "Regions" => list(String.t() | Atom.t())
      }

  """
  @type update_finding_aggregator_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      map_filter() :: %{
        "Comparison" => list(any()),
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type map_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_security_hub_request() :: %{}

  """
  @type disable_security_hub_request() :: %{}

  @typedoc """

  ## Example:

      create_ticket_v2_response() :: %{
        "TicketId" => String.t() | Atom.t(),
        "TicketSrcUrl" => String.t() | Atom.t()
      }

  """
  @type create_ticket_v2_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_service_load_balancers_details() :: %{
        "ContainerName" => String.t() | Atom.t(),
        "ContainerPort" => integer(),
        "LoadBalancerName" => String.t() | Atom.t(),
        "TargetGroupArn" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_service_load_balancers_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_configuration_policy_association() :: %{
        "ConfigurationPolicyAssociationIdentifiers" => configuration_policy_association(),
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorReason" => String.t() | Atom.t()
      }

  """
  @type unprocessed_configuration_policy_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "Invitations" => list(invitation()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_invitations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: %{
        "Options" => map(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      resource() :: %{
        "ApplicationArn" => String.t() | Atom.t(),
        "ApplicationName" => String.t() | Atom.t(),
        "DataClassification" => data_classification_details(),
        "Details" => resource_details(),
        "Id" => String.t() | Atom.t(),
        "Partition" => list(any()),
        "Region" => String.t() | Atom.t(),
        "ResourceRole" => String.t() | Atom.t(),
        "Tags" => map(),
        "Type" => String.t() | Atom.t()
      }

  """
  @type resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      indicator() :: %{
        "Key" => String.t() | Atom.t(),
        "Title" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type indicator() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: %{
        "BannerText" => String.t() | Atom.t(),
        "Enabled" => boolean()
      }

  """
  @type aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: %{
        "DeleteOnTermination" => boolean(),
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "KmsKeyId" => String.t() | Atom.t(),
        "SnapshotId" => String.t() | Atom.t(),
        "Throughput" => integer(),
        "VolumeSize" => integer(),
        "VolumeType" => String.t() | Atom.t()
      }

  """
  @type aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: %{
          String.t()
          | Atom.t() => any()
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
  for a finding`. This API is in private preview and subject to change.
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

  This API is in private preview and subject to change.
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

  This API is in private preview and subject to change.
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
  @spec delete_action_target(map(), String.t() | Atom.t(), delete_action_target_request(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec delete_aggregator_v2(map(), String.t() | Atom.t(), delete_aggregator_v2_request(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec delete_automation_rule_v2(
          map(),
          String.t() | Atom.t(),
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
          String.t() | Atom.t(),
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
  @spec delete_connector_v2(map(), String.t() | Atom.t(), delete_connector_v2_request(), list()) ::
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
          String.t() | Atom.t(),
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
  @spec delete_insight(map(), String.t() | Atom.t(), delete_insight_request(), list()) ::
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
  @spec describe_hub(map(), String.t() | Atom.t() | nil, list()) ::
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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

  This API is in private preview and subject to change.
  """
  @spec describe_products_v2(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
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

  This API is in private preview and subject to change.
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
  @spec describe_standards(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
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
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t(),
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

  This API is in private preview and subject to change.
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

  This API is in private preview and subject to change.
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

  This API is in private preview and subject to change.
  """
  @spec get_aggregator_v2(map(), String.t() | Atom.t(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec get_automation_rule_v2(map(), String.t() | Atom.t(), list()) ::
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
  @spec get_configuration_policy(map(), String.t() | Atom.t(), list()) ::
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
  @spec get_connector_v2(map(), String.t() | Atom.t(), list()) ::
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
  @spec get_finding_aggregator(map(), String.t() | Atom.t(), list()) ::
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

  Returns the history of a Security Hub finding for the past 90 days.

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
  You must have permission to perform the `s` action. This API is in private
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
  API is in private preview and subject to change.
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
  @spec get_insight_results(map(), String.t() | Atom.t(), list()) ::
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

  This API is in private preview and subject to change.
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

  This API is in private preview and subject to change.
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
  @spec get_security_control_definition(map(), String.t() | Atom.t(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec list_aggregators_v2(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
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
  @spec list_automation_rules(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
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

  This API is in private preview and subject to change.
  """
  @spec list_automation_rules_v2(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
  @spec list_invitations(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t(),
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
  Removes one or more tags from a resource.
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
  Updates the name and description of a custom action target in Security Hub.
  """
  @spec update_action_target(map(), String.t() | Atom.t(), update_action_target_request(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec update_aggregator_v2(map(), String.t() | Atom.t(), update_aggregator_v2_request(), list()) ::
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

  This API is in private preview and subject to change.
  """
  @spec update_automation_rule_v2(
          map(),
          String.t() | Atom.t(),
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
          String.t() | Atom.t(),
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
  @spec update_connector_v2(map(), String.t() | Atom.t(), update_connector_v2_request(), list()) ::
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
  @spec update_insight(map(), String.t() | Atom.t(), update_insight_request(), list()) ::
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
          String.t() | Atom.t(),
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
