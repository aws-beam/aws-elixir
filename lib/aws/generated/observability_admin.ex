# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ObservabilityAdmin do
  @moduledoc """
  You can use Amazon CloudWatch Observability Admin to discover and understand the
  state of telemetry configuration in CloudWatch for your Amazon Web Services
  Organization or account.

  This simplifies the process of auditing your telemetry collection configurations
  across multiple resource types within your Amazon Web Services Organization or
  account. By providing a consolidated view, it allows you to easily review and
  manage telemetry settings, helping you ensure proper monitoring and data
  collection across your Amazon Web Services environment. For more information,
  see [Auditing CloudWatch telemetry conﬁgurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html)
  in the CloudWatch User Guide.

  For information on the permissions you need to use this API, see [Identity and access management for Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html)
  in the CloudWatch User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_resource_telemetry_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceIdentifierPrefix") => String.t() | atom(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      record() :: %{
        "Data" => [String.t() | atom()],
        "Type" => list(any())
      }

  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_output() :: %{
        "Error" => pipeline_output_error(),
        "Record" => record()
      }

  """
  @type pipeline_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_pipeline_configuration() :: %{
        "Body" => String.t() | atom()
      }

  """
  @type telemetry_pipeline_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_pipeline_summary() :: %{
        "Arn" => String.t() | atom(),
        "ConfigurationSummary" => configuration_summary(),
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type telemetry_pipeline_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_telemetry_pipeline_output() :: %{
        "Results" => list(pipeline_output())
      }

  """
  @type test_telemetry_pipeline_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_s3_table_integration_input() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type get_s3_table_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_for_organization_output() :: %{
        "FailureReason" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_for_organization_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_centralization_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      field_to_match() :: %{
        "Method" => [String.t() | atom()],
        "QueryString" => [String.t() | atom()],
        "SingleHeader" => single_header(),
        "UriPath" => [String.t() | atom()]
      }

  """
  @type field_to_match() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_centralization_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs_encryption_configuration() :: %{
        "EncryptionConflictResolutionStrategy" => list(any()),
        "EncryptionStrategy" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }

  """
  @type logs_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_pipeline_output() :: %{}

  """
  @type update_telemetry_pipeline_output() :: %{}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_output() :: %{
        "FailureReason" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_destination_configuration() :: %{
        "CloudtrailParameters" => cloudtrail_parameters(),
        "DestinationPattern" => [String.t() | atom()],
        "DestinationType" => list(any()),
        "ELBLoadBalancerLoggingParameters" => e_lb_load_balancer_logging_parameters(),
        "LogDeliveryParameters" => log_delivery_parameters(),
        "RetentionInDays" => integer(),
        "VPCFlowLogParameters" => vpc_flow_log_parameters(),
        "WAFLoggingParameters" => w_a_f_logging_parameters()
      }

  """
  @type telemetry_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_centralization_rule_for_organization_output() :: %{
        "CentralizationRule" => centralization_rule(),
        "CreatedRegion" => String.t() | atom(),
        "CreatedTimeStamp" => [float()],
        "CreatorAccountId" => [String.t() | atom()],
        "FailureReason" => list(any()),
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleHealth" => list(any()),
        "RuleName" => String.t() | atom()
      }

  """
  @type get_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_summary() :: %{
        "Arn" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type integration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_logs_configuration() :: %{
        "EncryptedLogGroupStrategy" => list(any()),
        "LogGroupSelectionCriteria" => String.t() | atom()
      }

  """
  @type source_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_summary() :: %{
        "DataSources" => list(data_source()),
        "ProcessorCount" => [integer()],
        "Processors" => list([String.t() | atom()]()),
        "Sinks" => list([String.t() | atom()]()),
        "Sources" => list(source())
      }

  """
  @type configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_state_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type invalid_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_pipeline_input() :: %{
        optional("Tags") => map(),
        required("Configuration") => telemetry_pipeline_configuration(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_telemetry_pipeline_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_pipeline_input() :: %{
        required("PipelineIdentifier") => String.t() | atom()
      }

  """
  @type delete_telemetry_pipeline_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_centralization_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_group_name_configuration() :: %{
        "LogGroupNamePattern" => String.t() | atom()
      }

  """
  @type log_group_name_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      advanced_event_selector() :: %{
        "FieldSelectors" => list(advanced_field_selector()),
        "Name" => [String.t() | atom()]
      }

  """
  @type advanced_event_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_source() :: %{
        "Regions" => list(String.t() | atom()),
        "Scope" => String.t() | atom(),
        "SourceLogsConfiguration" => source_logs_configuration()
      }

  """
  @type centralization_rule_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_enrichment_status_output() :: %{
        "AwsResourceExplorerManagedViewArn" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_enrichment_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_configuration() :: %{
        "AccountIdentifier" => String.t() | atom(),
        "LastUpdateTimeStamp" => [float()],
        "ResourceIdentifier" => String.t() | atom(),
        "ResourceTags" => map(),
        "ResourceType" => list(any()),
        "TelemetryConfigurationState" => map(),
        "TelemetrySourceType" => list(any())
      }

  """
  @type telemetry_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_output() :: %{(String.t() | atom()) => any()}

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

      get_s3_table_integration_output() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTimeStamp" => [float()],
        "DestinationTableBucketArn" => String.t() | atom(),
        "Encryption" => encryption(),
        "RoleArn" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_s3_table_integration_output() :: %{(String.t() | atom()) => any()}

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

      update_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_delivery_parameters() :: %{
        "LogTypes" => list(list(any())())
      }

  """
  @type log_delivery_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_centralization_rule_for_organization_input() :: %{
        required("Rule") => centralization_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()],
        "QuotaCode" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()],
        "ServiceCode" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_logs_configuration() :: %{
        "BackupConfiguration" => logs_backup_configuration(),
        "LogGroupNameConfiguration" => log_group_name_configuration(),
        "LogsEncryptionConfiguration" => logs_encryption_configuration()
      }

  """
  @type destination_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_s3_table_integrations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_s3_table_integrations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "KmsKeyArn" => String.t() | atom(),
        "SseAlgorithm" => list(any())
      }

  """
  @type encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_centralization_rule_for_organization_input() :: %{
        optional("Tags") => map(),
        required("Rule") => centralization_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_for_organization_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()],
        optional("SourceAccountIds") => list(String.t() | atom()),
        optional("SourceOrganizationUnitIds") => list(String.t() | atom())
      }

  """
  @type list_telemetry_rules_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "FieldMap" => map(),
        "Message" => [String.t() | atom()],
        "Reason" => [String.t() | atom()]
      }

  """
  @type validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs_backup_configuration() :: %{
        "KmsKeyArn" => String.t() | atom(),
        "Region" => String.t() | atom()
      }

  """
  @type logs_backup_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_pipeline() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => telemetry_pipeline_configuration(),
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => telemetry_pipeline_status_reason(),
        "Tags" => map()
      }

  """
  @type telemetry_pipeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloudtrail_parameters() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector())
      }

  """
  @type cloudtrail_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_input() :: %{
        optional("AccountIdentifiers") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceIdentifierPrefix") => String.t() | atom(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_lb_load_balancer_logging_parameters() :: %{
        "FieldDelimiter" => [String.t() | atom()],
        "OutputFormat" => list(any())
      }

  """
  @type e_lb_load_balancer_logging_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "ActionCondition" => action_condition(),
        "LabelNameCondition" => label_name_condition()
      }

  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_centralization_rules_for_organization_output() :: %{
        "CentralizationRuleSummaries" => list(centralization_rule_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_centralization_rules_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Behavior" => list(any()),
        "Conditions" => list(condition()),
        "Requirement" => list(any())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_summary() :: %{
        "CreatedRegion" => String.t() | atom(),
        "CreatedTimeStamp" => [float()],
        "CreatorAccountId" => [String.t() | atom()],
        "DestinationAccountId" => [String.t() | atom()],
        "DestinationRegion" => String.t() | atom(),
        "FailureReason" => list(any()),
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleHealth" => list(any()),
        "RuleName" => String.t() | atom()
      }

  """
  @type centralization_rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_pipeline_input() :: %{
        required("Configuration") => telemetry_pipeline_configuration(),
        required("PipelineIdentifier") => String.t() | atom()
      }

  """
  @type update_telemetry_pipeline_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_s3_table_integrations_output() :: %{
        "IntegrationSummaries" => list(integration_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_s3_table_integrations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_telemetry_enrichment_output() :: %{
        "Status" => list(any())
      }

  """
  @type stop_telemetry_enrichment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "Type" => [String.t() | atom()]
      }

  """
  @type source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_telemetry_pipeline_configuration_input() :: %{
        required("Configuration") => telemetry_pipeline_configuration()
      }

  """
  @type validate_telemetry_pipeline_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_flow_log_parameters() :: %{
        "LogFormat" => [String.t() | atom()],
        "MaxAggregationInterval" => [integer()],
        "TrafficType" => [String.t() | atom()]
      }

  """
  @type vpc_flow_log_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_telemetry_pipeline_configuration_output() :: %{
        "Errors" => list(validation_error())
      }

  """
  @type validate_telemetry_pipeline_configuration_output() :: %{(String.t() | atom()) => any()}

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

      get_centralization_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_s3_table_integration_input() :: %{
        optional("Tags") => map(),
        required("Encryption") => encryption(),
        required("RoleArn") => String.t() | atom()
      }

  """
  @type create_s3_table_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()]
      }

  """
  @type list_telemetry_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_filter() :: %{
        "DefaultBehavior" => list(any()),
        "Filters" => list(filter())
      }

  """
  @type logging_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_telemetry_enrichment_output() :: %{
        "AwsResourceExplorerManagedViewArn" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type start_telemetry_enrichment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_rule_summary() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "ResourceType" => list(any()),
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetrySourceTypes" => list(list(any())()),
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_s3_table_integration_output() :: %{
        "Arn" => String.t() | atom()
      }

  """
  @type create_s3_table_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Errors" => list(validation_error()),
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      label_name_condition() :: %{
        "LabelName" => [String.t() | atom()]
      }

  """
  @type label_name_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      single_header() :: %{
        "Name" => [String.t() | atom()]
      }

  """
  @type single_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      advanced_field_selector() :: %{
        "EndsWith" => list([String.t() | atom()]()),
        "Equals" => list([String.t() | atom()]()),
        "Field" => [String.t() | atom()],
        "NotEndsWith" => list([String.t() | atom()]()),
        "NotEquals" => list([String.t() | atom()]()),
        "NotStartsWith" => list([String.t() | atom()]()),
        "StartsWith" => list([String.t() | atom()]())
      }

  """
  @type advanced_field_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_destination() :: %{
        "Account" => String.t() | atom(),
        "DestinationLogsConfiguration" => destination_logs_configuration(),
        "Region" => String.t() | atom()
      }

  """
  @type centralization_rule_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_rule() :: %{
        "DestinationConfiguration" => telemetry_destination_configuration(),
        "ResourceType" => list(any()),
        "Scope" => [String.t() | atom()],
        "SelectionCriteria" => [String.t() | atom()],
        "TelemetrySourceTypes" => list(list(any())()),
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_s3_table_integration_input() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type delete_s3_table_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_pipeline_status_reason() :: %{
        "Description" => [String.t() | atom()]
      }

  """
  @type telemetry_pipeline_status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_condition() :: %{
        "Action" => list(any())
      }

  """
  @type action_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "Name" => [String.t() | atom()],
        "Type" => [String.t() | atom()]
      }

  """
  @type data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_pipelines_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_telemetry_pipelines_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_pipeline_output() :: %{
        "Pipeline" => telemetry_pipeline()
      }

  """
  @type get_telemetry_pipeline_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_pipeline_output() :: %{}

  """
  @type delete_telemetry_pipeline_output() :: %{}

  @typedoc """

  ## Example:

      w_a_f_logging_parameters() :: %{
        "LogType" => list(any()),
        "LoggingFilter" => logging_filter(),
        "RedactedFields" => list(field_to_match())
      }

  """
  @type w_a_f_logging_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_pipeline_output() :: %{
        "Arn" => String.t() | atom()
      }

  """
  @type create_telemetry_pipeline_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_pipelines_output() :: %{
        "NextToken" => String.t() | atom(),
        "PipelineSummaries" => list(telemetry_pipeline_summary())
      }

  """
  @type list_telemetry_pipelines_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule() :: %{
        "Destination" => centralization_rule_destination(),
        "Source" => centralization_rule_source()
      }

  """
  @type centralization_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_output_error() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type pipeline_output_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_pipeline_input() :: %{
        required("PipelineIdentifier") => String.t() | atom()
      }

  """
  @type get_telemetry_pipeline_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_centralization_rules_for_organization_input() :: %{
        optional("AllRegions") => [boolean()],
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()]
      }

  """
  @type list_centralization_rules_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_telemetry_pipeline_input() :: %{
        required("Configuration") => telemetry_pipeline_configuration(),
        required("Records") => list(record())
      }

  """
  @type test_telemetry_pipeline_input() :: %{(String.t() | atom()) => any()}

  @type create_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_s3_table_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_telemetry_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type delete_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_s3_table_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | too_many_requests_exception()
          | invalid_state_exception()

  @type delete_telemetry_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type delete_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_s3_table_integration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_enrichment_status_errors() ::
          access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_evaluation_status_errors() ::
          access_denied_exception() | internal_server_exception() | too_many_requests_exception()

  @type get_telemetry_evaluation_status_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type get_telemetry_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_centralization_rules_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_resource_telemetry_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_resource_telemetry_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_s3_table_integrations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_telemetry_pipelines_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_telemetry_rules_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_telemetry_rules_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type start_telemetry_enrichment_errors() ::
          access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type start_telemetry_evaluation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type start_telemetry_evaluation_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type stop_telemetry_enrichment_errors() ::
          access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type stop_telemetry_evaluation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type stop_telemetry_evaluation_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type test_telemetry_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_telemetry_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type validate_telemetry_pipeline_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "observabilityadmin",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ObservabilityAdmin",
      signature_version: "v4",
      signing_name: "observabilityadmin",
      target_prefix: nil
    }
  end

  @doc """
  Creates a centralization rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec create_centralization_rule_for_organization(
          map(),
          create_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, create_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_centralization_rule_for_organization_errors()}
  def create_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/CreateCentralizationRuleForOrganization"
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
  Creates an integration between CloudWatch and S3 Tables for analytics.

  This integration enables querying CloudWatch telemetry data using analytics
  engines like Amazon Athena, Amazon Redshift, and Apache Spark.
  """
  @spec create_s3_table_integration(map(), create_s3_table_integration_input(), list()) ::
          {:ok, create_s3_table_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_s3_table_integration_errors()}
  def create_s3_table_integration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateS3TableIntegration"
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
  Creates a telemetry pipeline for processing and transforming telemetry data.

  The pipeline defines how data flows from sources through processors to
  destinations, enabling data transformation and delivering capabilities.
  """
  @spec create_telemetry_pipeline(map(), create_telemetry_pipeline_input(), list()) ::
          {:ok, create_telemetry_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_telemetry_pipeline_errors()}
  def create_telemetry_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTelemetryPipeline"
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
  Creates a telemetry rule that defines how telemetry should be configured for
  Amazon Web Services resources in your account.

  The rule specifies which resources should have telemetry enabled and how that
  telemetry data should be collected based on resource type, telemetry type, and
  selection criteria.
  """
  @spec create_telemetry_rule(map(), create_telemetry_rule_input(), list()) ::
          {:ok, create_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_telemetry_rule_errors()}
  def create_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTelemetryRule"
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
  Creates a telemetry rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec create_telemetry_rule_for_organization(
          map(),
          create_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, create_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_telemetry_rule_for_organization_errors()}
  def create_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTelemetryRuleForOrganization"
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
  Deletes an organization-wide centralization rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec delete_centralization_rule_for_organization(
          map(),
          delete_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_centralization_rule_for_organization_errors()}
  def delete_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteCentralizationRuleForOrganization"
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
  Deletes an S3 Table integration and its associated data.

  This operation removes the connection between CloudWatch Observability Admin and
  S3 Tables.
  """
  @spec delete_s3_table_integration(map(), delete_s3_table_integration_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_s3_table_integration_errors()}
  def delete_s3_table_integration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteS3TableIntegration"
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
  Deletes a telemetry pipeline and its associated resources.

  This operation stops data processing and removes the pipeline configuration.
  """
  @spec delete_telemetry_pipeline(map(), delete_telemetry_pipeline_input(), list()) ::
          {:ok, delete_telemetry_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_telemetry_pipeline_errors()}
  def delete_telemetry_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTelemetryPipeline"
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
  Deletes a telemetry rule from your account.

  Any telemetry configurations previously created by the rule will remain but no
  new resources will be configured by this rule.
  """
  @spec delete_telemetry_rule(map(), delete_telemetry_rule_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_telemetry_rule_errors()}
  def delete_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTelemetryRule"
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
  Deletes an organization-wide telemetry rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec delete_telemetry_rule_for_organization(
          map(),
          delete_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_telemetry_rule_for_organization_errors()}
  def delete_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTelemetryRuleForOrganization"
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
  Retrieves the details of a specific organization centralization rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec get_centralization_rule_for_organization(
          map(),
          get_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, get_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_centralization_rule_for_organization_errors()}
  def get_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetCentralizationRuleForOrganization"
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
  Retrieves information about a specific S3 Table integration, including its
  configuration, status, and metadata.
  """
  @spec get_s3_table_integration(map(), get_s3_table_integration_input(), list()) ::
          {:ok, get_s3_table_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_s3_table_integration_errors()}
  def get_s3_table_integration(%Client{} = client, input, options \\ []) do
    url_path = "/GetS3TableIntegration"
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
  Returns the current status of the resource tags for telemetry feature, which
  enhances telemetry data with additional resource metadata from Resource
  Explorer.
  """
  @spec get_telemetry_enrichment_status(map(), %{}, list()) ::
          {:ok, get_telemetry_enrichment_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_enrichment_status_errors()}
  def get_telemetry_enrichment_status(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEnrichmentStatus"
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
  Returns the current onboarding status of the telemetry config feature, including
  the status of the feature and reason the feature failed to start or stop.
  """
  @spec get_telemetry_evaluation_status(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_errors()}
  def get_telemetry_evaluation_status(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatus"
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
  This returns the onboarding status of the telemetry configuration feature for
  the organization.

  It can only be called by a Management Account of an Amazon Web Services
  Organization or an assigned Delegated Admin Account of Amazon CloudWatch
  telemetry config.
  """
  @spec get_telemetry_evaluation_status_for_organization(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_for_organization_errors()}
  def get_telemetry_evaluation_status_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatusForOrganization"
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
  Retrieves information about a specific telemetry pipeline, including its
  configuration, status, and metadata.
  """
  @spec get_telemetry_pipeline(map(), get_telemetry_pipeline_input(), list()) ::
          {:ok, get_telemetry_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_pipeline_errors()}
  def get_telemetry_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryPipeline"
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
  Retrieves the details of a specific telemetry rule in your account.
  """
  @spec get_telemetry_rule(map(), get_telemetry_rule_input(), list()) ::
          {:ok, get_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_rule_errors()}
  def get_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryRule"
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
  Retrieves the details of a specific organization telemetry rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec get_telemetry_rule_for_organization(
          map(),
          get_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, get_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_rule_for_organization_errors()}
  def get_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryRuleForOrganization"
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
  Lists all centralization rules in your organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec list_centralization_rules_for_organization(
          map(),
          list_centralization_rules_for_organization_input(),
          list()
        ) ::
          {:ok, list_centralization_rules_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_centralization_rules_for_organization_errors()}
  def list_centralization_rules_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListCentralizationRulesForOrganization"
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
  Returns a list of telemetry configurations for Amazon Web Services resources
  supported by telemetry config.

  For more information, see [Auditing CloudWatch telemetry configurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html).
  """
  @spec list_resource_telemetry(map(), list_resource_telemetry_input(), list()) ::
          {:ok, list_resource_telemetry_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_errors()}
  def list_resource_telemetry(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetry"
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
  Returns a list of telemetry configurations for Amazon Web Services resources
  supported by telemetry config in the organization.
  """
  @spec list_resource_telemetry_for_organization(
          map(),
          list_resource_telemetry_for_organization_input(),
          list()
        ) ::
          {:ok, list_resource_telemetry_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_for_organization_errors()}
  def list_resource_telemetry_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetryForOrganization"
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
  Lists all S3 Table integrations in your account.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_s3_table_integrations(map(), list_s3_table_integrations_input(), list()) ::
          {:ok, list_s3_table_integrations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_s3_table_integrations_errors()}
  def list_s3_table_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/ListS3TableIntegrations"
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
  Lists all tags attached to the specified resource.

  Supports telemetry rule resources and telemetry pipeline resources.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Returns a list of telemetry pipelines in your account.

  Returns up to 100 results. If more than 100 telemetry pipelines exist, include
  the `NextToken` value from the response to retrieve the next set of results.
  """
  @spec list_telemetry_pipelines(map(), list_telemetry_pipelines_input(), list()) ::
          {:ok, list_telemetry_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_telemetry_pipelines_errors()}
  def list_telemetry_pipelines(%Client{} = client, input, options \\ []) do
    url_path = "/ListTelemetryPipelines"
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
  Lists all telemetry rules in your account.

  You can filter the results by specifying a rule name prefix.
  """
  @spec list_telemetry_rules(map(), list_telemetry_rules_input(), list()) ::
          {:ok, list_telemetry_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_telemetry_rules_errors()}
  def list_telemetry_rules(%Client{} = client, input, options \\ []) do
    url_path = "/ListTelemetryRules"
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
  Lists all telemetry rules in your organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec list_telemetry_rules_for_organization(
          map(),
          list_telemetry_rules_for_organization_input(),
          list()
        ) ::
          {:ok, list_telemetry_rules_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_telemetry_rules_for_organization_errors()}
  def list_telemetry_rules_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListTelemetryRulesForOrganization"
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
  Enables the resource tags for telemetry feature for your account, which enhances
  telemetry data with additional resource metadata from Resource Explorer to
  provide richer context for monitoring and observability.
  """
  @spec start_telemetry_enrichment(map(), %{}, list()) ::
          {:ok, start_telemetry_enrichment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_enrichment_errors()}
  def start_telemetry_enrichment(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEnrichment"
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
      202
    )
  end

  @doc """
  This action begins onboarding the caller Amazon Web Services account to the
  telemetry config feature.
  """
  @spec start_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_errors()}
  def start_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluation"
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
  This actions begins onboarding the organization and all member accounts to the
  telemetry config feature.
  """
  @spec start_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_for_organization_errors()}
  def start_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluationForOrganization"
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
  Disables the resource tags for telemetry feature for your account, stopping the
  enhancement of telemetry data with additional resource metadata.
  """
  @spec stop_telemetry_enrichment(map(), %{}, list()) ::
          {:ok, stop_telemetry_enrichment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_enrichment_errors()}
  def stop_telemetry_enrichment(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEnrichment"
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
      202
    )
  end

  @doc """
  This action begins offboarding the caller Amazon Web Services account from the
  telemetry config feature.
  """
  @spec stop_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_errors()}
  def stop_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluation"
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
  This action offboards the Organization of the caller Amazon Web Services account
  from the telemetry config feature.
  """
  @spec stop_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_for_organization_errors()}
  def stop_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluationForOrganization"
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
  Adds or updates tags for a resource.

  Supports telemetry rule resources and telemetry pipeline resources.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Tests a pipeline configuration with sample records to validate data processing
  before deployment.

  This operation helps ensure your pipeline configuration works as expected.
  """
  @spec test_telemetry_pipeline(map(), test_telemetry_pipeline_input(), list()) ::
          {:ok, test_telemetry_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_telemetry_pipeline_errors()}
  def test_telemetry_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/TestTelemetryPipeline"
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

  Supports telemetry rule resources and telemetry pipeline resources.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates an existing centralization rule that applies across an Amazon Web
  Services Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec update_centralization_rule_for_organization(
          map(),
          update_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, update_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_centralization_rule_for_organization_errors()}
  def update_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateCentralizationRuleForOrganization"
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
  Updates the configuration of an existing telemetry pipeline.

  The following attributes cannot be updated after pipeline creation:

     **Pipeline name** - The pipeline name is immutable

     **Pipeline ARN** - The ARN is automatically generated and cannot be
  changed

     **Source type** - Once a pipeline is created with a specific source
  type (such as S3, CloudWatch Logs, GitHub, or third-party sources), it cannot be
  changed to a different source type

  Processors can be added, removed, or modified. However, some processors are not
  supported for third-party pipelines and cannot be added through updates.

  ## Source-Specific Update Rules

  ## Definitions

  ### CloudWatch Logs Sources (Vended and Custom)

  **Updatable:** `sts_role_arn`

  **Fixed:** `data_source_name`, `data_source_type`, sink (must remain
  `@original`)

  ### S3 Sources (Crowdstrike, Zscaler, SentinelOne, Custom)

  **Updatable:** All SQS configuration parameters, `sts_role_arn`, codec settings,
  compression type, bucket ownership settings, sink log group

  **Fixed:** `notification_type`, `aws.region`

  ### GitHub Audit Logs

  **Updatable:** All Amazon Web Services Secrets Manager attributes, `scope` (can
  switch between ORGANIZATION/ENTERPRISE), `organization` or `enterprise` name,
  `range`, authentication credentials (PAT or GitHub App)

  ### Microsoft Sources (Entra ID, Office365, Windows)

  **Updatable:** All Amazon Web Services Secrets Manager attributes, `tenant_id`,
  `workspace_id` (Windows only), OAuth2 credentials (`client_id`, `client_secret`)

  ### Okta Sources (SSO, Auth0)

  **Updatable:** All Amazon Web Services Secrets Manager attributes, `domain`,
  `range`, OAuth2 credentials (`client_id`, `client_secret`)

  ### Palo Alto Networks

  **Updatable:** All Amazon Web Services Secrets Manager attributes, `hostname`,
  basic authentication credentials (`username`, `password`)

  ### ServiceNow CMDB

  **Updatable:** All Amazon Web Services Secrets Manager attributes,
  `instance_url`, `range`, OAuth2 credentials (`client_id`, `client_secret`)

  ### Wiz CNAPP

  **Updatable:** All Amazon Web Services Secrets Manager attributes, `region`,
  `range`, OAuth2 credentials (`client_id`, `client_secret`)
  """
  @spec update_telemetry_pipeline(map(), update_telemetry_pipeline_input(), list()) ::
          {:ok, update_telemetry_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_telemetry_pipeline_errors()}
  def update_telemetry_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTelemetryPipeline"
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
  Updates an existing telemetry rule in your account.

  If multiple users attempt to modify the same telemetry rule simultaneously, a
  ConflictException is returned to provide specific error information for
  concurrent modification scenarios.
  """
  @spec update_telemetry_rule(map(), update_telemetry_rule_input(), list()) ::
          {:ok, update_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_telemetry_rule_errors()}
  def update_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTelemetryRule"
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
  Updates an existing telemetry rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec update_telemetry_rule_for_organization(
          map(),
          update_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, update_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_telemetry_rule_for_organization_errors()}
  def update_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTelemetryRuleForOrganization"
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
  Validates a pipeline configuration without creating the pipeline.

  This operation checks the configuration for syntax errors and compatibility
  issues.
  """
  @spec validate_telemetry_pipeline_configuration(
          map(),
          validate_telemetry_pipeline_configuration_input(),
          list()
        ) ::
          {:ok, validate_telemetry_pipeline_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_telemetry_pipeline_configuration_errors()}
  def validate_telemetry_pipeline_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ValidateTelemetryPipelineConfiguration"
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
