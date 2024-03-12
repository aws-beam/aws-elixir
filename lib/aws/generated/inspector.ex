# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Inspector do
  @moduledoc """
  Amazon Inspector

  Amazon Inspector enables you to analyze the behavior of your AWS resources and
  to
  identify potential security issues.

  For more information, see [ Amazon Inspector User Guide](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  get_telemetry_metadata_request() :: %{
    required("assessmentRunArn") => String.t()
  }
  """
  @type get_telemetry_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_attributes_from_findings_response() :: %{
    "failedItems" => map()
  }
  """
  @type remove_attributes_from_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_templates_request() :: %{
    required("assessmentTemplateArns") => list(String.t()())
  }
  """
  @type describe_assessment_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_attributes_to_findings_request() :: %{
    required("attributes") => list(attribute()()),
    required("findingArns") => list(String.t()())
  }
  """
  @type add_attributes_to_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_assessment_template_request() :: %{
    required("assessmentTemplateArn") => String.t()
  }
  """
  @type delete_assessment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_subscriptions_response() :: %{
    "nextToken" => String.t(),
    "subscriptions" => list(subscription()())
  }
  """
  @type list_event_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_assessment_template_request() :: %{
    optional("userAttributesForFindings") => list(attribute()()),
    required("assessmentTargetArn") => String.t(),
    required("assessmentTemplateName") => String.t(),
    required("durationInSeconds") => integer(),
    required("rulesPackageArns") => list(String.t()())
  }
  """
  @type create_assessment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_subscriptions_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("resourceArn") => String.t()
  }
  """
  @type list_event_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_exclusions_response() :: %{
    "exclusionArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_exclusions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  asset_attributes() :: %{
    "agentId" => String.t(),
    "amiId" => String.t(),
    "autoScalingGroup" => String.t(),
    "hostname" => String.t(),
    "ipv4Addresses" => list(String.t()()),
    "networkInterfaces" => list(network_interface()()),
    "schemaVersion" => integer(),
    "tags" => list(tag()())
  }
  """
  @type asset_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_assessment_run_request() :: %{
    optional("stopAction") => list(any()),
    required("assessmentRunArn") => String.t()
  }
  """
  @type stop_assessment_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_targets_response() :: %{
    "assessmentTargets" => list(assessment_target()()),
    "failedItems" => map()
  }
  """
  @type describe_assessment_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_resource_group_response() :: %{
    "resourceGroupArn" => String.t()
  }
  """
  @type create_resource_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  no_such_entity_exception() :: %{
    "canRetry" => boolean(),
    "errorCode" => list(any()),
    "message" => String.t()
  }
  """
  @type no_such_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_assessment_target_request() :: %{
    required("assessmentTargetArn") => String.t()
  }
  """
  @type delete_assessment_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run_filter() :: %{
    "completionTimeRange" => timestamp_range(),
    "durationRange" => duration_range(),
    "namePattern" => String.t(),
    "rulesPackageArns" => list(String.t()()),
    "startTimeRange" => timestamp_range(),
    "stateChangeTimeRange" => timestamp_range(),
    "states" => list(list(any())())
  }
  """
  @type assessment_run_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_subscription() :: %{
    "event" => list(any()),
    "subscribedAt" => non_neg_integer()
  }
  """
  @type event_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_attributes_from_findings_request() :: %{
    required("attributeKeys") => list(String.t()()),
    required("findingArns") => list(String.t()())
  }
  """
  @type remove_attributes_from_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_exclusions_preview_response() :: %{
    "previewToken" => String.t()
  }
  """
  @type create_exclusions_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_interface() :: %{
    "ipv6Addresses" => list(String.t()()),
    "networkInterfaceId" => String.t(),
    "privateDnsName" => String.t(),
    "privateIpAddress" => String.t(),
    "privateIpAddresses" => list(private_ip()()),
    "publicDnsName" => String.t(),
    "publicIp" => String.t(),
    "securityGroups" => list(security_group()()),
    "subnetId" => String.t(),
    "vpcId" => String.t()
  }
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_templates_response() :: %{
    "assessmentTemplates" => list(assessment_template()()),
    "failedItems" => map()
  }
  """
  @type describe_assessment_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run_notification() :: %{
    "date" => non_neg_integer(),
    "error" => boolean(),
    "event" => list(any()),
    "message" => String.t(),
    "snsPublishStatusCode" => list(any()),
    "snsTopicArn" => String.t()
  }
  """
  @type assessment_run_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_findings_response() :: %{
    "findingArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  register_cross_account_access_role_request() :: %{
    required("roleArn") => String.t()
  }
  """
  @type register_cross_account_access_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run_agent() :: %{
    "agentHealth" => list(any()),
    "agentHealthCode" => list(any()),
    "agentHealthDetails" => String.t(),
    "agentId" => String.t(),
    "assessmentRunArn" => String.t(),
    "autoScalingGroup" => String.t(),
    "telemetryMetadata" => list(telemetry_metadata()())
  }
  """
  @type assessment_run_agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_assessment_template_response() :: %{
    "assessmentTemplateArn" => String.t()
  }
  """
  @type create_assessment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  preview_generation_in_progress_exception() :: %{
    "message" => String.t()
  }
  """
  @type preview_generation_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_packages_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_rules_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_exclusions_preview_response() :: %{
    "exclusionPreviews" => list(exclusion_preview()()),
    "nextToken" => String.t(),
    "previewStatus" => list(any())
  }
  """
  @type get_exclusions_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  exclusion() :: %{
    "arn" => String.t(),
    "attributes" => list(attribute()()),
    "description" => String.t(),
    "recommendation" => String.t(),
    "scopes" => list(scope()()),
    "title" => String.t()
  }
  """
  @type exclusion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_attributes_to_findings_response() :: %{
    "failedItems" => map()
  }
  """
  @type add_attributes_to_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_packages_response() :: %{
    "nextToken" => String.t(),
    "rulesPackageArns" => list(String.t()())
  }
  """
  @type list_rules_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_cross_account_role_exception() :: %{
    "canRetry" => boolean(),
    "errorCode" => list(any()),
    "message" => String.t()
  }
  """
  @type invalid_cross_account_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_exclusions_preview_request() :: %{
    required("assessmentTemplateArn") => String.t()
  }
  """
  @type create_exclusions_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_group_tag() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type resource_group_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_feature_exception() :: %{
    "canRetry" => boolean(),
    "message" => String.t()
  }
  """
  @type unsupported_feature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_filter() :: %{
    "agentHealthCodes" => list(list(any())()),
    "agentHealths" => list(list(any())())
  }
  """
  @type agent_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_run_agents_request() :: %{
    optional("filter") => agent_filter(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("assessmentRunArn") => String.t()
  }
  """
  @type list_assessment_run_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_targets_response() :: %{
    "assessmentTargetArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_assessment_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_templates_request() :: %{
    optional("assessmentTargetArns") => list(String.t()()),
    optional("filter") => assessment_template_filter(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_assessment_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_exclusions_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("assessmentRunArn") => String.t()
  }
  """
  @type list_exclusions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  exclusion_preview() :: %{
    "attributes" => list(attribute()()),
    "description" => String.t(),
    "recommendation" => String.t(),
    "scopes" => list(scope()()),
    "title" => String.t()
  }
  """
  @type exclusion_preview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agents_already_running_assessment_exception() :: %{
    "agents" => list(agent_already_running_assessment()()),
    "agentsTruncated" => boolean(),
    "canRetry" => boolean(),
    "message" => String.t()
  }
  """
  @type agents_already_running_assessment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_targets_request() :: %{
    required("assessmentTargetArns") => list(String.t()())
  }
  """
  @type describe_assessment_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rules_package() :: %{
    "arn" => String.t(),
    "description" => String.t(),
    "name" => String.t(),
    "provider" => String.t(),
    "version" => String.t()
  }
  """
  @type rules_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run_in_progress_exception() :: %{
    "assessmentRunArns" => list(String.t()()),
    "assessmentRunArnsTruncated" => boolean(),
    "canRetry" => boolean(),
    "message" => String.t()
  }
  """
  @type assessment_run_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_targets_request() :: %{
    optional("filter") => assessment_target_filter(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_assessment_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  finding() :: %{
    "arn" => String.t(),
    "assetAttributes" => asset_attributes(),
    "assetType" => list(any()),
    "attributes" => list(attribute()()),
    "confidence" => integer(),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "id" => String.t(),
    "indicatorOfCompromise" => boolean(),
    "numericSeverity" => float(),
    "recommendation" => String.t(),
    "schemaVersion" => integer(),
    "service" => String.t(),
    "serviceAttributes" => inspector_service_attributes(),
    "severity" => list(any()),
    "title" => String.t(),
    "updatedAt" => non_neg_integer(),
    "userAttributes" => list(attribute()())
  }
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_input_exception() :: %{
    "canRetry" => boolean(),
    "errorCode" => list(any()),
    "message" => String.t()
  }
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_exclusions_response() :: %{
    "exclusions" => map(),
    "failedItems" => map()
  }
  """
  @type describe_exclusions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_preview() :: %{
    "agentHealth" => list(any()),
    "agentId" => String.t(),
    "agentVersion" => String.t(),
    "autoScalingGroup" => String.t(),
    "hostname" => String.t(),
    "ipv4Address" => String.t(),
    "kernelVersion" => String.t(),
    "operatingSystem" => String.t()
  }
  """
  @type agent_preview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_runs_response() :: %{
    "assessmentRuns" => list(assessment_run()()),
    "failedItems" => map()
  }
  """
  @type describe_assessment_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_findings_request() :: %{
    optional("assessmentRunArns") => list(String.t()()),
    optional("filter") => finding_filter(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_run_agents_response() :: %{
    "assessmentRunAgents" => list(assessment_run_agent()()),
    "nextToken" => String.t()
  }
  """
  @type list_assessment_run_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  set_tags_for_resource_request() :: %{
    optional("tags") => list(tag()()),
    required("resourceArn") => String.t()
  }
  """
  @type set_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_assessment_report_response() :: %{
    "status" => list(any()),
    "url" => String.t()
  }
  """
  @type get_assessment_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  security_group() :: %{
    "groupId" => String.t(),
    "groupName" => String.t()
  }
  """
  @type security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_runs_request() :: %{
    optional("assessmentTemplateArns") => list(String.t()()),
    optional("filter") => assessment_run_filter(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_assessment_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_group() :: %{
    "arn" => String.t(),
    "createdAt" => non_neg_integer(),
    "tags" => list(resource_group_tag()())
  }
  """
  @type resource_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsubscribe_from_event_request() :: %{
    required("event") => list(any()),
    required("resourceArn") => String.t(),
    required("topicArn") => String.t()
  }
  """
  @type unsubscribe_from_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_assessment_run_request() :: %{
    optional("assessmentRunName") => String.t(),
    required("assessmentTemplateArn") => String.t()
  }
  """
  @type start_assessment_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_template_filter() :: %{
    "durationRange" => duration_range(),
    "namePattern" => String.t(),
    "rulesPackageArns" => list(String.t()())
  }
  """
  @type assessment_template_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scope() :: %{
    "key" => list(any()),
    "value" => String.t()
  }
  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  preview_agents_response() :: %{
    "agentPreviews" => list(agent_preview()()),
    "nextToken" => String.t()
  }
  """
  @type preview_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_assessment_target_response() :: %{
    "assessmentTargetArn" => String.t()
  }
  """
  @type create_assessment_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_temporarily_unavailable_exception() :: %{
    "canRetry" => boolean(),
    "message" => String.t()
  }
  """
  @type service_temporarily_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_assessment_run_request() :: %{
    required("assessmentRunArn") => String.t()
  }
  """
  @type delete_assessment_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_rules_packages_request() :: %{
    optional("locale") => list(any()),
    required("rulesPackageArns") => list(String.t()())
  }
  """
  @type describe_rules_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  duration_range() :: %{
    "maxSeconds" => integer(),
    "minSeconds" => integer()
  }
  """
  @type duration_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_runs_response() :: %{
    "assessmentRunArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_assessment_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inspector_service_attributes() :: %{
    "assessmentRunArn" => String.t(),
    "rulesPackageArn" => String.t(),
    "schemaVersion" => integer()
  }
  """
  @type inspector_service_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  timestamp_range() :: %{
    "beginDate" => non_neg_integer(),
    "endDate" => non_neg_integer()
  }
  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_exception() :: %{
    "canRetry" => boolean(),
    "message" => String.t()
  }
  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "canRetry" => boolean(),
    "errorCode" => list(any()),
    "message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  telemetry_metadata() :: %{
    "count" => float(),
    "dataSize" => float(),
    "messageType" => String.t()
  }
  """
  @type telemetry_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_resource_group_request() :: %{
    required("resourceGroupTags") => list(resource_group_tag()())
  }
  """
  @type create_resource_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_exclusions_request() :: %{
    optional("locale") => list(any()),
    required("exclusionArns") => list(String.t()())
  }
  """
  @type describe_exclusions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_findings_response() :: %{
    "failedItems" => map(),
    "findings" => list(finding()())
  }
  """
  @type describe_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  finding_filter() :: %{
    "agentIds" => list(String.t()()),
    "attributes" => list(attribute()()),
    "autoScalingGroups" => list(String.t()()),
    "creationTimeRange" => timestamp_range(),
    "ruleNames" => list(String.t()()),
    "rulesPackageArns" => list(String.t()()),
    "severities" => list(list(any())()),
    "userAttributes" => list(attribute()())
  }
  """
  @type finding_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_cross_account_access_role_response() :: %{
    "registeredAt" => non_neg_integer(),
    "roleArn" => String.t(),
    "valid" => boolean()
  }
  """
  @type describe_cross_account_access_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_template() :: %{
    "arn" => String.t(),
    "assessmentRunCount" => integer(),
    "assessmentTargetArn" => String.t(),
    "createdAt" => non_neg_integer(),
    "durationInSeconds" => integer(),
    "lastAssessmentRunArn" => String.t(),
    "name" => String.t(),
    "rulesPackageArns" => list(String.t()()),
    "userAttributesForFindings" => list(attribute()())
  }
  """
  @type assessment_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("resourceArn") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  preview_agents_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("previewAgentsArn") => String.t()
  }
  """
  @type preview_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  private_ip() :: %{
    "privateDnsName" => String.t(),
    "privateIpAddress" => String.t()
  }
  """
  @type private_ip() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  subscription() :: %{
    "eventSubscriptions" => list(event_subscription()()),
    "resourceArn" => String.t(),
    "topicArn" => String.t()
  }
  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_rules_packages_response() :: %{
    "failedItems" => map(),
    "rulesPackages" => list(rules_package()())
  }
  """
  @type describe_rules_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_target_filter() :: %{
    "assessmentTargetNamePattern" => String.t()
  }
  """
  @type assessment_target_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_resource_groups_response() :: %{
    "failedItems" => map(),
    "resourceGroups" => list(resource_group()())
  }
  """
  @type describe_resource_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_assessment_target_request() :: %{
    optional("resourceGroupArn") => String.t(),
    required("assessmentTargetName") => String.t()
  }
  """
  @type create_assessment_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run() :: %{
    "arn" => String.t(),
    "assessmentTemplateArn" => String.t(),
    "completedAt" => non_neg_integer(),
    "createdAt" => non_neg_integer(),
    "dataCollected" => boolean(),
    "durationInSeconds" => integer(),
    "findingCounts" => map(),
    "name" => String.t(),
    "notifications" => list(assessment_run_notification()()),
    "rulesPackageArns" => list(String.t()()),
    "startedAt" => non_neg_integer(),
    "state" => list(any()),
    "stateChangedAt" => non_neg_integer(),
    "stateChanges" => list(assessment_run_state_change()()),
    "userAttributesForFindings" => list(attribute()())
  }
  """
  @type assessment_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "canRetry" => boolean(),
    "errorCode" => list(any()),
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  subscribe_to_event_request() :: %{
    required("event") => list(any()),
    required("resourceArn") => String.t(),
    required("topicArn") => String.t()
  }
  """
  @type subscribe_to_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_assessment_templates_response() :: %{
    "assessmentTemplateArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_assessment_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_assessment_report_request() :: %{
    required("assessmentRunArn") => String.t(),
    required("reportFileFormat") => list(any()),
    required("reportType") => list(any())
  }
  """
  @type get_assessment_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_assessment_run_response() :: %{
    "assessmentRunArn" => String.t()
  }
  """
  @type start_assessment_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_findings_request() :: %{
    optional("locale") => list(any()),
    required("findingArns") => list(String.t()())
  }
  """
  @type describe_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_already_running_assessment() :: %{
    "agentId" => String.t(),
    "assessmentRunArn" => String.t()
  }
  """
  @type agent_already_running_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_telemetry_metadata_response() :: %{
    "telemetryMetadata" => list(telemetry_metadata()())
  }
  """
  @type get_telemetry_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_resource_groups_request() :: %{
    required("resourceGroupArns") => list(String.t()())
  }
  """
  @type describe_resource_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  failed_item_details() :: %{
    "failureCode" => list(any()),
    "retryable" => boolean()
  }
  """
  @type failed_item_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_run_state_change() :: %{
    "state" => list(any()),
    "stateChangedAt" => non_neg_integer()
  }
  """
  @type assessment_run_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assessment_target() :: %{
    "arn" => String.t(),
    "createdAt" => non_neg_integer(),
    "name" => String.t(),
    "resourceGroupArn" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type assessment_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_exclusions_preview_request() :: %{
    optional("locale") => list(any()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("assessmentTemplateArn") => String.t(),
    required("previewToken") => String.t()
  }
  """
  @type get_exclusions_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_assessment_runs_request() :: %{
    required("assessmentRunArns") => list(String.t()())
  }
  """
  @type describe_assessment_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_assessment_target_request() :: %{
    optional("resourceGroupArn") => String.t(),
    required("assessmentTargetArn") => String.t(),
    required("assessmentTargetName") => String.t()
  }
  """
  @type update_assessment_target_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2016-02-16",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector",
      global?: false,
      protocol: "json",
      service_id: "Inspector",
      signature_version: "v4",
      signing_name: "inspector",
      target_prefix: "InspectorService"
    }
  end

  @doc """
  Assigns attributes (key and value pairs) to the findings that are specified by
  the
  ARNs of the findings.
  """
  @spec add_attributes_to_findings(map(), add_attributes_to_findings_request(), list()) ::
          {:ok, add_attributes_to_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def add_attributes_to_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddAttributesToFindings", input, options)
  end

  @doc """
  Creates a new assessment target using the ARN of the resource group that is
  generated
  by `CreateResourceGroup`.

  If resourceGroupArn is not specified, all EC2
  instances in the current AWS account and region are included in the assessment
  target. If
  the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, this action also creates and
  registers a service-linked role to grant Amazon Inspector access to AWS Services
  needed to
  perform security assessments. You can create up to 50 assessment targets per AWS
  account.
  You can run up to 500 concurrent agents per AWS account. For more information,
  see [
  Amazon Inspector Assessment
  Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  @spec create_assessment_target(map(), create_assessment_target_request(), list()) ::
          {:ok, create_assessment_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_cross_account_role_exception()}
          | {:error, invalid_input_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def create_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssessmentTarget", input, options)
  end

  @doc """
  Creates an assessment template for the assessment target that is specified by
  the ARN
  of the assessment target.

  If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, this action also creates and
  registers a service-linked role to grant Amazon Inspector access to AWS Services
  needed to
  perform security assessments.
  """
  @spec create_assessment_template(map(), create_assessment_template_request(), list()) ::
          {:ok, create_assessment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def create_assessment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssessmentTemplate", input, options)
  end

  @doc """
  Starts the generation of an exclusions preview for the specified assessment
  template.

  The exclusions preview lists the potential exclusions (ExclusionPreview) that
  Inspector can
  detect before it runs the assessment.
  """
  @spec create_exclusions_preview(map(), create_exclusions_preview_request(), list()) ::
          {:ok, create_exclusions_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, preview_generation_in_progress_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def create_exclusions_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExclusionsPreview", input, options)
  end

  @doc """
  Creates a resource group using the specified set of tags (key and value pairs)
  that
  are used to select the EC2 instances to be included in an Amazon Inspector
  assessment
  target.

  The created resource group is then used to create an Amazon Inspector assessment
  target. For more information, see `CreateAssessmentTarget`.
  """
  @spec create_resource_group(map(), create_resource_group_request(), list()) ::
          {:ok, create_resource_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def create_resource_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceGroup", input, options)
  end

  @doc """
  Deletes the assessment run that is specified by the ARN of the assessment
  run.
  """
  @spec delete_assessment_run(map(), delete_assessment_run_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, assessment_run_in_progress_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def delete_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentRun", input, options)
  end

  @doc """
  Deletes the assessment target that is specified by the ARN of the assessment
  target.
  """
  @spec delete_assessment_target(map(), delete_assessment_target_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, assessment_run_in_progress_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def delete_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentTarget", input, options)
  end

  @doc """
  Deletes the assessment template that is specified by the ARN of the assessment
  template.
  """
  @spec delete_assessment_template(map(), delete_assessment_template_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, assessment_run_in_progress_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def delete_assessment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssessmentTemplate", input, options)
  end

  @doc """
  Describes the assessment runs that are specified by the ARNs of the assessment
  runs.
  """
  @spec describe_assessment_runs(map(), describe_assessment_runs_request(), list()) ::
          {:ok, describe_assessment_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_assessment_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentRuns", input, options)
  end

  @doc """
  Describes the assessment targets that are specified by the ARNs of the
  assessment
  targets.
  """
  @spec describe_assessment_targets(map(), describe_assessment_targets_request(), list()) ::
          {:ok, describe_assessment_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_assessment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentTargets", input, options)
  end

  @doc """
  Describes the assessment templates that are specified by the ARNs of the
  assessment
  templates.
  """
  @spec describe_assessment_templates(map(), describe_assessment_templates_request(), list()) ::
          {:ok, describe_assessment_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_assessment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssessmentTemplates", input, options)
  end

  @doc """
  Describes the IAM role that enables Amazon Inspector to access your AWS
  account.
  """
  @spec describe_cross_account_access_role(map(), %{}, list()) ::
          {:ok, describe_cross_account_access_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def describe_cross_account_access_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCrossAccountAccessRole", input, options)
  end

  @doc """
  Describes the exclusions that are specified by the exclusions' ARNs.
  """
  @spec describe_exclusions(map(), describe_exclusions_request(), list()) ::
          {:ok, describe_exclusions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_exclusions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExclusions", input, options)
  end

  @doc """
  Describes the findings that are specified by the ARNs of the findings.
  """
  @spec describe_findings(map(), describe_findings_request(), list()) ::
          {:ok, describe_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFindings", input, options)
  end

  @doc """
  Describes the resource groups that are specified by the ARNs of the resource
  groups.
  """
  @spec describe_resource_groups(map(), describe_resource_groups_request(), list()) ::
          {:ok, describe_resource_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_resource_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourceGroups", input, options)
  end

  @doc """
  Describes the rules packages that are specified by the ARNs of the rules
  packages.
  """
  @spec describe_rules_packages(map(), describe_rules_packages_request(), list()) ::
          {:ok, describe_rules_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def describe_rules_packages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRulesPackages", input, options)
  end

  @doc """
  Produces an assessment report that includes detailed and comprehensive results
  of a
  specified assessment run.
  """
  @spec get_assessment_report(map(), get_assessment_report_request(), list()) ::
          {:ok, get_assessment_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, assessment_run_in_progress_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
          | {:error, unsupported_feature_exception()}
  def get_assessment_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssessmentReport", input, options)
  end

  @doc """
  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified
  by
  the preview token.

  You can obtain the preview token by running the CreateExclusionsPreview
  API.
  """
  @spec get_exclusions_preview(map(), get_exclusions_preview_request(), list()) ::
          {:ok, get_exclusions_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def get_exclusions_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExclusionsPreview", input, options)
  end

  @doc """
  Information about the data that is collected for the specified assessment
  run.
  """
  @spec get_telemetry_metadata(map(), get_telemetry_metadata_request(), list()) ::
          {:ok, get_telemetry_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def get_telemetry_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTelemetryMetadata", input, options)
  end

  @doc """
  Lists the agents of the assessment runs that are specified by the ARNs of the
  assessment runs.
  """
  @spec list_assessment_run_agents(map(), list_assessment_run_agents_request(), list()) ::
          {:ok, list_assessment_run_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_assessment_run_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentRunAgents", input, options)
  end

  @doc """
  Lists the assessment runs that correspond to the assessment templates that are
  specified by the ARNs of the assessment templates.
  """
  @spec list_assessment_runs(map(), list_assessment_runs_request(), list()) ::
          {:ok, list_assessment_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_assessment_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentRuns", input, options)
  end

  @doc """
  Lists the ARNs of the assessment targets within this AWS account.

  For more
  information about assessment targets, see [Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  @spec list_assessment_targets(map(), list_assessment_targets_request(), list()) ::
          {:ok, list_assessment_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def list_assessment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentTargets", input, options)
  end

  @doc """
  Lists the assessment templates that correspond to the assessment targets that
  are
  specified by the ARNs of the assessment targets.
  """
  @spec list_assessment_templates(map(), list_assessment_templates_request(), list()) ::
          {:ok, list_assessment_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_assessment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssessmentTemplates", input, options)
  end

  @doc """
  Lists all the event subscriptions for the assessment template that is specified
  by
  the ARN of the assessment template.

  For more information, see `SubscribeToEvent` and `UnsubscribeFromEvent`.
  """
  @spec list_event_subscriptions(map(), list_event_subscriptions_request(), list()) ::
          {:ok, list_event_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventSubscriptions", input, options)
  end

  @doc """
  List exclusions that are generated by the assessment run.
  """
  @spec list_exclusions(map(), list_exclusions_request(), list()) ::
          {:ok, list_exclusions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_exclusions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExclusions", input, options)
  end

  @doc """
  Lists findings that are generated by the assessment runs that are specified by
  the
  ARNs of the assessment runs.
  """
  @spec list_findings(map(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFindings", input, options)
  end

  @doc """
  Lists all available Amazon Inspector rules packages.
  """
  @spec list_rules_packages(map(), list_rules_packages_request(), list()) ::
          {:ok, list_rules_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
  def list_rules_packages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRulesPackages", input, options)
  end

  @doc """
  Lists all tags associated with an assessment template.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Previews the agents installed on the EC2 instances that are part of the
  specified
  assessment target.
  """
  @spec preview_agents(map(), preview_agents_request(), list()) ::
          {:ok, preview_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_cross_account_role_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
  def preview_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PreviewAgents", input, options)
  end

  @doc """
  Registers the IAM role that grants Amazon Inspector access to AWS Services
  needed to
  perform security assessments.
  """
  @spec register_cross_account_access_role(
          map(),
          register_cross_account_access_role_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_cross_account_role_exception()}
          | {:error, invalid_input_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def register_cross_account_access_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterCrossAccountAccessRole", input, options)
  end

  @doc """
  Removes entire attributes (key and value pairs) from the findings that are
  specified
  by the ARNs of the findings where an attribute with the specified key exists.
  """
  @spec remove_attributes_from_findings(map(), remove_attributes_from_findings_request(), list()) ::
          {:ok, remove_attributes_from_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def remove_attributes_from_findings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveAttributesFromFindings", input, options)
  end

  @doc """
  Sets tags (key and value pairs) to the assessment template that is specified by
  the
  ARN of the assessment template.
  """
  @spec set_tags_for_resource(map(), set_tags_for_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def set_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTagsForResource", input, options)
  end

  @doc """
  Starts the assessment run specified by the ARN of the assessment template.

  For this
  API to function properly, you must not exceed the limit of running up to 500
  concurrent
  agents per AWS account.
  """
  @spec start_assessment_run(map(), start_assessment_run_request(), list()) ::
          {:ok, start_assessment_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, agents_already_running_assessment_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_cross_account_role_exception()}
          | {:error, invalid_input_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def start_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAssessmentRun", input, options)
  end

  @doc """
  Stops the assessment run that is specified by the ARN of the assessment
  run.
  """
  @spec stop_assessment_run(map(), stop_assessment_run_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def stop_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAssessmentRun", input, options)
  end

  @doc """
  Enables the process of sending Amazon Simple Notification Service (SNS)
  notifications
  about a specified event to a specified SNS topic.
  """
  @spec subscribe_to_event(map(), subscribe_to_event_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def subscribe_to_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubscribeToEvent", input, options)
  end

  @doc """
  Disables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  @spec unsubscribe_from_event(map(), unsubscribe_from_event_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def unsubscribe_from_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnsubscribeFromEvent", input, options)
  end

  @doc """
  Updates the assessment target that is specified by the ARN of the assessment
  target.

  If resourceGroupArn is not specified, all EC2 instances in the current AWS
  account
  and region are included in the assessment target.
  """
  @spec update_assessment_target(map(), update_assessment_target_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_input_exception()}
          | {:error, no_such_entity_exception()}
          | {:error, service_temporarily_unavailable_exception()}
  def update_assessment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssessmentTarget", input, options)
  end
end
