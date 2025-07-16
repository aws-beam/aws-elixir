# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Config do
  @moduledoc """
  Config

  Config provides a way to keep track of the configurations
  of all the Amazon Web Services resources associated with your Amazon Web
  Services account.

  You can
  use Config to get the current and historical configurations of
  each Amazon Web Services resource and also to get information about the
  relationship
  between the resources. An Amazon Web Services resource can be an Amazon Compute
  Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an
  elastic network Interface (ENI), or a security group. For a complete
  list of resources currently supported by Config, see [Supported Amazon Web Services
  resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

  You can access and manage Config through the Amazon Web Services Management
  Console, the Amazon Web Services Command Line Interface (Amazon Web Services
  CLI), the Config
  API, or the Amazon Web Services SDKs for Config. This reference guide contains
  documentation for the Config API and the Amazon Web Services CLI commands that
  you can use to manage Config. The Config API uses the
  Signature Version 4 protocol for signing requests. For more
  information about how to sign a request with this protocol, see
  [Signature Version 4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  For detailed information
  about Config features and their associated actions or commands,
  as well as how to work with Amazon Web Services Management Console, see [What Is Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
  in the *Config Developer
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      organization_conformance_pack_template_validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_conformance_pack_template_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_config_rules_evaluation_response() :: %{}
      
  """
  @type start_config_rules_evaluation_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_configuration_recorder_status_response() :: %{
        "ConfigurationRecordersStatus" => list(configuration_recorder_status())
      }
      
  """
  @type describe_configuration_recorder_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_config_rule_detailed_status_request() :: %{
        optional("Filters") => status_detail_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type get_organization_config_rule_detailed_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_snapshot_delivery_properties() :: %{
        "deliveryFrequency" => list(any())
      }
      
  """
  @type config_snapshot_delivery_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_recording_group_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_recording_group_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_aggregator_request() :: %{
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type delete_configuration_aggregator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_all_features_not_enabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_all_features_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result_identifier() :: %{
        "EvaluationResultQualifier" => evaluation_result_qualifier(),
        "OrderingTimestamp" => non_neg_integer(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type evaluation_result_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_configuration() :: %{
        "Arn" => String.t(),
        "Automatic" => boolean(),
        "ConfigRuleName" => String.t(),
        "CreatedByService" => String.t(),
        "ExecutionControls" => execution_controls(),
        "MaximumAutomaticAttempts" => integer(),
        "Parameters" => map(),
        "ResourceType" => String.t(),
        "RetryAttemptSeconds" => float(),
        "TargetId" => String.t(),
        "TargetType" => list(any()),
        "TargetVersion" => String.t()
      }
      
  """
  @type remediation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregated_source_status() :: %{
        "AwsRegion" => String.t(),
        "LastErrorCode" => String.t(),
        "LastErrorMessage" => String.t(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateTime" => non_neg_integer(),
        "SourceId" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type aggregated_source_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_rule_policy_response() :: %{
        "PolicyText" => String.t()
      }
      
  """
  @type get_custom_rule_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_configuration_aggregator_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_configuration_aggregator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_conformance_pack_compliance_summary_response() :: %{
        "AggregateConformancePackComplianceSummaries" => list(aggregate_conformance_pack_compliance_summary()),
        "GroupByKey" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_conformance_pack_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_resource_response() :: %{
        "EvaluationResults" => list(evaluation_result()),
        "NextToken" => String.t()
      }
      
  """
  @type get_compliance_details_by_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_delivery_channel_delete_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type last_delivery_channel_delete_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stored_query_response() :: %{
        "StoredQuery" => stored_query()
      }
      
  """
  @type get_stored_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_discovered_resource_counts_response() :: %{
        "GroupByKey" => String.t(),
        "GroupedResourceCounts" => list(grouped_resource_count()),
        "NextToken" => String.t(),
        "TotalDiscoveredResources" => float()
      }
      
  """
  @type get_aggregate_discovered_resource_counts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_results_request() :: %{
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_evaluation_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_service_linked_configuration_recorder_request() :: %{
        optional("Tags") => list(tag()),
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type put_service_linked_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_configuration_response() :: %{}
      
  """
  @type delete_remediation_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      insufficient_permissions_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_permissions_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rule_evaluation_status_request() :: %{
        optional("ConfigRuleNames") => list(String.t()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_config_rule_evaluation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grouped_resource_count() :: %{
        "GroupName" => String.t(),
        "ResourceCount" => float()
      }
      
  """
  @type grouped_resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_configuration_request() :: %{
        optional("ResourceType") => String.t(),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_remediation_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_evaluation_status() :: %{
        "ConfigRuleArn" => String.t(),
        "ConfigRuleId" => String.t(),
        "ConfigRuleName" => String.t(),
        "FirstActivatedTime" => non_neg_integer(),
        "FirstEvaluationStarted" => boolean(),
        "LastDeactivatedTime" => non_neg_integer(),
        "LastDebugLogDeliveryStatus" => String.t(),
        "LastDebugLogDeliveryStatusReason" => String.t(),
        "LastDebugLogDeliveryTime" => non_neg_integer(),
        "LastErrorCode" => String.t(),
        "LastErrorMessage" => String.t(),
        "LastFailedEvaluationTime" => non_neg_integer(),
        "LastFailedInvocationTime" => non_neg_integer(),
        "LastSuccessfulEvaluationTime" => non_neg_integer(),
        "LastSuccessfulInvocationTime" => non_neg_integer()
      }
      
  """
  @type config_rule_evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule() :: %{
        "ConfigRuleArn" => String.t(),
        "ConfigRuleId" => String.t(),
        "ConfigRuleName" => String.t(),
        "ConfigRuleState" => list(any()),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "EvaluationModes" => list(evaluation_mode_configuration()),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "Scope" => scope(),
        "Source" => source()
      }
      
  """
  @type config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_delivery_channels_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_delivery_channels_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_config_rule_request() :: %{
        optional("Tags") => list(tag()),
        required("ConfigRule") => config_rule()
      }
      
  """
  @type put_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_types_response() :: %{
        "ConfigurationRecorder" => configuration_recorder()
      }
      
  """
  @type associate_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_delivery_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_delivery_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retention_configurations_response() :: %{
        "NextToken" => String.t(),
        "RetentionConfigurations" => list(retention_configuration())
      }
      
  """
  @type describe_retention_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_aggregator() :: %{
        "AccountAggregationSources" => list(account_aggregation_source()),
        "AggregatorFilters" => aggregator_filters(),
        "ConfigurationAggregatorArn" => String.t(),
        "ConfigurationAggregatorName" => String.t(),
        "CreatedBy" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "OrganizationAggregationSource" => organization_aggregation_source()
      }
      
  """
  @type configuration_aggregator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance() :: %{
        "ComplianceContributorCount" => compliance_contributor_count(),
        "ComplianceType" => list(any())
      }
      
  """
  @type compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_exception() :: %{
        "ConfigRuleName" => String.t(),
        "ExpirationTime" => non_neg_integer(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type remediation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_resource_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ResourceType") => String.t()
      }
      
  """
  @type describe_compliance_by_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "recordingGroup" => recording_group(),
        "recordingMode" => recording_mode(),
        "recordingScope" => list(any()),
        "roleARN" => String.t(),
        "servicePrincipal" => String.t()
      }
      
  """
  @type configuration_recorder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_evaluation_filters() :: %{
        "EvaluationContextIdentifier" => String.t(),
        "EvaluationMode" => list(any()),
        "TimeWindow" => time_window()
      }
      
  """
  @type resource_evaluation_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_policy_details() :: %{
        "EnableDebugLogDelivery" => boolean(),
        "PolicyRuntime" => String.t(),
        "PolicyText" => String.t()
      }
      
  """
  @type custom_policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_summary_response() :: %{
        "ConformancePackComplianceSummaryList" => list(conformance_pack_compliance_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oversized_configuration_item_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type oversized_configuration_item_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relationship() :: %{
        "relationshipName" => String.t(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type relationship() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_exceptions_response() :: %{
        "FailedBatches" => list(failed_delete_remediation_exceptions_batch())
      }
      
  """
  @type delete_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_organization_conformance_packs_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_organization_conformance_packs_exceeded_exception() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      describe_compliance_by_config_rule_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("ConfigRuleNames") => list(String.t()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_compliance_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rules_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRules" => list(organization_config_rule())
      }
      
  """
  @type describe_organization_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_exceptions_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(remediation_exception_resource_key())
      }
      
  """
  @type delete_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_configurations_request() :: %{
        required("RemediationConfigurations") => list(remediation_configuration())
      }
      
  """
  @type put_remediation_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_configurations_request() :: %{
        required("ConfigRuleNames") => list(String.t())
      }
      
  """
  @type describe_remediation_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_rule_policy_request() :: %{
        optional("ConfigRuleName") => String.t()
      }
      
  """
  @type get_custom_rule_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_compliance_details_by_config_rule_response() :: %{
        "AggregateEvaluationResults" => list(aggregate_evaluation_result()),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_compliance_details_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_config_rule_request() :: %{
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_evaluation_result() :: %{
        "AccountId" => String.t(),
        "Annotation" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer()
      }
      
  """
  @type aggregate_evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack_detailed_status() :: %{
        "AccountId" => String.t(),
        "ConformancePackName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type organization_conformance_pack_detailed_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channels_request() :: %{
        optional("DeliveryChannelNames") => list(String.t())
      }
      
  """
  @type describe_delivery_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_parameter_value() :: %{
        "ResourceValue" => resource_value(),
        "StaticValue" => static_value()
      }
      
  """
  @type remediation_parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_config_rules_request() :: %{
        optional("Filters") => config_rule_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_limit_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_config_rule_compliance_summary_request() :: %{
        optional("Filters") => config_rule_compliance_summary_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_config_rule_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_recorders_response() :: %{
        "ConfigurationRecorderSummaries" => list(configuration_recorder_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_configuration_recorders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_contributor_count() :: %{
        "CapExceeded" => boolean(),
        "CappedCount" => integer()
      }
      
  """
  @type compliance_contributor_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_configurations_response() :: %{
        "RemediationConfigurations" => list(remediation_configuration())
      }
      
  """
  @type describe_remediation_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_mode() :: %{
        "recordingFrequency" => list(any()),
        "recordingModeOverrides" => list(recording_mode_override())
      }
      
  """
  @type recording_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_result_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_result_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_evaluations_response() :: %{
        "NextToken" => String.t(),
        "ResourceEvaluations" => list(resource_evaluation())
      }
      
  """
  @type list_resource_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_remediation_exception_batch() :: %{
        "FailedItems" => list(remediation_exception()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_remediation_exception_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type remediation_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_config_rule_response() :: %{
        "EvaluationResults" => list(evaluation_result()),
        "NextToken" => String.t()
      }
      
  """
  @type get_compliance_details_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_organization_config_rules_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_organization_config_rules_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unmodifiable_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unmodifiable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregation_authorization() :: %{
        "AggregationAuthorizationArn" => String.t(),
        "AuthorizedAccountId" => String.t(),
        "AuthorizedAwsRegion" => String.t(),
        "CreationTime" => non_neg_integer()
      }
      
  """
  @type aggregation_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_packs_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePacks" => list(organization_conformance_pack())
      }
      
  """
  @type describe_organization_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "recordingScope" => list(any()),
        "servicePrincipal" => String.t()
      }
      
  """
  @type configuration_recorder_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_config_rules_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_config_rules_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_config_rule_response() :: %{
        "ComplianceByConfigRules" => list(compliance_by_config_rule()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_compliance_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_evaluations_request() :: %{
        optional("Evaluations") => list(evaluation()),
        optional("TestMode") => boolean(),
        required("ResultToken") => String.t()
      }
      
  """
  @type put_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_results_response() :: %{}
      
  """
  @type delete_evaluation_results_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_config_rules_response() :: %{
        "ConfigRules" => list(config_rule()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stored_query_request() :: %{
        required("QueryName") => String.t()
      }
      
  """
  @type get_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rules_filters() :: %{
        "EvaluationMode" => list(any())
      }
      
  """
  @type describe_config_rules_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_summary_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackNames") => list(String.t())
      }
      
  """
  @type get_conformance_pack_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_config_rule_status() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConfigRuleName" => String.t(),
        "OrganizationRuleStatus" => list(any())
      }
      
  """
  @type organization_config_rule_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_custom_rule_policy_response() :: %{
        "PolicyText" => String.t()
      }
      
  """
  @type get_organization_custom_rule_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_config_snapshot_request() :: %{
        required("deliveryChannelName") => String.t()
      }
      
  """
  @type deliver_config_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_config_rule_compliance_summary_response() :: %{
        "AggregateComplianceCounts" => list(aggregate_compliance_count()),
        "GroupByKey" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_config_rule_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_count() :: %{
        "count" => float(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_resource_type_response() :: %{
        "ComplianceSummariesByResourceType" => list(compliance_summary_by_resource_type())
      }
      
  """
  @type get_compliance_summary_by_resource_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_resource_identifier() :: %{
        "ResourceId" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => list(any()),
        "SourceAccountId" => String.t(),
        "SourceRegion" => String.t()
      }
      
  """
  @type aggregate_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_aggregate_resource_config_response() :: %{
        "BaseConfigurationItems" => list(base_configuration_item()),
        "UnprocessedResourceIdentifiers" => list(aggregate_resource_identifier())
      }
      
  """
  @type batch_get_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_status_response() :: %{
        "ConformancePackStatusDetails" => list(conformance_pack_status_detail()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_pack_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type stop_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_resource_config_response() :: %{
        "NextToken" => String.t(),
        "QueryInfo" => query_info(),
        "Results" => list(String.t())
      }
      
  """
  @type select_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_config_history_response() :: %{
        "configurationItems" => list(configuration_item()),
        "nextToken" => String.t()
      }
      
  """
  @type get_resource_config_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_filters() :: %{
        "AccountId" => String.t(),
        "Region" => String.t(),
        "ResourceId" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type resource_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_config_rule_in_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_config_rule_in_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssm_controls() :: %{
        "ConcurrentExecutionRatePercentage" => integer(),
        "ErrorPercentage" => integer()
      }
      
  """
  @type ssm_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_remediation_exception_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_remediation_exception_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_execution_status() :: %{
        "InvocationTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "ResourceKey" => resource_key(),
        "State" => list(any()),
        "StepDetails" => list(remediation_execution_step())
      }
      
  """
  @type remediation_execution_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channels_response() :: %{
        "DeliveryChannels" => list(delivery_channel())
      }
      
  """
  @type describe_delivery_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conformance_pack_response() :: %{
        "ConformancePackArn" => String.t()
      }
      
  """
  @type put_conformance_pack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s_n_s_topic_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s_n_s_topic_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_aggregation_source() :: %{
        "AllAwsRegions" => boolean(),
        "AwsRegions" => list(String.t()),
        "RoleArn" => String.t()
      }
      
  """
  @type organization_aggregation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_managed_rule_metadata() :: %{
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()),
        "RuleIdentifier" => String.t(),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_managed_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance() :: %{
        "ComplianceType" => list(any()),
        "CompliantRuleCount" => integer(),
        "NonCompliantRuleCount" => integer(),
        "TotalRuleCount" => integer()
      }
      
  """
  @type aggregate_conformance_pack_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_response() :: %{
        "nextToken" => String.t(),
        "resourceIdentifiers" => list(resource_identifier())
      }
      
  """
  @type list_discovered_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channel_status_request() :: %{
        optional("DeliveryChannelNames") => list(String.t())
      }
      
  """
  @type describe_delivery_channel_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rules_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConfigRuleNames") => list(String.t())
      }
      
  """
  @type describe_organization_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_config_rule_detailed_status_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRuleDetailedStatus" => list(member_account_status())
      }
      
  """
  @type get_organization_config_rule_detailed_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_resource_response() :: %{
        "ComplianceByResources" => list(compliance_by_resource()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_compliance_by_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_configurations_response() :: %{
        "FailedBatches" => list(failed_remediation_batch())
      }
      
  """
  @type put_remediation_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      member_account_status() :: %{
        "AccountId" => String.t(),
        "ConfigRuleName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "MemberAccountRuleStatus" => list(any())
      }
      
  """
  @type member_account_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_evaluation() :: %{
        "Annotation" => String.t(),
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceType" => String.t(),
        "ComplianceType" => list(any()),
        "OrderingTimestamp" => non_neg_integer()
      }
      
  """
  @type external_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_evaluation_summary_request() :: %{
        required("ResourceEvaluationId") => String.t()
      }
      
  """
  @type get_resource_evaluation_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_compliance_summary_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t()
      }
      
  """
  @type config_rule_compliance_summary_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_by_config_rule() :: %{
        "Compliance" => compliance(),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type compliance_by_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_query_metadata() :: %{
        "Description" => String.t(),
        "QueryArn" => String.t(),
        "QueryId" => String.t(),
        "QueryName" => String.t()
      }
      
  """
  @type stored_query_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder_status() :: %{
        "arn" => String.t(),
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStartTime" => non_neg_integer(),
        "lastStatus" => list(any()),
        "lastStatusChangeTime" => non_neg_integer(),
        "lastStopTime" => non_neg_integer(),
        "name" => String.t(),
        "recording" => boolean(),
        "servicePrincipal" => String.t()
      }
      
  """
  @type configuration_recorder_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_retention_configuration_request() :: %{
        required("RetentionConfigurationName") => String.t()
      }
      
  """
  @type delete_retention_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rule_statuses_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConfigRuleNames") => list(String.t())
      }
      
  """
  @type describe_organization_config_rule_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_execution_status_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceKeys") => list(resource_key()),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type describe_remediation_execution_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregator_filter_resource_type() :: %{
        "Type" => list(any()),
        "Value" => list(String.t())
      }
      
  """
  @type aggregator_filter_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_detail() :: %{
        "ConformancePackArn" => String.t(),
        "ConformancePackId" => String.t(),
        "ConformancePackInputParameters" => list(conformance_pack_input_parameter()),
        "ConformancePackName" => String.t(),
        "CreatedBy" => String.t(),
        "DeliveryS3Bucket" => String.t(),
        "DeliveryS3KeyPrefix" => String.t(),
        "LastUpdateRequestedTime" => non_neg_integer(),
        "TemplateSSMDocumentDetails" => template_s_s_m_document_details()
      }
      
  """
  @type conformance_pack_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conformance_pack_request() :: %{
        optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()),
        optional("DeliveryS3Bucket") => String.t(),
        optional("DeliveryS3KeyPrefix") => String.t(),
        optional("TemplateBody") => String.t(),
        optional("TemplateS3Uri") => String.t(),
        optional("TemplateSSMDocumentDetails") => template_s_s_m_document_details(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type put_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_configuration() :: %{
        "Name" => String.t(),
        "RetentionPeriodInDays" => integer()
      }
      
  """
  @type retention_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_evaluation_response() :: %{
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type start_resource_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorder_status_request() :: %{
        optional("Arn") => String.t(),
        optional("ConfigurationRecorderNames") => list(String.t()),
        optional("ServicePrincipal") => String.t()
      }
      
  """
  @type describe_configuration_recorder_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_window() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_summary() :: %{
        "ComplianceSummary" => aggregate_conformance_pack_compliance_count(),
        "GroupName" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_time_range_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_time_range_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_external_evaluation_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ExternalEvaluation") => external_evaluation()
      }
      
  """
  @type put_external_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_aggregation_request() :: %{
        "RequesterAccountId" => String.t(),
        "RequesterAwsRegion" => String.t()
      }
      
  """
  @type pending_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_identifier() :: %{
        "resourceDeletionTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_identifier() :: %{String.t() => any()}

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
      
      account_aggregation_source() :: %{
        "AccountIds" => list(String.t()),
        "AllAwsRegions" => boolean(),
        "AwsRegions" => list(String.t())
      }
      
  """
  @type account_aggregation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_resource_config_response() :: %{
        "baseConfigurationItems" => list(base_configuration_item()),
        "unprocessedResourceKeys" => list(resource_key())
      }
      
  """
  @type batch_get_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_detail() :: %{
        "EventSource" => list(any()),
        "MaximumExecutionFrequency" => list(any()),
        "MessageType" => list(any())
      }
      
  """
  @type source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregators_request() :: %{
        optional("ConfigurationAggregatorNames") => list(String.t()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_configuration_aggregators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conformance_pack_compliance_scores_request() :: %{
        optional("Filters") => conformance_pack_compliance_scores_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_conformance_pack_compliance_scores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_evaluation_filters() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleNames" => list(String.t()),
        "ResourceIds" => list(String.t()),
        "ResourceType" => String.t()
      }
      
  """
  @type conformance_pack_evaluation_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_aggregation_requests_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_pending_aggregation_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remediation_execution_response() :: %{
        "FailedItems" => list(resource_key()),
        "FailureMessage" => String.t()
      }
      
  """
  @type start_remediation_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_config_rules_response() :: %{
        "AggregateComplianceByConfigRules" => list(aggregate_compliance_by_config_rule()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_configuration_recorders_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_configuration_recorders_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_value() :: %{
        "Value" => list(any())
      }
      
  """
  @type resource_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_delivery_channel_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_delivery_channel_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregator_filters() :: %{
        "ResourceType" => aggregator_filter_resource_type(),
        "ServicePrincipal" => aggregator_filter_service_principal()
      }
      
  """
  @type aggregator_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_resource_config_request() :: %{
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceIdentifier") => aggregate_resource_identifier()
      }
      
  """
  @type get_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_strategy() :: %{
        "useOnly" => list(any())
      }
      
  """
  @type recording_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_config_snapshot_response() :: %{
        "configSnapshotId" => String.t()
      }
      
  """
  @type deliver_config_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_pack_statuses_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePackStatuses" => list(organization_conformance_pack_status())
      }
      
  """
  @type describe_organization_conformance_pack_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_configuration_request() :: %{
        required("RetentionPeriodInDays") => integer()
      }
      
  """
  @type put_retention_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_types_request() :: %{
        required("ConfigurationRecorderArn") => String.t(),
        required("ResourceTypes") => list(list(any())())
      }
      
  """
  @type disassociate_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_delivery_channel_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_delivery_channel_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_conformance_pack_response() :: %{
        "OrganizationConformancePackArn" => String.t()
      }
      
  """
  @type put_organization_conformance_pack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_kms_key_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_kms_key_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregators_response() :: %{
        "ConfigurationAggregators" => list(configuration_aggregator()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_configuration_aggregators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_aggregate_resource_config_request() :: %{
        optional("Limit") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t(),
        required("Expression") => String.t()
      }
      
  """
  @type select_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_filters() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleNames" => list(String.t())
      }
      
  """
  @type conformance_pack_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remediation_execution_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(resource_key())
      }
      
  """
  @type start_remediation_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_request() :: %{
        optional("includeDeletedResources") => boolean(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceIds") => list(String.t()),
        optional("resourceName") => String.t(),
        required("resourceType") => list(any())
      }
      
  """
  @type list_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aggregate_discovered_resources_response() :: %{
        "NextToken" => String.t(),
        "ResourceIdentifiers" => list(aggregate_resource_identifier())
      }
      
  """
  @type list_aggregate_discovered_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_channel_request() :: %{
        required("DeliveryChannel") => delivery_channel()
      }
      
  """
  @type put_delivery_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_rule_compliance() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleName" => String.t(),
        "Controls" => list(String.t())
      }
      
  """
  @type conformance_pack_rule_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_aggregation_authorization_response() :: %{
        "AggregationAuthorization" => aggregation_authorization()
      }
      
  """
  @type put_aggregation_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_query() :: %{
        "Description" => String.t(),
        "Expression" => String.t(),
        "QueryArn" => String.t(),
        "QueryId" => String.t(),
        "QueryName" => String.t()
      }
      
  """
  @type stored_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stored_query_request() :: %{
        required("QueryName") => String.t()
      }
      
  """
  @type delete_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_external_evaluation_response() :: %{}
      
  """
  @type put_external_evaluation_response() :: %{}

  @typedoc """

  ## Example:
      
      get_resource_config_history_request() :: %{
        optional("chronologicalOrder") => list(any()),
        optional("earlierTime") => non_neg_integer(),
        optional("laterTime") => non_neg_integer(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("resourceId") => String.t(),
        required("resourceType") => list(any())
      }
      
  """
  @type get_resource_config_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_conformance_packs_response() :: %{
        "AggregateComplianceByConformancePacks" => list(aggregate_compliance_by_conformance_pack()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stored_queries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_stored_queries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_exceptions_response() :: %{
        "FailedBatches" => list(failed_remediation_exception_batch())
      }
      
  """
  @type put_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_config_rules_evaluation_request() :: %{
        optional("ConfigRuleNames") => list(String.t())
      }
      
  """
  @type start_config_rules_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_aggregation_authorization_request() :: %{
        required("AuthorizedAccountId") => String.t(),
        required("AuthorizedAwsRegion") => String.t()
      }
      
  """
  @type delete_aggregation_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_mode_override() :: %{
        "description" => String.t(),
        "recordingFrequency" => list(any()),
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type recording_mode_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type start_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorders_request() :: %{
        optional("Arn") => String.t(),
        optional("ConfigurationRecorderNames") => list(String.t()),
        optional("ServicePrincipal") => String.t()
      }
      
  """
  @type describe_configuration_recorders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_resource_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("NextToken") => String.t(),
        optional("ResourceEvaluationId") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ResourceType") => String.t()
      }
      
  """
  @type get_compliance_details_by_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_by_config_rule() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "Compliance" => compliance(),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type aggregate_compliance_by_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_config_rule_response() :: %{
        "OrganizationConfigRuleArn" => String.t()
      }
      
  """
  @type put_organization_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_delivery_channel_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_delivery_channel_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_conformance_packs_request() :: %{
        optional("Filters") => aggregate_conformance_pack_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregator_filter_service_principal() :: %{
        "Type" => list(any()),
        "Value" => list(String.t())
      }
      
  """
  @type aggregator_filter_service_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_exceptions_response() :: %{
        "NextToken" => String.t(),
        "RemediationExceptions" => list(remediation_exception())
      }
      
  """
  @type describe_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_evaluation() :: %{
        "EvaluationMode" => list(any()),
        "EvaluationStartTimestamp" => non_neg_integer(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type resource_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConformancePackName" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_status() :: %{
        "FailureReason" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_evaluation_summary_response() :: %{
        "Compliance" => list(any()),
        "EvaluationContext" => evaluation_context(),
        "EvaluationMode" => list(any()),
        "EvaluationStartTimestamp" => non_neg_integer(),
        "EvaluationStatus" => evaluation_status(),
        "ResourceDetails" => resource_details(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type get_resource_evaluation_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_compliance_details_by_config_rule_request() :: %{
        optional("ComplianceType") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t(),
        required("AwsRegion") => String.t(),
        required("ConfigRuleName") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_compliance_details_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_status_request() :: %{
        optional("ConformancePackNames") => list(String.t()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_conformance_pack_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack_status() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConformancePackName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type organization_conformance_pack_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_aggregator_request() :: %{
        optional("AccountAggregationSources") => list(account_aggregation_source()),
        optional("AggregatorFilters") => aggregator_filters(),
        optional("OrganizationAggregationSource") => organization_aggregation_source(),
        optional("Tags") => list(tag()),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type put_configuration_aggregator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_role_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      exclusion_by_resource_types() :: %{
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type exclusion_by_resource_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aggregate_discovered_resources_request() :: %{
        optional("Filters") => resource_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type list_aggregate_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_evaluation_result() :: %{
        "Annotation" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer()
      }
      
  """
  @type conformance_pack_evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_types_response() :: %{
        "ConfigurationRecorder" => configuration_recorder()
      }
      
  """
  @type disassociate_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregation_authorizations_response() :: %{
        "AggregationAuthorizations" => list(aggregation_authorization()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregation_authorizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_config_request() :: %{
        optional("ResourceName") => String.t(),
        optional("Tags") => map(),
        required("Configuration") => String.t(),
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t(),
        required("SchemaVersionId") => String.t()
      }
      
  """
  @type put_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_conformance_pack_request() :: %{
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type delete_organization_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "CustomPolicyDetails" => custom_policy_details(),
        "Owner" => list(any()),
        "SourceDetails" => list(source_detail()),
        "SourceIdentifier" => String.t()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_running_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_running_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_channel_status() :: %{
        "configHistoryDeliveryInfo" => config_export_delivery_info(),
        "configSnapshotDeliveryInfo" => config_export_delivery_info(),
        "configStreamDeliveryInfo" => config_stream_delivery_info(),
        "name" => String.t()
      }
      
  """
  @type delivery_channel_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scope() :: %{
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceTypes" => list(String.t()),
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }
      
  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pending_aggregation_request_request() :: %{
        required("RequesterAccountId") => String.t(),
        required("RequesterAwsRegion") => String.t()
      }
      
  """
  @type delete_pending_aggregation_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder_filter() :: %{
        "filterName" => list(any()),
        "filterValue" => list(String.t())
      }
      
  """
  @type configuration_recorder_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_linked_configuration_recorder_response() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type delete_service_linked_configuration_recorder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_input_parameter() :: %{
        "ParameterName" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type conformance_pack_input_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_stored_query_request() :: %{
        optional("Tags") => list(tag()),
        required("StoredQuery") => stored_query()
      }
      
  """
  @type put_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovered_resource_counts_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceTypes") => list(String.t())
      }
      
  """
  @type get_discovered_resource_counts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_evaluations_response() :: %{
        "FailedEvaluations" => list(evaluation())
      }
      
  """
  @type put_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_mode_configuration() :: %{
        "Mode" => list(any())
      }
      
  """
  @type evaluation_mode_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_delete_remediation_exceptions_batch() :: %{
        "FailedItems" => list(remediation_exception_resource_key()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_delete_remediation_exceptions_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_organization_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_organization_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_expression_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_expression_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_aggregation_authorization_request() :: %{
        optional("Tags") => list(tag()),
        required("AuthorizedAccountId") => String.t(),
        required("AuthorizedAwsRegion") => String.t()
      }
      
  """
  @type put_aggregation_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_channel_request() :: %{
        required("DeliveryChannelName") => String.t()
      }
      
  """
  @type delete_delivery_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_configuration_response() :: %{
        "RetentionConfiguration" => retention_configuration()
      }
      
  """
  @type put_retention_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_channel() :: %{
        "configSnapshotDeliveryProperties" => config_snapshot_delivery_properties(),
        "name" => String.t(),
        "s3BucketName" => String.t(),
        "s3KeyPrefix" => String.t(),
        "s3KmsKeyArn" => String.t(),
        "snsTopicARN" => String.t()
      }
      
  """
  @type delivery_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_stored_query_response() :: %{
        "QueryArn" => String.t()
      }
      
  """
  @type put_stored_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_conformance_pack_detailed_status_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePackDetailedStatuses" => list(organization_conformance_pack_detailed_status())
      }
      
  """
  @type get_organization_conformance_pack_detailed_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_packs_request() :: %{
        optional("ConformancePackNames") => list(String.t()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_resource_type_request() :: %{
        optional("ResourceTypes") => list(String.t())
      }
      
  """
  @type get_compliance_summary_by_resource_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_score() :: %{
        "ConformancePackName" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Score" => String.t()
      }
      
  """
  @type conformance_pack_compliance_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_types_request() :: %{
        required("ConfigurationRecorderArn") => String.t(),
        required("ResourceTypes") => list(list(any())())
      }
      
  """
  @type associate_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_aggregator_response() :: %{
        "ConfigurationAggregator" => configuration_aggregator()
      }
      
  """
  @type put_configuration_aggregator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_scores_filters() :: %{
        "ConformancePackNames" => list(String.t())
      }
      
  """
  @type conformance_pack_compliance_scores_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_remediation_batch() :: %{
        "FailedItems" => list(remediation_configuration()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_remediation_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_config_rule_request() :: %{
        optional("ExcludedAccounts") => list(String.t()),
        optional("OrganizationCustomPolicyRuleMetadata") => organization_custom_policy_rule_metadata(),
        optional("OrganizationCustomRuleMetadata") => organization_custom_rule_metadata(),
        optional("OrganizationManagedRuleMetadata") => organization_managed_rule_metadata(),
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type put_organization_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_group() :: %{
        "allSupported" => boolean(),
        "exclusionByResourceTypes" => exclusion_by_resource_types(),
        "includeGlobalResourceTypes" => boolean(),
        "recordingStrategy" => recording_strategy(),
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type recording_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stored_queries_response() :: %{
        "NextToken" => String.t(),
        "StoredQueryMetadata" => list(stored_query_metadata())
      }
      
  """
  @type list_stored_queries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_key() :: %{
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovered_resource_counts_response() :: %{
        "nextToken" => String.t(),
        "resourceCounts" => list(resource_count()),
        "totalDiscoveredResources" => float()
      }
      
  """
  @type get_discovered_resource_counts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_controls() :: %{
        "SsmControls" => ssm_controls()
      }
      
  """
  @type execution_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_export_delivery_info() :: %{
        "lastAttemptTime" => non_neg_integer(),
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStatus" => list(any()),
        "lastSuccessfulTime" => non_neg_integer(),
        "nextDeliveryTime" => non_neg_integer()
      }
      
  """
  @type config_export_delivery_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_discovered_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_discovered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_context() :: %{
        "EvaluationContextIdentifier" => String.t()
      }
      
  """
  @type evaluation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_count_filters() :: %{
        "AccountId" => String.t(),
        "Region" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_count_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_service_linked_configuration_recorder_response() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type put_service_linked_configuration_recorder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregator_sources_status_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("UpdateStatus") => list(list(any())()),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_configuration_aggregator_sources_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retention_configurations_request() :: %{
        optional("NextToken") => String.t(),
        optional("RetentionConfigurationNames") => list(String.t())
      }
      
  """
  @type describe_retention_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_discovered_resource_counts_request() :: %{
        optional("Filters") => resource_count_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_discovered_resource_counts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_bucket_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_bucket_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_organization_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_rule_metadata() :: %{
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "LambdaFunctionArn" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorders_response() :: %{
        "ConfigurationRecorders" => list(configuration_recorder())
      }
      
  """
  @type describe_configuration_recorders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_config_request() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t()
      }
      
  """
  @type delete_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_active_resources_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_active_resources_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_organization_config_rule_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_organization_config_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      status_detail_filters() :: %{
        "AccountId" => String.t(),
        "MemberAccountRuleStatus" => list(any())
      }
      
  """
  @type status_detail_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rules_request() :: %{
        optional("ConfigRuleNames") => list(String.t()),
        optional("Filters") => describe_config_rules_filters(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_resource_config_request() :: %{
        required("resourceKeys") => list(resource_key())
      }
      
  """
  @type batch_get_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_details_request() :: %{
        optional("Filters") => conformance_pack_evaluation_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregator_sources_status_response() :: %{
        "AggregatedSourceStatusList" => list(aggregated_source_status()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_configuration_aggregator_sources_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_info() :: %{
        "Name" => String.t()
      }
      
  """
  @type field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_compliance_request() :: %{
        optional("Filters") => conformance_pack_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type describe_conformance_pack_compliance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_stream_delivery_info() :: %{
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStatus" => list(any()),
        "lastStatusChangeTime" => non_neg_integer()
      }
      
  """
  @type config_stream_delivery_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_conformance_pack_compliance_summary_request() :: %{
        optional("Filters") => aggregate_conformance_pack_compliance_summary_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_conformance_pack_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_by_conformance_pack() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "Compliance" => aggregate_conformance_pack_compliance(),
        "ConformancePackName" => String.t()
      }
      
  """
  @type aggregate_compliance_by_conformance_pack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channel_status_response() :: %{
        "DeliveryChannelsStatus" => list(delivery_channel_status())
      }
      
  """
  @type describe_delivery_channel_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_execution_status_response() :: %{
        "NextToken" => String.t(),
        "RemediationExecutionStatuses" => list(remediation_execution_status())
      }
      
  """
  @type describe_remediation_execution_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_policy_rule_metadata() :: %{
        "DebugLogDeliveryAccounts" => list(String.t()),
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "PolicyRuntime" => String.t(),
        "PolicyText" => String.t(),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_policy_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_summary() :: %{
        "ConformancePackComplianceStatus" => list(any()),
        "ConformancePackName" => String.t()
      }
      
  """
  @type conformance_pack_compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_summary_by_resource_type() :: %{
        "ComplianceSummary" => compliance_summary(),
        "ResourceType" => String.t()
      }
      
  """
  @type compliance_summary_by_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_resource_detailed_status_filters() :: %{
        "AccountId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type organization_resource_detailed_status_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation() :: %{
        "Annotation" => String.t(),
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceType" => String.t(),
        "ComplianceType" => list(any()),
        "OrderingTimestamp" => non_neg_integer()
      }
      
  """
  @type evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregation_authorizations_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_aggregation_authorizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      base_configuration_item() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "awsRegion" => String.t(),
        "configuration" => String.t(),
        "configurationItemCaptureTime" => non_neg_integer(),
        "configurationItemDeliveryTime" => non_neg_integer(),
        "configurationItemStatus" => list(any()),
        "configurationStateId" => String.t(),
        "recordingFrequency" => list(any()),
        "resourceCreationTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any()),
        "supplementaryConfiguration" => map(),
        "version" => String.t()
      }
      
  """
  @type base_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_exceptions_request() :: %{
        optional("ExpirationTime") => non_neg_integer(),
        optional("Message") => String.t(),
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(remediation_exception_resource_key())
      }
      
  """
  @type put_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_status_detail() :: %{
        "ConformancePackArn" => String.t(),
        "ConformancePackId" => String.t(),
        "ConformancePackName" => String.t(),
        "ConformancePackState" => list(any()),
        "ConformancePackStatusReason" => String.t(),
        "LastUpdateCompletedTime" => non_neg_integer(),
        "LastUpdateRequestedTime" => non_neg_integer(),
        "StackArn" => String.t()
      }
      
  """
  @type conformance_pack_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_details_response() :: %{
        "ConformancePackName" => String.t(),
        "ConformancePackRuleEvaluationResults" => list(conformance_pack_evaluation_result()),
        "NextToken" => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "Annotation" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer(),
        "ResultToken" => String.t()
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_conformance_pack_request() :: %{
        optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()),
        optional("DeliveryS3Bucket") => String.t(),
        optional("DeliveryS3KeyPrefix") => String.t(),
        optional("ExcludedAccounts") => list(String.t()),
        optional("TemplateBody") => String.t(),
        optional("TemplateS3Uri") => String.t(),
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type put_organization_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_pack_statuses_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConformancePackNames") => list(String.t())
      }
      
  """
  @type describe_organization_conformance_pack_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_s_s_m_document_details() :: %{
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t()
      }
      
  """
  @type template_s_s_m_document_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_evaluation_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EvaluationContext") => evaluation_context(),
        optional("EvaluationTimeout") => integer(),
        required("EvaluationMode") => list(any()),
        required("ResourceDetails") => resource_details()
      }
      
  """
  @type start_resource_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stored_query_response() :: %{}
      
  """
  @type delete_stored_query_response() :: %{}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_count() :: %{
        "CompliantConformancePackCount" => integer(),
        "NonCompliantConformancePackCount" => integer()
      }
      
  """
  @type aggregate_conformance_pack_compliance_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rule_statuses_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRuleStatuses" => list(organization_config_rule_status())
      }
      
  """
  @type describe_organization_config_rule_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_details() :: %{
        "ResourceConfiguration" => String.t(),
        "ResourceConfigurationSchemaType" => list(any()),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_resource_config_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("Expression") => String.t()
      }
      
  """
  @type select_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_key_prefix_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_key_prefix_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_item() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "awsRegion" => String.t(),
        "configuration" => String.t(),
        "configurationItemCaptureTime" => non_neg_integer(),
        "configurationItemDeliveryTime" => non_neg_integer(),
        "configurationItemMD5Hash" => String.t(),
        "configurationItemStatus" => list(any()),
        "configurationStateId" => String.t(),
        "recordingFrequency" => list(any()),
        "relatedEvents" => list(String.t()),
        "relationships" => list(relationship()),
        "resourceCreationTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any()),
        "supplementaryConfiguration" => map(),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_by_resource() :: %{
        "Compliance" => compliance(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type compliance_by_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rule_evaluation_status_response() :: %{
        "ConfigRulesEvaluationStatus" => list(config_rule_evaluation_status()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_config_rule_evaluation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_config_rule() :: %{
        "ExcludedAccounts" => list(String.t()),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConfigRuleArn" => String.t(),
        "OrganizationConfigRuleName" => String.t(),
        "OrganizationCustomPolicyRuleMetadata" => organization_custom_policy_rule_metadata_no_policy(),
        "OrganizationCustomRuleMetadata" => organization_custom_rule_metadata(),
        "OrganizationManagedRuleMetadata" => organization_managed_rule_metadata()
      }
      
  """
  @type organization_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_conformance_packs_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_conformance_packs_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conformance_pack_compliance_scores_response() :: %{
        "ConformancePackComplianceScores" => list(conformance_pack_compliance_score()),
        "NextToken" => String.t()
      }
      
  """
  @type list_conformance_pack_compliance_scores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_aggregation_requests_response() :: %{
        "NextToken" => String.t(),
        "PendingAggregationRequests" => list(pending_aggregation_request())
      }
      
  """
  @type describe_pending_aggregation_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_value() :: %{
        "Values" => list(String.t())
      }
      
  """
  @type static_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_retention_configurations_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_retention_configurations_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_config_rule_request() :: %{
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type delete_organization_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_exceptions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceKeys") => list(remediation_exception_resource_key()),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type describe_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_aggregate_resource_config_request() :: %{
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceIdentifiers") => list(aggregate_resource_identifier())
      }
      
  """
  @type batch_get_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_packs_response() :: %{
        "ConformancePackDetails" => list(conformance_pack_detail()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_info() :: %{
        "SelectFields" => list(field_info())
      }
      
  """
  @type query_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_recorders_request() :: %{
        optional("Filters") => list(configuration_recorder_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configuration_recorders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_config_rule_response() :: %{
        "ComplianceSummary" => compliance_summary()
      }
      
  """
  @type get_compliance_summary_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_resource_config_response() :: %{
        "ConfigurationItem" => configuration_item()
      }
      
  """
  @type get_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_template_validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conformance_pack_template_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_conformance_pack_detailed_status_request() :: %{
        optional("Filters") => organization_resource_detailed_status_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type get_organization_conformance_pack_detailed_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_retention_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_retention_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_exception_resource_key() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type remediation_exception_resource_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_recorder_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_configuration_recorder_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_summary() :: %{
        "ComplianceSummaryTimestamp" => non_neg_integer(),
        "CompliantResourceCount" => compliance_contributor_count(),
        "NonCompliantResourceCount" => compliance_contributor_count()
      }
      
  """
  @type compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type delete_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_conformance_pack_request() :: %{
        required("ConformancePackName") => String.t()
      }
      
  """
  @type delete_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result_qualifier() :: %{
        "ConfigRuleName" => String.t(),
        "EvaluationMode" => list(any()),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type evaluation_result_qualifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack() :: %{
        "ConformancePackInputParameters" => list(conformance_pack_input_parameter()),
        "DeliveryS3Bucket" => String.t(),
        "DeliveryS3KeyPrefix" => String.t(),
        "ExcludedAccounts" => list(String.t()),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConformancePackArn" => String.t(),
        "OrganizationConformancePackName" => String.t()
      }
      
  """
  @type organization_conformance_pack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_packs_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConformancePackNames") => list(String.t())
      }
      
  """
  @type describe_organization_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_linked_configuration_recorder_request() :: %{
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type delete_service_linked_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_config_rule_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type get_compliance_details_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_compliance_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type config_rule_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_custom_rule_policy_request() :: %{
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type get_organization_custom_rule_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_evaluations_request() :: %{
        optional("Filters") => resource_evaluation_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_count() :: %{
        "ComplianceSummary" => compliance_summary(),
        "GroupName" => String.t()
      }
      
  """
  @type aggregate_compliance_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_aggregate_resource_config_response() :: %{
        "NextToken" => String.t(),
        "QueryInfo" => query_info(),
        "Results" => list(String.t())
      }
      
  """
  @type select_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_config_rule_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_config_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_execution_step() :: %{
        "ErrorMessage" => String.t(),
        "Name" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "StopTime" => non_neg_integer()
      }
      
  """
  @type remediation_execution_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_remediation_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_remediation_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_compliance_response() :: %{
        "ConformancePackName" => String.t(),
        "ConformancePackRuleComplianceList" => list(conformance_pack_rule_compliance()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_pack_compliance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_recorder_request() :: %{
        optional("Tags") => list(tag()),
        required("ConfigurationRecorder") => configuration_recorder()
      }
      
  """
  @type put_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_summary_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_summary_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_policy_rule_metadata_no_policy() :: %{
        "DebugLogDeliveryAccounts" => list(String.t()),
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "PolicyRuntime" => String.t(),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_policy_rule_metadata_no_policy() :: %{String.t() => any()}

  @type associate_resource_types_errors() ::
          validation_exception()
          | no_such_configuration_recorder_exception()
          | conflict_exception()

  @type batch_get_aggregate_resource_config_errors() ::
          validation_exception() | no_such_configuration_aggregator_exception()

  @type batch_get_resource_config_errors() ::
          no_available_configuration_recorder_exception() | validation_exception()

  @type delete_aggregation_authorization_errors() :: invalid_parameter_value_exception()

  @type delete_config_rule_errors() ::
          no_such_config_rule_exception() | resource_in_use_exception()

  @type delete_configuration_aggregator_errors() :: no_such_configuration_aggregator_exception()

  @type delete_configuration_recorder_errors() ::
          no_such_configuration_recorder_exception() | unmodifiable_entity_exception()

  @type delete_conformance_pack_errors() ::
          no_such_conformance_pack_exception() | resource_in_use_exception()

  @type delete_delivery_channel_errors() ::
          no_such_delivery_channel_exception() | last_delivery_channel_delete_failed_exception()

  @type delete_evaluation_results_errors() ::
          no_such_config_rule_exception() | resource_in_use_exception()

  @type delete_organization_config_rule_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | resource_in_use_exception()

  @type delete_organization_conformance_pack_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | resource_in_use_exception()

  @type delete_pending_aggregation_request_errors() :: invalid_parameter_value_exception()

  @type delete_remediation_configuration_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | remediation_in_progress_exception()
          | insufficient_permissions_exception()

  @type delete_remediation_exceptions_errors() :: no_such_remediation_exception_exception()

  @type delete_resource_config_errors() ::
          validation_exception() | no_running_configuration_recorder_exception()

  @type delete_retention_configuration_errors() ::
          no_such_retention_configuration_exception() | invalid_parameter_value_exception()

  @type delete_service_linked_configuration_recorder_errors() ::
          validation_exception()
          | no_such_configuration_recorder_exception()
          | conflict_exception()

  @type delete_stored_query_errors() :: validation_exception() | resource_not_found_exception()

  @type deliver_config_snapshot_errors() ::
          no_available_configuration_recorder_exception()
          | no_running_configuration_recorder_exception()
          | no_such_delivery_channel_exception()

  @type describe_aggregate_compliance_by_config_rules_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_aggregate_compliance_by_conformance_packs_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_aggregation_authorizations_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_compliance_by_config_rule_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_compliance_by_resource_errors() ::
          invalid_parameter_value_exception() | invalid_next_token_exception()

  @type describe_config_rule_evaluation_status_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_config_rules_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_configuration_aggregator_sources_status_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_configuration_aggregators_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_configuration_recorder_status_errors() ::
          validation_exception() | no_such_configuration_recorder_exception()

  @type describe_configuration_recorders_errors() ::
          validation_exception() | no_such_configuration_recorder_exception()

  @type describe_conformance_pack_compliance_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | no_such_config_rule_in_conformance_pack_exception()
          | invalid_limit_exception()

  @type describe_conformance_pack_status_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_conformance_packs_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_delivery_channel_status_errors() :: no_such_delivery_channel_exception()

  @type describe_delivery_channels_errors() :: no_such_delivery_channel_exception()

  @type describe_organization_config_rule_statuses_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_config_rules_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_conformance_pack_statuses_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_conformance_packs_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_pending_aggregation_requests_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_remediation_exceptions_errors() ::
          invalid_parameter_value_exception() | invalid_next_token_exception()

  @type describe_remediation_execution_status_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_retention_configurations_errors() ::
          no_such_retention_configuration_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type disassociate_resource_types_errors() ::
          validation_exception()
          | no_such_configuration_recorder_exception()
          | conflict_exception()

  @type get_aggregate_compliance_details_by_config_rule_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_config_rule_compliance_summary_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_conformance_pack_compliance_summary_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_discovered_resource_counts_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_resource_config_errors() ::
          validation_exception()
          | resource_not_discovered_exception()
          | oversized_configuration_item_exception()
          | no_such_configuration_aggregator_exception()

  @type get_compliance_details_by_config_rule_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type get_compliance_details_by_resource_errors() :: invalid_parameter_value_exception()

  @type get_compliance_summary_by_resource_type_errors() :: invalid_parameter_value_exception()

  @type get_conformance_pack_compliance_details_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | no_such_config_rule_in_conformance_pack_exception()
          | invalid_limit_exception()

  @type get_conformance_pack_compliance_summary_errors() ::
          no_such_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_custom_rule_policy_errors() :: no_such_config_rule_exception()

  @type get_discovered_resource_counts_errors() ::
          validation_exception() | invalid_next_token_exception() | invalid_limit_exception()

  @type get_organization_config_rule_detailed_status_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_organization_conformance_pack_detailed_status_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_organization_custom_rule_policy_errors() ::
          organization_access_denied_exception() | no_such_organization_config_rule_exception()

  @type get_resource_config_history_errors() ::
          no_available_configuration_recorder_exception()
          | validation_exception()
          | resource_not_discovered_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()
          | invalid_limit_exception()

  @type get_resource_evaluation_summary_errors() :: resource_not_found_exception()

  @type get_stored_query_errors() :: validation_exception() | resource_not_found_exception()

  @type list_aggregate_discovered_resources_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type list_configuration_recorders_errors() :: validation_exception()

  @type list_conformance_pack_compliance_scores_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type list_discovered_resources_errors() ::
          no_available_configuration_recorder_exception()
          | validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type list_resource_evaluations_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()

  @type list_stored_queries_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_limit_exception()

  @type put_aggregation_authorization_errors() :: invalid_parameter_value_exception()

  @type put_config_rule_errors() ::
          no_available_configuration_recorder_exception()
          | invalid_parameter_value_exception()
          | max_number_of_config_rules_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()

  @type put_configuration_aggregator_errors() ::
          organization_access_denied_exception()
          | limit_exceeded_exception()
          | no_available_organization_exception()
          | invalid_role_exception()
          | invalid_parameter_value_exception()
          | organization_all_features_not_enabled_exception()

  @type put_configuration_recorder_errors() ::
          invalid_configuration_recorder_name_exception()
          | validation_exception()
          | invalid_role_exception()
          | max_number_of_configuration_recorders_exceeded_exception()
          | unmodifiable_entity_exception()
          | invalid_recording_group_exception()

  @type put_conformance_pack_errors() ::
          conformance_pack_template_validation_exception()
          | max_number_of_conformance_packs_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()

  @type put_delivery_channel_errors() ::
          no_available_configuration_recorder_exception()
          | invalid_s3_key_prefix_exception()
          | no_such_bucket_exception()
          | invalid_s3_kms_key_arn_exception()
          | invalid_delivery_channel_name_exception()
          | invalid_s_n_s_topic_arn_exception()
          | insufficient_delivery_policy_exception()
          | max_number_of_delivery_channels_exceeded_exception()

  @type put_evaluations_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_result_token_exception()

  @type put_external_evaluation_errors() ::
          no_such_config_rule_exception() | invalid_parameter_value_exception()

  @type put_organization_config_rule_errors() ::
          organization_access_denied_exception()
          | no_available_organization_exception()
          | validation_exception()
          | invalid_parameter_value_exception()
          | max_number_of_organization_config_rules_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()
          | organization_all_features_not_enabled_exception()

  @type put_organization_conformance_pack_errors() ::
          organization_access_denied_exception()
          | no_available_organization_exception()
          | validation_exception()
          | max_number_of_organization_conformance_packs_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()
          | organization_all_features_not_enabled_exception()
          | organization_conformance_pack_template_validation_exception()

  @type put_remediation_configurations_errors() ::
          invalid_parameter_value_exception() | insufficient_permissions_exception()

  @type put_remediation_exceptions_errors() ::
          invalid_parameter_value_exception() | insufficient_permissions_exception()

  @type put_resource_config_errors() ::
          max_active_resources_exceeded_exception()
          | validation_exception()
          | no_running_configuration_recorder_exception()
          | insufficient_permissions_exception()

  @type put_retention_configuration_errors() ::
          max_number_of_retention_configurations_exceeded_exception()
          | invalid_parameter_value_exception()

  @type put_service_linked_configuration_recorder_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | conflict_exception()
          | insufficient_permissions_exception()

  @type put_stored_query_errors() ::
          too_many_tags_exception()
          | resource_concurrent_modification_exception()
          | validation_exception()

  @type select_aggregate_resource_config_errors() ::
          invalid_expression_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type select_resource_config_errors() ::
          invalid_expression_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type start_config_rules_evaluation_errors() ::
          no_such_config_rule_exception()
          | limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()

  @type start_configuration_recorder_errors() ::
          no_such_configuration_recorder_exception()
          | no_available_delivery_channel_exception()
          | unmodifiable_entity_exception()

  @type start_remediation_execution_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | insufficient_permissions_exception()

  @type start_resource_evaluation_errors() ::
          invalid_parameter_value_exception() | idempotent_parameter_mismatch()

  @type stop_configuration_recorder_errors() ::
          no_such_configuration_recorder_exception() | unmodifiable_entity_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2014-11-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "config",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Config Service",
      signature_version: "v4",
      signing_name: "config",
      target_prefix: "StarlingDoveService"
    }
  end

  @doc """
  Adds all resource types specified in the `ResourceTypes` list to the
  [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) of specified configuration recorder and includes those resource types when
  recording.

  For this operation, the specified configuration recorder must use a
  [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html)
  that is either `INCLUSION_BY_RESOURCE_TYPES` or `EXCLUSION_BY_RESOURCE_TYPES`.
  """
  @spec associate_resource_types(map(), associate_resource_types_request(), list()) ::
          {:ok, associate_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resource_types_errors()}
  def associate_resource_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateResourceTypes", input, options)
  end

  @doc """
  Returns the current configuration items for resources that are present in your
  Config aggregator.

  The operation also returns a list of resources that are not processed in the
  current request.
  If there are no unprocessed resources, the operation returns an empty
  `unprocessedResourceIdentifiers` list.

    
  The API does not return results for deleted resources.

    
  The API does not return tags and relationships.
  """
  @spec batch_get_aggregate_resource_config(
          map(),
          batch_get_aggregate_resource_config_request(),
          list()
        ) ::
          {:ok, batch_get_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_aggregate_resource_config_errors()}
  def batch_get_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the `BaseConfigurationItem` for one or more requested resources.

  The operation also returns a list of resources that are
  not processed in the current request. If there are no unprocessed
  resources, the operation returns an empty unprocessedResourceKeys
  list.

    
  The API does not return results for deleted
  resources.

    
  The API does not return any tags for the requested
  resources. This information is filtered out of the
  supplementaryConfiguration section of the API
  response.
  """
  @spec batch_get_resource_config(map(), batch_get_resource_config_request(), list()) ::
          {:ok, batch_get_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_resource_config_errors()}
  def batch_get_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetResourceConfig", input, options)
  end

  @doc """
  Deletes the authorization granted to the specified
  configuration aggregator account in a specified region.
  """
  @spec delete_aggregation_authorization(
          map(),
          delete_aggregation_authorization_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_aggregation_authorization_errors()}
  def delete_aggregation_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAggregationAuthorization", input, options)
  end

  @doc """
  Deletes the specified Config rule and all of its evaluation
  results.

  Config sets the state of a rule to `DELETING`
  until the deletion is complete. You cannot update a rule while it is
  in this state. If you make a `PutConfigRule` or
  `DeleteConfigRule` request for the rule, you will
  receive a `ResourceInUseException`.

  You can check the state of a rule by using the
  `DescribeConfigRules` request.

  ## Recommendation: Stop recording resource compliance before deleting rules

  It is highly recommended that you stop recording for the
  `AWS::Config::ResourceCompliance` resource type before you delete rules in your
  account.
  Deleting rules creates CIs for `AWS::Config::ResourceCompliance` and can affect
  your Config [configuration recorder](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
  costs.

  If you are deleting rules which evaluate a large number of resource types,
  this can lead to a spike in the number of CIs recorded.

  Best practice:

    
  Stop recording `AWS::Config::ResourceCompliance`

    
  Delete rule(s)

    
  Turn on recording for `AWS::Config::ResourceCompliance`
  """
  @spec delete_config_rule(map(), delete_config_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_config_rule_errors()}
  def delete_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigRule", input, options)
  end

  @doc """
  Deletes the specified configuration aggregator and the
  aggregated data associated with the aggregator.
  """
  @spec delete_configuration_aggregator(map(), delete_configuration_aggregator_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_aggregator_errors()}
  def delete_configuration_aggregator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationAggregator", input, options)
  end

  @doc """
  Deletes the customer managed configuration recorder.

  This operation does not delete the configuration information that
  was previously recorded. You will be able to access the previously
  recorded information by using the
  [GetResourceConfigHistory](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html)
  operation, but you will not
  be able to access this information in the Config console until
  you have created a new customer managed configuration recorder.
  """
  @spec delete_configuration_recorder(map(), delete_configuration_recorder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_recorder_errors()}
  def delete_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationRecorder", input, options)
  end

  @doc """
  Deletes the specified conformance pack and all the Config rules, remediation
  actions, and all evaluation results within that
  conformance pack.

  Config sets the conformance pack to `DELETE_IN_PROGRESS` until the deletion is
  complete.
  You cannot update a conformance pack while it is in this state.
  """
  @spec delete_conformance_pack(map(), delete_conformance_pack_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_conformance_pack_errors()}
  def delete_conformance_pack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConformancePack", input, options)
  end

  @doc """
  Deletes the delivery channel.

  Before you can delete the delivery channel, you must stop the customer managed
  configuration recorder. You can use the `StopConfigurationRecorder` operation to
  stop the customer managed configuration recorder.
  """
  @spec delete_delivery_channel(map(), delete_delivery_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_delivery_channel_errors()}
  def delete_delivery_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeliveryChannel", input, options)
  end

  @doc """
  Deletes the evaluation results for the specified Config
  rule.

  You can specify one Config rule per request. After you
  delete the evaluation results, you can call the `StartConfigRulesEvaluation` API
  to start evaluating
  your Amazon Web Services resources against the rule.
  """
  @spec delete_evaluation_results(map(), delete_evaluation_results_request(), list()) ::
          {:ok, delete_evaluation_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_evaluation_results_errors()}
  def delete_evaluation_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEvaluationResults", input, options)
  end

  @doc """
  Deletes the specified organization Config rule and all of its evaluation results
  from all member accounts in that organization.

  Only a management account and a delegated administrator account can delete an
  organization Config rule.
  When calling this API with a delegated administrator, you must ensure
  Organizations
  `ListDelegatedAdministrator` permissions are added.

  Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is
  complete.
  You cannot update a rule while it is in this state.
  """
  @spec delete_organization_config_rule(map(), delete_organization_config_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_organization_config_rule_errors()}
  def delete_organization_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOrganizationConfigRule", input, options)
  end

  @doc """
  Deletes the specified organization conformance pack and all of the Config rules
  and remediation actions from
  all member accounts in that organization.

  Only a management account or a delegated administrator account can delete an
  organization conformance pack.
  When calling this API with a delegated administrator, you must ensure
  Organizations
  `ListDelegatedAdministrator` permissions are added.

  Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the
  deletion is complete.
  You cannot update a conformance pack while it is in this state.
  """
  @spec delete_organization_conformance_pack(
          map(),
          delete_organization_conformance_pack_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_organization_conformance_pack_errors()}
  def delete_organization_conformance_pack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOrganizationConformancePack", input, options)
  end

  @doc """
  Deletes pending authorization requests for a specified
  aggregator account in a specified region.
  """
  @spec delete_pending_aggregation_request(
          map(),
          delete_pending_aggregation_request_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pending_aggregation_request_errors()}
  def delete_pending_aggregation_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePendingAggregationRequest", input, options)
  end

  @doc """
  Deletes the remediation configuration.
  """
  @spec delete_remediation_configuration(
          map(),
          delete_remediation_configuration_request(),
          list()
        ) ::
          {:ok, delete_remediation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_remediation_configuration_errors()}
  def delete_remediation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRemediationConfiguration", input, options)
  end

  @doc """
  Deletes one or more remediation exceptions mentioned in the resource keys.

  Config generates a remediation exception when a problem occurs executing a
  remediation action to a specific resource.
  Remediation exceptions blocks auto-remediation until the exception is cleared.
  """
  @spec delete_remediation_exceptions(map(), delete_remediation_exceptions_request(), list()) ::
          {:ok, delete_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_remediation_exceptions_errors()}
  def delete_remediation_exceptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for a custom resource that has been deleted.

  This API records a new ConfigurationItem with a ResourceDeleted status. You can
  retrieve the ConfigurationItems recorded for this resource in your Config
  History.
  """
  @spec delete_resource_config(map(), delete_resource_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_config_errors()}
  def delete_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceConfig", input, options)
  end

  @doc """
  Deletes the retention configuration.
  """
  @spec delete_retention_configuration(map(), delete_retention_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_retention_configuration_errors()}
  def delete_retention_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRetentionConfiguration", input, options)
  end

  @doc """
  Deletes an existing service-linked configuration recorder.

  This operation does not delete the configuration information that was previously
  recorded. You will be able to access the previously
  recorded information by using the
  [GetResourceConfigHistory](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html)
  operation, but you will not
  be able to access this information in the Config console until
  you have created a new service-linked configuration recorder for the same
  service.

  ## The recording scope determines if you receive configuration items

  The recording scope is set by the service that is linked to the configuration
  recorder and determines whether you receive configuration items (CIs) in the
  delivery channel. If the recording scope is internal, you will not receive CIs
  in the delivery channel.
  """
  @spec delete_service_linked_configuration_recorder(
          map(),
          delete_service_linked_configuration_recorder_request(),
          list()
        ) ::
          {:ok, delete_service_linked_configuration_recorder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_linked_configuration_recorder_errors()}
  def delete_service_linked_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceLinkedConfigurationRecorder", input, options)
  end

  @doc """
  Deletes the stored query for a single Amazon Web Services account and a single
  Amazon Web Services Region.
  """
  @spec delete_stored_query(map(), delete_stored_query_request(), list()) ::
          {:ok, delete_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stored_query_errors()}
  def delete_stored_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStoredQuery", input, options)
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3
  bucket in the specified delivery channel.

  After the delivery has
  started, Config sends the following notifications using an
  Amazon SNS topic that you have specified.

    *
  Notification of the start of the delivery.

    *
  Notification of the completion of the delivery, if the
  delivery was successfully completed.

    *
  Notification of delivery failure, if the delivery
  failed.
  """
  @spec deliver_config_snapshot(map(), deliver_config_snapshot_request(), list()) ::
          {:ok, deliver_config_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deliver_config_snapshot_errors()}
  def deliver_config_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeliverConfigSnapshot", input, options)
  end

  @doc """
  Returns a list of compliant and noncompliant rules with the
  number of resources for compliant and noncompliant rules.

  Does not display rules that do not have compliance results.

  The results can return an empty result page, but if you
  have a `nextToken`, the results are displayed on the next
  page.
  """
  @spec describe_aggregate_compliance_by_config_rules(
          map(),
          describe_aggregate_compliance_by_config_rules_request(),
          list()
        ) ::
          {:ok, describe_aggregate_compliance_by_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_aggregate_compliance_by_config_rules_errors()}
  def describe_aggregate_compliance_by_config_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAggregateComplianceByConfigRules", input, options)
  end

  @doc """
  Returns a list of the existing and deleted conformance packs and their
  associated compliance status with the count of compliant and noncompliant Config
  rules within each
  conformance pack.

  Also returns the total rule count which includes compliant rules, noncompliant
  rules, and rules that cannot be evaluated due to insufficient data.

  The results can return an empty result page, but if you have a `nextToken`, the
  results are displayed on the next page.
  """
  @spec describe_aggregate_compliance_by_conformance_packs(
          map(),
          describe_aggregate_compliance_by_conformance_packs_request(),
          list()
        ) ::
          {:ok, describe_aggregate_compliance_by_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_aggregate_compliance_by_conformance_packs_errors()}
  def describe_aggregate_compliance_by_conformance_packs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeAggregateComplianceByConformancePacks",
      input,
      options
    )
  end

  @doc """
  Returns a list of authorizations granted to various aggregator
  accounts and regions.
  """
  @spec describe_aggregation_authorizations(
          map(),
          describe_aggregation_authorizations_request(),
          list()
        ) ::
          {:ok, describe_aggregation_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_aggregation_authorizations_errors()}
  def describe_aggregation_authorizations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAggregationAuthorizations", input, options)
  end

  @doc """
  Indicates whether the specified Config rules are compliant.

  If a rule is noncompliant, this operation returns the number of Amazon Web
  Services
  resources that do not comply with the rule.

  A rule is compliant if all of the evaluated resources comply
  with it. It is noncompliant if any of these resources do not
  comply.

  If Config has no current evaluation results for the rule,
  it returns `INSUFFICIENT_DATA`. This result might
  indicate one of the following conditions:

    *
  Config has never invoked an evaluation for the
  rule. To check whether it has, use the
  `DescribeConfigRuleEvaluationStatus` action
  to get the `LastSuccessfulInvocationTime` and
  `LastFailedInvocationTime`.

    *
  The rule's Lambda function is failing to send
  evaluation results to Config. Verify that the role you
  assigned to your configuration recorder includes the
  `config:PutEvaluations` permission. If the
  rule is a custom rule, verify that the Lambda execution
  role includes the `config:PutEvaluations`
  permission.

    *
  The rule's Lambda function has returned
  `NOT_APPLICABLE` for all evaluation results.
  This can occur if the resources were deleted or removed from
  the rule's scope.
  """
  @spec describe_compliance_by_config_rule(
          map(),
          describe_compliance_by_config_rule_request(),
          list()
        ) ::
          {:ok, describe_compliance_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_compliance_by_config_rule_errors()}
  def describe_compliance_by_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeComplianceByConfigRule", input, options)
  end

  @doc """
  Indicates whether the specified Amazon Web Services resources are compliant.

  If
  a resource is noncompliant, this operation returns the number of Config rules
  that the resource does not comply with.

  A resource is compliant if it complies with all the Config
  rules that evaluate it. It is noncompliant if it does not comply
  with one or more of these rules.

  If Config has no current evaluation results for the
  resource, it returns `INSUFFICIENT_DATA`. This result
  might indicate one of the following conditions about the rules that
  evaluate the resource:

    *
  Config has never invoked an evaluation for the
  rule. To check whether it has, use the
  `DescribeConfigRuleEvaluationStatus` action
  to get the `LastSuccessfulInvocationTime` and
  `LastFailedInvocationTime`.

    *
  The rule's Lambda function is failing to send
  evaluation results to Config. Verify that the role that
  you assigned to your configuration recorder includes the
  `config:PutEvaluations` permission. If the
  rule is a custom rule, verify that the Lambda execution
  role includes the `config:PutEvaluations`
  permission.

    *
  The rule's Lambda function has returned
  `NOT_APPLICABLE` for all evaluation results.
  This can occur if the resources were deleted or removed from
  the rule's scope.
  """
  @spec describe_compliance_by_resource(map(), describe_compliance_by_resource_request(), list()) ::
          {:ok, describe_compliance_by_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_compliance_by_resource_errors()}
  def describe_compliance_by_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeComplianceByResource", input, options)
  end

  @doc """
  Returns status information for each of your Config managed rules.

  The status includes information such as the last time Config invoked the rule,
  the last time Config failed to invoke
  the rule, and the related error for the last failure.
  """
  @spec describe_config_rule_evaluation_status(
          map(),
          describe_config_rule_evaluation_status_request(),
          list()
        ) ::
          {:ok, describe_config_rule_evaluation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_config_rule_evaluation_status_errors()}
  def describe_config_rule_evaluation_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigRuleEvaluationStatus", input, options)
  end

  @doc """
  Returns details about your Config rules.
  """
  @spec describe_config_rules(map(), describe_config_rules_request(), list()) ::
          {:ok, describe_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_config_rules_errors()}
  def describe_config_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigRules", input, options)
  end

  @doc """
  Returns status information for sources within an aggregator.

  The status includes information about the last time Config verified
  authorization between the source account and an aggregator account. In case of a
  failure, the status contains the related error code or message.
  """
  @spec describe_configuration_aggregator_sources_status(
          map(),
          describe_configuration_aggregator_sources_status_request(),
          list()
        ) ::
          {:ok, describe_configuration_aggregator_sources_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_aggregator_sources_status_errors()}
  def describe_configuration_aggregator_sources_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeConfigurationAggregatorSourcesStatus",
      input,
      options
    )
  end

  @doc """
  Returns the details of one or more configuration aggregators.

  If the configuration aggregator is not specified, this operation
  returns the details for all the configuration aggregators associated
  with the account.
  """
  @spec describe_configuration_aggregators(
          map(),
          describe_configuration_aggregators_request(),
          list()
        ) ::
          {:ok, describe_configuration_aggregators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_aggregators_errors()}
  def describe_configuration_aggregators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurationAggregators", input, options)
  end

  @doc """
  Returns the current status of the configuration
  recorder you specify as well as the status of the last recording event for the
  configuration recorders.

  For a detailed status of recording events over time, add your Config events to
  Amazon CloudWatch metrics and use CloudWatch metrics.

  If a configuration recorder is not specified, this operation returns the status
  for the customer managed configuration recorder configured for the
  account, if applicable.

  When making a request to this operation, you can only specify one configuration
  recorder.
  """
  @spec describe_configuration_recorder_status(
          map(),
          describe_configuration_recorder_status_request(),
          list()
        ) ::
          {:ok, describe_configuration_recorder_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_recorder_status_errors()}
  def describe_configuration_recorder_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurationRecorderStatus", input, options)
  end

  @doc """
  Returns details for the configuration recorder you specify.

  If a configuration recorder is not specified, this operation returns details for
  the customer managed configuration recorder configured for the
  account, if applicable.

  When making a request to this operation, you can only specify one configuration
  recorder.
  """
  @spec describe_configuration_recorders(
          map(),
          describe_configuration_recorders_request(),
          list()
        ) ::
          {:ok, describe_configuration_recorders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_recorders_errors()}
  def describe_configuration_recorders(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurationRecorders", input, options)
  end

  @doc """
  Returns compliance details for each rule in that conformance pack.

  You must provide exact rule names.
  """
  @spec describe_conformance_pack_compliance(
          map(),
          describe_conformance_pack_compliance_request(),
          list()
        ) ::
          {:ok, describe_conformance_pack_compliance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_conformance_pack_compliance_errors()}
  def describe_conformance_pack_compliance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConformancePackCompliance", input, options)
  end

  @doc """
  Provides one or more conformance packs deployment status.

  If there are no conformance packs then you will see an empty result.
  """
  @spec describe_conformance_pack_status(
          map(),
          describe_conformance_pack_status_request(),
          list()
        ) ::
          {:ok, describe_conformance_pack_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_conformance_pack_status_errors()}
  def describe_conformance_pack_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConformancePackStatus", input, options)
  end

  @doc """
  Returns a list of one or more conformance packs.
  """
  @spec describe_conformance_packs(map(), describe_conformance_packs_request(), list()) ::
          {:ok, describe_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_conformance_packs_errors()}
  def describe_conformance_packs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConformancePacks", input, options)
  end

  @doc """
  Returns the current status of the specified delivery channel.

  If a delivery channel is not specified, this operation returns the
  current status of all delivery channels associated with the
  account.

  Currently, you can specify only one delivery channel per
  region in your account.
  """
  @spec describe_delivery_channel_status(
          map(),
          describe_delivery_channel_status_request(),
          list()
        ) ::
          {:ok, describe_delivery_channel_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_delivery_channel_status_errors()}
  def describe_delivery_channel_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDeliveryChannelStatus", input, options)
  end

  @doc """
  Returns details about the specified delivery channel.

  If a
  delivery channel is not specified, this operation returns the details
  of all delivery channels associated with the account.

  Currently, you can specify only one delivery channel per
  region in your account.
  """
  @spec describe_delivery_channels(map(), describe_delivery_channels_request(), list()) ::
          {:ok, describe_delivery_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_delivery_channels_errors()}
  def describe_delivery_channels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDeliveryChannels", input, options)
  end

  @doc """
  Provides organization Config rule deployment status for an organization.

  The status is not considered successful until organization Config rule is
  successfully deployed in all the member
  accounts with an exception of excluded accounts.

  When you specify the limit and the next token, you receive a paginated response.
  Limit and next token are not applicable if you specify organization Config rule
  names.
  It is only applicable, when you request all the organization Config rules.
  """
  @spec describe_organization_config_rule_statuses(
          map(),
          describe_organization_config_rule_statuses_request(),
          list()
        ) ::
          {:ok, describe_organization_config_rule_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_config_rule_statuses_errors()}
  def describe_organization_config_rule_statuses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrganizationConfigRuleStatuses", input, options)
  end

  @doc """
  Returns a list of organization Config rules.

  When you specify the limit and the next token, you receive a paginated response.

  Limit and next token are not applicable if you specify organization Config rule
  names.
  It is only applicable, when you request all the organization Config rules.

  *For accounts within an organization*

  If you deploy an organizational rule or conformance pack in an organization
  administrator account, and then establish a delegated administrator and deploy
  an
  organizational rule or conformance pack in the delegated administrator account,
  you
  won't be able to see the organizational rule or conformance pack in the
  organization
  administrator account from the delegated administrator account or see the
  organizational
  rule or conformance pack in the delegated administrator account from
  organization
  administrator account. The `DescribeOrganizationConfigRules` and
  `DescribeOrganizationConformancePacks` APIs can only see and interact with
  the organization-related resource that were deployed from within the account
  calling
  those APIs.
  """
  @spec describe_organization_config_rules(
          map(),
          describe_organization_config_rules_request(),
          list()
        ) ::
          {:ok, describe_organization_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_config_rules_errors()}
  def describe_organization_config_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrganizationConfigRules", input, options)
  end

  @doc """
  Provides organization conformance pack deployment status for an organization.

  The status is not considered successful until organization conformance pack is
  successfully
  deployed in all the member accounts with an exception of excluded accounts.

  When you specify the limit and the next token, you receive a paginated response.
  Limit and next token are not applicable if you specify organization conformance
  pack names.
  They are only applicable, when you request all the organization conformance
  packs.
  """
  @spec describe_organization_conformance_pack_statuses(
          map(),
          describe_organization_conformance_pack_statuses_request(),
          list()
        ) ::
          {:ok, describe_organization_conformance_pack_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_conformance_pack_statuses_errors()}
  def describe_organization_conformance_pack_statuses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeOrganizationConformancePackStatuses",
      input,
      options
    )
  end

  @doc """
  Returns a list of organization conformance packs.

  When you specify the limit and the next token, you receive a paginated response.

  Limit and next token are not applicable if you specify organization conformance
  packs names. They are only applicable,
  when you request all the organization conformance packs.

  *For accounts within an organization*

  If you deploy an organizational rule or conformance pack in an organization
  administrator account, and then establish a delegated administrator and deploy
  an
  organizational rule or conformance pack in the delegated administrator account,
  you
  won't be able to see the organizational rule or conformance pack in the
  organization
  administrator account from the delegated administrator account or see the
  organizational
  rule or conformance pack in the delegated administrator account from
  organization
  administrator account. The `DescribeOrganizationConfigRules` and
  `DescribeOrganizationConformancePacks` APIs can only see and interact with
  the organization-related resource that were deployed from within the account
  calling
  those APIs.
  """
  @spec describe_organization_conformance_packs(
          map(),
          describe_organization_conformance_packs_request(),
          list()
        ) ::
          {:ok, describe_organization_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_conformance_packs_errors()}
  def describe_organization_conformance_packs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrganizationConformancePacks", input, options)
  end

  @doc """
  Returns a list of all pending aggregation requests.
  """
  @spec describe_pending_aggregation_requests(
          map(),
          describe_pending_aggregation_requests_request(),
          list()
        ) ::
          {:ok, describe_pending_aggregation_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pending_aggregation_requests_errors()}
  def describe_pending_aggregation_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePendingAggregationRequests", input, options)
  end

  @doc """
  Returns the details of one or more remediation configurations.
  """
  @spec describe_remediation_configurations(
          map(),
          describe_remediation_configurations_request(),
          list()
        ) ::
          {:ok, describe_remediation_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_remediation_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRemediationConfigurations", input, options)
  end

  @doc """
  Returns the details of one or more remediation exceptions.

  A detailed view of a remediation exception for a set of resources that includes
  an explanation of an exception and the time when the exception will be deleted.
  When you specify the limit and the next token, you receive a paginated response.

  Config generates a remediation exception when a problem occurs executing a
  remediation action to a specific resource.
  Remediation exceptions blocks auto-remediation until the exception is cleared.

  When you specify the limit and the next token, you receive a paginated response.

  Limit and next token are not applicable if you request resources in batch. It is
  only applicable, when you request all resources.
  """
  @spec describe_remediation_exceptions(map(), describe_remediation_exceptions_request(), list()) ::
          {:ok, describe_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_remediation_exceptions_errors()}
  def describe_remediation_exceptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRemediationExceptions", input, options)
  end

  @doc """
  Provides a detailed view of a Remediation Execution for a set of resources
  including state, timestamps for when steps for the remediation execution occur,
  and any error messages for steps that have failed.

  When you specify the limit and the next token, you receive a paginated response.
  """
  @spec describe_remediation_execution_status(
          map(),
          describe_remediation_execution_status_request(),
          list()
        ) ::
          {:ok, describe_remediation_execution_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_remediation_execution_status_errors()}
  def describe_remediation_execution_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRemediationExecutionStatus", input, options)
  end

  @doc """
  Returns the details of one or more retention configurations.

  If
  the retention configuration name is not specified, this operation
  returns the details for all the retention configurations for that
  account.

  Currently, Config supports only one retention
  configuration per region in your account.
  """
  @spec describe_retention_configurations(
          map(),
          describe_retention_configurations_request(),
          list()
        ) ::
          {:ok, describe_retention_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_retention_configurations_errors()}
  def describe_retention_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRetentionConfigurations", input, options)
  end

  @doc """
  Removes all resource types specified in the `ResourceTypes` list from the
  [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) of configuration recorder and excludes these resource types when recording.

  For this operation, the configuration recorder must use a
  [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html)
  that is either `INCLUSION_BY_RESOURCE_TYPES` or `EXCLUSION_BY_RESOURCE_TYPES`.
  """
  @spec disassociate_resource_types(map(), disassociate_resource_types_request(), list()) ::
          {:ok, disassociate_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resource_types_errors()}
  def disassociate_resource_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateResourceTypes", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Config
  rule for a specific resource in a rule.

  The results indicate which
  Amazon Web Services resources were evaluated by the rule, when each resource was
  last evaluated, and whether each resource complies with the rule.

  The results can return an empty result page. But if you
  have a `nextToken`, the results are displayed on the next
  page.
  """
  @spec get_aggregate_compliance_details_by_config_rule(
          map(),
          get_aggregate_compliance_details_by_config_rule_request(),
          list()
        ) ::
          {:ok, get_aggregate_compliance_details_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregate_compliance_details_by_config_rule_errors()}
  def get_aggregate_compliance_details_by_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetAggregateComplianceDetailsByConfigRule",
      input,
      options
    )
  end

  @doc """
  Returns the number of compliant and noncompliant rules for one
  or more accounts and regions in an aggregator.

  The results can return an empty result page, but if you
  have a nextToken, the results are displayed on the next
  page.
  """
  @spec get_aggregate_config_rule_compliance_summary(
          map(),
          get_aggregate_config_rule_compliance_summary_request(),
          list()
        ) ::
          {:ok, get_aggregate_config_rule_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregate_config_rule_compliance_summary_errors()}
  def get_aggregate_config_rule_compliance_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAggregateConfigRuleComplianceSummary", input, options)
  end

  @doc """
  Returns the count of compliant and noncompliant conformance packs across all
  Amazon Web Services accounts and Amazon Web Services Regions in an aggregator.

  You can filter based on Amazon Web Services account ID or Amazon Web Services
  Region.

  The results can return an empty result page, but if you have a nextToken, the
  results are displayed on the next page.
  """
  @spec get_aggregate_conformance_pack_compliance_summary(
          map(),
          get_aggregate_conformance_pack_compliance_summary_request(),
          list()
        ) ::
          {:ok, get_aggregate_conformance_pack_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregate_conformance_pack_compliance_summary_errors()}
  def get_aggregate_conformance_pack_compliance_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetAggregateConformancePackComplianceSummary",
      input,
      options
    )
  end

  @doc """
  Returns the resource counts across accounts and regions that are present in your
  Config aggregator.

  You can request the resource counts by providing filters and GroupByKey.

  For example, if the input contains accountID 12345678910 and region us-east-1 in
  filters, the API returns the count of resources in account ID 12345678910 and
  region us-east-1.
  If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource
  counts for all source accounts that are present in your aggregator.
  """
  @spec get_aggregate_discovered_resource_counts(
          map(),
          get_aggregate_discovered_resource_counts_request(),
          list()
        ) ::
          {:ok, get_aggregate_discovered_resource_counts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregate_discovered_resource_counts_errors()}
  def get_aggregate_discovered_resource_counts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAggregateDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns configuration item that is aggregated for your specific resource in a
  specific source account and region.

  The API does not return results for deleted resources.
  """
  @spec get_aggregate_resource_config(map(), get_aggregate_resource_config_request(), list()) ::
          {:ok, get_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aggregate_resource_config_errors()}
  def get_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Config
  rule.

  The results indicate which Amazon Web Services resources were evaluated by the
  rule, when each resource was last evaluated, and whether each
  resource complies with the rule.
  """
  @spec get_compliance_details_by_config_rule(
          map(),
          get_compliance_details_by_config_rule_request(),
          list()
        ) ::
          {:ok, get_compliance_details_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compliance_details_by_config_rule_errors()}
  def get_compliance_details_by_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceDetailsByConfigRule", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Amazon Web Services resource.

  The results indicate which Config rules were used to evaluate
  the resource, when each rule was last invoked, and whether the resource
  complies with each rule.
  """
  @spec get_compliance_details_by_resource(
          map(),
          get_compliance_details_by_resource_request(),
          list()
        ) ::
          {:ok, get_compliance_details_by_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compliance_details_by_resource_errors()}
  def get_compliance_details_by_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceDetailsByResource", input, options)
  end

  @doc """
  Returns the number of Config rules that are compliant and
  noncompliant, up to a maximum of 25 for each.
  """
  @spec get_compliance_summary_by_config_rule(map(), %{}, list()) ::
          {:ok, get_compliance_summary_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_compliance_summary_by_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceSummaryByConfigRule", input, options)
  end

  @doc """
  Returns the number of resources that are compliant and the
  number that are noncompliant.

  You can specify one or more resource
  types to get these numbers for each resource type. The maximum
  number returned is 100.
  """
  @spec get_compliance_summary_by_resource_type(
          map(),
          get_compliance_summary_by_resource_type_request(),
          list()
        ) ::
          {:ok, get_compliance_summary_by_resource_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compliance_summary_by_resource_type_errors()}
  def get_compliance_summary_by_resource_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceSummaryByResourceType", input, options)
  end

  @doc """
  Returns compliance details of a conformance pack for all Amazon Web Services
  resources that are monitered by conformance pack.
  """
  @spec get_conformance_pack_compliance_details(
          map(),
          get_conformance_pack_compliance_details_request(),
          list()
        ) ::
          {:ok, get_conformance_pack_compliance_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_conformance_pack_compliance_details_errors()}
  def get_conformance_pack_compliance_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConformancePackComplianceDetails", input, options)
  end

  @doc """
  Returns compliance details for the conformance pack based on the cumulative
  compliance results of all the rules in that conformance pack.
  """
  @spec get_conformance_pack_compliance_summary(
          map(),
          get_conformance_pack_compliance_summary_request(),
          list()
        ) ::
          {:ok, get_conformance_pack_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_conformance_pack_compliance_summary_errors()}
  def get_conformance_pack_compliance_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConformancePackComplianceSummary", input, options)
  end

  @doc """
  Returns the policy definition containing the logic for your Config Custom Policy
  rule.
  """
  @spec get_custom_rule_policy(map(), get_custom_rule_policy_request(), list()) ::
          {:ok, get_custom_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_custom_rule_policy_errors()}
  def get_custom_rule_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomRulePolicy", input, options)
  end

  @doc """
  Returns the resource types, the number of each resource type,
  and the total number of resources that Config is recording in
  this region for your Amazon Web Services account.

  ## Example

    1.
  Config is recording three resource types in the US
  East (Ohio) Region for your account: 25 EC2 instances, 20
  IAM users, and 15 S3 buckets.

    2.
  You make a call to the
  `GetDiscoveredResourceCounts` action and
  specify that you want all resource types.

    3.
  Config returns the following:

      *
  The resource types (EC2 instances, IAM users,
  and S3 buckets).

      *
  The number of each resource type (25, 20, and
  15).

      *
  The total number of all resources
  (60).

  The response is paginated. By default, Config lists 100
  `ResourceCount` objects on each page. You can
  customize this number with the `limit` parameter. The
  response includes a `nextToken` string. To get the next
  page of results, run the request again and specify the string for
  the `nextToken` parameter.

  If you make a call to the `GetDiscoveredResourceCounts` action, you might
  not immediately receive resource counts in the following
  situations:

    
  You are a new Config customer.

    
  You just enabled resource recording.

  It might take a few minutes for Config to record and
  count your resources. Wait a few minutes and then retry the
  `GetDiscoveredResourceCounts` action.
  """
  @spec get_discovered_resource_counts(map(), get_discovered_resource_counts_request(), list()) ::
          {:ok, get_discovered_resource_counts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_discovered_resource_counts_errors()}
  def get_discovered_resource_counts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization Config rule.
  """
  @spec get_organization_config_rule_detailed_status(
          map(),
          get_organization_config_rule_detailed_status_request(),
          list()
        ) ::
          {:ok, get_organization_config_rule_detailed_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_organization_config_rule_detailed_status_errors()}
  def get_organization_config_rule_detailed_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOrganizationConfigRuleDetailedStatus", input, options)
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization conformance pack.
  """
  @spec get_organization_conformance_pack_detailed_status(
          map(),
          get_organization_conformance_pack_detailed_status_request(),
          list()
        ) ::
          {:ok, get_organization_conformance_pack_detailed_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_organization_conformance_pack_detailed_status_errors()}
  def get_organization_conformance_pack_detailed_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetOrganizationConformancePackDetailedStatus",
      input,
      options
    )
  end

  @doc """
  Returns the policy definition containing the logic for your organization Config
  Custom Policy rule.
  """
  @spec get_organization_custom_rule_policy(
          map(),
          get_organization_custom_rule_policy_request(),
          list()
        ) ::
          {:ok, get_organization_custom_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_organization_custom_rule_policy_errors()}
  def get_organization_custom_rule_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOrganizationCustomRulePolicy", input, options)
  end

  @doc """

  For accurate reporting on the compliance status, you must record the
  `AWS::Config::ResourceCompliance` resource type.

  For more information, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).

  Returns a list of `ConfigurationItems` for the specified resource.
  The list contains details about each state of the resource
  during the specified time interval. If you specified a retention
  period to retain your `ConfigurationItems` between a
  minimum of 30 days and a maximum of 7 years (2557 days), Config
  returns the `ConfigurationItems` for the specified
  retention period.

  The response is paginated. By default, Config returns a
  limit of 10 configuration items per page. You can customize this
  number with the `limit` parameter. The response includes
  a `nextToken` string. To get the next page of results,
  run the request again and specify the string for the
  `nextToken` parameter.

  Each call to the API is limited to span a duration of seven
  days. It is likely that the number of records returned is
  smaller than the specified `limit`. In such cases,
  you can make another call, using the
  `nextToken`.
  """
  @spec get_resource_config_history(map(), get_resource_config_history_request(), list()) ::
          {:ok, get_resource_config_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_config_history_errors()}
  def get_resource_config_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceConfigHistory", input, options)
  end

  @doc """
  Returns a summary of resource evaluation for the specified resource evaluation
  ID from the proactive rules that were run.

  The results indicate which evaluation context was used to evaluate the rules,
  which resource details were evaluated,
  the evaluation mode that was run, and whether the resource details comply with
  the configuration of the proactive rules.

  To see additional information about the evaluation result, such as which rule
  flagged a resource as NON_COMPLIANT, use the
  [GetComplianceDetailsByResource](https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html) API.
  For more information, see the
  [Examples](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples)
  section.
  """
  @spec get_resource_evaluation_summary(map(), get_resource_evaluation_summary_request(), list()) ::
          {:ok, get_resource_evaluation_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_evaluation_summary_errors()}
  def get_resource_evaluation_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceEvaluationSummary", input, options)
  end

  @doc """
  Returns the details of a specific stored query.
  """
  @spec get_stored_query(map(), get_stored_query_request(), list()) ::
          {:ok, get_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stored_query_errors()}
  def get_stored_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStoredQuery", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers that are
  aggregated for a specific resource type across accounts and regions.

  A resource identifier includes the resource type, ID, (if available) the custom
  resource name, source account, and source region.
  You can narrow the results to include only resources that have specific resource
  IDs, or a resource name, or source account ID, or source region.

  For example, if the input consists of accountID 12345678910 and the region is
  us-east-1 for resource type `AWS::EC2::Instance` then the API returns all the
  EC2 instance identifiers of accountID 12345678910 and region us-east-1.
  """
  @spec list_aggregate_discovered_resources(
          map(),
          list_aggregate_discovered_resources_request(),
          list()
        ) ::
          {:ok, list_aggregate_discovered_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aggregate_discovered_resources_errors()}
  def list_aggregate_discovered_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAggregateDiscoveredResources", input, options)
  end

  @doc """
  Returns a list of configuration recorders depending on the filters you specify.
  """
  @spec list_configuration_recorders(map(), list_configuration_recorders_request(), list()) ::
          {:ok, list_configuration_recorders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_recorders_errors()}
  def list_configuration_recorders(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConfigurationRecorders", input, options)
  end

  @doc """
  Returns a list of conformance pack compliance scores.

  A compliance score is the percentage of the number of compliant rule-resource
  combinations in a conformance pack compared to the number of total possible
  rule-resource combinations in the conformance pack.
  This metric provides you with a high-level view of the compliance state of your
  conformance packs. You can use it to identify, investigate, and understand
  the level of compliance in your conformance packs.

  Conformance packs with no evaluation results will have a compliance score of
  `INSUFFICIENT_DATA`.
  """
  @spec list_conformance_pack_compliance_scores(
          map(),
          list_conformance_pack_compliance_scores_request(),
          list()
        ) ::
          {:ok, list_conformance_pack_compliance_scores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_conformance_pack_compliance_scores_errors()}
  def list_conformance_pack_compliance_scores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConformancePackComplianceScores", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource
  identifiers for the resources of that type.

  A resource identifier
  includes the resource type, ID, and (if available) the custom
  resource name. The results consist of resources that Config has
  discovered, including those that Config is not currently
  recording. You can narrow the results to include only resources that
  have specific resource IDs or a resource name.

  You can specify either resource IDs or a resource name, but
  not both, in the same request.

  The response is paginated. By default, Config lists 100
  resource identifiers on each page. You can customize this number
  with the `limit` parameter. The response includes a
  `nextToken` string. To get the next page of results,
  run the request again and specify the string for the
  `nextToken` parameter.
  """
  @spec list_discovered_resources(map(), list_discovered_resources_request(), list()) ::
          {:ok, list_discovered_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_discovered_resources_errors()}
  def list_discovered_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDiscoveredResources", input, options)
  end

  @doc """
  Returns a list of proactive resource evaluations.
  """
  @spec list_resource_evaluations(map(), list_resource_evaluations_request(), list()) ::
          {:ok, list_resource_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_evaluations_errors()}
  def list_resource_evaluations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceEvaluations", input, options)
  end

  @doc """
  Lists the stored queries for a single Amazon Web Services account and a single
  Amazon Web Services Region.

  The default is 100.
  """
  @spec list_stored_queries(map(), list_stored_queries_request(), list()) ::
          {:ok, list_stored_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_stored_queries_errors()}
  def list_stored_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStoredQueries", input, options)
  end

  @doc """
  List the tags for Config resource.
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
  Authorizes the aggregator account and region to collect data
  from the source account and region.

  ## Tags are added at creation and cannot be updated with this operation

  `PutAggregationAuthorization` is an idempotent API. Subsequent requests won’t
  create a duplicate resource if one was already created. If a following request
  has different `tags` values,
  Config will ignore these differences and treat it as an idempotent request of
  the previous. In this case, `tags` will not be updated, even if they are
  different.

  Use
  [TagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
  to update tags after creation.
  """
  @spec put_aggregation_authorization(map(), put_aggregation_authorization_request(), list()) ::
          {:ok, put_aggregation_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_aggregation_authorization_errors()}
  def put_aggregation_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAggregationAuthorization", input, options)
  end

  @doc """
  Adds or updates an Config rule to evaluate if your
  Amazon Web Services resources comply with your desired configurations.

  For information on how many Config rules you can have per account,
  see [
  ## Service Limits
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in
  the *Config Developer Guide*.

  There are two types of rules: *Config Managed Rules* and *Config Custom Rules*.
  You can use `PutConfigRule` to create both Config Managed Rules and Config
  Custom Rules.

  Config Managed Rules are predefined,
  customizable rules created by Config. For a list of managed rules, see
  [List of Config Managed
  Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  If you are adding an Config managed rule, you must specify the
  rule's identifier for the `SourceIdentifier` key.

  Config Custom Rules are rules that you create from scratch. There are two ways
  to create Config custom rules: with Lambda functions
  ([ Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function))
  and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a
  policy-as-code language.

  Config custom rules created with Lambda
  are called *Config Custom Lambda Rules* and Config custom rules created with
  Guard are called *Config Custom Policy Rules*.

  If you are adding a new Config Custom Lambda rule,
  you first need to create an Lambda function that the rule invokes to evaluate
  your resources. When you use `PutConfigRule` to add a Custom Lambda rule to
  Config, you must specify the Amazon Resource
  Name (ARN) that Lambda assigns to the function. You specify the ARN
  in the `SourceIdentifier` key. This key is part of the
  `Source` object, which is part of the
  `ConfigRule` object.

  For any new Config rule that you add, specify the
  `ConfigRuleName` in the `ConfigRule`
  object. Do not specify the `ConfigRuleArn` or the
  `ConfigRuleId`. These values are generated by Config for new rules.

  If you are updating a rule that you added previously, you can
  specify the rule by `ConfigRuleName`,
  `ConfigRuleId`, or `ConfigRuleArn` in the
  `ConfigRule` data type that you use in this
  request.

  For more information about developing and using Config
  rules, see [Evaluating Resources with Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
  in the *Config Developer Guide*.

  ## Tags are added at creation and cannot be updated with this operation

  `PutConfigRule` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if one was already created. If a following request has
  different `tags` values,
  Config will ignore these differences and treat it as an idempotent request of
  the previous. In this case, `tags` will not be updated, even if they are
  different.

  Use
  [TagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
  to update tags after creation.
  """
  @spec put_config_rule(map(), put_config_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_config_rule_errors()}
  def put_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConfigRule", input, options)
  end

  @doc """
  Creates and updates the configuration aggregator with the
  selected source accounts and regions.

  The source account can be
  individual account(s) or an organization.

  `accountIds` that are passed will be replaced with existing accounts.
  If you want to add additional accounts into the aggregator, call
  `DescribeConfigurationAggregators` to get the previous accounts and then append
  new ones.

  Config should be enabled in source accounts and regions
  you want to aggregate.

  If your source type is an organization, you must be signed in to the management
  account or a registered delegated administrator and all the features must be
  enabled in your organization.
  If the caller is a management account, Config calls `EnableAwsServiceAccess` API
  to enable integration between Config and Organizations.
  If the caller is a registered delegated administrator, Config calls
  `ListDelegatedAdministrators` API to verify whether the caller is a valid
  delegated administrator.

  To register a delegated administrator, see [Register a Delegated Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli)
  in the *Config developer guide*.

  ## Tags are added at creation and cannot be updated with this operation

  `PutConfigurationAggregator` is an idempotent API. Subsequent requests won’t
  create a duplicate resource if one was already created. If a following request
  has different `tags` values,
  Config will ignore these differences and treat it as an idempotent request of
  the previous. In this case, `tags` will not be updated, even if they are
  different.

  Use
  [TagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
  to update tags after creation.
  """
  @spec put_configuration_aggregator(map(), put_configuration_aggregator_request(), list()) ::
          {:ok, put_configuration_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_configuration_aggregator_errors()}
  def put_configuration_aggregator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConfigurationAggregator", input, options)
  end

  @doc """
  Creates or updates the customer managed configuration recorder.

  You can use this operation to create a new customer managed configuration
  recorder or to update the `roleARN` and the `recordingGroup` for an existing
  customer managed configuration recorder.

  To start the customer managed configuration recorder and begin recording
  configuration changes for the resource types you specify,
  use the
  [StartConfigurationRecorder](https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html) operation.

  For more information, see [
  ## Working with the Configuration Recorder
  ](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
  in the *Config Developer Guide*.

  ## One customer managed configuration recorder per account per Region

  You can create only one customer managed configuration recorder for each account
  for each Amazon Web Services Region.

  ## Default is to record all supported resource types, excluding the global IAM
  resource types

  If you have not specified values for the `recordingGroup` field, the default for
  the customer managed configuration recorder is to record all supported resource
  types, excluding the global IAM resource types: `AWS::IAM::Group`,
  `AWS::IAM::Policy`, `AWS::IAM::Role`, and `AWS::IAM::User`.

  ## Tags are added at creation and cannot be updated

  `PutConfigurationRecorder` is an idempotent API. Subsequent requests won’t
  create a duplicate resource if one was already created. If a following request
  has different tags values,
  Config will ignore these differences and treat it as an idempotent request of
  the previous. In this case, tags will not be updated, even if they are
  different.

  Use
  [TagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
  to update tags after creation.
  """
  @spec put_configuration_recorder(map(), put_configuration_recorder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_configuration_recorder_errors()}
  def put_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConfigurationRecorder", input, options)
  end

  @doc """
  Creates or updates a conformance pack.

  A conformance pack is a collection of Config rules that can be easily deployed
  in an account and a region and across an organization.
  For information on how many conformance packs you can have per account,
  see [
  ## Service Limits
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in
  the *Config Developer Guide*.

  This API creates a service-linked role `AWSServiceRoleForConfigConforms` in your
  account.
  The service-linked role is created only when the role does not exist in your
  account.

  You must specify only one of the follow parameters: `TemplateS3Uri`,
  `TemplateBody` or `TemplateSSMDocumentDetails`.
  """
  @spec put_conformance_pack(map(), put_conformance_pack_request(), list()) ::
          {:ok, put_conformance_pack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_conformance_pack_errors()}
  def put_conformance_pack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConformancePack", input, options)
  end

  @doc """
  Creates or updates a delivery channel to deliver configuration
  information and other compliance information.

  You can use this operation to create a new delivery channel or to update the
  Amazon S3 bucket and the
  Amazon SNS topic of an existing delivery channel.

  For more information, see [
  ## Working with the Delivery Channel
  ](https://docs.aws.amazon.com/config/latest/developerguide/manage-delivery-channel.html)
  in the *Config Developer Guide.*

  ## One delivery channel per account per Region

  You can have only one delivery channel for each account for each Amazon Web
  Services Region.
  """
  @spec put_delivery_channel(map(), put_delivery_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_delivery_channel_errors()}
  def put_delivery_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutDeliveryChannel", input, options)
  end

  @doc """
  Used by an Lambda function to deliver evaluation results to
  Config.

  This operation is required in every Lambda function
  that is invoked by an Config rule.
  """
  @spec put_evaluations(map(), put_evaluations_request(), list()) ::
          {:ok, put_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_evaluations_errors()}
  def put_evaluations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutEvaluations", input, options)
  end

  @doc """
  Add or updates the evaluations for process checks.

  This API checks if the rule is a process check when the name of the Config rule
  is provided.
  """
  @spec put_external_evaluation(map(), put_external_evaluation_request(), list()) ::
          {:ok, put_external_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_external_evaluation_errors()}
  def put_external_evaluation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutExternalEvaluation", input, options)
  end

  @doc """
  Adds or updates an Config rule for your entire organization to evaluate if your
  Amazon Web Services resources comply with your
  desired configurations.

  For information on how many organization Config rules you can have per account,
  see [
  ## Service Limits
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in
  the *Config Developer Guide*.

  Only a management account and a delegated administrator can create or update an
  organization Config rule.
  When calling this API with a delegated administrator, you must ensure
  Organizations
  `ListDelegatedAdministrator` permissions are added. An organization can have up
  to 3 delegated administrators.

  This API enables organization service access through the
  `EnableAWSServiceAccess` action and creates a service-linked
  role `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated
  administrator account of your organization.
  The service-linked role is created only when the role does not exist in the
  caller account.
  Config verifies the existence of role with `GetRole` action.

  To use this API with delegated administrator, register a delegated administrator
  by calling Amazon Web Services Organization
  `register-delegated-administrator` for `config-multiaccountsetup.amazonaws.com`.

  There are two types of rules: *Config Managed Rules* and *Config Custom Rules*.
  You can use `PutOrganizationConfigRule` to create both Config Managed Rules and
  Config Custom Rules.

  Config Managed Rules are predefined,
  customizable rules created by Config. For a list of managed rules, see
  [List of Config Managed
  Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  If you are adding an Config managed rule, you must specify the rule's identifier
  for the `RuleIdentifier` key.

  Config Custom Rules are rules that you create from scratch. There are two ways
  to create Config custom rules: with Lambda functions
  ([ Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function))
  and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a
  policy-as-code language.

  Config custom rules created with Lambda
  are called *Config Custom Lambda Rules* and Config custom rules created with
  Guard are called *Config Custom Policy Rules*.

  If you are adding a new Config Custom Lambda rule, you first need to create an
  Lambda function in the management account or a delegated
  administrator that the rule invokes to evaluate your resources. You also need to
  create an IAM role in the managed account that can be assumed by the Lambda
  function.
  When you use `PutOrganizationConfigRule` to add a Custom Lambda rule to Config,
  you must
  specify the Amazon Resource Name (ARN) that Lambda assigns to the function.

  Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in
  an organization.

  Make sure to specify one of either `OrganizationCustomPolicyRuleMetadata` for
  Custom Policy rules, `OrganizationCustomRuleMetadata` for Custom Lambda rules,
  or `OrganizationManagedRuleMetadata` for managed rules.
  """
  @spec put_organization_config_rule(map(), put_organization_config_rule_request(), list()) ::
          {:ok, put_organization_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_organization_config_rule_errors()}
  def put_organization_config_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutOrganizationConfigRule", input, options)
  end

  @doc """
  Deploys conformance packs across member accounts in an Amazon Web Services
  Organization.

  For information on how many organization conformance packs and how many Config
  rules you can have per account,
  see [
  ## Service Limits
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in
  the *Config Developer Guide*.

  Only a management account and a delegated administrator can call this API.
  When calling this API with a delegated administrator, you must ensure
  Organizations
  `ListDelegatedAdministrator` permissions are added. An organization can have up
  to 3 delegated administrators.

  This API enables organization service access for
  `config-multiaccountsetup.amazonaws.com`
  through the `EnableAWSServiceAccess` action and creates a
  service-linked role `AWSServiceRoleForConfigMultiAccountSetup` in the management
  or delegated administrator account of your organization.
  The service-linked role is created only when the role does not exist in the
  caller account.
  To use this API with delegated administrator, register a delegated administrator
  by calling Amazon Web Services Organization
  `register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.

  Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in
  an organization.

  You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but
  not both.
  If you provide both Config uses the `TemplateS3Uri` parameter and ignores the
  `TemplateBody` parameter.

  Config sets the state of a conformance pack to CREATE_IN_PROGRESS and
  UPDATE_IN_PROGRESS until the conformance pack is created or updated.
  You cannot update a conformance pack while it is in this state.
  """
  @spec put_organization_conformance_pack(
          map(),
          put_organization_conformance_pack_request(),
          list()
        ) ::
          {:ok, put_organization_conformance_pack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_organization_conformance_pack_errors()}
  def put_organization_conformance_pack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutOrganizationConformancePack", input, options)
  end

  @doc """
  Adds or updates the remediation configuration with a specific Config rule with
  the
  selected target or action.

  The API creates the `RemediationConfiguration` object for the Config rule.
  The Config rule must already exist for you to add a remediation configuration.
  The target (SSM document) must exist and have permissions to use the target.

  ## Be aware of backward incompatible changes

  If you make backward incompatible changes to the SSM document,
  you must call this again to ensure the remediations can run.

  This API does not support adding remediation configurations for service-linked
  Config Rules such as Organization Config rules,
  the rules deployed by conformance packs, and rules deployed by Amazon Web
  Services Security Hub.

  ## Required fields

  For manual remediation configuration, you need to provide a value for
  `automationAssumeRole` or use a value in the `assumeRole`field to remediate your
  resources. The SSM automation document can use either as long as it maps to a
  valid parameter.

  However, for automatic remediation configuration, the only valid `assumeRole`
  field value is `AutomationAssumeRole` and you need to provide a value for
  `AutomationAssumeRole` to remediate your resources.

  ## Auto remediation can be initiated even for compliant resources

  If you enable auto remediation for a specific Config rule using the
  [PutRemediationConfigurations](https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html)
  API or the Config console,
  it initiates the remediation process for all non-compliant resources for that
  specific rule.
  The auto remediation process relies on the compliance data snapshot which is
  captured on a periodic basis.
  Any non-compliant resource that is updated between the snapshot schedule will
  continue to be remediated based on the last known compliance data snapshot.

  This means that in some cases auto remediation can be initiated even for
  compliant resources, since the bootstrap processor uses a database that can have
  stale evaluation results based on the last known compliance data snapshot.
  """
  @spec put_remediation_configurations(map(), put_remediation_configurations_request(), list()) ::
          {:ok, put_remediation_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_remediation_configurations_errors()}
  def put_remediation_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRemediationConfigurations", input, options)
  end

  @doc """
  A remediation exception is when a specified resource is no longer considered for
  auto-remediation.

  This API adds a new exception or updates an existing exception for a specified
  resource with a specified Config rule.

  ## Exceptions block auto remediation

  Config generates a remediation exception when a problem occurs running a
  remediation action for a specified resource.
  Remediation exceptions blocks auto-remediation until the exception is cleared.

  ## Manual remediation is recommended when placing an exception

  When placing an exception on an Amazon Web Services resource, it is recommended
  that remediation is set as manual remediation until
  the given Config rule for the specified resource evaluates the resource as
  `NON_COMPLIANT`.
  Once the resource has been evaluated as `NON_COMPLIANT`, you can add remediation
  exceptions and change the remediation type back from Manual to Auto if you want
  to use auto-remediation.
  Otherwise, using auto-remediation before a `NON_COMPLIANT` evaluation result can
  delete resources before the exception is applied.

  ## Exceptions can only be performed on non-compliant resources

  Placing an exception can only be performed on resources that are
  `NON_COMPLIANT`.
  If you use this API for `COMPLIANT` resources or resources that are
  `NOT_APPLICABLE`, a remediation exception will not be generated.
  For more information on the conditions that initiate the possible Config
  evaluation results,
  see [Concepts | Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules)
  in the *Config Developer Guide*.

  ## Exceptions cannot be placed on service-linked remediation actions

  You cannot place an exception on service-linked remediation actions, such as
  remediation actions put by an organizational conformance pack.

  ## Auto remediation can be initiated even for compliant resources

  If you enable auto remediation for a specific Config rule using the
  [PutRemediationConfigurations](https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html)
  API or the Config console,
  it initiates the remediation process for all non-compliant resources for that
  specific rule.
  The auto remediation process relies on the compliance data snapshot which is
  captured on a periodic basis.
  Any non-compliant resource that is updated between the snapshot schedule will
  continue to be remediated based on the last known compliance data snapshot.

  This means that in some cases auto remediation can be initiated even for
  compliant resources, since the bootstrap processor uses a database that can have
  stale evaluation results based on the last known compliance data snapshot.
  """
  @spec put_remediation_exceptions(map(), put_remediation_exceptions_request(), list()) ::
          {:ok, put_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_remediation_exceptions_errors()}
  def put_remediation_exceptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for the resource provided in the request.

  The configuration state of a resource is represented in Config as Configuration
  Items.
  Once this API records the configuration item, you can retrieve the list of
  configuration items for the custom resource type using existing Config APIs.

  The custom resource type must be registered with CloudFormation. This API
  accepts the configuration item registered with CloudFormation.

  When you call this API, Config only stores configuration state of the resource
  provided in the request. This API does not change or remediate the configuration
  of the resource.

  Write-only schema properites are not recorded as part of the published
  configuration item.
  """
  @spec put_resource_config(map(), put_resource_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_config_errors()}
  def put_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourceConfig", input, options)
  end

  @doc """
  Creates and updates the retention configuration with details
  about retention period (number of days) that Config stores your
  historical information.

  The API creates the
  `RetentionConfiguration` object and names the object
  as **default**. When you have a
  `RetentionConfiguration` object named **default**, calling the API modifies the
  default object.

  Currently, Config supports only one retention
  configuration per region in your account.
  """
  @spec put_retention_configuration(map(), put_retention_configuration_request(), list()) ::
          {:ok, put_retention_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_retention_configuration_errors()}
  def put_retention_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRetentionConfiguration", input, options)
  end

  @doc """
  Creates a service-linked configuration recorder that is linked to a specific
  Amazon Web Services service based on the `ServicePrincipal` you specify.

  The configuration recorder's `name`, `recordingGroup`, `recordingMode`, and
  `recordingScope` is set by the service that is linked to the configuration
  recorder.

  For more information, see [
  ## Working with the Configuration Recorder
  ](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
  in the *Config Developer Guide*.

  This API creates a service-linked role `AWSServiceRoleForConfig` in your
  account. The service-linked role is created only when the role does not exist in
  your account.

  ## The recording scope determines if you receive configuration items

  The recording scope is set by the service that is linked to the configuration
  recorder and determines whether you receive configuration items (CIs) in the
  delivery channel. If the recording scope is internal, you will not receive CIs
  in the delivery channel.

  ## Tags are added at creation and cannot be updated with this operation

  Use
  [TagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html)
  to update tags after creation.
  """
  @spec put_service_linked_configuration_recorder(
          map(),
          put_service_linked_configuration_recorder_request(),
          list()
        ) ::
          {:ok, put_service_linked_configuration_recorder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_service_linked_configuration_recorder_errors()}
  def put_service_linked_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutServiceLinkedConfigurationRecorder", input, options)
  end

  @doc """
  Saves a new query or updates an existing saved query.

  The `QueryName` must be unique for a single Amazon Web Services account and a
  single Amazon Web Services Region.
  You can create upto 300 queries in a single Amazon Web Services account and a
  single Amazon Web Services Region.

  ## Tags are added at creation and cannot be updated

  `PutStoredQuery` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if one was already created. If a following request has
  different `tags` values,
  Config will ignore these differences and treat it as an idempotent request of
  the previous. In this case, `tags` will not be updated, even if they are
  different.
  """
  @spec put_stored_query(map(), put_stored_query_request(), list()) ::
          {:ok, put_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_stored_query_errors()}
  def put_stored_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutStoredQuery", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) SELECT command and an aggregator to
  query configuration state of Amazon Web Services resources across multiple
  accounts and regions,
  performs the corresponding search, and returns resource configurations matching
  the properties.

  For more information about query components, see the
  [
  ## Query Components
  ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
  section in the *Config Developer Guide*.

  If you run an aggregation query (i.e., using `GROUP BY` or using aggregate
  functions such as `COUNT`; e.g., `SELECT resourceId, COUNT(*) WHERE resourceType
  = 'AWS::IAM::Role' GROUP BY resourceId`)
  and do not specify the `MaxResults` or the `Limit` query parameters, the default
  page size is set to 500.

  If you run a non-aggregation query (i.e., not using `GROUP BY` or aggregate
  function; e.g., `SELECT * WHERE resourceType = 'AWS::IAM::Role'`)
  and do not specify the `MaxResults` or the `Limit` query parameters, the default
  page size is set to 25.
  """
  @spec select_aggregate_resource_config(
          map(),
          select_aggregate_resource_config_request(),
          list()
        ) ::
          {:ok, select_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, select_aggregate_resource_config_errors()}
  def select_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SelectAggregateResourceConfig", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) `SELECT` command, performs the
  corresponding search, and returns resource configurations matching the
  properties.

  For more information about query components, see the
  [
  ## Query Components
  ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
  section in the *Config Developer Guide*.
  """
  @spec select_resource_config(map(), select_resource_config_request(), list()) ::
          {:ok, select_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, select_resource_config_errors()}
  def select_resource_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SelectResourceConfig", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified Config rules
  against the last known configuration state of the resources.

  Use
  `StartConfigRulesEvaluation` when you want to test
  that a rule you updated is working as expected.
  `StartConfigRulesEvaluation` does not re-record the
  latest configuration state for your resources. It re-runs an
  evaluation against the last known state of your resources.

  You can specify up to 25 Config rules per request.

  An existing `StartConfigRulesEvaluation` call for
  the specified rules must complete before you can call the API again.
  If you chose to have Config stream to an Amazon SNS topic, you
  will receive a `ConfigRuleEvaluationStarted` notification
  when the evaluation starts.

  You don't need to call the
  `StartConfigRulesEvaluation` API to run an
  evaluation for a new rule. When you create a rule, Config
  evaluates your resources against the rule automatically.

  The `StartConfigRulesEvaluation` API is useful if
  you want to run on-demand evaluations, such as the following
  example:

    1.
  You have a custom rule that evaluates your IAM
  resources every 24 hours.

    2.
  You update your Lambda function to add additional
  conditions to your rule.

    3.
  Instead of waiting for the next periodic evaluation,
  you call the `StartConfigRulesEvaluation`
  API.

    4.
  Config invokes your Lambda function and evaluates
  your IAM resources.

    5.
  Your custom rule will still run periodic evaluations
  every 24 hours.
  """
  @spec start_config_rules_evaluation(map(), start_config_rules_evaluation_request(), list()) ::
          {:ok, start_config_rules_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_config_rules_evaluation_errors()}
  def start_config_rules_evaluation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartConfigRulesEvaluation", input, options)
  end

  @doc """
  Starts the customer managed configuration recorder.

  The customer managed configuration recorder will begin recording configuration
  changes for the resource types you specify.

  You must have created a delivery channel to
  successfully start the customer managed configuration recorder. You can use the
  [PutDeliveryChannel](https://docs.aws.amazon.com/config/latest/APIReference/API_PutDeliveryChannel.html)
  operation to create a delivery channel.
  """
  @spec start_configuration_recorder(map(), start_configuration_recorder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_configuration_recorder_errors()}
  def start_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartConfigurationRecorder", input, options)
  end

  @doc """
  Runs an on-demand remediation for the specified Config rules against the last
  known remediation configuration.

  It runs an execution against the current state of your resources. Remediation
  execution is asynchronous.

  You can specify up to 100 resource keys per request. An existing
  StartRemediationExecution call for the specified resource keys must complete
  before you can call the API again.
  """
  @spec start_remediation_execution(map(), start_remediation_execution_request(), list()) ::
          {:ok, start_remediation_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_remediation_execution_errors()}
  def start_remediation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartRemediationExecution", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified resource to determine whether the
  resource details will comply with configured Config rules.

  You can also use it for evaluation purposes. Config recommends using an
  evaluation context. It runs an execution against the resource details with all
  of the Config rules in your account that match with the specified proactive mode
  and resource type.

  Ensure you have the `cloudformation:DescribeType` role setup to validate the
  resource type schema.

  You can find the
  [Resource type schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html)
  in "*Amazon Web Services public extensions*" within the CloudFormation registry
  or with the following CLI commmand:
  `aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type
  RESOURCE`.

  For more information, see [Managing extensions through the CloudFormation registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view)
  and [Amazon Web Services resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
  in the CloudFormation User Guide.
  """
  @spec start_resource_evaluation(map(), start_resource_evaluation_request(), list()) ::
          {:ok, start_resource_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_resource_evaluation_errors()}
  def start_resource_evaluation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartResourceEvaluation", input, options)
  end

  @doc """
  Stops the customer managed configuration recorder.

  The customer managed configuration recorder will stop recording configuration
  changes for the resource types you have specified.
  """
  @spec stop_configuration_recorder(map(), stop_configuration_recorder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_configuration_recorder_errors()}
  def stop_configuration_recorder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopConfigurationRecorder", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `ResourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed.
  If existing tags are specified, however, then their values will be updated. When
  a resource is deleted, the tags associated with that resource are deleted as
  well.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
