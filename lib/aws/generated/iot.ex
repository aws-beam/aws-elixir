# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT do
  @moduledoc """
  IoT

  IoT provides secure, bi-directional communication between Internet-connected
  devices (such as sensors, actuators, embedded devices, or smart appliances) and
  the Amazon Web Services
  cloud.

  You can discover your custom IoT-Data endpoint to communicate with, configure
  rules for data processing and integration with other services, organize
  resources
  associated with each device (Registry), configure logging, and create and manage
  policies and credentials to authenticate devices.

  The service endpoints that expose this API are listed in
  [Amazon Web Services IoT Core Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/iot-core.html).
  You must use the endpoint for the region that has the resources you want to
  access.

  The service name used by [Amazon Web Services Signature Version
  4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) to
  sign the request is:
  *execute-api*.

  For more information about how IoT works, see the [Developer Guide](https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).

  For information about how to use the credentials provider for IoT, see
  [Authorizing Direct Calls to Amazon Web Services Services](https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_buckets_aggregation_response() :: %{
        "buckets" => list(bucket()),
        "totalCount" => integer()
      }

  """
  @type get_buckets_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_url_destination_configuration() :: %{
        "confirmationUrl" => String.t() | atom()
      }

  """
  @type http_url_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_suppression_request() :: %{
        required("checkName") => String.t() | atom(),
        required("resourceIdentifier") => resource_identifier()
      }

  """
  @type describe_audit_suppression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sbom_validation_results_response() :: %{
        "nextToken" => String.t() | atom(),
        "validationResultSummaries" => list(sbom_validation_result_summary())
      }

  """
  @type list_sbom_validation_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_billing_group_response() :: %{
        "billingGroupArn" => String.t() | atom(),
        "billingGroupId" => String.t() | atom(),
        "billingGroupMetadata" => billing_group_metadata(),
        "billingGroupName" => String.t() | atom(),
        "billingGroupProperties" => billing_group_properties(),
        "version" => float()
      }

  """
  @type describe_billing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_command_response() :: %{
        "statusCode" => integer()
      }

  """
  @type delete_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_request() :: %{
        optional("comment") => String.t() | atom(),
        optional("force") => boolean(),
        optional("reasonCode") => String.t() | atom()
      }

  """
  @type cancel_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_thing_response() :: %{
        "thingArn" => String.t() | atom(),
        "thingId" => String.t() | atom(),
        "thingName" => String.t() | atom()
      }

  """
  @type create_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_registration_task_reports_response() :: %{
        "nextToken" => String.t() | atom(),
        "reportType" => list(any()),
        "resourceLinks" => list(String.t() | atom())
      }

  """
  @type list_thing_registration_task_reports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_certificate_provider_request() :: %{}

  """
  @type describe_certificate_provider_request() :: %{}

  @typedoc """

  ## Example:

      get_command_response() :: %{
        "commandArn" => String.t() | atom(),
        "commandId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deprecated" => boolean(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "mandatoryParameters" => list(command_parameter()),
        "namespace" => list(any()),
        "payload" => command_payload(),
        "pendingDeletion" => boolean(),
        "roleArn" => String.t() | atom()
      }

  """
  @type get_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_criteria() :: %{
        "failureType" => list(any()),
        "numberOfRetries" => integer()
      }

  """
  @type retry_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_billing_group_response() :: %{
        "billingGroupArn" => String.t() | atom(),
        "billingGroupId" => String.t() | atom(),
        "billingGroupName" => String.t() | atom()
      }

  """
  @type create_billing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dimension_response() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type create_dimension_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_mitigation_action_request() :: %{}

  """
  @type delete_mitigation_action_request() :: %{}

  @typedoc """

  ## Example:

      list_provisioning_template_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "versions" => list(provisioning_template_version_summary())
      }

  """
  @type list_provisioning_template_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_mitigation_action_execution_metadata() :: %{
        "actionId" => String.t() | atom(),
        "actionName" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "errorCode" => String.t() | atom(),
        "findingId" => String.t() | atom(),
        "message" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "taskId" => String.t() | atom()
      }

  """
  @type audit_mitigation_action_execution_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geo_location_target() :: %{
        "name" => String.t() | atom(),
        "order" => list(any())
      }

  """
  @type geo_location_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_certificate_request() :: %{
        required("newStatus") => list(any())
      }

  """
  @type update_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_property() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type user_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule() :: %{
        "actions" => list(action()),
        "awsIotSqlVersion" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "errorAction" => action(),
        "ruleDisabled" => boolean(),
        "ruleName" => String.t() | atom(),
        "sql" => String.t() | atom()
      }

  """
  @type topic_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timestream_dimension() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type timestream_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terms_aggregation() :: %{
        "maxBuckets" => integer()
      }

  """
  @type terms_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_claim_request() :: %{}

  """
  @type create_provisioning_claim_request() :: %{}

  @typedoc """

  ## Example:

      command_payload() :: %{
        "content" => binary(),
        "contentType" => String.t() | atom()
      }

  """
  @type command_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_topic_rule_destination_request() :: %{}

  """
  @type get_topic_rule_destination_request() :: %{}

  @typedoc """

  ## Example:

      update_package_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("versionUpdateByJobsConfig") => version_update_by_jobs_config()
      }

  """
  @type update_package_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_update_file() :: %{
        "attributes" => map(),
        "codeSigning" => code_signing(),
        "fileLocation" => file_location(),
        "fileName" => String.t() | atom(),
        "fileType" => integer(),
        "fileVersion" => String.t() | atom()
      }

  """
  @type ota_update_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_statistics_response() :: %{
        "statistics" => statistics()
      }

  """
  @type get_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      violation_event_additional_info() :: %{
        "confidenceLevel" => list(any())
      }

  """
  @type violation_event_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_billing_group_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_versions_response() :: %{
        "policyVersions" => list(policy_version())
      }

  """
  @type list_policy_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_indexing_configuration_response() :: %{
        "thingGroupIndexingConfiguration" => thing_group_indexing_configuration(),
        "thingIndexingConfiguration" => thing_indexing_configuration()
      }

  """
  @type get_indexing_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_request() :: %{
        optional("attributePayload") => attribute_payload(),
        optional("expectedVersion") => float(),
        optional("removeThingType") => boolean(),
        optional("thingTypeName") => String.t() | atom()
      }

  """
  @type update_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ca_certificate_request() :: %{}

  """
  @type delete_ca_certificate_request() :: %{}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_template_response() :: %{
        "jobTemplateArn" => String.t() | atom(),
        "jobTemplateId" => String.t() | atom()
      }

  """
  @type create_job_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_default_policy_version_request() :: %{}

  """
  @type set_default_policy_version_request() :: %{}

  @typedoc """

  ## Example:

      thing_group_indexing_configuration() :: %{
        "customFields" => list(field()),
        "managedFields" => list(field()),
        "thingGroupIndexingMode" => list(any())
      }

  """
  @type thing_group_indexing_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_version_response() :: %{
        "creationDate" => non_neg_integer(),
        "generationId" => String.t() | atom(),
        "isDefaultVersion" => boolean(),
        "lastModifiedDate" => non_neg_integer(),
        "policyArn" => String.t() | atom(),
        "policyDocument" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "policyVersionId" => String.t() | atom()
      }

  """
  @type get_policy_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firehose_action() :: %{
        "batchMode" => boolean(),
        "deliveryStreamName" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "separator" => String.t() | atom()
      }

  """
  @type firehose_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_audit_mitigation_actions_task_response() :: %{
        "taskId" => String.t() | atom()
      }

  """
  @type start_audit_mitigation_actions_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_in_thing_group_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("recursive") => boolean()
      }

  """
  @type list_things_in_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_authorization() :: %{
        "sigv4" => sig_v4_authorization()
      }

  """
  @type http_authorization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_mitigation_actions_task_target() :: %{
        "behaviorName" => String.t() | atom(),
        "securityProfileName" => String.t() | atom(),
        "violationIds" => list(String.t() | atom())
      }

  """
  @type detect_mitigation_actions_task_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registration_config() :: %{
        "roleArn" => String.t() | atom(),
        "templateBody" => String.t() | atom(),
        "templateName" => String.t() | atom()
      }

  """
  @type registration_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioning_template_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_provisioning_template_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malformed_policy_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type malformed_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_principal_things_v2_response() :: %{
        "nextToken" => String.t() | atom(),
        "principalThingObjects" => list(principal_thing_object())
      }

  """
  @type list_principal_things_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefixFilter") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("parentGroup") => String.t() | atom(),
        optional("recursive") => boolean()
      }

  """
  @type list_thing_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_domain_configuration_response() :: %{
        "applicationProtocol" => list(any()),
        "authenticationType" => list(any()),
        "authorizerConfig" => authorizer_config(),
        "clientCertificateConfig" => client_certificate_config(),
        "domainConfigurationArn" => String.t() | atom(),
        "domainConfigurationName" => String.t() | atom(),
        "domainConfigurationStatus" => list(any()),
        "domainName" => String.t() | atom(),
        "domainType" => list(any()),
        "lastStatusChangeDate" => non_neg_integer(),
        "serverCertificateConfig" => server_certificate_config(),
        "serverCertificates" => list(server_certificate_summary()),
        "serviceType" => list(any()),
        "tlsConfig" => tls_config()
      }

  """
  @type describe_domain_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_thing_principal_request() :: %{
        optional("thingPrincipalType") => list(any()),
        required("principal") => String.t() | atom()
      }

  """
  @type attach_thing_principal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_version_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_response() :: %{
        "documentSource" => String.t() | atom(),
        "job" => job()
      }

  """
  @type describe_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      version_conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type version_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_execution_request() :: %{
        optional("executionNumber") => float()
      }

  """
  @type describe_job_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_security_profile_response() :: %{}

  """
  @type delete_security_profile_response() :: %{}

  @typedoc """

  ## Example:

      cancel_job_execution_request() :: %{
        optional("expectedVersion") => float(),
        optional("force") => boolean(),
        optional("statusDetails") => map()
      }

  """
  @type cancel_job_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_topic_rules_response() :: %{
        "nextToken" => String.t() | atom(),
        "rules" => list(topic_rule_list_item())
      }

  """
  @type list_topic_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "description" => String.t() | atom(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom()
      }

  """
  @type create_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_finding() :: %{
        "checkName" => String.t() | atom(),
        "findingId" => String.t() | atom(),
        "findingTime" => non_neg_integer(),
        "isSuppressed" => boolean(),
        "nonCompliantResource" => non_compliant_resource(),
        "reasonForNonCompliance" => String.t() | atom(),
        "reasonForNonComplianceCode" => String.t() | atom(),
        "relatedResources" => list(related_resource()),
        "severity" => list(any()),
        "taskId" => String.t() | atom(),
        "taskStartTime" => non_neg_integer()
      }

  """
  @type audit_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_indexing_configuration_request() :: %{}

  """
  @type get_indexing_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_provisioning_template_version_response() :: %{
        "creationDate" => non_neg_integer(),
        "isDefaultVersion" => boolean(),
        "templateBody" => String.t() | atom(),
        "versionId" => integer()
      }

  """
  @type describe_provisioning_template_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tls_context() :: %{
        "serverName" => String.t() | atom()
      }

  """
  @type tls_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_version_request() :: %{}

  """
  @type get_policy_version_request() :: %{}

  @typedoc """

  ## Example:

      status_reason() :: %{
        "reasonCode" => String.t() | atom(),
        "reasonDescription" => String.t() | atom()
      }

  """
  @type status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_configuration_request() :: %{
        optional("applicationProtocol") => list(any()),
        optional("authenticationType") => list(any()),
        optional("authorizerConfig") => authorizer_config(),
        optional("clientCertificateConfig") => client_certificate_config(),
        optional("domainConfigurationStatus") => list(any()),
        optional("removeAuthorizerConfig") => boolean(),
        optional("serverCertificateConfig") => server_certificate_config(),
        optional("tlsConfig") => tls_config()
      }

  """
  @type update_domain_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_security_profile_response() :: %{}

  """
  @type attach_security_profile_response() :: %{}

  @typedoc """

  ## Example:

      billing_group_metadata() :: %{
        "creationDate" => non_neg_integer()
      }

  """
  @type billing_group_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      buckets_aggregation_type() :: %{
        "termsAggregation" => terms_aggregation()
      }

  """
  @type buckets_aggregation_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_authorizer_response() :: %{
        "authorizerDescription" => authorizer_description()
      }

  """
  @type describe_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_metric_request() :: %{}

  """
  @type delete_custom_metric_request() :: %{}

  @typedoc """

  ## Example:

      test_authorization_response() :: %{
        "authResults" => list(auth_result())
      }

  """
  @type test_authorization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_job_executions_rollout_config() :: %{
        "exponentialRate" => aws_job_exponential_rollout_rate(),
        "maximumPerMinute" => integer()
      }

  """
  @type aws_job_executions_rollout_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_topic_rule_response() :: %{
        "rule" => topic_rule(),
        "ruleArn" => String.t() | atom()
      }

  """
  @type get_topic_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      violation_event_occurrence_range() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }

  """
  @type violation_event_occurrence_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_commands_response() :: %{
        "commands" => list(command_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_commands_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profiles_for_target_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("recursive") => boolean(),
        required("securityProfileTargetArn") => String.t() | atom()
      }

  """
  @type list_security_profiles_for_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_thing_connectivity_data_response() :: %{
        "connected" => boolean(),
        "disconnectReason" => list(any()),
        "thingName" => String.t() | atom(),
        "timestamp" => non_neg_integer()
      }

  """
  @type get_thing_connectivity_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ca_certificate_description() :: %{
        "autoRegistrationStatus" => list(any()),
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "certificateMode" => list(any()),
        "certificatePem" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "customerVersion" => integer(),
        "generationId" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "ownedBy" => String.t() | atom(),
        "status" => list(any()),
        "validity" => certificate_validity()
      }

  """
  @type ca_certificate_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_response() :: %{
        "nextMarker" => String.t() | atom(),
        "policies" => list(policy())
      }

  """
  @type list_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_certificate_transfer_request() :: %{}

  """
  @type cancel_certificate_transfer_request() :: %{}

  @typedoc """

  ## Example:

      delete_scheduled_audit_response() :: %{}

  """
  @type delete_scheduled_audit_response() :: %{}

  @typedoc """

  ## Example:

      delete_command_execution_response() :: %{}

  """
  @type delete_command_execution_response() :: %{}

  @typedoc """

  ## Example:

      get_percentiles_response() :: %{
        "percentiles" => list(percent_pair())
      }

  """
  @type get_percentiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_topic_rules_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("ruleDisabled") => boolean(),
        optional("topic") => String.t() | atom()
      }

  """
  @type list_topic_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_job_timeout_config() :: %{
        "inProgressTimeoutInMinutes" => float()
      }

  """
  @type aws_job_timeout_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      confirm_topic_rule_destination_response() :: %{}

  """
  @type confirm_topic_rule_destination_response() :: %{}

  @typedoc """

  ## Example:

      create_package_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_package_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_mitigation_actions_executions_request() :: %{
        optional("actionStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("findingId") => String.t() | atom(),
        required("taskId") => String.t() | atom()
      }

  """
  @type list_audit_mitigation_actions_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_thing_principal_response() :: %{}

  """
  @type detach_thing_principal_response() :: %{}

  @typedoc """

  ## Example:

      update_thing_type_request() :: %{
        optional("thingTypeProperties") => thing_type_properties()
      }

  """
  @type update_thing_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_type_request() :: %{}

  """
  @type delete_thing_type_request() :: %{}

  @typedoc """

  ## Example:

      list_topic_rule_destinations_response() :: %{
        "destinationSummaries" => list(topic_rule_destination_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_topic_rule_destinations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detect_mitigation_actions_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "tasks" => list(detect_mitigation_actions_task_summary())
      }

  """
  @type list_detect_mitigation_actions_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_invoke_authorizer_request() :: %{
        optional("httpContext") => http_context(),
        optional("mqttContext") => mqtt_context(),
        optional("tlsContext") => tls_context(),
        optional("token") => String.t() | atom(),
        optional("tokenSignature") => String.t() | atom()
      }

  """
  @type test_invoke_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_job_abort_criteria() :: %{
        "action" => list(any()),
        "failureType" => list(any()),
        "minNumberOfExecutedThings" => integer(),
        "thresholdPercentage" => float()
      }

  """
  @type aws_job_abort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_audit_suppression_response() :: %{}

  """
  @type update_audit_suppression_response() :: %{}

  @typedoc """

  ## Example:

      provisioning_hook() :: %{
        "payloadVersion" => String.t() | atom(),
        "targetArn" => String.t() | atom()
      }

  """
  @type provisioning_hook() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dynamo_dbv2_action() :: %{
        "putItem" => put_item_input(),
        "roleArn" => String.t() | atom()
      }

  """
  @type dynamo_dbv2_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_topic_rule_request() :: %{}

  """
  @type enable_topic_rule_request() :: %{}

  @typedoc """

  ## Example:

      audit_mitigation_actions_task_metadata() :: %{
        "startTime" => non_neg_integer(),
        "taskId" => String.t() | atom(),
        "taskStatus" => list(any())
      }

  """
  @type audit_mitigation_actions_task_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_update_response() :: %{
        "otaUpdateInfo" => ota_update_info()
      }

  """
  @type get_ota_update_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_property_value() :: %{
        "quality" => String.t() | atom(),
        "timestamp" => asset_property_timestamp(),
        "value" => list()
      }

  """
  @type asset_property_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("namespaceId") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any()),
        optional("targetSelection") => list(any()),
        optional("thingGroupId") => String.t() | atom(),
        optional("thingGroupName") => String.t() | atom()
      }

  """
  @type list_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mqtt5_configuration() :: %{
        "propagatingAttributes" => list(propagating_attribute())
      }

  """
  @type mqtt5_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("namePrefixFilter") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_billing_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_action() :: %{
        "bucketName" => String.t() | atom(),
        "cannedAcl" => list(any()),
        "key" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type s3_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_parameter() :: %{
        "description" => String.t() | atom(),
        "example" => String.t() | atom(),
        "key" => String.t() | atom(),
        "optional" => boolean(),
        "regex" => String.t() | atom()
      }

  """
  @type document_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{}

  """
  @type get_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_billing_group_response() :: %{
        "version" => float()
      }

  """
  @type update_billing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_certificate_transfer_request() :: %{
        optional("rejectReason") => String.t() | atom()
      }

  """
  @type reject_certificate_transfer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_principals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_thing_principals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      billing_group_properties() :: %{
        "billingGroupDescription" => String.t() | atom()
      }

  """
  @type billing_group_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_profile_response() :: %{
        "additionalMetricsToRetain" => list(String.t() | atom()),
        "additionalMetricsToRetainV2" => list(metric_to_retain()),
        "alertTargets" => map(),
        "behaviors" => list(behavior()),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "metricsExportConfig" => metrics_export_config(),
        "securityProfileArn" => String.t() | atom(),
        "securityProfileDescription" => String.t() | atom(),
        "securityProfileName" => String.t() | atom(),
        "version" => float()
      }

  """
  @type describe_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_aggregation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_aggregation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_security_profile_response() :: %{
        "securityProfileArn" => String.t() | atom(),
        "securityProfileName" => String.t() | atom()
      }

  """
  @type create_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_url_destination_properties() :: %{
        "confirmationUrl" => String.t() | atom()
      }

  """
  @type http_url_destination_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_certificate_without_ca_response() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom()
      }

  """
  @type register_certificate_without_ca_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_certificate_provider_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("accountDefaultForOperations") => list(list(any())()),
        required("lambdaFunctionArn") => String.t() | atom()
      }

  """
  @type create_certificate_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delete_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_certificate_from_csr_request() :: %{
        optional("setAsActive") => boolean(),
        required("certificateSigningRequest") => String.t() | atom()
      }

  """
  @type create_certificate_from_csr_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_findings_response() :: %{
        "findings" => list(audit_finding()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_audit_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_attached_policies_response() :: %{
        "nextMarker" => String.t() | atom(),
        "policies" => list(policy())
      }

  """
  @type list_attached_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_indexing_configuration() :: %{
        "customFields" => list(field()),
        "deviceDefenderIndexingMode" => list(any()),
        "filter" => indexing_filter(),
        "managedFields" => list(field()),
        "namedShadowIndexingMode" => list(any()),
        "thingConnectivityIndexingMode" => list(any()),
        "thingIndexingMode" => list(any())
      }

  """
  @type thing_indexing_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_profile_request() :: %{
        optional("additionalMetricsToRetain") => list(String.t() | atom()),
        optional("additionalMetricsToRetainV2") => list(metric_to_retain()),
        optional("alertTargets") => map(),
        optional("behaviors") => list(behavior()),
        optional("deleteAdditionalMetricsToRetain") => boolean(),
        optional("deleteAlertTargets") => boolean(),
        optional("deleteBehaviors") => boolean(),
        optional("deleteMetricsExportConfig") => boolean(),
        optional("expectedVersion") => float(),
        optional("metricsExportConfig") => metrics_export_config(),
        optional("securityProfileDescription") => String.t() | atom()
      }

  """
  @type update_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_fleet_metric_request() :: %{
        optional("description") => String.t() | atom(),
        optional("indexName") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("unit") => list(any()),
        required("aggregationField") => String.t() | atom(),
        required("aggregationType") => aggregation_type(),
        required("period") => integer(),
        required("queryString") => String.t() | atom()
      }

  """
  @type create_fleet_metric_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_thing_registration_task_request() :: %{}

  """
  @type stop_thing_registration_task_request() :: %{}

  @typedoc """

  ## Example:

      describe_custom_metric_request() :: %{}

  """
  @type describe_custom_metric_request() :: %{}

  @typedoc """

  ## Example:

      list_role_aliases_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_role_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_metric_request() :: %{
        required("displayName") => String.t() | atom()
      }

  """
  @type update_custom_metric_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_document_request() :: %{
        optional("beforeSubstitution") => boolean()
      }

  """
  @type get_job_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dynamo_db_action() :: %{
        "hashKeyField" => String.t() | atom(),
        "hashKeyType" => list(any()),
        "hashKeyValue" => String.t() | atom(),
        "operation" => String.t() | atom(),
        "payloadField" => String.t() | atom(),
        "rangeKeyField" => String.t() | atom(),
        "rangeKeyType" => list(any()),
        "rangeKeyValue" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "tableName" => String.t() | atom()
      }

  """
  @type dynamo_db_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_description() :: %{
        "caCertificateId" => String.t() | atom(),
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "certificateMode" => list(any()),
        "certificatePem" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "customerVersion" => integer(),
        "generationId" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "ownedBy" => String.t() | atom(),
        "previousOwnedBy" => String.t() | atom(),
        "status" => list(any()),
        "transferData" => transfer_data(),
        "validity" => certificate_validity()
      }

  """
  @type certificate_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_asset_property_value_entry() :: %{
        "assetId" => String.t() | atom(),
        "entryId" => String.t() | atom(),
        "propertyAlias" => String.t() | atom(),
        "propertyId" => String.t() | atom(),
        "propertyValues" => list(asset_property_value())
      }

  """
  @type put_asset_property_value_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_policies_response() :: %{
        "effectivePolicies" => list(effective_policy())
      }

  """
  @type get_effective_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_mitigation_actions_request() :: %{
        optional("actionType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_mitigation_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_principals_response() :: %{
        "nextMarker" => String.t() | atom(),
        "principals" => list(String.t() | atom())
      }

  """
  @type list_policy_principals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_state_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type certificate_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_configurations_response() :: %{
        "domainConfigurations" => list(domain_configuration_summary()),
        "nextMarker" => String.t() | atom()
      }

  """
  @type list_domain_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_request() :: %{
        optional("tags") => list(tag()),
        required("policyDocument") => String.t() | atom()
      }

  """
  @type create_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_packages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ota_update_request() :: %{}

  """
  @type get_ota_update_request() :: %{}

  @typedoc """

  ## Example:

      replace_topic_rule_request() :: %{
        required("topicRulePayload") => topic_rule_payload()
      }

  """
  @type replace_topic_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_thing_registration_task_request() :: %{
        required("inputFileBucket") => String.t() | atom(),
        required("inputFileKey") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("templateBody") => String.t() | atom()
      }

  """
  @type start_thing_registration_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_security_profile_request() :: %{
        required("securityProfileTargetArn") => String.t() | atom()
      }

  """
  @type detach_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_command_execution_request() :: %{
        required("targetArn") => String.t() | atom()
      }

  """
  @type delete_command_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_authorizer_request() :: %{}

  """
  @type describe_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      list_fleet_metrics_response() :: %{
        "fleetMetrics" => list(fleet_metric_name_and_arn()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_fleet_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_type_response() :: %{}

  """
  @type update_thing_type_response() :: %{}

  @typedoc """

  ## Example:

      metric_to_retain() :: %{
        "exportMetric" => boolean(),
        "metric" => String.t() | atom(),
        "metricDimension" => metric_dimension()
      }

  """
  @type metric_to_retain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_topic_rule_destination_response() :: %{
        "topicRuleDestination" => topic_rule_destination()
      }

  """
  @type create_topic_rule_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ca_certificates_response() :: %{
        "certificates" => list(ca_certificate()),
        "nextMarker" => String.t() | atom()
      }

  """
  @type list_ca_certificates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_version_response() :: %{}

  """
  @type update_package_version_response() :: %{}

  @typedoc """

  ## Example:

      update_event_configurations_response() :: %{}

  """
  @type update_event_configurations_response() :: %{}

  @typedoc """

  ## Example:

      versions_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type versions_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_mitigation_action_request() :: %{
        optional("actionParams") => mitigation_action_params(),
        optional("roleArn") => String.t() | atom()
      }

  """
  @type update_mitigation_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_violation_events_request() :: %{
        optional("behaviorCriteriaType") => list(any()),
        optional("listSuppressedAlerts") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("securityProfileName") => String.t() | atom(),
        optional("thingName") => String.t() | atom(),
        optional("verificationState") => list(any()),
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }

  """
  @type list_violation_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_version_response() :: %{
        "isDefaultVersion" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyDocument" => String.t() | atom(),
        "policyVersionId" => String.t() | atom()
      }

  """
  @type create_policy_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_things_to_thing_group_params() :: %{
        "overrideDynamicGroups" => boolean(),
        "thingGroupNames" => list(String.t() | atom())
      }

  """
  @type add_things_to_thing_group_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_certificate_without_ca_request() :: %{
        optional("status") => list(any()),
        required("certificatePem") => String.t() | atom()
      }

  """
  @type register_certificate_without_ca_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_in_thing_group_response() :: %{
        "nextToken" => String.t() | atom(),
        "things" => list(String.t() | atom())
      }

  """
  @type list_things_in_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "Enabled" => boolean()
      }

  """
  @type configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_audit_mitigation_actions_task_request() :: %{
        required("auditCheckToActionsMapping") => map(),
        required("clientRequestToken") => String.t() | atom(),
        required("target") => audit_mitigation_actions_task_target()
      }

  """
  @type start_audit_mitigation_actions_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_stream_response() :: %{}

  """
  @type delete_stream_response() :: %{}

  @typedoc """

  ## Example:

      update_indexing_configuration_response() :: %{}

  """
  @type update_indexing_configuration_response() :: %{}

  @typedoc """

  ## Example:

      http_action_header() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type http_action_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exponential_rollout_rate() :: %{
        "baseRatePerMinute" => integer(),
        "incrementFactor" => float(),
        "rateIncreaseCriteria" => rate_increase_criteria()
      }

  """
  @type exponential_rollout_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_ca_certificate_response() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom()
      }

  """
  @type register_ca_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "jobs" => list(job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profiles_for_target_response() :: %{
        "nextToken" => String.t() | atom(),
        "securityProfileTargetMappings" => list(security_profile_target_mapping())
      }

  """
  @type list_security_profiles_for_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("abortConfig") => abort_config(),
        optional("description") => String.t() | atom(),
        optional("destinationPackageVersions") => list(String.t() | atom()),
        optional("document") => String.t() | atom(),
        optional("documentParameters") => map(),
        optional("documentSource") => String.t() | atom(),
        optional("jobExecutionsRetryConfig") => job_executions_retry_config(),
        optional("jobExecutionsRolloutConfig") => job_executions_rollout_config(),
        optional("jobTemplateArn") => String.t() | atom(),
        optional("namespaceId") => String.t() | atom(),
        optional("presignedUrlConfig") => presigned_url_config(),
        optional("schedulingConfig") => scheduling_config(),
        optional("tags") => list(tag()),
        optional("targetSelection") => list(any()),
        optional("timeoutConfig") => timeout_config(),
        required("targets") => list(String.t() | atom())
      }

  """
  @type create_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_policy_request() :: %{
        required("target") => String.t() | atom()
      }

  """
  @type detach_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_account_audit_configuration_response() :: %{
        "auditCheckConfigurations" => map(),
        "auditNotificationTargetConfigurations" => map(),
        "roleArn" => String.t() | atom()
      }

  """
  @type describe_account_audit_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_domain_configuration_request() :: %{}

  """
  @type describe_domain_configuration_request() :: %{}

  @typedoc """

  ## Example:

      mqtt_headers() :: %{
        "contentType" => String.t() | atom(),
        "correlationData" => String.t() | atom(),
        "messageExpiry" => String.t() | atom(),
        "payloadFormatIndicator" => String.t() | atom(),
        "responseTopic" => String.t() | atom(),
        "userProperties" => list(user_property())
      }

  """
  @type mqtt_headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_sbom_with_package_version_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sbom") => sbom()
      }

  """
  @type associate_sbom_with_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_thing_from_billing_group_request() :: %{
        optional("billingGroupArn") => String.t() | atom(),
        optional("billingGroupName") => String.t() | atom(),
        optional("thingArn") => String.t() | atom(),
        optional("thingName") => String.t() | atom()
      }

  """
  @type remove_thing_from_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioning_templates_response() :: %{
        "nextToken" => String.t() | atom(),
        "templates" => list(provisioning_template_summary())
      }

  """
  @type list_provisioning_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_account_audit_configuration_request() :: %{}

  """
  @type describe_account_audit_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_ca_certificate_params() :: %{
        "action" => list(any())
      }

  """
  @type update_ca_certificate_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ca_certificates_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        optional("templateName") => String.t() | atom()
      }

  """
  @type list_ca_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_topic_rule_request() :: %{
        optional("tags") => String.t() | atom(),
        required("topicRulePayload") => topic_rule_payload()
      }

  """
  @type create_topic_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_targets_with_job_request() :: %{
        optional("comment") => String.t() | atom(),
        optional("namespaceId") => String.t() | atom(),
        required("targets") => list(String.t() | atom())
      }

  """
  @type associate_targets_with_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_response() :: %{}

  """
  @type update_package_response() :: %{}

  @typedoc """

  ## Example:

      remove_thing_from_billing_group_response() :: %{}

  """
  @type remove_thing_from_billing_group_response() :: %{}

  @typedoc """

  ## Example:

      update_certificate_provider_response() :: %{
        "certificateProviderArn" => String.t() | atom(),
        "certificateProviderName" => String.t() | atom()
      }

  """
  @type update_certificate_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scheduled_audit_request() :: %{}

  """
  @type describe_scheduled_audit_request() :: %{}

  @typedoc """

  ## Example:

      list_policy_principals_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        required("policyName") => String.t() | atom()
      }

  """
  @type list_policy_principals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dynamic_thing_group_response() :: %{
        "indexName" => String.t() | atom(),
        "queryString" => String.t() | atom(),
        "queryVersion" => String.t() | atom(),
        "thingGroupArn" => String.t() | atom(),
        "thingGroupId" => String.t() | atom(),
        "thingGroupName" => String.t() | atom()
      }

  """
  @type create_dynamic_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_info() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      statistical_threshold() :: %{
        "statistic" => String.t() | atom()
      }

  """
  @type statistical_threshold() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scheduled_audit_request() :: %{
        optional("dayOfMonth") => String.t() | atom(),
        optional("dayOfWeek") => list(any()),
        optional("frequency") => list(any()),
        optional("targetCheckNames") => list(String.t() | atom())
      }

  """
  @type update_scheduled_audit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_index_request() :: %{}

  """
  @type describe_index_request() :: %{}

  @typedoc """

  ## Example:

      thing_connectivity() :: %{
        "connected" => boolean(),
        "disconnectReason" => String.t() | atom(),
        "timestamp" => float()
      }

  """
  @type thing_connectivity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_keys_and_certificate_request() :: %{
        optional("setAsActive") => boolean()
      }

  """
  @type create_keys_and_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificates_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_audit_task_response() :: %{}

  """
  @type cancel_audit_task_response() :: %{}

  @typedoc """

  ## Example:

      delete_authorizer_request() :: %{}

  """
  @type delete_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      timestream_action() :: %{
        "databaseName" => String.t() | atom(),
        "dimensions" => list(timestream_dimension()),
        "roleArn" => String.t() | atom(),
        "tableName" => String.t() | atom(),
        "timestamp" => timestream_timestamp()
      }

  """
  @type timestream_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing_signature() :: %{
        "inlineDocument" => binary()
      }

  """
  @type code_signing_signature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_keys_and_certificate_response() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "certificatePem" => String.t() | atom(),
        "keyPair" => key_pair()
      }

  """
  @type create_keys_and_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_streams_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_streams_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_authorizer_request() :: %{
        optional("enableCachingForHttp") => boolean(),
        optional("signingDisabled") => boolean(),
        optional("status") => list(any()),
        optional("tags") => list(tag()),
        optional("tokenKeyName") => String.t() | atom(),
        optional("tokenSigningPublicKeys") => map(),
        required("authorizerFunctionArn") => String.t() | atom()
      }

  """
  @type create_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_template_version_response() :: %{
        "isDefaultVersion" => boolean(),
        "templateArn" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "versionId" => integer()
      }

  """
  @type create_provisioning_template_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("taskStatus") => list(any()),
        optional("taskType") => list(any()),
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }

  """
  @type list_audit_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_index_response() :: %{
        "indexName" => String.t() | atom(),
        "indexStatus" => list(any()),
        "schema" => String.t() | atom()
      }

  """
  @type describe_index_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_mitigation_actions_tasks_request() :: %{
        optional("auditTaskId") => String.t() | atom(),
        optional("findingId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("taskStatus") => list(any()),
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }

  """
  @type list_audit_mitigation_actions_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_update_request() :: %{
        optional("additionalParameters") => map(),
        optional("awsJobAbortConfig") => aws_job_abort_config(),
        optional("awsJobExecutionsRolloutConfig") => aws_job_executions_rollout_config(),
        optional("awsJobPresignedUrlConfig") => aws_job_presigned_url_config(),
        optional("awsJobTimeoutConfig") => aws_job_timeout_config(),
        optional("description") => String.t() | atom(),
        optional("protocols") => list(list(any())()),
        optional("tags") => list(tag()),
        optional("targetSelection") => list(any()),
        required("files") => list(ota_update_file()),
        required("roleArn") => String.t() | atom(),
        required("targets") => list(String.t() | atom())
      }

  """
  @type create_ota_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_fleet_metrics_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_fleet_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_role_alias_request() :: %{
        optional("credentialDurationSeconds") => integer(),
        optional("tags") => list(tag()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_role_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_certificate_provider_response() :: %{
        "certificateProviderArn" => String.t() | atom(),
        "certificateProviderName" => String.t() | atom()
      }

  """
  @type create_certificate_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_target() :: %{
        "targetName" => String.t() | atom(),
        "targetType" => list(any())
      }

  """
  @type log_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mitigation_action() :: %{
        "actionParams" => mitigation_action_params(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type mitigation_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ota_update_response() :: %{
        "awsIotJobArn" => String.t() | atom(),
        "awsIotJobId" => String.t() | atom(),
        "otaUpdateArn" => String.t() | atom(),
        "otaUpdateId" => String.t() | atom(),
        "otaUpdateStatus" => list(any())
      }

  """
  @type create_ota_update_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metrics_export_config() :: %{
        "mqttTopic" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type metrics_export_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mitigation_action_identifier() :: %{
        "actionArn" => String.t() | atom(),
        "actionName" => String.t() | atom(),
        "creationDate" => non_neg_integer()
      }

  """
  @type mitigation_action_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_commands_request() :: %{
        optional("commandParameterName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("namespace") => list(any()),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_commands_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_authorizer_response() :: %{}

  """
  @type delete_authorizer_response() :: %{}

  @typedoc """

  ## Example:

      aws_job_presigned_url_config() :: %{
        "expiresInSec" => float()
      }

  """
  @type aws_job_presigned_url_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_command_response() :: %{
        "commandId" => String.t() | atom(),
        "deprecated" => boolean(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer()
      }

  """
  @type update_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      percent_pair() :: %{
        "percent" => float(),
        "value" => float()
      }

  """
  @type percent_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_in_billing_group_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_things_in_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_billing_group_request() :: %{
        optional("billingGroupProperties") => billing_group_properties(),
        optional("tags") => list(tag())
      }

  """
  @type create_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_profile_identifier() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type security_profile_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_on_demand_audit_task_response() :: %{
        "taskId" => String.t() | atom()
      }

  """
  @type start_on_demand_audit_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_indices_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_indices_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      location_timestamp() :: %{
        "unit" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type location_timestamp() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      elasticsearch_action() :: %{
        "endpoint" => String.t() | atom(),
        "id" => String.t() | atom(),
        "index" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type elasticsearch_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_version_identifier() :: %{
        "policyName" => String.t() | atom(),
        "policyVersionId" => String.t() | atom()
      }

  """
  @type policy_version_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_executions_for_thing_request() :: %{
        optional("jobId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("namespaceId") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_job_executions_for_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_targets_with_job_response() :: %{
        "description" => String.t() | atom(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom()
      }

  """
  @type associate_targets_with_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_detect_mitigation_actions_task_request() :: %{
        optional("includeOnlyActiveViolations") => boolean(),
        optional("includeSuppressedAlerts") => boolean(),
        optional("violationEventOccurrenceRange") => violation_event_occurrence_range(),
        required("actions") => list(String.t() | atom()),
        required("clientRequestToken") => String.t() | atom(),
        required("target") => detect_mitigation_actions_task_target()
      }

  """
  @type start_detect_mitigation_actions_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scheduled_audit_request() :: %{}

  """
  @type delete_scheduled_audit_request() :: %{}

  @typedoc """

  ## Example:

      policy_version() :: %{
        "createDate" => non_neg_integer(),
        "isDefaultVersion" => boolean(),
        "versionId" => String.t() | atom()
      }

  """
  @type policy_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_claim_response() :: %{
        "certificateId" => String.t() | atom(),
        "certificatePem" => String.t() | atom(),
        "expiration" => non_neg_integer(),
        "keyPair" => key_pair()
      }

  """
  @type create_provisioning_claim_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_thing_registration_task_response() :: %{
        "taskId" => String.t() | atom()
      }

  """
  @type start_thing_registration_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_percentiles_request() :: %{
        optional("aggregationField") => String.t() | atom(),
        optional("indexName") => String.t() | atom(),
        optional("percents") => list(float()),
        optional("queryVersion") => String.t() | atom(),
        required("queryString") => String.t() | atom()
      }

  """
  @type get_percentiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_authorizer_response() :: %{
        "authorizerArn" => String.t() | atom(),
        "authorizerName" => String.t() | atom()
      }

  """
  @type create_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_thing_request() :: %{
        optional("attributePayload") => attribute_payload(),
        optional("billingGroupName") => String.t() | atom(),
        optional("thingTypeName") => String.t() | atom()
      }

  """
  @type create_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_version_request() :: %{
        optional("action") => list(any()),
        optional("artifact") => package_version_artifact(),
        optional("attributes") => map(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("recipe") => String.t() | atom()
      }

  """
  @type update_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioning_template_version_summary() :: %{
        "creationDate" => non_neg_integer(),
        "isDefaultVersion" => boolean(),
        "versionId" => integer()
      }

  """
  @type provisioning_template_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_ca_certificate_request() :: %{}

  """
  @type describe_ca_certificate_request() :: %{}

  @typedoc """

  ## Example:

      delete_job_template_request() :: %{}

  """
  @type delete_job_template_request() :: %{}

  @typedoc """

  ## Example:

      job_process_details() :: %{
        "numberOfCanceledThings" => integer(),
        "numberOfFailedThings" => integer(),
        "numberOfInProgressThings" => integer(),
        "numberOfQueuedThings" => integer(),
        "numberOfRejectedThings" => integer(),
        "numberOfRemovedThings" => integer(),
        "numberOfSucceededThings" => integer(),
        "numberOfTimedOutThings" => integer(),
        "processingTargets" => list(String.t() | atom())
      }

  """
  @type job_process_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_detect_mitigation_actions_task_request() :: %{}

  """
  @type cancel_detect_mitigation_actions_task_request() :: %{}

  @typedoc """

  ## Example:

      get_command_execution_request() :: %{
        optional("includeResult") => boolean(),
        required("targetArn") => String.t() | atom()
      }

  """
  @type get_command_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_mitigation_actions_task_request() :: %{}

  """
  @type describe_audit_mitigation_actions_task_request() :: %{}

  @typedoc """

  ## Example:

      sns_action() :: %{
        "messageFormat" => list(any()),
        "roleArn" => String.t() | atom(),
        "targetArn" => String.t() | atom()
      }

  """
  @type sns_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indexing_filter() :: %{
        "geoLocations" => list(geo_location_target()),
        "namedShadowNames" => list(String.t() | atom())
      }

  """
  @type indexing_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_logging_options_request() :: %{
        required("loggingOptionsPayload") => logging_options_payload()
      }

  """
  @type set_logging_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deprecate_thing_type_response() :: %{}

  """
  @type deprecate_thing_type_response() :: %{}

  @typedoc """

  ## Example:

      describe_audit_finding_response() :: %{
        "finding" => audit_finding()
      }

  """
  @type describe_audit_finding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_attached_policies_request() :: %{
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        optional("recursive") => boolean()
      }

  """
  @type list_attached_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sig_v4_authorization() :: %{
        "roleArn" => String.t() | atom(),
        "serviceName" => String.t() | atom(),
        "signingRegion" => String.t() | atom()
      }

  """
  @type sig_v4_authorization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stream_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("files") => list(stream_file()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_provisioning_template_request() :: %{
        optional("defaultVersionId") => integer(),
        optional("description") => String.t() | atom(),
        optional("enabled") => boolean(),
        optional("preProvisioningHook") => provisioning_hook(),
        optional("provisioningRoleArn") => String.t() | atom(),
        optional("removePreProvisioningHook") => boolean()
      }

  """
  @type update_provisioning_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_v2_logging_levels_response() :: %{
        "logTargetConfigurations" => list(log_target_configuration()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_v2_logging_levels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_audit_suppression_request() :: %{
        required("checkName") => String.t() | atom(),
        required("resourceIdentifier") => resource_identifier()
      }

  """
  @type delete_audit_suppression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_event_configurations_request() :: %{}

  """
  @type describe_event_configurations_request() :: %{}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "isConcurrent" => boolean(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "targetSelection" => list(any()),
        "thingGroupId" => String.t() | atom()
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scheduled_audit_request() :: %{
        optional("dayOfMonth") => String.t() | atom(),
        optional("dayOfWeek") => list(any()),
        optional("tags") => list(tag()),
        required("frequency") => list(any()),
        required("targetCheckNames") => list(String.t() | atom())
      }

  """
  @type create_scheduled_audit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sbom() :: %{
        "s3Location" => s3_location()
      }

  """
  @type sbom() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_finding_request() :: %{}

  """
  @type describe_audit_finding_request() :: %{}

  @typedoc """

  ## Example:

      get_statistics_request() :: %{
        optional("aggregationField") => String.t() | atom(),
        optional("indexName") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        required("queryString") => String.t() | atom()
      }

  """
  @type get_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_attribute() :: %{
        "attributes" => map(),
        "thingArn" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "thingTypeName" => String.t() | atom(),
        "version" => float()
      }

  """
  @type thing_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_active_violations_response() :: %{
        "activeViolations" => list(active_violation()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_active_violations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_custom_metric_response() :: %{
        "creationDate" => non_neg_integer(),
        "displayName" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom(),
        "metricType" => list(any())
      }

  """
  @type describe_custom_metric_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_command_request() :: %{
        optional("description") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("mandatoryParameters") => list(command_parameter()),
        optional("namespace") => list(any()),
        optional("payload") => command_payload(),
        optional("roleArn") => String.t() | atom(),
        optional("tags") => list(tag())
      }

  """
  @type create_command_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_command_request() :: %{}

  """
  @type delete_command_request() :: %{}

  @typedoc """

  ## Example:

      cancel_detect_mitigation_actions_task_response() :: %{}

  """
  @type cancel_detect_mitigation_actions_task_response() :: %{}

  @typedoc """

  ## Example:

      describe_managed_job_template_request() :: %{
        optional("templateVersion") => String.t() | atom()
      }

  """
  @type describe_managed_job_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_targets_for_policy_response() :: %{
        "nextMarker" => String.t() | atom(),
        "targets" => list(String.t() | atom())
      }

  """
  @type list_targets_for_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_audit_suppression_request() :: %{
        optional("description") => String.t() | atom(),
        optional("expirationDate") => non_neg_integer(),
        optional("suppressIndefinitely") => boolean(),
        required("checkName") => String.t() | atom(),
        required("clientRequestToken") => String.t() | atom(),
        required("resourceIdentifier") => resource_identifier()
      }

  """
  @type create_audit_suppression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_configuration_request() :: %{}

  """
  @type delete_domain_configuration_request() :: %{}

  @typedoc """

  ## Example:

      aws_job_rate_increase_criteria() :: %{
        "numberOfNotifiedThings" => integer(),
        "numberOfSucceededThings" => integer()
      }

  """
  @type aws_job_rate_increase_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloudwatch_metric_action() :: %{
        "metricName" => String.t() | atom(),
        "metricNamespace" => String.t() | atom(),
        "metricTimestamp" => String.t() | atom(),
        "metricUnit" => String.t() | atom(),
        "metricValue" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type cloudwatch_metric_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificate_providers_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_certificate_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_execution_response() :: %{
        "execution" => job_execution()
      }

  """
  @type describe_job_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_version_request() :: %{}

  """
  @type delete_policy_version_request() :: %{}

  @typedoc """

  ## Example:

      http_context() :: %{
        "headers" => map(),
        "queryString" => String.t() | atom()
      }

  """
  @type http_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_security_profile_response() :: %{}

  """
  @type detach_security_profile_response() :: %{}

  @typedoc """

  ## Example:

      iot_analytics_action() :: %{
        "batchMode" => boolean(),
        "channelArn" => String.t() | atom(),
        "channelName" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type iot_analytics_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_datum() :: %{
        "timestamp" => non_neg_integer(),
        "value" => metric_value()
      }

  """
  @type metric_datum() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_response() :: %{}

  """
  @type delete_package_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_options_payload() :: %{
        "logLevel" => list(any()),
        "roleArn" => String.t() | atom()
      }

  """
  @type logging_options_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_security_profile_request() :: %{
        optional("additionalMetricsToRetain") => list(String.t() | atom()),
        optional("additionalMetricsToRetainV2") => list(metric_to_retain()),
        optional("alertTargets") => map(),
        optional("behaviors") => list(behavior()),
        optional("metricsExportConfig") => metrics_export_config(),
        optional("securityProfileDescription") => String.t() | atom(),
        optional("tags") => list(tag())
      }

  """
  @type create_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_mitigation_action_response() :: %{
        "actionArn" => String.t() | atom(),
        "actionId" => String.t() | atom()
      }

  """
  @type create_mitigation_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_ota_updates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("otaUpdateStatus") => list(any())
      }

  """
  @type list_ota_updates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_indexing_configuration_request() :: %{
        optional("thingGroupIndexingConfiguration") => thing_group_indexing_configuration(),
        optional("thingIndexingConfiguration") => thing_indexing_configuration()
      }

  """
  @type update_indexing_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_in_billing_group_response() :: %{
        "nextToken" => String.t() | atom(),
        "things" => list(String.t() | atom())
      }

  """
  @type list_things_in_billing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_command_request() :: %{}

  """
  @type get_command_request() :: %{}

  @typedoc """

  ## Example:

      list_managed_job_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("templateName") => String.t() | atom()
      }

  """
  @type list_managed_job_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioning_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_provisioning_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_action() :: %{
        "functionArn" => String.t() | atom()
      }

  """
  @type lambda_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_security_profile_request() :: %{
        required("securityProfileTargetArn") => String.t() | atom()
      }

  """
  @type attach_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_command_request() :: %{
        optional("deprecated") => boolean(),
        optional("description") => String.t() | atom(),
        optional("displayName") => String.t() | atom()
      }

  """
  @type update_command_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_parameter() :: %{
        "defaultValue" => command_parameter_value(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "value" => command_parameter_value()
      }

  """
  @type command_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_role_alias_request() :: %{
        optional("credentialDurationSeconds") => integer(),
        optional("roleArn") => String.t() | atom()
      }

  """
  @type update_role_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kinesis_action() :: %{
        "partitionKey" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "streamName" => String.t() | atom()
      }

  """
  @type kinesis_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timestream_timestamp() :: %{
        "unit" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type timestream_timestamp() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_identifier() :: %{
        "account" => String.t() | atom(),
        "caCertificateId" => String.t() | atom(),
        "clientId" => String.t() | atom(),
        "cognitoIdentityPoolId" => String.t() | atom(),
        "deviceCertificateArn" => String.t() | atom(),
        "deviceCertificateId" => String.t() | atom(),
        "iamRoleArn" => String.t() | atom(),
        "issuerCertificateIdentifier" => issuer_certificate_identifier(),
        "policyVersionIdentifier" => policy_version_identifier(),
        "roleAliasArn" => String.t() | atom()
      }

  """
  @type resource_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signing_profile_parameter() :: %{
        "certificateArn" => String.t() | atom(),
        "certificatePathOnDevice" => String.t() | atom(),
        "platform" => String.t() | atom()
      }

  """
  @type signing_profile_parameter() :: %{(String.t() | atom()) => any()}

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

      list_custom_metrics_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_custom_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_package_version_request() :: %{
        optional("artifact") => package_version_artifact(),
        optional("attributes") => map(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("recipe") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_version_request() :: %{
        optional("setAsDefault") => boolean(),
        required("policyDocument") => String.t() | atom()
      }

  """
  @type create_policy_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_response_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_response_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_job_request() :: %{
        optional("abortConfig") => abort_config(),
        optional("description") => String.t() | atom(),
        optional("jobExecutionsRetryConfig") => job_executions_retry_config(),
        optional("jobExecutionsRolloutConfig") => job_executions_rollout_config(),
        optional("namespaceId") => String.t() | atom(),
        optional("presignedUrlConfig") => presigned_url_config(),
        optional("timeoutConfig") => timeout_config()
      }

  """
  @type update_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_thing_group_request() :: %{}

  """
  @type describe_thing_group_request() :: %{}

  @typedoc """

  ## Example:

      describe_audit_suppression_response() :: %{
        "checkName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "expirationDate" => non_neg_integer(),
        "resourceIdentifier" => resource_identifier(),
        "suppressIndefinitely" => boolean()
      }

  """
  @type describe_audit_suppression_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_audit_suppression_request() :: %{
        optional("description") => String.t() | atom(),
        optional("expirationDate") => non_neg_integer(),
        optional("suppressIndefinitely") => boolean(),
        required("checkName") => String.t() | atom(),
        required("resourceIdentifier") => resource_identifier()
      }

  """
  @type update_audit_suppression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_group_request() :: %{
        optional("expectedVersion") => float(),
        required("thingGroupProperties") => thing_group_properties()
      }

  """
  @type update_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type certificate_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_mitigation_action_request() :: %{}

  """
  @type describe_mitigation_action_request() :: %{}

  @typedoc """

  ## Example:

      create_thing_group_request() :: %{
        optional("parentGroupName") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("thingGroupProperties") => thing_group_properties()
      }

  """
  @type create_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scheduled_audits_response() :: %{
        "nextToken" => String.t() | atom(),
        "scheduledAudits" => list(scheduled_audit_metadata())
      }

  """
  @type list_scheduled_audits_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_io_t_logging_params() :: %{
        "logLevel" => list(any()),
        "roleArnForLogging" => String.t() | atom()
      }

  """
  @type enable_io_t_logging_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_template_request() :: %{}

  """
  @type describe_job_template_request() :: %{}

  @typedoc """

  ## Example:

      list_thing_types_response() :: %{
        "nextToken" => String.t() | atom(),
        "thingTypes" => list(thing_type_definition())
      }

  """
  @type list_thing_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profiles_response() :: %{
        "nextToken" => String.t() | atom(),
        "securityProfileIdentifiers" => list(security_profile_identifier())
      }

  """
  @type list_security_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_streams_response() :: %{
        "nextToken" => String.t() | atom(),
        "streams" => list(stream_summary())
      }

  """
  @type list_streams_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_ca_certificate_request() :: %{
        optional("allowAutoRegistration") => boolean(),
        optional("certificateMode") => list(any()),
        optional("registrationConfig") => registration_config(),
        optional("setAsActive") => boolean(),
        optional("tags") => list(tag()),
        optional("verificationCertificate") => String.t() | atom(),
        required("caCertificate") => String.t() | atom()
      }

  """
  @type register_ca_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_certificate_provider_request() :: %{}

  """
  @type delete_certificate_provider_request() :: %{}

  @typedoc """

  ## Example:

      describe_dimension_request() :: %{}

  """
  @type describe_dimension_request() :: %{}

  @typedoc """

  ## Example:

      cloudwatch_alarm_action() :: %{
        "alarmName" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "stateReason" => String.t() | atom(),
        "stateValue" => String.t() | atom()
      }

  """
  @type cloudwatch_alarm_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_filter() :: %{
        "after" => String.t() | atom(),
        "before" => String.t() | atom()
      }

  """
  @type time_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_billing_group_response() :: %{}

  """
  @type delete_billing_group_response() :: %{}

  @typedoc """

  ## Example:

      effective_policy() :: %{
        "policyArn" => String.t() | atom(),
        "policyDocument" => String.t() | atom(),
        "policyName" => String.t() | atom()
      }

  """
  @type effective_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_logging_options_response() :: %{
        "logLevel" => list(any()),
        "roleArn" => String.t() | atom()
      }

  """
  @type get_logging_options_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_role_alias_response() :: %{
        "roleAliasDescription" => role_alias_description()
      }

  """
  @type describe_role_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_policy_request() :: %{
        required("target") => String.t() | atom()
      }

  """
  @type attach_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_registration_code_request() :: %{}

  """
  @type get_registration_code_request() :: %{}

  @typedoc """

  ## Example:

      describe_thing_registration_task_response() :: %{
        "creationDate" => non_neg_integer(),
        "failureCount" => integer(),
        "inputFileBucket" => String.t() | atom(),
        "inputFileKey" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "message" => String.t() | atom(),
        "percentageProgress" => integer(),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "successCount" => integer(),
        "taskId" => String.t() | atom(),
        "templateBody" => String.t() | atom()
      }

  """
  @type describe_thing_registration_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_principal_things_response() :: %{
        "nextToken" => String.t() | atom(),
        "things" => list(String.t() | atom())
      }

  """
  @type list_principal_things_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_topic_rule_request() :: %{}

  """
  @type delete_topic_rule_request() :: %{}

  @typedoc """

  ## Example:

      create_certificate_from_csr_response() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "certificatePem" => String.t() | atom()
      }

  """
  @type create_certificate_from_csr_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_thing_request() :: %{
        optional("parameters") => map(),
        required("templateBody") => String.t() | atom()
      }

  """
  @type register_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_certificate_request() :: %{}

  """
  @type describe_certificate_request() :: %{}

  @typedoc """

  ## Example:

      list_principal_policies_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        required("principal") => String.t() | atom()
      }

  """
  @type list_principal_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_principal_object() :: %{
        "principal" => String.t() | atom(),
        "thingPrincipalType" => list(any())
      }

  """
  @type thing_principal_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_account_audit_configuration_request() :: %{
        optional("deleteScheduledAudits") => boolean()
      }

  """
  @type delete_account_audit_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_config() :: %{
        "criteriaList" => list(abort_criteria())
      }

  """
  @type abort_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ota_update_request() :: %{
        optional("deleteStream") => boolean(),
        optional("forceDeleteAWSJob") => boolean()
      }

  """
  @type delete_ota_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_metric_values_response() :: %{
        "metricDatumList" => list(metric_datum()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_metric_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      client_certificate_config() :: %{
        "clientCertificateCallbackArn" => String.t() | atom()
      }

  """
  @type client_certificate_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_certificate_provider_request() :: %{
        optional("accountDefaultForOperations") => list(list(any())()),
        optional("lambdaFunctionArn") => String.t() | atom()
      }

  """
  @type update_certificate_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_configurations_request() :: %{
        optional("eventConfigurations") => map()
      }

  """
  @type update_event_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allowed() :: %{
        "policies" => list(policy())
      }

  """
  @type allowed() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dimension_request() :: %{
        required("stringValues") => list(String.t() | atom())
      }

  """
  @type update_dimension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deprecate_thing_type_request() :: %{
        optional("undoDeprecate") => boolean()
      }

  """
  @type deprecate_thing_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_detect_mitigation_actions_task_request() :: %{}

  """
  @type describe_detect_mitigation_actions_task_request() :: %{}

  @typedoc """

  ## Example:

      security_profile_target() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type security_profile_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_type_response() :: %{}

  """
  @type delete_thing_type_response() :: %{}

  @typedoc """

  ## Example:

      issuer_certificate_identifier() :: %{
        "issuerCertificateSerialNumber" => String.t() | atom(),
        "issuerCertificateSubject" => String.t() | atom(),
        "issuerId" => String.t() | atom()
      }

  """
  @type issuer_certificate_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule_destination_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "httpUrlSummary" => http_url_destination_summary(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "vpcDestinationSummary" => vpc_destination_summary()
      }

  """
  @type topic_rule_destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alert_target() :: %{
        "alertTargetArn" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type alert_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_statistics_for_audit_check() :: %{
        "canceledFindingsCount" => float(),
        "failedFindingsCount" => float(),
        "skippedFindingsCount" => float(),
        "succeededFindingsCount" => float(),
        "totalFindingsCount" => float()
      }

  """
  @type task_statistics_for_audit_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_configurations_request() :: %{
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        optional("serviceType") => list(any())
      }

  """
  @type list_domain_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_executions_for_job_response() :: %{
        "executionSummaries" => list(job_execution_summary_for_job()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_job_executions_for_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      field() :: %{
        "name" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_functions_action() :: %{
        "executionNamePrefix" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "stateMachineName" => String.t() | atom()
      }

  """
  @type step_functions_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_groups_for_thing_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_thing_groups_for_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificate_providers_response() :: %{
        "certificateProviders" => list(certificate_provider_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_certificate_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_thing_object() :: %{
        "thingName" => String.t() | atom(),
        "thingPrincipalType" => list(any())
      }

  """
  @type principal_thing_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_payload() :: %{
        "attributes" => map(),
        "merge" => boolean()
      }

  """
  @type attribute_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dynamic_thing_group_request() :: %{
        optional("expectedVersion") => float(),
        optional("indexName") => String.t() | atom(),
        optional("queryString") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        required("thingGroupProperties") => thing_group_properties()
      }

  """
  @type update_dynamic_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_role_alias_response() :: %{
        "roleAlias" => String.t() | atom(),
        "roleAliasArn" => String.t() | atom()
      }

  """
  @type update_role_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_state_transition_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_state_transition_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      presigned_url_config() :: %{
        "expiresInSec" => float(),
        "roleArn" => String.t() | atom()
      }

  """
  @type presigned_url_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_principals_v2_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("thingPrincipalType") => list(any())
      }

  """
  @type list_thing_principals_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_job_abort_config() :: %{
        "abortCriteriaList" => list(aws_job_abort_criteria())
      }

  """
  @type aws_job_abort_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_request() :: %{
        optional("beforeSubstitution") => boolean()
      }

  """
  @type describe_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_job_template_summary() :: %{
        "description" => String.t() | atom(),
        "environments" => list(String.t() | atom()),
        "templateArn" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "templateVersion" => String.t() | atom()
      }

  """
  @type managed_job_template_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_already_completed_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type transfer_already_completed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_configuration_response() :: %{
        "domainConfigurationArn" => String.t() | atom(),
        "domainConfigurationName" => String.t() | atom()
      }

  """
  @type create_domain_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_endpoint_request() :: %{
        optional("endpointType") => String.t() | atom()
      }

  """
  @type describe_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_registration_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_thing_registration_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "nextToken" => String.t() | atom(),
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_v2_logging_options_request() :: %{}

  """
  @type get_v2_logging_options_request() :: %{}

  @typedoc """

  ## Example:

      configuration_details() :: %{
        "configurationStatus" => list(any()),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom()
      }

  """
  @type configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dynamic_thing_group_request() :: %{
        optional("indexName") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("thingGroupProperties") => thing_group_properties(),
        required("queryString") => String.t() | atom()
      }

  """
  @type create_dynamic_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "errorMessage" => String.t() | atom()
      }

  """
  @type validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_thing_principal_response() :: %{}

  """
  @type attach_thing_principal_response() :: %{}

  @typedoc """

  ## Example:

      update_ca_certificate_request() :: %{
        optional("newAutoRegistrationStatus") => list(any()),
        optional("newStatus") => list(any()),
        optional("registrationConfig") => registration_config(),
        optional("removeAutoRegistration") => boolean()
      }

  """
  @type update_ca_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_encryption_configuration_request() :: %{
        optional("kmsAccessRoleArn") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        required("encryptionType") => list(any())
      }

  """
  @type update_encryption_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ota_update_response() :: %{}

  """
  @type delete_ota_update_response() :: %{}

  @typedoc """

  ## Example:

      clear_default_authorizer_response() :: %{}

  """
  @type clear_default_authorizer_response() :: %{}

  @typedoc """

  ## Example:

      auth_info() :: %{
        "actionType" => list(any()),
        "resources" => list(String.t() | atom())
      }

  """
  @type auth_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dimension_request() :: %{}

  """
  @type delete_dimension_request() :: %{}

  @typedoc """

  ## Example:

      describe_job_template_response() :: %{
        "abortConfig" => abort_config(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "destinationPackageVersions" => list(String.t() | atom()),
        "document" => String.t() | atom(),
        "documentSource" => String.t() | atom(),
        "jobExecutionsRetryConfig" => job_executions_retry_config(),
        "jobExecutionsRolloutConfig" => job_executions_rollout_config(),
        "jobTemplateArn" => String.t() | atom(),
        "jobTemplateId" => String.t() | atom(),
        "maintenanceWindows" => list(maintenance_window()),
        "presignedUrlConfig" => presigned_url_config(),
        "timeoutConfig" => timeout_config()
      }

  """
  @type describe_job_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_certificate_request() :: %{
        optional("caCertificatePem") => String.t() | atom(),
        optional("setAsActive") => boolean(),
        optional("status") => list(any()),
        required("certificatePem") => String.t() | atom()
      }

  """
  @type register_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_active_violations_request() :: %{
        optional("behaviorCriteriaType") => list(any()),
        optional("listSuppressedAlerts") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("securityProfileName") => String.t() | atom(),
        optional("thingName") => String.t() | atom(),
        optional("verificationState") => list(any())
      }

  """
  @type list_active_violations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_certificate_provider_response() :: %{
        "accountDefaultForOperations" => list(list(any())()),
        "certificateProviderArn" => String.t() | atom(),
        "certificateProviderName" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "lambdaFunctionArn" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer()
      }

  """
  @type describe_certificate_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_default_authorizer_response() :: %{
        "authorizerArn" => String.t() | atom(),
        "authorizerName" => String.t() | atom()
      }

  """
  @type set_default_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_thing_response() :: %{
        "attributes" => map(),
        "billingGroupName" => String.t() | atom(),
        "defaultClientId" => String.t() | atom(),
        "thingArn" => String.t() | atom(),
        "thingId" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "thingTypeName" => String.t() | atom(),
        "version" => float()
      }

  """
  @type describe_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_verification_state_on_violation_response() :: %{}

  """
  @type put_verification_state_on_violation_response() :: %{}

  @typedoc """

  ## Example:

      delete_topic_rule_destination_request() :: %{}

  """
  @type delete_topic_rule_destination_request() :: %{}

  @typedoc """

  ## Example:

      remove_thing_from_thing_group_response() :: %{}

  """
  @type remove_thing_from_thing_group_response() :: %{}

  @typedoc """

  ## Example:

      security_profile_target_mapping() :: %{
        "securityProfileIdentifier" => security_profile_identifier(),
        "target" => security_profile_target()
      }

  """
  @type security_profile_target_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_outgoing_certificates_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_outgoing_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "tasks" => list(audit_task_metadata())
      }

  """
  @type list_audit_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t() | atom(),
        "key" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_item_input() :: %{
        "tableName" => String.t() | atom()
      }

  """
  @type put_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_mitigation_action_response() :: %{
        "actionArn" => String.t() | atom(),
        "actionId" => String.t() | atom()
      }

  """
  @type update_mitigation_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("defaultVersionName") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("unsetDefaultVersion") => boolean()
      }

  """
  @type update_package_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_encryption_configuration_response() :: %{
        "configurationDetails" => configuration_details(),
        "encryptionType" => list(any()),
        "kmsAccessRoleArn" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer()
      }

  """
  @type describe_encryption_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_mitigation_action_execution() :: %{
        "actionName" => String.t() | atom(),
        "errorCode" => String.t() | atom(),
        "executionEndDate" => non_neg_integer(),
        "executionStartDate" => non_neg_integer(),
        "message" => String.t() | atom(),
        "status" => list(any()),
        "taskId" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "violationId" => String.t() | atom()
      }

  """
  @type detect_mitigation_action_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_audit_suppression_response() :: %{}

  """
  @type create_audit_suppression_response() :: %{}

  @typedoc """

  ## Example:

      add_thing_to_thing_group_response() :: %{}

  """
  @type add_thing_to_thing_group_response() :: %{}

  @typedoc """

  ## Example:

      violation_event() :: %{
        "behavior" => behavior(),
        "metricValue" => metric_value(),
        "securityProfileName" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "verificationState" => list(any()),
        "verificationStateDescription" => String.t() | atom(),
        "violationEventAdditionalInfo" => violation_event_additional_info(),
        "violationEventTime" => non_neg_integer(),
        "violationEventType" => list(any()),
        "violationId" => String.t() | atom()
      }

  """
  @type violation_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_indices_response() :: %{
        "indexNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_indices_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_command_executions_request() :: %{
        optional("commandArn") => String.t() | atom(),
        optional("completedTimeFilter") => time_filter(),
        optional("maxResults") => integer(),
        optional("namespace") => list(any()),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        optional("startedTimeFilter") => time_filter(),
        optional("status") => list(any()),
        optional("targetArn") => String.t() | atom()
      }

  """
  @type list_command_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_pair() :: %{
        "PrivateKey" => String.t() | atom(),
        "PublicKey" => String.t() | atom()
      }

  """
  @type key_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scheduled_audit_response() :: %{
        "scheduledAuditArn" => String.t() | atom()
      }

  """
  @type update_scheduled_audit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_executions_retry_config() :: %{
        "criteriaList" => list(retry_criteria())
      }

  """
  @type job_executions_retry_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kafka_action() :: %{
        "clientProperties" => map(),
        "destinationArn" => String.t() | atom(),
        "headers" => list(kafka_action_header()),
        "key" => String.t() | atom(),
        "partition" => String.t() | atom(),
        "topic" => String.t() | atom()
      }

  """
  @type kafka_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_destination() :: %{
        "bucket" => String.t() | atom(),
        "prefix" => String.t() | atom()
      }

  """
  @type s3_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_dimension() :: %{
        "dimensionName" => String.t() | atom(),
        "operator" => list(any())
      }

  """
  @type metric_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_response() :: %{
        "policyArn" => String.t() | atom(),
        "policyDocument" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "policyVersionId" => String.t() | atom()
      }

  """
  @type create_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_response() :: %{
        "artifact" => package_version_artifact(),
        "attributes" => map(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "errorReason" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "packageName" => String.t() | atom(),
        "packageVersionArn" => String.t() | atom(),
        "recipe" => String.t() | atom(),
        "sbom" => sbom(),
        "sbomValidationStatus" => list(any()),
        "status" => list(any()),
        "versionName" => String.t() | atom()
      }

  """
  @type get_package_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_execution() :: %{
        "approximateSecondsBeforeTimedOut" => float(),
        "executionNumber" => float(),
        "forceCanceled" => boolean(),
        "jobId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "queuedAt" => non_neg_integer(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusDetails" => job_execution_status_details(),
        "thingArn" => String.t() | atom(),
        "versionNumber" => float()
      }

  """
  @type job_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduled_audit_metadata() :: %{
        "dayOfMonth" => String.t() | atom(),
        "dayOfWeek" => list(any()),
        "frequency" => list(any()),
        "scheduledAuditArn" => String.t() | atom(),
        "scheduledAuditName" => String.t() | atom()
      }

  """
  @type scheduled_audit_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_sbom_from_package_version_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type disassociate_sbom_from_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_configuration_summary() :: %{
        "domainConfigurationArn" => String.t() | atom(),
        "domainConfigurationName" => String.t() | atom(),
        "serviceType" => list(any())
      }

  """
  @type domain_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_provisioning_template_request() :: %{}

  """
  @type describe_provisioning_template_request() :: %{}

  @typedoc """

  ## Example:

      cancel_audit_mitigation_actions_task_response() :: %{}

  """
  @type cancel_audit_mitigation_actions_task_response() :: %{}

  @typedoc """

  ## Example:

      list_policy_versions_request() :: %{}

  """
  @type list_policy_versions_request() :: %{}

  @typedoc """

  ## Example:

      invalid_query_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_query_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_stream_request() :: %{
        optional("description") => String.t() | atom(),
        optional("files") => list(stream_file()),
        optional("roleArn") => String.t() | atom()
      }

  """
  @type update_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_command_execution_response() :: %{
        "commandArn" => String.t() | atom(),
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "executionId" => String.t() | atom(),
        "executionTimeoutSeconds" => float(),
        "lastUpdatedAt" => non_neg_integer(),
        "parameters" => map(),
        "result" => map(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => status_reason(),
        "targetArn" => String.t() | atom(),
        "timeToLive" => non_neg_integer()
      }

  """
  @type get_command_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_criteria() :: %{
        "action" => list(any()),
        "failureType" => list(any()),
        "minNumberOfExecutedThings" => integer(),
        "thresholdPercentage" => float()
      }

  """
  @type abort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule_list_item() :: %{
        "createdAt" => non_neg_integer(),
        "ruleArn" => String.t() | atom(),
        "ruleDisabled" => boolean(),
        "ruleName" => String.t() | atom(),
        "topicPattern" => String.t() | atom()
      }

  """
  @type topic_rule_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_group_response() :: %{}

  """
  @type delete_thing_group_response() :: %{}

  @typedoc """

  ## Example:

      propagating_attribute() :: %{
        "connectionAttribute" => String.t() | atom(),
        "thingAttribute" => String.t() | atom(),
        "userPropertyKey" => String.t() | atom()
      }

  """
  @type propagating_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "creationDate" => non_neg_integer(),
        "defaultVersionId" => String.t() | atom(),
        "generationId" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "policyArn" => String.t() | atom(),
        "policyDocument" => String.t() | atom(),
        "policyName" => String.t() | atom()
      }

  """
  @type get_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_ca_certificate_response() :: %{
        "certificateDescription" => ca_certificate_description(),
        "registrationConfig" => registration_config()
      }

  """
  @type describe_ca_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_role_alias_response() :: %{}

  """
  @type delete_role_alias_response() :: %{}

  @typedoc """

  ## Example:

      create_mitigation_action_request() :: %{
        optional("tags") => list(tag()),
        required("actionParams") => mitigation_action_params(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_mitigation_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ca_certificate() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type ca_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      confirm_topic_rule_destination_request() :: %{}

  """
  @type confirm_topic_rule_destination_request() :: %{}

  @typedoc """

  ## Example:

      disable_topic_rule_request() :: %{}

  """
  @type disable_topic_rule_request() :: %{}

  @typedoc """

  ## Example:

      describe_stream_request() :: %{}

  """
  @type describe_stream_request() :: %{}

  @typedoc """

  ## Example:

      update_stream_response() :: %{
        "description" => String.t() | atom(),
        "streamArn" => String.t() | atom(),
        "streamId" => String.t() | atom(),
        "streamVersion" => integer()
      }

  """
  @type update_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_metric_response() :: %{}

  """
  @type delete_custom_metric_response() :: %{}

  @typedoc """

  ## Example:

      search_index_response() :: %{
        "nextToken" => String.t() | atom(),
        "thingGroups" => list(thing_group_document()),
        "things" => list(thing_document())
      }

  """
  @type search_index_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_statistics() :: %{
        "canceledChecks" => integer(),
        "compliantChecks" => integer(),
        "failedChecks" => integer(),
        "inProgressChecks" => integer(),
        "nonCompliantChecks" => integer(),
        "totalChecks" => integer(),
        "waitingForDataCollectionChecks" => integer()
      }

  """
  @type task_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_configured_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type not_configured_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_location() :: %{
        "s3Location" => s3_location(),
        "stream" => stream()
      }

  """
  @type file_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_thing_registration_task_request() :: %{}

  """
  @type describe_thing_registration_task_request() :: %{}

  @typedoc """

  ## Example:

      job_execution_status_details() :: %{
        "detailsMap" => map()
      }

  """
  @type job_execution_status_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dimension_response() :: %{}

  """
  @type delete_dimension_response() :: %{}

  @typedoc """

  ## Example:

      rate_increase_criteria() :: %{
        "numberOfNotifiedThings" => integer(),
        "numberOfSucceededThings" => integer()
      }

  """
  @type rate_increase_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_registration_code_response() :: %{
        "registrationCode" => String.t() | atom()
      }

  """
  @type get_registration_code_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_group_metadata() :: %{
        "creationDate" => non_neg_integer(),
        "parentGroupName" => String.t() | atom(),
        "rootToParentThingGroups" => list(group_name_and_arn())
      }

  """
  @type thing_group_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_code_signing() :: %{
        "certificateChain" => code_signing_certificate_chain(),
        "hashAlgorithm" => String.t() | atom(),
        "signature" => code_signing_signature(),
        "signatureAlgorithm" => String.t() | atom()
      }

  """
  @type custom_code_signing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_name_and_arn() :: %{
        "groupArn" => String.t() | atom(),
        "groupName" => String.t() | atom()
      }

  """
  @type group_name_and_arn() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_summary() :: %{
        "creationDate" => non_neg_integer(),
        "defaultVersionName" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "packageName" => String.t() | atom()
      }

  """
  @type package_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_thing_group_response() :: %{
        "thingGroupArn" => String.t() | atom(),
        "thingGroupId" => String.t() | atom(),
        "thingGroupName" => String.t() | atom()
      }

  """
  @type create_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ca_certificate_response() :: %{}

  """
  @type delete_ca_certificate_response() :: %{}

  @typedoc """

  ## Example:

      list_ota_updates_response() :: %{
        "nextToken" => String.t() | atom(),
        "otaUpdates" => list(ota_update_summary())
      }

  """
  @type list_ota_updates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_response() :: %{}

  """
  @type update_thing_response() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_v2_logging_levels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("targetType") => list(any())
      }

  """
  @type list_v2_logging_levels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_default_authorizer_response() :: %{
        "authorizerDescription" => authorizer_description()
      }

  """
  @type describe_default_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_execution_result() :: %{
        "B" => boolean(),
        "BIN" => binary(),
        "S" => String.t() | atom()
      }

  """
  @type command_execution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_configuration_response() :: %{
        "versionUpdateByJobsConfig" => version_update_by_jobs_config()
      }

  """
  @type get_package_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_billing_group_request() :: %{
        optional("expectedVersion") => float(),
        required("billingGroupProperties") => billing_group_properties()
      }

  """
  @type update_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_request() :: %{}

  """
  @type delete_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_security_profile_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_groups_for_thing_response() :: %{}

  """
  @type update_thing_groups_for_thing_response() :: %{}

  @typedoc """

  ## Example:

      delete_job_execution_request() :: %{
        optional("force") => boolean(),
        optional("namespaceId") => String.t() | atom()
      }

  """
  @type delete_job_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_group_properties() :: %{
        "attributePayload" => attribute_payload(),
        "thingGroupDescription" => String.t() | atom()
      }

  """
  @type thing_group_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_mitigation_action_response() :: %{}

  """
  @type delete_mitigation_action_response() :: %{}

  @typedoc """

  ## Example:

      get_buckets_aggregation_request() :: %{
        optional("indexName") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        required("aggregationField") => String.t() | atom(),
        required("bucketsAggregationType") => buckets_aggregation_type(),
        required("queryString") => String.t() | atom()
      }

  """
  @type get_buckets_aggregation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "certificateMode" => list(any()),
        "creationDate" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_update_summary() :: %{
        "creationDate" => non_neg_integer(),
        "otaUpdateArn" => String.t() | atom(),
        "otaUpdateId" => String.t() | atom()
      }

  """
  @type ota_update_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_default_authorizer_request() :: %{
        required("authorizerName") => String.t() | atom()
      }

  """
  @type set_default_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      denied() :: %{
        "explicitDeny" => explicit_deny(),
        "implicitDeny" => implicit_deny()
      }

  """
  @type denied() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_fleet_metric_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_fleet_metric_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_provisioning_template_response() :: %{
        "creationDate" => non_neg_integer(),
        "defaultVersionId" => integer(),
        "description" => String.t() | atom(),
        "enabled" => boolean(),
        "lastModifiedDate" => non_neg_integer(),
        "preProvisioningHook" => provisioning_hook(),
        "provisioningRoleArn" => String.t() | atom(),
        "templateArn" => String.t() | atom(),
        "templateBody" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type describe_provisioning_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_response() :: %{
        "nextToken" => String.t() | atom(),
        "things" => list(thing_attribute())
      }

  """
  @type list_things_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_provisioning_template_version_response() :: %{}

  """
  @type delete_provisioning_template_version_response() :: %{}

  @typedoc """

  ## Example:

      asset_property_timestamp() :: %{
        "offsetInNanos" => String.t() | atom(),
        "timeInSeconds" => String.t() | atom()
      }

  """
  @type asset_property_timestamp() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_metric_response() :: %{
        "creationDate" => non_neg_integer(),
        "displayName" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom(),
        "metricType" => list(any())
      }

  """
  @type update_custom_metric_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing_certificate_chain() :: %{
        "certificateName" => String.t() | atom(),
        "inlineDocument" => String.t() | atom()
      }

  """
  @type code_signing_certificate_chain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scheduled_audit_response() :: %{
        "scheduledAuditArn" => String.t() | atom()
      }

  """
  @type create_scheduled_audit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_metric_request() :: %{
        optional("displayName") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("clientRequestToken") => String.t() | atom(),
        required("metricType") => list(any())
      }

  """
  @type create_custom_metric_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type task_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_groups_for_thing_response() :: %{
        "nextToken" => String.t() | atom(),
        "thingGroups" => list(group_name_and_arn())
      }

  """
  @type list_thing_groups_for_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_certificate_response() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom()
      }

  """
  @type register_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorizer_description() :: %{
        "authorizerArn" => String.t() | atom(),
        "authorizerFunctionArn" => String.t() | atom(),
        "authorizerName" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "enableCachingForHttp" => boolean(),
        "lastModifiedDate" => non_neg_integer(),
        "signingDisabled" => boolean(),
        "status" => list(any()),
        "tokenKeyName" => String.t() | atom(),
        "tokenSigningPublicKeys" => map()
      }

  """
  @type authorizer_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_url_destination_summary() :: %{
        "confirmationUrl" => String.t() | atom()
      }

  """
  @type http_url_destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action() :: %{
        "cloudwatchAlarm" => cloudwatch_alarm_action(),
        "cloudwatchLogs" => cloudwatch_logs_action(),
        "cloudwatchMetric" => cloudwatch_metric_action(),
        "dynamoDB" => dynamo_db_action(),
        "dynamoDBv2" => dynamo_dbv2_action(),
        "elasticsearch" => elasticsearch_action(),
        "firehose" => firehose_action(),
        "http" => http_action(),
        "iotAnalytics" => iot_analytics_action(),
        "iotEvents" => iot_events_action(),
        "iotSiteWise" => iot_site_wise_action(),
        "kafka" => kafka_action(),
        "kinesis" => kinesis_action(),
        "lambda" => lambda_action(),
        "location" => location_action(),
        "openSearch" => open_search_action(),
        "republish" => republish_action(),
        "s3" => s3_action(),
        "salesforce" => salesforce_action(),
        "sns" => sns_action(),
        "sqs" => sqs_action(),
        "stepFunctions" => step_functions_action(),
        "timestream" => timestream_action()
      }

  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_violation_events_response() :: %{
        "nextToken" => String.t() | atom(),
        "violationEvents" => list(violation_event())
      }

  """
  @type list_violation_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tls_config() :: %{
        "securityPolicy" => String.t() | atom()
      }

  """
  @type tls_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      republish_action() :: %{
        "headers" => mqtt_headers(),
        "qos" => integer(),
        "roleArn" => String.t() | atom(),
        "topic" => String.t() | atom()
      }

  """
  @type republish_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_configuration_response() :: %{}

  """
  @type update_package_configuration_response() :: %{}

  @typedoc """

  ## Example:

      put_verification_state_on_violation_request() :: %{
        optional("verificationStateDescription") => String.t() | atom(),
        required("verificationState") => list(any())
      }

  """
  @type put_verification_state_on_violation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_authorizers_response() :: %{
        "authorizers" => list(authorizer_summary()),
        "nextMarker" => String.t() | atom()
      }

  """
  @type list_authorizers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      server_certificate_config() :: %{
        "enableOCSPCheck" => boolean(),
        "ocspAuthorizedResponderArn" => String.t() | atom(),
        "ocspLambdaArn" => String.t() | atom()
      }

  """
  @type server_certificate_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_executions_for_thing_response() :: %{
        "executionSummaries" => list(job_execution_summary_for_thing()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_job_executions_for_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule_destination_configuration() :: %{
        "httpUrlConfiguration" => http_url_destination_configuration(),
        "vpcConfiguration" => vpc_destination_configuration()
      }

  """
  @type topic_rule_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_encryption_configuration_request() :: %{}

  """
  @type describe_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:

      index_not_ready_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type index_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_job_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy() :: %{
        "policyArn" => String.t() | atom(),
        "policyName" => String.t() | atom()
      }

  """
  @type policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_mitigation_actions_task_summary() :: %{
        "actionsDefinition" => list(mitigation_action()),
        "onlyActiveViolationsIncluded" => boolean(),
        "suppressedAlertsIncluded" => boolean(),
        "target" => detect_mitigation_actions_task_target(),
        "taskEndTime" => non_neg_integer(),
        "taskId" => String.t() | atom(),
        "taskStartTime" => non_neg_integer(),
        "taskStatistics" => detect_mitigation_actions_task_statistics(),
        "taskStatus" => list(any()),
        "violationEventOccurrenceRange" => violation_event_occurrence_range()
      }

  """
  @type detect_mitigation_actions_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_execution_summary() :: %{
        "commandArn" => String.t() | atom(),
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "executionId" => String.t() | atom(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "targetArn" => String.t() | atom()
      }

  """
  @type command_execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket() :: %{
        "count" => integer(),
        "keyValue" => String.t() | atom()
      }

  """
  @type bucket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_registration_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "taskIds" => list(String.t() | atom())
      }

  """
  @type list_thing_registration_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attach_principal_policy_request() :: %{
        required("principal") => String.t() | atom()
      }

  """
  @type attach_principal_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_group_document() :: %{
        "attributes" => map(),
        "parentGroupNames" => list(String.t() | atom()),
        "thingGroupDescription" => String.t() | atom(),
        "thingGroupId" => String.t() | atom(),
        "thingGroupName" => String.t() | atom()
      }

  """
  @type thing_group_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_template_request() :: %{
        optional("abortConfig") => abort_config(),
        optional("destinationPackageVersions") => list(String.t() | atom()),
        optional("document") => String.t() | atom(),
        optional("documentSource") => String.t() | atom(),
        optional("jobArn") => String.t() | atom(),
        optional("jobExecutionsRetryConfig") => job_executions_retry_config(),
        optional("jobExecutionsRolloutConfig") => job_executions_rollout_config(),
        optional("maintenanceWindows") => list(maintenance_window()),
        optional("presignedUrlConfig") => presigned_url_config(),
        optional("tags") => list(tag()),
        optional("timeoutConfig") => timeout_config(),
        required("description") => String.t() | atom()
      }

  """
  @type create_job_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stream_response() :: %{
        "description" => String.t() | atom(),
        "streamArn" => String.t() | atom(),
        "streamId" => String.t() | atom(),
        "streamVersion" => integer()
      }

  """
  @type create_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_finding_to_sns_params() :: %{
        "topicArn" => String.t() | atom()
      }

  """
  @type publish_finding_to_sns_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_thing_type_response() :: %{
        "thingTypeArn" => String.t() | atom(),
        "thingTypeId" => String.t() | atom(),
        "thingTypeName" => String.t() | atom()
      }

  """
  @type create_thing_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_executions_rollout_config() :: %{
        "exponentialRate" => exponential_rollout_rate(),
        "maximumPerMinute" => integer()
      }

  """
  @type job_executions_rollout_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_package_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timeout_config() :: %{
        "inProgressTimeoutInMinutes" => float()
      }

  """
  @type timeout_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_document() :: %{
        "attributes" => map(),
        "connectivity" => thing_connectivity(),
        "deviceDefender" => String.t() | atom(),
        "shadow" => String.t() | atom(),
        "thingGroupNames" => list(String.t() | atom()),
        "thingId" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "thingTypeName" => String.t() | atom()
      }

  """
  @type thing_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replace_default_policy_version_params() :: %{
        "templateName" => list(any())
      }

  """
  @type replace_default_policy_version_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_audit_task_request() :: %{}

  """
  @type cancel_audit_task_request() :: %{}

  @typedoc """

  ## Example:

      list_related_resources_for_audit_finding_response() :: %{
        "nextToken" => String.t() | atom(),
        "relatedResources" => list(related_resource())
      }

  """
  @type list_related_resources_for_audit_finding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_document_response() :: %{
        "document" => String.t() | atom()
      }

  """
  @type get_job_document_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_default_authorizer_request() :: %{}

  """
  @type describe_default_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      create_provisioning_template_version_request() :: %{
        optional("setAsDefault") => boolean(),
        required("templateBody") => String.t() | atom()
      }

  """
  @type create_provisioning_template_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_certificate_request() :: %{
        optional("transferMessage") => String.t() | atom(),
        required("targetAwsAccount") => String.t() | atom()
      }

  """
  @type transfer_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_related_resources_for_audit_finding_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("findingId") => String.t() | atom()
      }

  """
  @type list_related_resources_for_audit_finding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_certificate_request() :: %{
        optional("forceDelete") => boolean()
      }

  """
  @type delete_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_detect_mitigation_actions_task_response() :: %{
        "taskSummary" => detect_mitigation_actions_task_summary()
      }

  """
  @type describe_detect_mitigation_actions_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      behavior() :: %{
        "criteria" => behavior_criteria(),
        "exportMetric" => boolean(),
        "metric" => String.t() | atom(),
        "metricDimension" => metric_dimension(),
        "name" => String.t() | atom(),
        "suppressAlerts" => boolean()
      }

  """
  @type behavior() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_certificate_response() :: %{
        "certificateDescription" => certificate_description()
      }

  """
  @type describe_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dimensions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_dimensions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_endpoint_response() :: %{
        "endpointAddress" => String.t() | atom()
      }

  """
  @type describe_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_certificate_provider_response() :: %{}

  """
  @type delete_certificate_provider_response() :: %{}

  @typedoc """

  ## Example:

      server_certificate_summary() :: %{
        "serverCertificateArn" => String.t() | atom(),
        "serverCertificateStatus" => list(any()),
        "serverCertificateStatusDetail" => String.t() | atom()
      }

  """
  @type server_certificate_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing() :: %{
        "awsSignerJobId" => String.t() | atom(),
        "customCodeSigning" => custom_code_signing(),
        "startSigningJobParameter" => start_signing_job_parameter()
      }

  """
  @type code_signing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_registration_task_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("reportType") => list(any())
      }

  """
  @type list_thing_registration_task_reports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorizer_summary() :: %{
        "authorizerArn" => String.t() | atom(),
        "authorizerName" => String.t() | atom()
      }

  """
  @type authorizer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      authorizer_config() :: %{
        "allowAuthorizerOverride" => boolean(),
        "defaultAuthorizerName" => String.t() | atom()
      }

  """
  @type authorizer_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dimension_response() :: %{
        "arn" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "stringValues" => list(String.t() | atom()),
        "type" => list(any())
      }

  """
  @type update_dimension_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_mitigation_actions_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "tasks" => list(audit_mitigation_actions_task_metadata())
      }

  """
  @type list_audit_mitigation_actions_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      open_search_action() :: %{
        "endpoint" => String.t() | atom(),
        "id" => String.t() | atom(),
        "index" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type open_search_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      machine_learning_detection_config() :: %{
        "confidenceLevel" => list(any())
      }

  """
  @type machine_learning_detection_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflicting_resource_update_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflicting_resource_update_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_groups_for_thing_request() :: %{
        optional("overrideDynamicGroups") => boolean(),
        optional("thingGroupsToAdd") => list(String.t() | atom()),
        optional("thingGroupsToRemove") => list(String.t() | atom()),
        optional("thingName") => String.t() | atom()
      }

  """
  @type update_thing_groups_for_thing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_groups_response() :: %{
        "nextToken" => String.t() | atom(),
        "thingGroups" => list(group_name_and_arn())
      }

  """
  @type list_thing_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_template_response() :: %{
        "defaultVersionId" => integer(),
        "templateArn" => String.t() | atom(),
        "templateName" => String.t() | atom()
      }

  """
  @type create_provisioning_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      behavior_criteria() :: %{
        "comparisonOperator" => list(any()),
        "consecutiveDatapointsToAlarm" => integer(),
        "consecutiveDatapointsToClear" => integer(),
        "durationSeconds" => integer(),
        "mlDetectionConfig" => machine_learning_detection_config(),
        "statisticalThreshold" => statistical_threshold(),
        "value" => metric_value()
      }

  """
  @type behavior_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_principal_policies_response() :: %{
        "nextMarker" => String.t() | atom(),
        "policies" => list(policy())
      }

  """
  @type list_principal_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detect_mitigation_actions_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }

  """
  @type list_detect_mitigation_actions_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_fleet_metric_request() :: %{
        optional("aggregationField") => String.t() | atom(),
        optional("aggregationType") => aggregation_type(),
        optional("description") => String.t() | atom(),
        optional("expectedVersion") => float(),
        optional("period") => integer(),
        optional("queryString") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        optional("unit") => list(any()),
        required("indexName") => String.t() | atom()
      }

  """
  @type update_fleet_metric_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_group_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_detect_mitigation_actions_task_response() :: %{
        "taskId" => String.t() | atom()
      }

  """
  @type start_detect_mitigation_actions_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registration_code_validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type registration_code_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mitigation_action_params() :: %{
        "addThingsToThingGroupParams" => add_things_to_thing_group_params(),
        "enableIoTLoggingParams" => enable_io_t_logging_params(),
        "publishFindingToSnsParams" => publish_finding_to_sns_params(),
        "replaceDefaultPolicyVersionParams" => replace_default_policy_version_params(),
        "updateCACertificateParams" => update_ca_certificate_params(),
        "updateDeviceCertificateParams" => update_device_certificate_params()
      }

  """
  @type mitigation_action_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dimensions_response() :: %{
        "dimensionNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dimensions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_profile_request() :: %{}

  """
  @type describe_security_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_job_request() :: %{
        optional("force") => boolean(),
        optional("namespaceId") => String.t() | atom()
      }

  """
  @type delete_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sbom_validation_result_summary() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "fileName" => String.t() | atom(),
        "validationResult" => list(any())
      }

  """
  @type sbom_validation_result_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      statistics() :: %{
        "average" => float(),
        "count" => integer(),
        "maximum" => float(),
        "minimum" => float(),
        "stdDeviation" => float(),
        "sum" => float(),
        "sumOfSquares" => float(),
        "variance" => float()
      }

  """
  @type statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_mitigation_actions_task_response() :: %{
        "actionsDefinition" => list(mitigation_action()),
        "auditCheckToActionsMapping" => map(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "target" => audit_mitigation_actions_task_target(),
        "taskStatistics" => map(),
        "taskStatus" => list(any())
      }

  """
  @type describe_audit_mitigation_actions_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_principal_policy_request() :: %{
        required("principal") => String.t() | atom()
      }

  """
  @type detach_principal_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      behavior_model_training_summary() :: %{
        "behaviorName" => String.t() | atom(),
        "datapointsCollectionPercentage" => float(),
        "lastModelRefreshDate" => non_neg_integer(),
        "modelStatus" => list(any()),
        "securityProfileName" => String.t() | atom(),
        "trainingDataCollectionStartDate" => non_neg_integer()
      }

  """
  @type behavior_model_training_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      role_alias_description() :: %{
        "creationDate" => non_neg_integer(),
        "credentialDurationSeconds" => integer(),
        "lastModifiedDate" => non_neg_integer(),
        "owner" => String.t() | atom(),
        "roleAlias" => String.t() | atom(),
        "roleAliasArn" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type role_alias_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_value() :: %{
        "cidrs" => list(String.t() | atom()),
        "count" => float(),
        "number" => float(),
        "numbers" => list(float()),
        "ports" => list(integer()),
        "strings" => list(String.t() | atom())
      }

  """
  @type metric_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_action() :: %{
        "auth" => http_authorization(),
        "confirmationUrl" => String.t() | atom(),
        "headers" => list(http_action_header()),
        "url" => String.t() | atom()
      }

  """
  @type http_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_fleet_metric_response() :: %{
        "aggregationField" => String.t() | atom(),
        "aggregationType" => aggregation_type(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "indexName" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom(),
        "period" => integer(),
        "queryString" => String.t() | atom(),
        "queryVersion" => String.t() | atom(),
        "unit" => list(any()),
        "version" => float()
      }

  """
  @type describe_fleet_metric_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_security_profile_behaviors_response() :: %{
        "valid" => boolean(),
        "validationErrors" => list(validation_error())
      }

  """
  @type validate_security_profile_behaviors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_signing_job_parameter() :: %{
        "destination" => destination(),
        "signingProfileName" => String.t() | atom(),
        "signingProfileParameter" => signing_profile_parameter()
      }

  """
  @type start_signing_job_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_v2_logging_options_request() :: %{
        optional("defaultLogLevel") => list(any()),
        optional("disableAllLogs") => boolean(),
        optional("roleArn") => String.t() | atom()
      }

  """
  @type set_v2_logging_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_v2_logging_level_request() :: %{
        required("logLevel") => list(any()),
        required("logTarget") => log_target()
      }

  """
  @type set_v2_logging_level_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_configuration_request() :: %{}

  """
  @type get_package_configuration_request() :: %{}

  @typedoc """

  ## Example:

      cancel_audit_mitigation_actions_task_request() :: %{}

  """
  @type cancel_audit_mitigation_actions_task_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detect_mitigation_actions_executions_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startTime") => non_neg_integer(),
        optional("taskId") => String.t() | atom(),
        optional("thingName") => String.t() | atom(),
        optional("violationId") => String.t() | atom()
      }

  """
  @type list_detect_mitigation_actions_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("nextToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type certificate_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_provisioning_template_version_request() :: %{}

  """
  @type delete_provisioning_template_version_request() :: %{}

  @typedoc """

  ## Example:

      list_thing_principals_v2_response() :: %{
        "nextToken" => String.t() | atom(),
        "thingPrincipalObjects" => list(thing_principal_object())
      }

  """
  @type list_thing_principals_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_mitigation_actions_executions_response() :: %{
        "actionsExecutions" => list(audit_mitigation_action_execution_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_audit_mitigation_actions_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job() :: %{
        "abortConfig" => abort_config(),
        "comment" => String.t() | atom(),
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "destinationPackageVersions" => list(String.t() | atom()),
        "documentParameters" => map(),
        "forceCanceled" => boolean(),
        "isConcurrent" => boolean(),
        "jobArn" => String.t() | atom(),
        "jobExecutionsRetryConfig" => job_executions_retry_config(),
        "jobExecutionsRolloutConfig" => job_executions_rollout_config(),
        "jobId" => String.t() | atom(),
        "jobProcessDetails" => job_process_details(),
        "jobTemplateArn" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "namespaceId" => String.t() | atom(),
        "presignedUrlConfig" => presigned_url_config(),
        "reasonCode" => String.t() | atom(),
        "scheduledJobRollouts" => list(scheduled_job_rollout()),
        "schedulingConfig" => scheduling_config(),
        "status" => list(any()),
        "targetSelection" => list(any()),
        "targets" => list(String.t() | atom()),
        "timeoutConfig" => timeout_config()
      }

  """
  @type job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_provisioning_template_request() :: %{}

  """
  @type delete_provisioning_template_request() :: %{}

  @typedoc """

  ## Example:

      list_package_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_package_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "s3Destination" => s3_destination()
      }

  """
  @type destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stream_file() :: %{
        "fileId" => integer(),
        "s3Location" => s3_location()
      }

  """
  @type stream_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mqtt_context() :: %{
        "clientId" => String.t() | atom(),
        "password" => binary(),
        "username" => String.t() | atom()
      }

  """
  @type mqtt_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_topic_rule_destination_response() :: %{}

  """
  @type update_topic_rule_destination_response() :: %{}

  @typedoc """

  ## Example:

      job_execution_summary_for_thing() :: %{
        "jobExecutionSummary" => job_execution_summary(),
        "jobId" => String.t() | atom()
      }

  """
  @type job_execution_summary_for_thing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_principals_response() :: %{
        "nextToken" => String.t() | atom(),
        "principals" => list(String.t() | atom())
      }

  """
  @type list_thing_principals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_task_metadata() :: %{
        "taskId" => String.t() | atom(),
        "taskStatus" => list(any()),
        "taskType" => list(any())
      }

  """
  @type audit_task_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_authorizer_response() :: %{
        "authorizerArn" => String.t() | atom(),
        "authorizerName" => String.t() | atom()
      }

  """
  @type update_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_provider_summary() :: %{
        "certificateProviderArn" => String.t() | atom(),
        "certificateProviderName" => String.t() | atom()
      }

  """
  @type certificate_provider_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scheduled_audits_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scheduled_audits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_topic_rule_request() :: %{}

  """
  @type get_topic_rule_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sql_parse_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type sql_parse_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_task_response() :: %{
        "auditDetails" => map(),
        "scheduledAuditName" => String.t() | atom(),
        "taskStartTime" => non_neg_integer(),
        "taskStatistics" => task_statistics(),
        "taskStatus" => list(any()),
        "taskType" => list(any())
      }

  """
  @type describe_audit_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kafka_action_header() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type kafka_action_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_behavior_model_training_summaries_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("securityProfileName") => String.t() | atom()
      }

  """
  @type get_behavior_model_training_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_thing_connectivity_data_request() :: %{}

  """
  @type get_thing_connectivity_data_request() :: %{}

  @typedoc """

  ## Example:

      describe_provisioning_template_version_request() :: %{}

  """
  @type describe_provisioning_template_version_request() :: %{}

  @typedoc """

  ## Example:

      list_targets_for_policy_request() :: %{
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_targets_for_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ota_update_info() :: %{
        "additionalParameters" => map(),
        "awsIotJobArn" => String.t() | atom(),
        "awsIotJobId" => String.t() | atom(),
        "awsJobExecutionsRolloutConfig" => aws_job_executions_rollout_config(),
        "awsJobPresignedUrlConfig" => aws_job_presigned_url_config(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "errorInfo" => error_info(),
        "lastModifiedDate" => non_neg_integer(),
        "otaUpdateArn" => String.t() | atom(),
        "otaUpdateFiles" => list(ota_update_file()),
        "otaUpdateId" => String.t() | atom(),
        "otaUpdateStatus" => list(any()),
        "protocols" => list(list(any())()),
        "targetSelection" => list(any()),
        "targets" => list(String.t() | atom())
      }

  """
  @type ota_update_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_behavior_model_training_summaries_response() :: %{
        "nextToken" => String.t() | atom(),
        "summaries" => list(behavior_model_training_summary())
      }

  """
  @type get_behavior_model_training_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_sbom_with_package_version_response() :: %{
        "packageName" => String.t() | atom(),
        "sbom" => sbom(),
        "sbomValidationStatus" => list(any()),
        "versionName" => String.t() | atom()
      }

  """
  @type associate_sbom_with_package_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_package_response() :: %{
        "description" => String.t() | atom(),
        "packageArn" => String.t() | atom(),
        "packageName" => String.t() | atom()
      }

  """
  @type create_package_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_check_configuration() :: %{
        "configuration" => map(),
        "enabled" => boolean()
      }

  """
  @type audit_check_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_stream_request() :: %{}

  """
  @type delete_stream_request() :: %{}

  @typedoc """

  ## Example:

      scheduling_config() :: %{
        "endBehavior" => list(any()),
        "endTime" => String.t() | atom(),
        "maintenanceWindows" => list(maintenance_window()),
        "startTime" => String.t() | atom()
      }

  """
  @type scheduling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioning_template_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "enabled" => boolean(),
        "lastModifiedDate" => non_neg_integer(),
        "templateArn" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type provisioning_template_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sbom_validation_results_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("validationResult") => list(any())
      }

  """
  @type list_sbom_validation_results_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_event_configurations_response() :: %{
        "creationDate" => non_neg_integer(),
        "eventConfigurations" => map(),
        "lastModifiedDate" => non_neg_integer()
      }

  """
  @type describe_event_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_provisioning_template_request() :: %{
        optional("description") => String.t() | atom(),
        optional("enabled") => boolean(),
        optional("preProvisioningHook") => provisioning_hook(),
        optional("tags") => list(tag()),
        optional("type") => list(any()),
        required("provisioningRoleArn") => String.t() | atom(),
        required("templateBody") => String.t() | atom(),
        required("templateName") => String.t() | atom()
      }

  """
  @type create_provisioning_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stream_summary() :: %{
        "description" => String.t() | atom(),
        "streamArn" => String.t() | atom(),
        "streamId" => String.t() | atom(),
        "streamVersion" => integer()
      }

  """
  @type stream_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_thing_group_response() :: %{
        "indexName" => String.t() | atom(),
        "queryString" => String.t() | atom(),
        "queryVersion" => String.t() | atom(),
        "status" => list(any()),
        "thingGroupArn" => String.t() | atom(),
        "thingGroupId" => String.t() | atom(),
        "thingGroupMetadata" => thing_group_metadata(),
        "thingGroupName" => String.t() | atom(),
        "thingGroupProperties" => thing_group_properties(),
        "version" => float()
      }

  """
  @type describe_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_thing_response() :: %{}

  """
  @type delete_thing_response() :: %{}

  @typedoc """

  ## Example:

      validate_security_profile_behaviors_request() :: %{
        required("behaviors") => list(behavior())
      }

  """
  @type validate_security_profile_behaviors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_audit_task_request() :: %{}

  """
  @type describe_audit_task_request() :: %{}

  @typedoc """

  ## Example:

      list_authorizers_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer(),
        optional("status") => list(any())
      }

  """
  @type list_authorizers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_account_audit_configuration_response() :: %{}

  """
  @type delete_account_audit_configuration_response() :: %{}

  @typedoc """

  ## Example:

      register_thing_response() :: %{
        "certificatePem" => String.t() | atom(),
        "resourceArns" => map()
      }

  """
  @type register_thing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_role_aliases_response() :: %{
        "nextMarker" => String.t() | atom(),
        "roleAliases" => list(String.t() | atom())
      }

  """
  @type list_role_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_thing_from_thing_group_request() :: %{
        optional("thingArn") => String.t() | atom(),
        optional("thingGroupArn") => String.t() | atom(),
        optional("thingGroupName") => String.t() | atom(),
        optional("thingName") => String.t() | atom()
      }

  """
  @type remove_thing_from_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_suppressions_response() :: %{
        "nextToken" => String.t() | atom(),
        "suppressions" => list(audit_suppression())
      }

  """
  @type list_audit_suppressions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_fleet_metric_response() :: %{
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom()
      }

  """
  @type create_fleet_metric_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      related_resource() :: %{
        "additionalInfo" => map(),
        "resourceIdentifier" => resource_identifier(),
        "resourceType" => list(any())
      }

  """
  @type related_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_audit_suppression_response() :: %{}

  """
  @type delete_audit_suppression_response() :: %{}

  @typedoc """

  ## Example:

      fleet_metric_name_and_arn() :: %{
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom()
      }

  """
  @type fleet_metric_name_and_arn() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_sbom_from_package_version_response() :: %{}

  """
  @type disassociate_sbom_from_package_version_response() :: %{}

  @typedoc """

  ## Example:

      implicit_deny() :: %{
        "policies" => list(policy())
      }

  """
  @type implicit_deny() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_topic_rule_destination_response() :: %{}

  """
  @type delete_topic_rule_destination_response() :: %{}

  @typedoc """

  ## Example:

      vpc_destination_summary() :: %{
        "roleArn" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type vpc_destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_registration_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_registration_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_certificate_transfer_request() :: %{
        optional("setAsActive") => boolean()
      }

  """
  @type accept_certificate_transfer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iot_site_wise_action() :: %{
        "putAssetPropertyValueEntries" => list(put_asset_property_value_entry()),
        "roleArn" => String.t() | atom()
      }

  """
  @type iot_site_wise_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_thing_group_response() :: %{
        "version" => float()
      }

  """
  @type update_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scheduled_audit_response() :: %{
        "dayOfMonth" => String.t() | atom(),
        "dayOfWeek" => list(any()),
        "frequency" => list(any()),
        "scheduledAuditArn" => String.t() | atom(),
        "scheduledAuditName" => String.t() | atom(),
        "targetCheckNames" => list(String.t() | atom())
      }

  """
  @type describe_scheduled_audit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_request() :: %{}

  """
  @type get_package_version_request() :: %{}

  @typedoc """

  ## Example:

      list_billing_groups_response() :: %{
        "billingGroups" => list(group_name_and_arn()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_billing_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_topic_rule_destination_request() :: %{
        required("destinationConfiguration") => topic_rule_destination_configuration()
      }

  """
  @type create_topic_rule_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      active_violation() :: %{
        "behavior" => behavior(),
        "lastViolationTime" => non_neg_integer(),
        "lastViolationValue" => metric_value(),
        "securityProfileName" => String.t() | atom(),
        "thingName" => String.t() | atom(),
        "verificationState" => list(any()),
        "verificationStateDescription" => String.t() | atom(),
        "violationEventAdditionalInfo" => violation_event_additional_info(),
        "violationId" => String.t() | atom(),
        "violationStartTime" => non_neg_integer()
      }

  """
  @type active_violation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_mitigation_actions_task_statistics() :: %{
        "actionsExecuted" => float(),
        "actionsFailed" => float(),
        "actionsSkipped" => float()
      }

  """
  @type detect_mitigation_actions_task_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_things_request() :: %{
        optional("attributeName") => String.t() | atom(),
        optional("attributeValue") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("thingTypeName") => String.t() | atom(),
        optional("usePrefixAttributeValue") => boolean()
      }

  """
  @type list_things_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_command_executions_response() :: %{
        "commandExecutions" => list(command_execution_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_command_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_logging_options_request() :: %{}

  """
  @type get_logging_options_request() :: %{}

  @typedoc """

  ## Example:

      test_invoke_authorizer_response() :: %{
        "disconnectAfterInSeconds" => integer(),
        "isAuthenticated" => boolean(),
        "policyDocuments" => list(String.t() | atom()),
        "principalId" => String.t() | atom(),
        "refreshAfterInSeconds" => integer()
      }

  """
  @type test_invoke_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_findings_request() :: %{
        optional("checkName") => String.t() | atom(),
        optional("endTime") => non_neg_integer(),
        optional("listSuppressedFindings") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceIdentifier") => resource_identifier(),
        optional("startTime") => non_neg_integer(),
        optional("taskId") => String.t() | atom()
      }

  """
  @type list_audit_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      location_action() :: %{
        "deviceId" => String.t() | atom(),
        "latitude" => String.t() | atom(),
        "longitude" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "timestamp" => location_timestamp(),
        "trackerName" => String.t() | atom()
      }

  """
  @type location_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_thing_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("thingTypeName") => String.t() | atom()
      }

  """
  @type list_thing_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_role_alias_request() :: %{}

  """
  @type describe_role_alias_request() :: %{}

  @typedoc """

  ## Example:

      thing_type_metadata() :: %{
        "creationDate" => non_neg_integer(),
        "deprecated" => boolean(),
        "deprecationDate" => non_neg_integer()
      }

  """
  @type thing_type_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_policies_request() :: %{
        optional("cognitoIdentityPoolId") => String.t() | atom(),
        optional("principal") => String.t() | atom(),
        optional("thingName") => String.t() | atom()
      }

  """
  @type get_effective_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_topic_rule_destinations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_topic_rule_destinations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_topic_rule_destination_response() :: %{
        "topicRuleDestination" => topic_rule_destination()
      }

  """
  @type get_topic_rule_destination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_summary() :: %{
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "packageName" => String.t() | atom(),
        "status" => list(any()),
        "versionName" => String.t() | atom()
      }

  """
  @type package_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dynamic_thing_group_response() :: %{
        "version" => float()
      }

  """
  @type update_dynamic_thing_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_dimension_response() :: %{
        "arn" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "stringValues" => list(String.t() | atom()),
        "type" => list(any())
      }

  """
  @type describe_dimension_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audit_suppressions_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("checkName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceIdentifier") => resource_identifier()
      }

  """
  @type list_audit_suppressions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_thing_to_billing_group_request() :: %{
        optional("billingGroupArn") => String.t() | atom(),
        optional("billingGroupName") => String.t() | atom(),
        optional("thingArn") => String.t() | atom(),
        optional("thingName") => String.t() | atom()
      }

  """
  @type add_thing_to_billing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cardinality_request() :: %{
        optional("aggregationField") => String.t() | atom(),
        optional("indexName") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        required("queryString") => String.t() | atom()
      }

  """
  @type get_cardinality_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stream() :: %{
        "fileId" => integer(),
        "streamId" => String.t() | atom()
      }

  """
  @type stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dynamic_thing_group_response() :: %{}

  """
  @type delete_dynamic_thing_group_response() :: %{}

  @typedoc """

  ## Example:

      list_detect_mitigation_actions_executions_response() :: %{
        "actionsExecutions" => list(detect_mitigation_action_execution()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_detect_mitigation_actions_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_templates_response() :: %{
        "jobTemplates" => list(job_template_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_job_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      non_compliant_resource() :: %{
        "additionalInfo" => map(),
        "resourceIdentifier" => resource_identifier(),
        "resourceType" => list(any())
      }

  """
  @type non_compliant_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_mitigation_action_response() :: %{
        "actionArn" => String.t() | atom(),
        "actionId" => String.t() | atom(),
        "actionName" => String.t() | atom(),
        "actionParams" => mitigation_action_params(),
        "actionType" => list(any()),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "roleArn" => String.t() | atom()
      }

  """
  @type describe_mitigation_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stream_info() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "files" => list(stream_file()),
        "lastUpdatedAt" => non_neg_integer(),
        "roleArn" => String.t() | atom(),
        "streamArn" => String.t() | atom(),
        "streamId" => String.t() | atom(),
        "streamVersion" => integer()
      }

  """
  @type stream_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule_payload() :: %{
        "actions" => list(action()),
        "awsIotSqlVersion" => String.t() | atom(),
        "description" => String.t() | atom(),
        "errorAction" => action(),
        "ruleDisabled" => boolean(),
        "sql" => String.t() | atom()
      }

  """
  @type topic_rule_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_audit_configuration_response() :: %{}

  """
  @type update_account_audit_configuration_response() :: %{}

  @typedoc """

  ## Example:

      explicit_deny() :: %{
        "policies" => list(policy())
      }

  """
  @type explicit_deny() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dynamic_thing_group_request() :: %{
        optional("expectedVersion") => float()
      }

  """
  @type delete_dynamic_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_v2_logging_level_request() :: %{
        required("targetName") => String.t() | atom(),
        required("targetType") => list(any())
      }

  """
  @type delete_v2_logging_level_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_billing_group_request() :: %{}

  """
  @type describe_billing_group_request() :: %{}

  @typedoc """

  ## Example:

      list_mitigation_actions_response() :: %{
        "actionIdentifiers" => list(mitigation_action_identifier()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_mitigation_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_validity() :: %{
        "notAfter" => non_neg_integer(),
        "notBefore" => non_neg_integer()
      }

  """
  @type certificate_validity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduled_job_rollout() :: %{
        "startTime" => String.t() | atom()
      }

  """
  @type scheduled_job_rollout() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_job_exponential_rollout_rate() :: %{
        "baseRatePerMinute" => integer(),
        "incrementFactor" => float(),
        "rateIncreaseCriteria" => aws_job_rate_increase_criteria()
      }

  """
  @type aws_job_exponential_rollout_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_outgoing_certificates_response() :: %{
        "nextMarker" => String.t() | atom(),
        "outgoingCertificates" => list(outgoing_certificate())
      }

  """
  @type list_outgoing_certificates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_metrics_response() :: %{
        "metricNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_custom_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dimension_request() :: %{
        optional("tags") => list(tag()),
        required("clientRequestToken") => String.t() | atom(),
        required("stringValues") => list(String.t() | atom()),
        required("type") => list(any())
      }

  """
  @type create_dimension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificates_by_ca_request() :: %{
        optional("ascendingOrder") => boolean(),
        optional("marker") => String.t() | atom(),
        optional("pageSize") => integer()
      }

  """
  @type list_certificates_by_ca_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_package_version_response() :: %{
        "attributes" => map(),
        "description" => String.t() | atom(),
        "errorReason" => String.t() | atom(),
        "packageName" => String.t() | atom(),
        "packageVersionArn" => String.t() | atom(),
        "status" => list(any()),
        "versionName" => String.t() | atom()
      }

  """
  @type create_package_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      version_update_by_jobs_config() :: %{
        "enabled" => boolean(),
        "roleArn" => String.t() | atom()
      }

  """
  @type version_update_by_jobs_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_thing_to_billing_group_response() :: %{}

  """
  @type add_thing_to_billing_group_response() :: %{}

  @typedoc """

  ## Example:

      create_command_response() :: %{
        "commandArn" => String.t() | atom(),
        "commandId" => String.t() | atom()
      }

  """
  @type create_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_mitigation_actions_task_target() :: %{
        "auditCheckToReasonCodeFilter" => map(),
        "auditTaskId" => String.t() | atom(),
        "findingIds" => list(String.t() | atom())
      }

  """
  @type audit_mitigation_actions_task_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_artifact() :: %{
        "s3Location" => s3_location()
      }

  """
  @type package_version_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_v2_logging_options_response() :: %{
        "defaultLogLevel" => list(any()),
        "disableAllLogs" => boolean(),
        "roleArn" => String.t() | atom()
      }

  """
  @type get_v2_logging_options_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic_rule_destination() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "httpUrlProperties" => http_url_destination_properties(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "vpcProperties" => vpc_destination_properties()
      }

  """
  @type topic_rule_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_destination_configuration() :: %{
        "roleArn" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type vpc_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_summary() :: %{
        "commandArn" => String.t() | atom(),
        "commandId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deprecated" => boolean(),
        "displayName" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "pendingDeletion" => boolean()
      }

  """
  @type command_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_notification_target() :: %{
        "enabled" => boolean(),
        "roleArn" => String.t() | atom(),
        "targetArn" => String.t() | atom()
      }

  """
  @type audit_notification_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profiles_request() :: %{
        optional("dimensionName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("metricName") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_security_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_metric_values_request() :: %{
        optional("dimensionName") => String.t() | atom(),
        optional("dimensionValueOperator") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("endTime") => non_neg_integer(),
        required("metricName") => String.t() | atom(),
        required("startTime") => non_neg_integer(),
        required("thingName") => String.t() | atom()
      }

  """
  @type list_metric_values_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{
        "description" => String.t() | atom(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom()
      }

  """
  @type cancel_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      maintenance_window() :: %{
        "durationInMinutes" => integer(),
        "startTime" => String.t() | atom()
      }

  """
  @type maintenance_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_configuration_request() :: %{
        optional("applicationProtocol") => list(any()),
        optional("authenticationType") => list(any()),
        optional("authorizerConfig") => authorizer_config(),
        optional("clientCertificateConfig") => client_certificate_config(),
        optional("domainName") => String.t() | atom(),
        optional("serverCertificateArns") => list(String.t() | atom()),
        optional("serverCertificateConfig") => server_certificate_config(),
        optional("serviceType") => list(any()),
        optional("tags") => list(tag()),
        optional("tlsConfig") => tls_config(),
        optional("validationCertificateArn") => String.t() | atom()
      }

  """
  @type create_domain_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_provisioning_template_response() :: %{}

  """
  @type delete_provisioning_template_response() :: %{}

  @typedoc """

  ## Example:

      update_security_profile_response() :: %{
        "additionalMetricsToRetain" => list(String.t() | atom()),
        "additionalMetricsToRetainV2" => list(metric_to_retain()),
        "alertTargets" => map(),
        "behaviors" => list(behavior()),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "metricsExportConfig" => metrics_export_config(),
        "securityProfileArn" => String.t() | atom(),
        "securityProfileDescription" => String.t() | atom(),
        "securityProfileName" => String.t() | atom(),
        "version" => float()
      }

  """
  @type update_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_targets_for_security_profile_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_targets_for_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_registration_code_request() :: %{}

  """
  @type delete_registration_code_request() :: %{}

  @typedoc """

  ## Example:

      describe_thing_type_request() :: %{}

  """
  @type describe_thing_type_request() :: %{}

  @typedoc """

  ## Example:

      job_execution_summary() :: %{
        "executionNumber" => float(),
        "lastUpdatedAt" => non_neg_integer(),
        "queuedAt" => non_neg_integer(),
        "retryAttempt" => integer(),
        "startedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type job_execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_device_certificate_params() :: %{
        "action" => list(any())
      }

  """
  @type update_device_certificate_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_job_templates_response() :: %{
        "managedJobTemplates" => list(managed_job_template_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_job_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_audit_configuration_request() :: %{
        optional("auditCheckConfigurations") => map(),
        optional("auditNotificationTargetConfigurations") => map(),
        optional("roleArn") => String.t() | atom()
      }

  """
  @type update_account_audit_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_request() :: %{}

  """
  @type get_package_request() :: %{}

  @typedoc """

  ## Example:

      list_principal_things_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("principal") => String.t() | atom()
      }

  """
  @type list_principal_things_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cardinality_response() :: %{
        "cardinality" => integer()
      }

  """
  @type get_cardinality_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detach_thing_principal_request() :: %{
        required("principal") => String.t() | atom()
      }

  """
  @type detach_thing_principal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_suppression() :: %{
        "checkName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "expirationDate" => non_neg_integer(),
        "resourceIdentifier" => resource_identifier(),
        "suppressIndefinitely" => boolean()
      }

  """
  @type audit_suppression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_on_demand_audit_task_request() :: %{
        required("targetCheckNames") => list(String.t() | atom())
      }

  """
  @type start_on_demand_audit_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clear_default_authorizer_request() :: %{}

  """
  @type clear_default_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      describe_thing_request() :: %{}

  """
  @type describe_thing_request() :: %{}

  @typedoc """

  ## Example:

      transfer_data() :: %{
        "acceptDate" => non_neg_integer(),
        "rejectDate" => non_neg_integer(),
        "rejectReason" => String.t() | atom(),
        "transferDate" => non_neg_integer(),
        "transferMessage" => String.t() | atom()
      }

  """
  @type transfer_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_packages_response() :: %{
        "nextToken" => String.t() | atom(),
        "packageSummaries" => list(package_summary())
      }

  """
  @type list_packages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_index_request() :: %{
        optional("indexName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("queryVersion") => String.t() | atom(),
        required("queryString") => String.t() | atom()
      }

  """
  @type search_index_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      command_parameter_value() :: %{
        "B" => boolean(),
        "BIN" => binary(),
        "D" => float(),
        "I" => integer(),
        "L" => float(),
        "S" => String.t() | atom(),
        "UL" => String.t() | atom()
      }

  """
  @type command_parameter_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_certificate_response() :: %{
        "transferredCertificateArn" => String.t() | atom()
      }

  """
  @type transfer_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_response() :: %{
        "creationDate" => non_neg_integer(),
        "defaultVersionName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "packageArn" => String.t() | atom(),
        "packageName" => String.t() | atom()
      }

  """
  @type get_package_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type transfer_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_targets_for_security_profile_response() :: %{
        "nextToken" => String.t() | atom(),
        "securityProfileTargets" => list(security_profile_target())
      }

  """
  @type list_targets_for_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_stream_response() :: %{
        "streamInfo" => stream_info()
      }

  """
  @type describe_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_metric_response() :: %{
        "metricArn" => String.t() | atom(),
        "metricName" => String.t() | atom()
      }

  """
  @type create_custom_metric_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_provisioning_template_response() :: %{}

  """
  @type update_provisioning_template_response() :: %{}

  @typedoc """

  ## Example:

      delete_domain_configuration_response() :: %{}

  """
  @type delete_domain_configuration_response() :: %{}

  @typedoc """

  ## Example:

      update_encryption_configuration_response() :: %{}

  """
  @type update_encryption_configuration_response() :: %{}

  @typedoc """

  ## Example:

      audit_check_details() :: %{
        "checkCompliant" => boolean(),
        "checkRunStatus" => list(any()),
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom(),
        "nonCompliantResourcesCount" => float(),
        "suppressedNonCompliantResourcesCount" => float(),
        "totalResourcesCount" => float()
      }

  """
  @type audit_check_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificates_by_ca_response() :: %{
        "certificates" => list(certificate()),
        "nextMarker" => String.t() | atom()
      }

  """
  @type list_certificates_by_ca_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_type_properties() :: %{
        "mqtt5Configuration" => mqtt5_configuration(),
        "searchableAttributes" => list(String.t() | atom()),
        "thingTypeDescription" => String.t() | atom()
      }

  """
  @type thing_type_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_executions_for_job_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_job_executions_for_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_authorizer_request() :: %{
        optional("authorizerFunctionArn") => String.t() | atom(),
        optional("enableCachingForHttp") => boolean(),
        optional("status") => list(any()),
        optional("tokenKeyName") => String.t() | atom(),
        optional("tokenSigningPublicKeys") => map()
      }

  """
  @type update_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auth_result() :: %{
        "allowed" => allowed(),
        "authDecision" => list(any()),
        "authInfo" => auth_info(),
        "denied" => denied(),
        "missingContextValues" => list(String.t() | atom())
      }

  """
  @type auth_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_role_alias_request() :: %{}

  """
  @type delete_role_alias_request() :: %{}

  @typedoc """

  ## Example:

      update_domain_configuration_response() :: %{
        "domainConfigurationArn" => String.t() | atom(),
        "domainConfigurationName" => String.t() | atom()
      }

  """
  @type update_domain_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificates_response() :: %{
        "certificates" => list(certificate()),
        "nextMarker" => String.t() | atom()
      }

  """
  @type list_certificates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_principal_things_v2_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("thingPrincipalType") => list(any()),
        required("principal") => String.t() | atom()
      }

  """
  @type list_principal_things_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_authorization_request() :: %{
        optional("clientId") => String.t() | atom(),
        optional("cognitoIdentityPoolId") => String.t() | atom(),
        optional("policyNamesToAdd") => list(String.t() | atom()),
        optional("policyNamesToSkip") => list(String.t() | atom()),
        optional("principal") => String.t() | atom(),
        required("authInfos") => list(auth_info())
      }

  """
  @type test_authorization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_thing_type_response() :: %{
        "thingTypeArn" => String.t() | atom(),
        "thingTypeId" => String.t() | atom(),
        "thingTypeMetadata" => thing_type_metadata(),
        "thingTypeName" => String.t() | atom(),
        "thingTypeProperties" => thing_type_properties()
      }

  """
  @type describe_thing_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_target_configuration() :: %{
        "logLevel" => list(any()),
        "logTarget" => log_target()
      }

  """
  @type log_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregation_type() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type aggregation_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_thing_registration_task_response() :: %{}

  """
  @type stop_thing_registration_task_response() :: %{}

  @typedoc """

  ## Example:

      salesforce_action() :: %{
        "token" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type salesforce_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_managed_job_template_response() :: %{
        "description" => String.t() | atom(),
        "document" => String.t() | atom(),
        "documentParameters" => list(document_parameter()),
        "environments" => list(String.t() | atom()),
        "templateArn" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "templateVersion" => String.t() | atom()
      }

  """
  @type describe_managed_job_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_thing_type_request() :: %{
        optional("tags") => list(tag()),
        optional("thingTypeProperties") => thing_type_properties()
      }

  """
  @type create_thing_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_registration_code_response() :: %{}

  """
  @type delete_registration_code_response() :: %{}

  @typedoc """

  ## Example:

      add_thing_to_thing_group_request() :: %{
        optional("overrideDynamicGroups") => boolean(),
        optional("thingArn") => String.t() | atom(),
        optional("thingGroupArn") => String.t() | atom(),
        optional("thingGroupName") => String.t() | atom(),
        optional("thingName") => String.t() | atom()
      }

  """
  @type add_thing_to_thing_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_execution_summary_for_job() :: %{
        "jobExecutionSummary" => job_execution_summary(),
        "thingArn" => String.t() | atom()
      }

  """
  @type job_execution_summary_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "packageVersionSummaries" => list(package_version_summary())
      }

  """
  @type list_package_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outgoing_certificate() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateId" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "transferDate" => non_neg_integer(),
        "transferMessage" => String.t() | atom(),
        "transferredTo" => String.t() | atom()
      }

  """
  @type outgoing_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sqs_action() :: %{
        "queueUrl" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "useBase64" => boolean()
      }

  """
  @type sqs_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_topic_rule_destination_request() :: %{
        required("arn") => String.t() | atom(),
        required("status") => list(any())
      }

  """
  @type update_topic_rule_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      thing_type_definition() :: %{
        "thingTypeArn" => String.t() | atom(),
        "thingTypeMetadata" => thing_type_metadata(),
        "thingTypeName" => String.t() | atom(),
        "thingTypeProperties" => thing_type_properties()
      }

  """
  @type thing_type_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_fleet_metric_request() :: %{}

  """
  @type describe_fleet_metric_request() :: %{}

  @typedoc """

  ## Example:

      cloudwatch_logs_action() :: %{
        "batchMode" => boolean(),
        "logGroupName" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type cloudwatch_logs_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_template_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "jobTemplateArn" => String.t() | atom(),
        "jobTemplateId" => String.t() | atom()
      }

  """
  @type job_template_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iot_events_action() :: %{
        "batchMode" => boolean(),
        "inputName" => String.t() | atom(),
        "messageId" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type iot_events_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_destination_properties() :: %{
        "roleArn" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type vpc_destination_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_role_alias_response() :: %{
        "roleAlias" => String.t() | atom(),
        "roleAliasArn" => String.t() | atom()
      }

  """
  @type create_role_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_version_response() :: %{}

  """
  @type delete_package_version_response() :: %{}

  @type accept_certificate_transfer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | transfer_already_completed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type add_thing_to_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type add_thing_to_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type associate_sbom_with_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_targets_with_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type attach_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type attach_principal_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type attach_security_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type attach_thing_principal_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type cancel_audit_mitigation_actions_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type cancel_audit_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type cancel_certificate_transfer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | transfer_already_completed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type cancel_detect_mitigation_actions_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type cancel_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type cancel_job_execution_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()

  @type clear_default_authorizer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type confirm_topic_rule_destination_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type create_audit_suppression_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_authorizer_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_billing_group_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_certificate_from_csr_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_certificate_provider_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_command_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_custom_metric_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_dimension_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_domain_configuration_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | certificate_validation_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_dynamic_thing_group_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_query_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_fleet_metric_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_job_template_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_keys_and_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_mitigation_action_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_ota_update_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_package_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_policy_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | malformed_policy_exception()
          | internal_failure_exception()

  @type create_policy_version_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | versions_limit_exceeded_exception()
          | unauthorized_exception()
          | malformed_policy_exception()
          | internal_failure_exception()

  @type create_provisioning_claim_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_provisioning_template_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_provisioning_template_version_errors() ::
          throttling_exception()
          | conflicting_resource_update_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | versions_limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_role_alias_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_scheduled_audit_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_security_profile_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_stream_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_thing_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_thing_group_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_thing_type_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_topic_rule_errors() ::
          resource_already_exists_exception()
          | sql_parse_exception()
          | conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type create_topic_rule_destination_errors() ::
          resource_already_exists_exception()
          | conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type delete_account_audit_configuration_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_audit_suppression_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type delete_authorizer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_ca_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | certificate_state_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | certificate_state_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_certificate_provider_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_command_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_command_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_custom_metric_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type delete_dimension_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type delete_domain_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_dynamic_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_fleet_metric_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_job_execution_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_job_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_mitigation_action_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type delete_ota_update_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_package_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type delete_package_version_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type delete_policy_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_policy_version_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_provisioning_template_errors() ::
          throttling_exception()
          | conflicting_resource_update_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_provisioning_template_version_errors() ::
          throttling_exception()
          | conflicting_resource_update_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_registration_code_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_role_alias_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_scheduled_audit_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_security_profile_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_stream_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_conflict_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_thing_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type delete_thing_type_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_topic_rule_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type delete_topic_rule_destination_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type delete_v2_logging_level_errors() ::
          internal_exception() | service_unavailable_exception() | invalid_request_exception()

  @type deprecate_thing_type_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_account_audit_configuration_errors() ::
          throttling_exception() | internal_failure_exception()

  @type describe_audit_finding_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_audit_mitigation_actions_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_audit_suppression_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_audit_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_authorizer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_ca_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_certificate_provider_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_custom_metric_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_default_authorizer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_detect_mitigation_actions_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_dimension_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_domain_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_encryption_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_endpoint_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_event_configurations_errors() ::
          throttling_exception() | internal_failure_exception()

  @type describe_fleet_metric_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_index_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_job_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_job_execution_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_job_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_managed_job_template_errors() ::
          throttling_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_mitigation_action_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_provisioning_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_provisioning_template_version_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_role_alias_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_scheduled_audit_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_security_profile_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_stream_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_thing_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_thing_registration_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type describe_thing_type_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type detach_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type detach_principal_policy_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type detach_security_profile_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type detach_thing_principal_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type disable_topic_rule_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type disassociate_sbom_from_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_topic_rule_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type get_behavior_model_training_summaries_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_buckets_aggregation_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_cardinality_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_command_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_command_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_effective_policies_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_indexing_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_job_document_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_logging_options_errors() ::
          internal_exception() | service_unavailable_exception() | invalid_request_exception()

  @type get_ota_update_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_package_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_package_configuration_errors() :: throttling_exception() | internal_server_exception()

  @type get_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_percentiles_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_policy_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_policy_version_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_registration_code_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_statistics_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_thing_connectivity_data_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_topic_rule_errors() ::
          internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type get_topic_rule_destination_errors() ::
          internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type get_v2_logging_options_errors() ::
          internal_exception() | not_configured_exception() | service_unavailable_exception()

  @type list_active_violations_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_attached_policies_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_audit_findings_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_audit_mitigation_actions_executions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_audit_mitigation_actions_tasks_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_audit_suppressions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_audit_tasks_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_authorizers_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_billing_groups_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_ca_certificates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_certificate_providers_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_certificates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_certificates_by_ca_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_command_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_commands_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_custom_metrics_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_detect_mitigation_actions_executions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_detect_mitigation_actions_tasks_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_dimensions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_domain_configurations_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_fleet_metrics_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_indices_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_job_executions_for_job_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_job_executions_for_thing_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_job_templates_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_jobs_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_managed_job_templates_errors() ::
          throttling_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_metric_values_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_mitigation_actions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_ota_updates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_outgoing_certificates_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_package_versions_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_packages_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_policies_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_policy_principals_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_policy_versions_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_principal_policies_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_principal_things_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_principal_things_v2_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_provisioning_template_versions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_provisioning_templates_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_related_resources_for_audit_finding_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_role_aliases_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_sbom_validation_results_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_scheduled_audits_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_security_profiles_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_security_profiles_for_target_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_streams_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_targets_for_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_targets_for_security_profile_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_thing_groups_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_thing_groups_for_thing_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_thing_principals_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_thing_principals_v2_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_thing_registration_task_reports_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_thing_registration_tasks_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_thing_types_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_things_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_things_in_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_things_in_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_topic_rule_destinations_errors() ::
          internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type list_topic_rules_errors() ::
          internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type list_v2_logging_levels_errors() ::
          internal_exception()
          | not_configured_exception()
          | service_unavailable_exception()
          | invalid_request_exception()

  @type list_violation_events_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type put_verification_state_on_violation_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type register_ca_certificate_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | certificate_validation_exception()
          | registration_code_validation_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type register_certificate_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | certificate_validation_exception()
          | service_unavailable_exception()
          | certificate_conflict_exception()
          | invalid_request_exception()
          | certificate_state_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type register_certificate_without_ca_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | certificate_validation_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | certificate_state_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type register_thing_errors() ::
          resource_registration_failure_exception()
          | throttling_exception()
          | conflicting_resource_update_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type reject_certificate_transfer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | transfer_already_completed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type remove_thing_from_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type remove_thing_from_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type replace_topic_rule_errors() ::
          sql_parse_exception()
          | conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type search_index_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type set_default_authorizer_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type set_default_policy_version_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type set_logging_options_errors() ::
          internal_exception() | service_unavailable_exception() | invalid_request_exception()

  @type set_v2_logging_level_errors() ::
          limit_exceeded_exception()
          | internal_exception()
          | not_configured_exception()
          | service_unavailable_exception()
          | invalid_request_exception()

  @type set_v2_logging_options_errors() ::
          internal_exception() | service_unavailable_exception() | invalid_request_exception()

  @type start_audit_mitigation_actions_task_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | task_already_exists_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type start_detect_mitigation_actions_task_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | task_already_exists_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type start_on_demand_audit_task_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type start_thing_registration_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type stop_thing_registration_task_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type test_authorization_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type test_invoke_authorizer_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | invalid_response_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type transfer_certificate_errors() ::
          transfer_conflict_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | certificate_state_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_account_audit_configuration_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type update_audit_suppression_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_authorizer_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_billing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_ca_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_certificate_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | certificate_state_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_certificate_provider_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_command_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_custom_metric_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_dimension_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_domain_configuration_errors() ::
          throttling_exception()
          | certificate_validation_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_dynamic_thing_group_errors() ::
          throttling_exception()
          | invalid_query_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_encryption_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_event_configurations_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type update_fleet_metric_errors() ::
          throttling_exception()
          | index_not_ready_exception()
          | invalid_query_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_aggregation_exception()
          | unauthorized_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_indexing_configuration_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_job_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_mitigation_action_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_package_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_package_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_provisioning_template_errors() ::
          conflicting_resource_update_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_role_alias_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_scheduled_audit_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_security_profile_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_stream_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_thing_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_thing_group_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | version_conflict_exception()
          | internal_failure_exception()

  @type update_thing_groups_for_thing_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_thing_type_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_topic_rule_destination_errors() ::
          conflicting_resource_update_exception()
          | internal_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unauthorized_exception()

  @type validate_security_profile_behaviors_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  def metadata do
    %{
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iot",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT",
      signature_version: "v4",
      signing_name: "iot",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a pending certificate transfer.

  The default state of the certificate is
  INACTIVE.

  To check for pending certificate transfers, call `ListCertificates`
  to enumerate your certificates.

  Requires permission to access the
  [AcceptCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec accept_certificate_transfer(
          map(),
          String.t() | atom(),
          accept_certificate_transfer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_certificate_transfer_errors()}
  def accept_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/accept-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Adds a thing to a billing group.

  Requires permission to access the
  [AddThingToBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec add_thing_to_billing_group(map(), add_thing_to_billing_group_request(), list()) ::
          {:ok, add_thing_to_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_thing_to_billing_group_errors()}
  def add_thing_to_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/addThingToBillingGroup"
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
  Adds a thing to a thing group.

  Requires permission to access the
  [AddThingToThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec add_thing_to_thing_group(map(), add_thing_to_thing_group_request(), list()) ::
          {:ok, add_thing_to_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_thing_to_thing_group_errors()}
  def add_thing_to_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/addThingToThingGroup"
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
  Associates the selected software bill of materials (SBOM) with a specific
  software package version.

  Requires permission to access the
  [AssociateSbomWithPackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec associate_sbom_with_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_sbom_with_package_version_request(),
          list()
        ) ::
          {:ok, associate_sbom_with_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_sbom_with_package_version_errors()}
  def associate_sbom_with_package_version(
        %Client{} = client,
        package_name,
        version_name,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}/sbom"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Associates a group with a continuous job.

  The following criteria must be met:

    *
  The job must have been created with the `targetSelection` field
  set to "CONTINUOUS".

    *
  The job status must currently be "IN_PROGRESS".

    *
  The total number of targets associated with a job must not exceed
  100.

  Requires permission to access the
  [AssociateTargetsWithJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec associate_targets_with_job(
          map(),
          String.t() | atom(),
          associate_targets_with_job_request(),
          list()
        ) ::
          {:ok, associate_targets_with_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_targets_with_job_errors()}
  def associate_targets_with_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/targets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

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
  Attaches the specified policy to the specified principal (certificate or other
  credential).

  Requires permission to access the
  [AttachPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec attach_policy(map(), String.t() | atom(), attach_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_policy_errors()}
  def attach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Attaches the specified policy to the specified principal (certificate or other
  credential).

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `AttachPolicy` instead.

  Requires permission to access the
  [AttachPrincipalPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec attach_principal_policy(
          map(),
          String.t() | atom(),
          attach_principal_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_principal_policy_errors()}
  def attach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

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
  Associates a Device Defender security profile with a thing group or this
  account.

  Each
  thing group or account can have up to five security profiles associated with it.

  Requires permission to access the
  [AttachSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec attach_security_profile(
          map(),
          String.t() | atom(),
          attach_security_profile_request(),
          list()
        ) ::
          {:ok, attach_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_security_profile_errors()}
  def attach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
      ]
      |> Request.build_params(input)

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
  Attaches the specified principal to the specified thing.

  A principal can be X.509
  certificates, Amazon Cognito identities or federated identities.

  Requires permission to access the
  [AttachThingPrincipal](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec attach_thing_principal(
          map(),
          String.t() | atom(),
          attach_thing_principal_request(),
          list()
        ) ::
          {:ok, attach_thing_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_thing_principal_errors()}
  def attach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"thingPrincipalType", "thingPrincipalType"}
      ]
      |> Request.build_params(input)

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
  Cancels a mitigation action task that is in progress.

  If the task
  is not
  in progress, an InvalidRequestException occurs.

  Requires permission to access the
  [CancelAuditMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_audit_mitigation_actions_task(
          map(),
          String.t() | atom(),
          cancel_audit_mitigation_actions_task_request(),
          list()
        ) ::
          {:ok, cancel_audit_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_audit_mitigation_actions_task_errors()}
  def cancel_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Cancels an audit that is in progress.

  The audit can be either scheduled or on demand. If the audit isn't in progress,
  an "InvalidRequestException" occurs.

  Requires permission to access the
  [CancelAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_audit_task(map(), String.t() | atom(), cancel_audit_task_request(), list()) ::
          {:ok, cancel_audit_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_audit_task_errors()}
  def cancel_audit_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this
  operation to cancel a transfer. (Transfer destinations can use
  `RejectCertificateTransfer` instead.) After transfer, IoT returns the
  certificate to the source account in the INACTIVE state. After the destination
  account has
  accepted the transfer, the transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate changes
  from
  PENDING_TRANSFER to INACTIVE.

  Requires permission to access the
  [CancelCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_certificate_transfer(
          map(),
          String.t() | atom(),
          cancel_certificate_transfer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_certificate_transfer_errors()}
  def cancel_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cancel-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
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

  Cancels a Device Defender ML Detect mitigation action.

  Requires permission to access the
  [CancelDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_detect_mitigation_actions_task(
          map(),
          String.t() | atom(),
          cancel_detect_mitigation_actions_task_request(),
          list()
        ) ::
          {:ok, cancel_detect_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_detect_mitigation_actions_task_errors()}
  def cancel_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Cancels a job.

  Requires permission to access the
  [CancelJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_job(map(), String.t() | atom(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/cancel"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

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
  Cancels the execution of a job for a given thing.

  Requires permission to access the
  [CancelJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec cancel_job_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_job_execution_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_execution_errors()}
  def cancel_job_execution(%Client{} = client, job_id, thing_name, input, options \\ []) do
    url_path =
      "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/cancel"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

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
  Clears the default authorizer.

  Requires permission to access the
  [ClearDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec clear_default_authorizer(map(), clear_default_authorizer_request(), list()) ::
          {:ok, clear_default_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, clear_default_authorizer_errors()}
  def clear_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
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
  Confirms a topic rule destination.

  When you create a rule requiring a destination, IoT
  sends a confirmation message to the endpoint or base address you specify. The
  message
  includes a token which you pass back when calling `ConfirmTopicRuleDestination`
  to confirm that you own or have access to the endpoint.

  Requires permission to access the
  [ConfirmTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec confirm_topic_rule_destination(map(), String.t() | atom(), list()) ::
          {:ok, confirm_topic_rule_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, confirm_topic_rule_destination_errors()}
  def confirm_topic_rule_destination(%Client{} = client, confirmation_token, options \\ []) do
    url_path = "/confirmdestination/#{AWS.Util.encode_multi_segment_uri(confirmation_token)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Creates a Device Defender audit suppression.

  Requires permission to access the
  [CreateAuditSuppression](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_audit_suppression(map(), create_audit_suppression_request(), list()) ::
          {:ok, create_audit_suppression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_audit_suppression_errors()}
  def create_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/create"
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
  Creates an authorizer.

  Requires permission to access the
  [CreateAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_authorizer(map(), String.t() | atom(), create_authorizer_request(), list()) ::
          {:ok, create_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_authorizer_errors()}
  def create_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
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
  Creates a billing group.

  If this call is made multiple times using
  the same billing group name and configuration, the call will succeed. If this
  call is made with
  the same billing group name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  Requires permission to access the
  [CreateBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_billing_group(map(), String.t() | atom(), create_billing_group_request(), list()) ::
          {:ok, create_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_billing_group_errors()}
  def create_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
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
  Creates an X.509 certificate using the specified certificate signing
  request.

  Requires permission to access the
  [CreateCertificateFromCsr](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  The CSR must include a public key that is either an RSA key with a length of at
  least
  2048 bits or an ECC key from NIST P-256, NIST P-384, or NIST P-521 curves. For
  supported
  certificates, consult [ Certificate signing algorithms supported by
  IoT](https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms).

  Reusing the same certificate signing request (CSR)
  results in a distinct certificate.

  You can create multiple certificates in a batch by creating a directory, copying
  multiple `.csr` files into that directory, and then specifying that directory on
  the command
  line. The following commands show how to create a batch of certificates given a
  batch of
  CSRs. In the following commands, we assume that a set of CSRs are located inside
  of the
  directory my-csr-directory:

  On Linux and OS X, the command is:

  ```
  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}
  ```

  This command lists all of the CSRs in my-csr-directory and pipes each CSR file
  name
  to the `aws iot create-certificate-from-csr` Amazon Web Services CLI command to
  create a certificate for
  the corresponding CSR.

  You can also run the `aws iot create-certificate-from-csr` part of the
  command in parallel to speed up the certificate creation process:

  ```
  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  ```

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  ```
  > ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  ```

  On a Windows command prompt, the command to create certificates for all CSRs in
  my-csr-directory is:

  ```
  > forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr
  --certificate-signing-request file://@path"

  ```
  """
  @spec create_certificate_from_csr(map(), create_certificate_from_csr_request(), list()) ::
          {:ok, create_certificate_from_csr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_certificate_from_csr_errors()}
  def create_certificate_from_csr(%Client{} = client, input, options \\ []) do
    url_path = "/certificates"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Creates an Amazon Web Services IoT Core certificate provider.

  You can use Amazon Web Services IoT Core certificate provider to
  customize how to sign a certificate signing request (CSR) in IoT fleet
  provisioning. For
  more information, see [Customizing certificate signing using Amazon Web Services IoT Core certificate
  provider](https://docs.aws.amazon.com/iot/latest/developerguide/provisioning-cert-provider.html)
  from *Amazon Web Services IoT Core Developer
  Guide*.

  Requires permission to access the
  [CreateCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  After you create a certificate provider, the behavior of [
  `CreateCertificateFromCsr` API for fleet
  provisioning](https://docs.aws.amazon.com/iot/latest/developerguide/fleet-provision-api.html#create-cert-csr)
  will
  change and all API calls to `CreateCertificateFromCsr` will invoke the
  certificate provider to create the certificates. It can take up to a few minutes
  for
  this behavior to change after a certificate provider is created.
  """
  @spec create_certificate_provider(
          map(),
          String.t() | atom(),
          create_certificate_provider_request(),
          list()
        ) ::
          {:ok, create_certificate_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_certificate_provider_errors()}
  def create_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
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
  Creates a command.

  A command contains reusable configurations that can be applied
  before they are sent to the devices.
  """
  @spec create_command(map(), String.t() | atom(), create_command_request(), list()) ::
          {:ok, create_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_command_errors()}
  def create_command(%Client{} = client, command_id, input, options \\ []) do
    url_path = "/commands/#{AWS.Util.encode_uri(command_id)}"
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
  Use this API to define a
  Custom
  Metric
  published by your devices to Device Defender.

  Requires permission to access the
  [CreateCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_custom_metric(map(), String.t() | atom(), create_custom_metric_request(), list()) ::
          {:ok, create_custom_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_metric_errors()}
  def create_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Create a dimension that you can use to limit the scope of a metric used in a
  security profile for IoT Device Defender.

  For example, using a `TOPIC_FILTER` dimension, you can narrow down the scope of
  the metric only to MQTT topics whose name match the pattern specified in the
  dimension.

  Requires permission to access the
  [CreateDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_dimension(map(), String.t() | atom(), create_dimension_request(), list()) ::
          {:ok, create_dimension_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dimension_errors()}
  def create_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Creates a domain configuration.

  Requires permission to access the
  [CreateDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_domain_configuration(
          map(),
          String.t() | atom(),
          create_domain_configuration_request(),
          list()
        ) ::
          {:ok, create_domain_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_configuration_errors()}
  def create_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
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
  Creates a dynamic thing group.

  Requires permission to access the
  [CreateDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_dynamic_thing_group(
          map(),
          String.t() | atom(),
          create_dynamic_thing_group_request(),
          list()
        ) ::
          {:ok, create_dynamic_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dynamic_thing_group_errors()}
  def create_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Creates a fleet metric.

  Requires permission to access the
  [CreateFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_fleet_metric(map(), String.t() | atom(), create_fleet_metric_request(), list()) ::
          {:ok, create_fleet_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_metric_errors()}
  def create_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Creates a job.

  Requires permission to access the
  [CreateJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_job(map(), String.t() | atom(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
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
  Creates a job template.

  Requires permission to access the
  [CreateJobTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_job_template(map(), String.t() | atom(), create_job_template_request(), list()) ::
          {:ok, create_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_template_errors()}
  def create_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
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
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued
  public key.

  You can also call `CreateKeysAndCertificate` over MQTT from a
  device, for more information, see [Provisioning MQTT API](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api).

  **Note** This is the only time IoT issues the private key
  for this certificate, so it is important to keep it in a secure location.

  Requires permission to access the
  [CreateKeysAndCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_keys_and_certificate(map(), create_keys_and_certificate_request(), list()) ::
          {:ok, create_keys_and_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_keys_and_certificate_errors()}
  def create_keys_and_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/keys-and-certificate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Defines an action that can be applied to audit findings by using
  StartAuditMitigationActionsTask.

  Only certain types of mitigation actions can be applied to specific check names.
  For more information, see [Mitigation actions](https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html).
  Each mitigation action can apply only one type of change.

  Requires permission to access the
  [CreateMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_mitigation_action(
          map(),
          String.t() | atom(),
          create_mitigation_action_request(),
          list()
        ) ::
          {:ok, create_mitigation_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_mitigation_action_errors()}
  def create_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Creates an IoT OTA update on a target group of things or groups.

  Requires permission to access the
  [CreateOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_ota_update(map(), String.t() | atom(), create_ota_update_request(), list()) ::
          {:ok, create_ota_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ota_update_errors()}
  def create_ota_update(%Client{} = client, ota_update_id, input, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
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
  Creates an IoT software package that can be deployed to your fleet.

  Requires permission to access the
  [CreatePackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  @spec create_package(map(), String.t() | atom(), create_package_request(), list()) ::
          {:ok, create_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_package_errors()}
  def create_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Creates a new version for an existing IoT software package.

  Requires permission to access the
  [CreatePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  @spec create_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_package_version_request(),
          list()
        ) ::
          {:ok, create_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_package_version_errors()}
  def create_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Creates an IoT policy.

  The created policy is the default version for the policy. This operation creates
  a
  policy version with a version identifier of **1** and sets
  **1** as the policy's default version.

  Requires permission to access the
  [CreatePolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_policy(map(), String.t() | atom(), create_policy_request(), list()) ::
          {:ok, create_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Creates a new version of the specified IoT policy.

  To update a policy, create a
  new policy version. A managed policy can have up to five versions. If the policy
  has five
  versions, you must use `DeletePolicyVersion` to delete an existing version
  before you create a new one.

  Optionally, you can set the new version as the policy's default version. The
  default
  version is the operative version (that is, the version that is in effect for the
  certificates to which the policy is attached).

  Requires permission to access the
  [CreatePolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_policy_version(map(), String.t() | atom(), create_policy_version_request(), list()) ::
          {:ok, create_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_version_errors()}
  def create_policy_version(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsDefault", "setAsDefault"}
      ]
      |> Request.build_params(input)

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
  Creates a provisioning claim.

  Requires permission to access the
  [CreateProvisioningClaim](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_provisioning_claim(
          map(),
          String.t() | atom(),
          create_provisioning_claim_request(),
          list()
        ) ::
          {:ok, create_provisioning_claim_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_provisioning_claim_errors()}
  def create_provisioning_claim(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/provisioning-claim"
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
  Creates a provisioning template.

  Requires permission to access the
  [CreateProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_provisioning_template(map(), create_provisioning_template_request(), list()) ::
          {:ok, create_provisioning_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_provisioning_template_errors()}
  def create_provisioning_template(%Client{} = client, input, options \\ []) do
    url_path = "/provisioning-templates"
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
  Creates a new version of a provisioning template.

  Requires permission to access the
  [CreateProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_provisioning_template_version(
          map(),
          String.t() | atom(),
          create_provisioning_template_version_request(),
          list()
        ) ::
          {:ok, create_provisioning_template_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_provisioning_template_version_errors()}
  def create_provisioning_template_version(
        %Client{} = client,
        template_name,
        input,
        options \\ []
      ) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsDefault", "setAsDefault"}
      ]
      |> Request.build_params(input)

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
  Creates a role alias.

  Requires permission to access the
  [CreateRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  The value of [
  `credentialDurationSeconds`
  ](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateRoleAlias.html#iot-CreateRoleAlias-request-credentialDurationSeconds)
  must be less than or equal to the maximum session
  duration of the IAM role that the role alias references. For more information,
  see
  [
  Modifying a role maximum session duration (Amazon Web Services
  API)](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api)
  from the Amazon Web Services Identity and Access Management User Guide.
  """
  @spec create_role_alias(map(), String.t() | atom(), create_role_alias_request(), list()) ::
          {:ok, create_role_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_role_alias_errors()}
  def create_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
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
  Creates a scheduled audit that is run at a specified
  time interval.

  Requires permission to access the
  [CreateScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_scheduled_audit(
          map(),
          String.t() | atom(),
          create_scheduled_audit_request(),
          list()
        ) ::
          {:ok, create_scheduled_audit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scheduled_audit_errors()}
  def create_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Creates a Device Defender security profile.

  Requires permission to access the
  [CreateSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_security_profile(
          map(),
          String.t() | atom(),
          create_security_profile_request(),
          list()
        ) ::
          {:ok, create_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_security_profile_errors()}
  def create_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
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
  Creates a stream for delivering one or more large files in chunks over MQTT.

  A stream transports data
  bytes in chunks or blocks packaged as MQTT messages from a source like S3. You
  can have one or more files
  associated with a stream.

  Requires permission to access the
  [CreateStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_stream(map(), String.t() | atom(), create_stream_request(), list()) ::
          {:ok, create_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stream_errors()}
  def create_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
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
  Creates a thing record in the registry.

  If this call is made multiple times using
  the same thing name and configuration, the call will succeed. If this call is
  made with
  the same thing name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html) for
  information about authorizing control plane actions.

  Requires permission to access the
  [CreateThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_thing(map(), String.t() | atom(), create_thing_request(), list()) ::
          {:ok, create_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_thing_errors()}
  def create_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
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
  Create a thing group.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html) for
  information about authorizing control plane actions.

  If the `ThingGroup` that you create has the exact same attributes as an existing
  `ThingGroup`, you will get a 200 success response.

  Requires permission to access the
  [CreateThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_thing_group(map(), String.t() | atom(), create_thing_group_request(), list()) ::
          {:ok, create_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_thing_group_errors()}
  def create_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Creates a new thing type.

  If this call is made multiple times using
  the same thing type name and configuration, the call will succeed. If this call
  is made with
  the same thing type name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  Requires permission to access the
  [CreateThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_thing_type(map(), String.t() | atom(), create_thing_type_request(), list()) ::
          {:ok, create_thing_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_thing_type_errors()}
  def create_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
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
  Creates a rule.

  Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the rule.

  Requires permission to access the
  [CreateTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_topic_rule(map(), String.t() | atom(), create_topic_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_topic_rule_errors()}
  def create_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"

    {headers, input} =
      [
        {"tags", "x-amz-tagging"}
      ]
      |> Request.build_params(input)

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
  Creates a topic rule destination.

  The destination must be confirmed prior to use.

  Requires permission to access the
  [CreateTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_topic_rule_destination(map(), create_topic_rule_destination_request(), list()) ::
          {:ok, create_topic_rule_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_topic_rule_destination_errors()}
  def create_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
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
  Restores the default settings for Device Defender audits for this account.

  Any
  configuration data you entered is deleted and all audit checks are reset to
  disabled.

  Requires permission to access the
  [DeleteAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_account_audit_configuration(
          map(),
          delete_account_audit_configuration_request(),
          list()
        ) ::
          {:ok, delete_account_audit_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_audit_configuration_errors()}
  def delete_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"deleteScheduledAudits", "deleteScheduledAudits"}
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

  Deletes a Device Defender audit suppression.

  Requires permission to access the
  [DeleteAuditSuppression](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_audit_suppression(map(), delete_audit_suppression_request(), list()) ::
          {:ok, delete_audit_suppression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_audit_suppression_errors()}
  def delete_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/delete"
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
  Deletes an authorizer.

  Requires permission to access the
  [DeleteAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_authorizer(map(), String.t() | atom(), delete_authorizer_request(), list()) ::
          {:ok, delete_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_authorizer_errors()}
  def delete_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
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
  Deletes the billing group.

  Requires permission to access the
  [DeleteBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_billing_group(map(), String.t() | atom(), delete_billing_group_request(), list()) ::
          {:ok, delete_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_billing_group_errors()}
  def delete_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes a registered CA certificate.

  Requires permission to access the
  [DeleteCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_ca_certificate(map(), String.t() | atom(), delete_ca_certificate_request(), list()) ::
          {:ok, delete_ca_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ca_certificate_errors()}
  def delete_ca_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
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
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy or IoT thing attached to it
  or if
  its status is set to ACTIVE. To delete a certificate, first use the
  `DetachPolicy` action to detach all policies. Next, use the `UpdateCertificate`
  action to set the certificate to the INACTIVE
  status.

  Requires permission to access the
  [DeleteCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_certificate(map(), String.t() | atom(), delete_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_certificate_errors()}
  def delete_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"forceDelete", "forceDelete"}
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
  Deletes a certificate provider.

  Requires permission to access the
  [DeleteCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  If you delete the certificate provider resource, the behavior of
  `CreateCertificateFromCsr` will resume, and IoT will create
  certificates signed by IoT from a certificate signing request (CSR).
  """
  @spec delete_certificate_provider(
          map(),
          String.t() | atom(),
          delete_certificate_provider_request(),
          list()
        ) ::
          {:ok, delete_certificate_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_certificate_provider_errors()}
  def delete_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
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
  Delete a command resource.
  """
  @spec delete_command(map(), String.t() | atom(), delete_command_request(), list()) ::
          {:ok, delete_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_command_errors()}
  def delete_command(%Client{} = client, command_id, input, options \\ []) do
    url_path = "/commands/#{AWS.Util.encode_uri(command_id)}"
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
  Delete a command execution.

  Only command executions that enter a terminal state can be deleted from
  your account.
  """
  @spec delete_command_execution(
          map(),
          String.t() | atom(),
          delete_command_execution_request(),
          list()
        ) ::
          {:ok, delete_command_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_command_execution_errors()}
  def delete_command_execution(%Client{} = client, execution_id, input, options \\ []) do
    url_path = "/command-executions/#{AWS.Util.encode_uri(execution_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"targetArn", "targetArn"}
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

  Deletes a Device Defender detect custom metric.

  Requires permission to access the
  [DeleteCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  Before you can delete a custom metric, you must first remove the custom metric
  from all
  security profiles it's a part of.
  The
  security
  profile associated with the custom metric can be found using the
  [ListSecurityProfiles](https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html)
  API with `metricName` set to your custom metric name.
  """
  @spec delete_custom_metric(map(), String.t() | atom(), delete_custom_metric_request(), list()) ::
          {:ok, delete_custom_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_metric_errors()}
  def delete_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Removes the specified dimension from your Amazon Web Services accounts.

  Requires permission to access the
  [DeleteDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_dimension(map(), String.t() | atom(), delete_dimension_request(), list()) ::
          {:ok, delete_dimension_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dimension_errors()}
  def delete_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Deletes the specified domain configuration.

  Requires permission to access the
  [DeleteDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_domain_configuration(
          map(),
          String.t() | atom(),
          delete_domain_configuration_request(),
          list()
        ) ::
          {:ok, delete_domain_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_configuration_errors()}
  def delete_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
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
  Deletes a dynamic thing group.

  Requires permission to access the
  [DeleteDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_dynamic_thing_group(
          map(),
          String.t() | atom(),
          delete_dynamic_thing_group_request(),
          list()
        ) ::
          {:ok, delete_dynamic_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dynamic_thing_group_errors()}
  def delete_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes the specified fleet metric.

  Returns successfully with no error if the deletion is successful or you specify
  a fleet metric that doesn't exist.

  Requires permission to access the
  [DeleteFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_fleet_metric(map(), String.t() | atom(), delete_fleet_metric_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_metric_errors()}
  def delete_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes a job and its related job executions.

  Deleting a job may take time, depending on the number of job executions created
  for
  the job and various other factors. While the job is being deleted, the status of
  the job
  will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job
  whose
  status is already "DELETION_IN_PROGRESS" will result in an error.

  Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a
  LimitExceededException will occur.

  Requires permission to access the
  [DeleteJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_job(map(), String.t() | atom(), delete_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_errors()}
  def delete_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"},
        {"namespaceId", "namespaceId"}
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
  Deletes a job execution.

  Requires permission to access the
  [DeleteJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_job_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_job_execution_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_execution_errors()}
  def delete_job_execution(
        %Client{} = client,
        execution_number,
        job_id,
        thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/executionNumber/#{AWS.Util.encode_uri(execution_number)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"},
        {"namespaceId", "namespaceId"}
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
  Deletes the specified job template.
  """
  @spec delete_job_template(map(), String.t() | atom(), delete_job_template_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_template_errors()}
  def delete_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
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
  Deletes a defined mitigation action from your Amazon Web Services accounts.

  Requires permission to access the
  [DeleteMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_mitigation_action(
          map(),
          String.t() | atom(),
          delete_mitigation_action_request(),
          list()
        ) ::
          {:ok, delete_mitigation_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_mitigation_action_errors()}
  def delete_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Delete an OTA update.

  Requires permission to access the
  [DeleteOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_ota_update(map(), String.t() | atom(), delete_ota_update_request(), list()) ::
          {:ok, delete_ota_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ota_update_errors()}
  def delete_ota_update(%Client{} = client, ota_update_id, input, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"deleteStream", "deleteStream"},
        {"forceDeleteAWSJob", "forceDeleteAWSJob"}
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
  Deletes a specific version from a software package.

  **Note:** All package versions must be deleted before deleting the software
  package.

  Requires permission to access the
  [DeletePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_package(map(), String.t() | atom(), delete_package_request(), list()) ::
          {:ok, delete_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a specific version from a software package.

  **Note:** If a package version is designated as default, you must remove the
  designation from the software package using the `UpdatePackage` action.
  """
  @spec delete_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_package_version_request(),
          list()
        ) ::
          {:ok, delete_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_version_errors()}
  def delete_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached to
  any
  certificate.

  To delete a policy, use the `DeletePolicyVersion` action to delete all
  non-default
  versions of the policy; use the `DetachPolicy` action to detach the policy from
  any
  certificate; and then use the DeletePolicy action to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted with
  it.

  Because of the distributed nature of Amazon Web Services, it can take up to five
  minutes after
  a policy is detached before it's ready to be deleted.

  Requires permission to access the
  [DeletePolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_policy(map(), String.t() | atom(), delete_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Deletes the specified version of the specified policy.

  You cannot delete the default
  version of a policy using this action. To delete the default version of a
  policy, use `DeletePolicy`. To find out which version of a policy is marked as
  the default
  version, use ListPolicyVersions.

  Requires permission to access the
  [DeletePolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_policy_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_policy_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_version_errors()}
  def delete_policy_version(
        %Client{} = client,
        policy_name,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Deletes a provisioning template.

  Requires permission to access the
  [DeleteProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_provisioning_template(
          map(),
          String.t() | atom(),
          delete_provisioning_template_request(),
          list()
        ) ::
          {:ok, delete_provisioning_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_provisioning_template_errors()}
  def delete_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
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
  Deletes a provisioning template version.

  Requires permission to access the
  [DeleteProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_provisioning_template_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_provisioning_template_version_request(),
          list()
        ) ::
          {:ok, delete_provisioning_template_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_provisioning_template_version_errors()}
  def delete_provisioning_template_version(
        %Client{} = client,
        template_name,
        version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions/#{AWS.Util.encode_uri(version_id)}"

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
  Deletes a CA certificate registration code.

  Requires permission to access the
  [DeleteRegistrationCode](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_registration_code(map(), delete_registration_code_request(), list()) ::
          {:ok, delete_registration_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_registration_code_errors()}
  def delete_registration_code(%Client{} = client, input, options \\ []) do
    url_path = "/registrationcode"
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
  Deletes a role alias

  Requires permission to access the
  [DeleteRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_role_alias(map(), String.t() | atom(), delete_role_alias_request(), list()) ::
          {:ok, delete_role_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_role_alias_errors()}
  def delete_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
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
  Deletes a scheduled audit.

  Requires permission to access the
  [DeleteScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_scheduled_audit(
          map(),
          String.t() | atom(),
          delete_scheduled_audit_request(),
          list()
        ) ::
          {:ok, delete_scheduled_audit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduled_audit_errors()}
  def delete_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Deletes a Device Defender security profile.

  Requires permission to access the
  [DeleteSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_security_profile(
          map(),
          String.t() | atom(),
          delete_security_profile_request(),
          list()
        ) ::
          {:ok, delete_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_security_profile_errors()}
  def delete_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes a stream.

  Requires permission to access the
  [DeleteStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_stream(map(), String.t() | atom(), delete_stream_request(), list()) ::
          {:ok, delete_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stream_errors()}
  def delete_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
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
  Deletes the specified thing.

  Returns successfully with no error if the deletion is
  successful or you specify a thing that doesn't exist.

  Requires permission to access the
  [DeleteThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_thing(map(), String.t() | atom(), delete_thing_request(), list()) ::
          {:ok, delete_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_thing_errors()}
  def delete_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes a thing group.

  Requires permission to access the
  [DeleteThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_thing_group(map(), String.t() | atom(), delete_thing_group_request(), list()) ::
          {:ok, delete_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_thing_group_errors()}
  def delete_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
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
  Deletes the specified thing type.

  You cannot delete a thing type if it has things
  associated with it. To delete a thing type, first mark it as deprecated by
  calling `DeprecateThingType`, then remove any associated things by calling
  `UpdateThing` to change the thing type on any associated thing, and
  finally use `DeleteThingType` to delete the thing type.

  Requires permission to access the
  [DeleteThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_thing_type(map(), String.t() | atom(), delete_thing_type_request(), list()) ::
          {:ok, delete_thing_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_thing_type_errors()}
  def delete_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
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
  Deletes the rule.

  Requires permission to access the
  [DeleteTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_topic_rule(map(), String.t() | atom(), delete_topic_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_topic_rule_errors()}
  def delete_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
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
  Deletes a topic rule destination.

  Requires permission to access the
  [DeleteTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_topic_rule_destination(
          map(),
          String.t() | atom(),
          delete_topic_rule_destination_request(),
          list()
        ) ::
          {:ok, delete_topic_rule_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_topic_rule_destination_errors()}
  def delete_topic_rule_destination(%Client{} = client, arn, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
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
  Deletes a logging level.

  Requires permission to access the
  [DeleteV2LoggingLevel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_v2_logging_level(map(), delete_v2_logging_level_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_v2_logging_level_errors()}
  def delete_v2_logging_level(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingLevel"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"targetName", "targetName"},
        {"targetType", "targetType"}
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
  Deprecates a thing type.

  You can not associate new things with deprecated thing
  type.

  Requires permission to access the
  [DeprecateThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec deprecate_thing_type(map(), String.t() | atom(), deprecate_thing_type_request(), list()) ::
          {:ok, deprecate_thing_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deprecate_thing_type_errors()}
  def deprecate_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}/deprecate"
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
  Gets information about the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.

  Requires permission to access the
  [DescribeAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_account_audit_configuration(map(), list()) ::
          {:ok, describe_account_audit_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_audit_configuration_errors()}
  def describe_account_audit_configuration(%Client{} = client, options \\ []) do
    url_path = "/audit/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a single audit finding.

  Properties include the reason for
  noncompliance, the severity of the issue,
  and the start time
  when the audit that returned the
  finding.

  Requires permission to access the
  [DescribeAuditFinding](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_audit_finding(map(), String.t() | atom(), list()) ::
          {:ok, describe_audit_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_audit_finding_errors()}
  def describe_audit_finding(%Client{} = client, finding_id, options \\ []) do
    url_path = "/audit/findings/#{AWS.Util.encode_uri(finding_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an audit mitigation task that is used to apply mitigation
  actions to a set of audit findings.

  Properties include the actions being applied, the audit checks to which they're
  being applied, the task status, and aggregated task statistics.
  """
  @spec describe_audit_mitigation_actions_task(map(), String.t() | atom(), list()) ::
          {:ok, describe_audit_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_audit_mitigation_actions_task_errors()}
  def describe_audit_mitigation_actions_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender audit suppression.
  """
  @spec describe_audit_suppression(map(), describe_audit_suppression_request(), list()) ::
          {:ok, describe_audit_suppression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_audit_suppression_errors()}
  def describe_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/describe"
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
  Gets information about a Device Defender audit.

  Requires permission to access the
  [DescribeAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_audit_task(map(), String.t() | atom(), list()) ::
          {:ok, describe_audit_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_audit_task_errors()}
  def describe_audit_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an authorizer.

  Requires permission to access the
  [DescribeAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_authorizer(map(), String.t() | atom(), list()) ::
          {:ok, describe_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_authorizer_errors()}
  def describe_authorizer(%Client{} = client, authorizer_name, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a billing group.

  Requires permission to access the
  [DescribeBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_billing_group(map(), String.t() | atom(), list()) ::
          {:ok, describe_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_billing_group_errors()}
  def describe_billing_group(%Client{} = client, billing_group_name, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a registered CA certificate.

  Requires permission to access the
  [DescribeCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_ca_certificate(map(), String.t() | atom(), list()) ::
          {:ok, describe_ca_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ca_certificate_errors()}
  def describe_ca_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified certificate.

  Requires permission to access the
  [DescribeCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_certificate(map(), String.t() | atom(), list()) ::
          {:ok, describe_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_certificate_errors()}
  def describe_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a certificate provider.

  Requires permission to access the
  [DescribeCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_certificate_provider(map(), String.t() | atom(), list()) ::
          {:ok, describe_certificate_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_certificate_provider_errors()}
  def describe_certificate_provider(%Client{} = client, certificate_provider_name, options \\ []) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender detect custom metric.

  Requires permission to access the
  [DescribeCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_custom_metric(map(), String.t() | atom(), list()) ::
          {:ok, describe_custom_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_metric_errors()}
  def describe_custom_metric(%Client{} = client, metric_name, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the default authorizer.

  Requires permission to access the
  [DescribeDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_default_authorizer(map(), list()) ::
          {:ok, describe_default_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_default_authorizer_errors()}
  def describe_default_authorizer(%Client{} = client, options \\ []) do
    url_path = "/default-authorizer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender ML Detect mitigation action.

  Requires permission to access the
  [DescribeDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_detect_mitigation_actions_task(map(), String.t() | atom(), list()) ::
          {:ok, describe_detect_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_detect_mitigation_actions_task_errors()}
  def describe_detect_mitigation_actions_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides details about a dimension that is defined in your Amazon Web Services
  accounts.

  Requires permission to access the
  [DescribeDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_dimension(map(), String.t() | atom(), list()) ::
          {:ok, describe_dimension_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dimension_errors()}
  def describe_dimension(%Client{} = client, name, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets summary information about a domain configuration.

  Requires permission to access the
  [DescribeDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_domain_configuration(map(), String.t() | atom(), list()) ::
          {:ok, describe_domain_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domain_configuration_errors()}
  def describe_domain_configuration(%Client{} = client, domain_configuration_name, options \\ []) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the encryption configuration for resources and data of your Amazon Web
  Services account in
  Amazon Web Services IoT Core.

  For more information, see [Key management in IoT](https://docs.aws.amazon.com/iot/latest/developerguide/key-management.html)
  from
  the *Amazon Web Services IoT Core Developer Guide*.
  """
  @spec describe_encryption_configuration(map(), list()) ::
          {:ok, describe_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_encryption_configuration_errors()}
  def describe_encryption_configuration(%Client{} = client, options \\ []) do
    url_path = "/encryption-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns or creates a unique endpoint specific to the Amazon Web Services account
  making the
  call.

  The first time `DescribeEndpoint` is called, an endpoint is created. All
  subsequent calls to `DescribeEndpoint` return the same endpoint.

  Requires permission to access the
  [DescribeEndpoint](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_endpoint(map(), String.t() | atom() | nil, list()) ::
          {:ok, describe_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoint_errors()}
  def describe_endpoint(%Client{} = client, endpoint_type \\ nil, options \\ []) do
    url_path = "/endpoint"
    headers = []
    query_params = []

    query_params =
      if !is_nil(endpoint_type) do
        [{"endpointType", endpoint_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes event configurations.

  Requires permission to access the
  [DescribeEventConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_event_configurations(map(), list()) ::
          {:ok, describe_event_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_configurations_errors()}
  def describe_event_configurations(%Client{} = client, options \\ []) do
    url_path = "/event-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified fleet metric.

  Requires permission to access the
  [DescribeFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_fleet_metric(map(), String.t() | atom(), list()) ::
          {:ok, describe_fleet_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_metric_errors()}
  def describe_fleet_metric(%Client{} = client, metric_name, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a search index.

  Requires permission to access the
  [DescribeIndex](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_index(map(), String.t() | atom(), list()) ::
          {:ok, describe_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_index_errors()}
  def describe_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/indices/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a job.

  Requires permission to access the
  [DescribeJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_job(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_errors()}
  def describe_job(%Client{} = client, job_id, before_substitution \\ nil, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(before_substitution) do
        [{"beforeSubstitution", before_substitution} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a job execution.

  Requires permission to access the
  [DescribeJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_job_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_execution_errors()}
  def describe_job_execution(
        %Client{} = client,
        job_id,
        thing_name,
        execution_number \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(execution_number) do
        [{"executionNumber", execution_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a job template.
  """
  @spec describe_job_template(map(), String.t() | atom(), list()) ::
          {:ok, describe_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_template_errors()}
  def describe_job_template(%Client{} = client, job_template_id, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  View details of a managed job template.
  """
  @spec describe_managed_job_template(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_managed_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_managed_job_template_errors()}
  def describe_managed_job_template(
        %Client{} = client,
        template_name,
        template_version \\ nil,
        options \\ []
      ) do
    url_path = "/managed-job-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_version) do
        [{"templateVersion", template_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a mitigation action.

  Requires permission to access the
  [DescribeMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_mitigation_action(map(), String.t() | atom(), list()) ::
          {:ok, describe_mitigation_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_mitigation_action_errors()}
  def describe_mitigation_action(%Client{} = client, action_name, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a provisioning template.

  Requires permission to access the
  [DescribeProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_provisioning_template(map(), String.t() | atom(), list()) ::
          {:ok, describe_provisioning_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_provisioning_template_errors()}
  def describe_provisioning_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a provisioning template version.

  Requires permission to access the
  [DescribeProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_provisioning_template_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_provisioning_template_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_provisioning_template_version_errors()}
  def describe_provisioning_template_version(
        %Client{} = client,
        template_name,
        version_id,
        options \\ []
      ) do
    url_path =
      "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions/#{AWS.Util.encode_uri(version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a role alias.

  Requires permission to access the
  [DescribeRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_role_alias(map(), String.t() | atom(), list()) ::
          {:ok, describe_role_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_role_alias_errors()}
  def describe_role_alias(%Client{} = client, role_alias, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a scheduled audit.

  Requires permission to access the
  [DescribeScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_scheduled_audit(map(), String.t() | atom(), list()) ::
          {:ok, describe_scheduled_audit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scheduled_audit_errors()}
  def describe_scheduled_audit(%Client{} = client, scheduled_audit_name, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Defender security profile.

  Requires permission to access the
  [DescribeSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_security_profile(map(), String.t() | atom(), list()) ::
          {:ok, describe_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_security_profile_errors()}
  def describe_security_profile(%Client{} = client, security_profile_name, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a stream.

  Requires permission to access the
  [DescribeStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_stream(map(), String.t() | atom(), list()) ::
          {:ok, describe_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stream_errors()}
  def describe_stream(%Client{} = client, stream_id, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified thing.

  Requires permission to access the
  [DescribeThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_thing(map(), String.t() | atom(), list()) ::
          {:ok, describe_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_thing_errors()}
  def describe_thing(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe a thing group.

  Requires permission to access the
  [DescribeThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_thing_group(map(), String.t() | atom(), list()) ::
          {:ok, describe_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_thing_group_errors()}
  def describe_thing_group(%Client{} = client, thing_group_name, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a bulk thing provisioning task.

  Requires permission to access the
  [DescribeThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_thing_registration_task(map(), String.t() | atom(), list()) ::
          {:ok, describe_thing_registration_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_thing_registration_task_errors()}
  def describe_thing_registration_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified thing type.

  Requires permission to access the
  [DescribeThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec describe_thing_type(map(), String.t() | atom(), list()) ::
          {:ok, describe_thing_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_thing_type_errors()}
  def describe_thing_type(%Client{} = client, thing_type_name, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Detaches a policy from the specified target.

  Because of the distributed nature of Amazon Web Services, it can take up to five
  minutes after
  a policy is detached before it's ready to be deleted.

  Requires permission to access the
  [DetachPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec detach_policy(map(), String.t() | atom(), detach_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_policy_errors()}
  def detach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Removes the specified policy from the specified certificate.

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `DetachPolicy` instead.

  Requires permission to access the
  [DetachPrincipalPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec detach_principal_policy(
          map(),
          String.t() | atom(),
          detach_principal_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_principal_policy_errors()}
  def detach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

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
  Disassociates a Device Defender security profile from a thing group or from this
  account.

  Requires permission to access the
  [DetachSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec detach_security_profile(
          map(),
          String.t() | atom(),
          detach_security_profile_request(),
          list()
        ) ::
          {:ok, detach_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_security_profile_errors()}
  def detach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
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
  Detaches the specified principal from the specified thing.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  This call is asynchronous. It might take several seconds for the detachment to
  propagate.

  Requires permission to access the
  [DetachThingPrincipal](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec detach_thing_principal(
          map(),
          String.t() | atom(),
          detach_thing_principal_request(),
          list()
        ) ::
          {:ok, detach_thing_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_thing_principal_errors()}
  def detach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

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
  Disables the rule.

  Requires permission to access the
  [DisableTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec disable_topic_rule(map(), String.t() | atom(), disable_topic_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_topic_rule_errors()}
  def disable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/disable"
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
  Disassociates the selected software bill of materials (SBOM) from a specific
  software package version.

  Requires permission to access the
  [DisassociateSbomWithPackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec disassociate_sbom_from_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_sbom_from_package_version_request(),
          list()
        ) ::
          {:ok, disassociate_sbom_from_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_sbom_from_package_version_errors()}
  def disassociate_sbom_from_package_version(
        %Client{} = client,
        package_name,
        version_name,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}/sbom"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Enables the rule.

  Requires permission to access the
  [EnableTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec enable_topic_rule(map(), String.t() | atom(), enable_topic_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_topic_rule_errors()}
  def enable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/enable"
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

  Returns a Device Defender's ML Detect Security Profile training model's status.

  Requires permission to access the
  [GetBehaviorModelTrainingSummaries](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_behavior_model_training_summaries(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_behavior_model_training_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_behavior_model_training_summaries_errors()}
  def get_behavior_model_training_summaries(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        options \\ []
      ) do
    url_path = "/behavior-model-training/summaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
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
  Aggregates on indexed data with search queries pertaining to particular fields.

  Requires permission to access the
  [GetBucketsAggregation](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_buckets_aggregation(map(), get_buckets_aggregation_request(), list()) ::
          {:ok, get_buckets_aggregation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_buckets_aggregation_errors()}
  def get_buckets_aggregation(%Client{} = client, input, options \\ []) do
    url_path = "/indices/buckets"
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
  Returns the approximate count of unique values that match the query.

  Requires permission to access the
  [GetCardinality](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_cardinality(map(), get_cardinality_request(), list()) ::
          {:ok, get_cardinality_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cardinality_errors()}
  def get_cardinality(%Client{} = client, input, options \\ []) do
    url_path = "/indices/cardinality"
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
  Gets information about the specified command.
  """
  @spec get_command(map(), String.t() | atom(), list()) ::
          {:ok, get_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_command_errors()}
  def get_command(%Client{} = client, command_id, options \\ []) do
    url_path = "/commands/#{AWS.Util.encode_uri(command_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specific command execution on a single device.
  """
  @spec get_command_execution(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_command_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_command_execution_errors()}
  def get_command_execution(
        %Client{} = client,
        execution_id,
        include_result \\ nil,
        target_arn,
        options \\ []
      ) do
    url_path = "/command-executions/#{AWS.Util.encode_uri(execution_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_arn) do
        [{"targetArn", target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_result) do
        [{"includeResult", include_result} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the policies that have an effect on the authorization behavior of
  the
  specified device when it connects to the IoT device gateway.

  Requires permission to access the
  [GetEffectivePolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_effective_policies(map(), get_effective_policies_request(), list()) ::
          {:ok, get_effective_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_effective_policies_errors()}
  def get_effective_policies(%Client{} = client, input, options \\ []) do
    url_path = "/effective-policies"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"thingName", "thingName"}
      ]
      |> Request.build_params(input)

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
  Gets the indexing configuration.

  Requires permission to access the
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_indexing_configuration(map(), list()) ::
          {:ok, get_indexing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_indexing_configuration_errors()}
  def get_indexing_configuration(%Client{} = client, options \\ []) do
    url_path = "/indexing/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a job document.

  Requires permission to access the
  [GetJobDocument](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_job_document(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_job_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_document_errors()}
  def get_job_document(%Client{} = client, job_id, before_substitution \\ nil, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/job-document"
    headers = []
    query_params = []

    query_params =
      if !is_nil(before_substitution) do
        [{"beforeSubstitution", before_substitution} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the logging options.

  NOTE: use of this command is not recommended. Use `GetV2LoggingOptions`
  instead.

  Requires permission to access the
  [GetLoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_logging_options(map(), list()) ::
          {:ok, get_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_logging_options_errors()}
  def get_logging_options(%Client{} = client, options \\ []) do
    url_path = "/loggingOptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an OTA update.

  Requires permission to access the
  [GetOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_ota_update(map(), String.t() | atom(), list()) ::
          {:ok, get_ota_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ota_update_errors()}
  def get_ota_update(%Client{} = client, ota_update_id, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified software package.

  Requires permission to access the
  [GetPackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_package(map(), String.t() | atom(), list()) ::
          {:ok, get_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_package_errors()}
  def get_package(%Client{} = client, package_name, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified software package's configuration.

  Requires permission to access the
  [GetPackageConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_package_configuration(map(), list()) ::
          {:ok, get_package_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_package_configuration_errors()}
  def get_package_configuration(%Client{} = client, options \\ []) do
    url_path = "/package-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified package version.

  Requires permission to access the
  [GetPackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_package_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_package_version_errors()}
  def get_package_version(%Client{} = client, package_name, version_name, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Groups the aggregated values that match the query into percentile groupings.

  The default
  percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own
  when you call `GetPercentiles`. This function returns a value for each
  percentile group specified (or the default percentile groupings). The percentile
  group
  "1" contains the aggregated field value that occurs in approximately one percent
  of the
  values that match the query. The percentile group "5" contains the aggregated
  field value
  that occurs in approximately five percent of the values that match the query,
  and so on.
  The result is an approximation, the more values that match the query, the more
  accurate
  the percentile values.

  Requires permission to access the
  [GetPercentiles](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_percentiles(map(), get_percentiles_request(), list()) ::
          {:ok, get_percentiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_percentiles_errors()}
  def get_percentiles(%Client{} = client, input, options \\ []) do
    url_path = "/indices/percentiles"
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
  Gets information about the specified policy with the policy document of the
  default
  version.

  Requires permission to access the
  [GetPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified policy version.

  Requires permission to access the
  [GetPolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_policy_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_version_errors()}
  def get_policy_version(%Client{} = client, policy_name, policy_version_id, options \\ []) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a registration code used to register a CA certificate with IoT.

  IoT will create a registration code as part of this API call if the registration
  code doesn't exist or has been deleted. If you already have a registration code,
  this API
  call will return the same registration code.

  Requires permission to access the
  [GetRegistrationCode](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_registration_code(map(), list()) ::
          {:ok, get_registration_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registration_code_errors()}
  def get_registration_code(%Client{} = client, options \\ []) do
    url_path = "/registrationcode"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the count, average, sum, minimum, maximum, sum of squares, variance,
  and standard deviation for the specified aggregated field.

  If the aggregation field is of type
  `String`, only the count statistic is returned.

  Requires permission to access the
  [GetStatistics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_statistics(map(), get_statistics_request(), list()) ::
          {:ok, get_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_statistics_errors()}
  def get_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/indices/statistics"
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
  Retrieves the live connectivity status per device.
  """
  @spec get_thing_connectivity_data(
          map(),
          String.t() | atom(),
          get_thing_connectivity_data_request(),
          list()
        ) ::
          {:ok, get_thing_connectivity_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_thing_connectivity_data_errors()}
  def get_thing_connectivity_data(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/connectivity-data"
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
  Gets information about the rule.

  Requires permission to access the
  [GetTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_topic_rule(map(), String.t() | atom(), list()) ::
          {:ok, get_topic_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_topic_rule_errors()}
  def get_topic_rule(%Client{} = client, rule_name, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a topic rule destination.

  Requires permission to access the
  [GetTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_topic_rule_destination(map(), String.t() | atom(), list()) ::
          {:ok, get_topic_rule_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_topic_rule_destination_errors()}
  def get_topic_rule_destination(%Client{} = client, arn, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the fine grained logging options.

  Requires permission to access the
  [GetV2LoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_v2_logging_options(map(), list()) ::
          {:ok, get_v2_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_v2_logging_options_errors()}
  def get_v2_logging_options(%Client{} = client, options \\ []) do
    url_path = "/v2LoggingOptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the active violations for a given Device Defender security profile.

  Requires permission to access the
  [ListActiveViolations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_active_violations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_active_violations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_active_violations_errors()}
  def list_active_violations(
        %Client{} = client,
        behavior_criteria_type \\ nil,
        list_suppressed_alerts \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        thing_name \\ nil,
        verification_state \\ nil,
        options \\ []
      ) do
    url_path = "/active-violations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(verification_state) do
        [{"verificationState", verification_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
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
      if !is_nil(list_suppressed_alerts) do
        [{"listSuppressedAlerts", list_suppressed_alerts} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(behavior_criteria_type) do
        [{"behaviorCriteriaType", behavior_criteria_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the policies attached to the specified thing group.

  Requires permission to access the
  [ListAttachedPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_attached_policies(
          map(),
          String.t() | atom(),
          list_attached_policies_request(),
          list()
        ) ::
          {:ok, list_attached_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_attached_policies_errors()}
  def list_attached_policies(%Client{} = client, target, input, options \\ []) do
    url_path = "/attached-policies/#{AWS.Util.encode_uri(target)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"},
        {"recursive", "recursive"}
      ]
      |> Request.build_params(input)

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
  Lists the findings (results) of a Device Defender audit or of the audits
  performed during a specified time period.

  (Findings are retained for 90 days.)

  Requires permission to access the
  [ListAuditFindings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_audit_findings(map(), list_audit_findings_request(), list()) ::
          {:ok, list_audit_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_audit_findings_errors()}
  def list_audit_findings(%Client{} = client, input, options \\ []) do
    url_path = "/audit/findings"
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
  Gets the status of audit mitigation action tasks that were
  executed.

  Requires permission to access the
  [ListAuditMitigationActionsExecutions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_audit_mitigation_actions_executions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_audit_mitigation_actions_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_audit_mitigation_actions_executions_errors()}
  def list_audit_mitigation_actions_executions(
        %Client{} = client,
        action_status \\ nil,
        finding_id,
        max_results \\ nil,
        next_token \\ nil,
        task_id,
        options \\ []
      ) do
    url_path = "/audit/mitigationactions/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
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
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(action_status) do
        [{"actionStatus", action_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of audit mitigation action tasks that match the specified filters.

  Requires permission to access the
  [ListAuditMitigationActionsTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_audit_mitigation_actions_tasks(
          map(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_audit_mitigation_actions_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_audit_mitigation_actions_tasks_errors()}
  def list_audit_mitigation_actions_tasks(
        %Client{} = client,
        audit_task_id \\ nil,
        end_time,
        finding_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        task_status \\ nil,
        options \\ []
      ) do
    url_path = "/audit/mitigationactions/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(audit_task_id) do
        [{"auditTaskId", audit_task_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists your Device Defender audit listings.

  Requires permission to access the
  [ListAuditSuppressions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_audit_suppressions(map(), list_audit_suppressions_request(), list()) ::
          {:ok, list_audit_suppressions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_audit_suppressions_errors()}
  def list_audit_suppressions(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/list"
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
  Lists the Device Defender audits that have been performed during a given
  time period.

  Requires permission to access the
  [ListAuditTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_audit_tasks(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_audit_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_audit_tasks_errors()}
  def list_audit_tasks(
        %Client{} = client,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        task_status \\ nil,
        task_type \\ nil,
        options \\ []
      ) do
    url_path = "/audit/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_type) do
        [{"taskType", task_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the authorizers registered in your account.

  Requires permission to access the
  [ListAuthorizers](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_authorizers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_authorizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_authorizers_errors()}
  def list_authorizers(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/authorizers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the billing groups you have created.

  Requires permission to access the
  [ListBillingGroups](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_billing_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_billing_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_groups_errors()}
  def list_billing_groups(
        %Client{} = client,
        max_results \\ nil,
        name_prefix_filter \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/billing-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix_filter) do
        [{"namePrefixFilter", name_prefix_filter} | query_params]
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
  Lists the CA certificates registered for your Amazon Web Services account.

  The results are paginated with a default page size of 25. You can use the
  returned
  marker to retrieve additional results.

  Requires permission to access the
  [ListCACertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_ca_certificates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ca_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ca_certificates_errors()}
  def list_ca_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        template_name \\ nil,
        options \\ []
      ) do
    url_path = "/cacertificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_name) do
        [{"templateName", template_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all your certificate providers in your Amazon Web Services account.

  Requires permission to access the
  [ListCertificateProviders](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_certificate_providers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_certificate_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificate_providers_errors()}
  def list_certificate_providers(
        %Client{} = client,
        ascending_order \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/certificate-providers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the certificates registered in your Amazon Web Services account.

  The results are paginated with a default page size of 25. You can use the
  returned
  marker to retrieve additional results.

  Requires permission to access the
  [ListCertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_certificates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificates_errors()}
  def list_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the device certificates signed by the specified CA certificate.

  Requires permission to access the
  [ListCertificatesByCA](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_certificates_by_ca(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_certificates_by_ca_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificates_by_ca_errors()}
  def list_certificates_by_ca(
        %Client{} = client,
        ca_certificate_id,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates-by-ca/#{AWS.Util.encode_uri(ca_certificate_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all command executions.

    
  You must provide only the `startedTimeFilter` or
  the `completedTimeFilter` information. If you provide
  both time filters, the API will generate an error. You can use
  this information to retrieve a list of command executions
  within a specific timeframe.

    
  You must provide only the `commandArn` or
  the `thingArn` information depending on whether you want
  to list executions for a specific command or an IoT thing. If you provide
  both fields, the API will generate an error.

  For more information about considerations for using this API, see
  [List command executions in your account
  (CLI)](https://docs.aws.amazon.com/iot/latest/developerguide/iot-remote-command-execution-start-monitor.html#iot-remote-command-execution-list-cli).
  """
  @spec list_command_executions(map(), list_command_executions_request(), list()) ::
          {:ok, list_command_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_command_executions_errors()}
  def list_command_executions(%Client{} = client, input, options \\ []) do
    url_path = "/command-executions"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  List all commands in your account.
  """
  @spec list_commands(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_commands_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_commands_errors()}
  def list_commands(
        %Client{} = client,
        command_parameter_name \\ nil,
        max_results \\ nil,
        namespace \\ nil,
        next_token \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/commands"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
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
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
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
      if !is_nil(command_parameter_name) do
        [{"commandParameterName", command_parameter_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists your Device Defender detect custom metrics.

  Requires permission to access the
  [ListCustomMetrics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_custom_metrics(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_custom_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_metrics_errors()}
  def list_custom_metrics(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/custom-metrics"
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

  Lists mitigation actions executions for a Device Defender ML Detect Security
  Profile.

  Requires permission to access the
  [ListDetectMitigationActionsExecutions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_detect_mitigation_actions_executions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_detect_mitigation_actions_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_detect_mitigation_actions_executions_errors()}
  def list_detect_mitigation_actions_executions(
        %Client{} = client,
        end_time \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        task_id \\ nil,
        thing_name \\ nil,
        violation_id \\ nil,
        options \\ []
      ) do
    url_path = "/detect/mitigationactions/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(violation_id) do
        [{"violationId", violation_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  List of Device Defender ML Detect mitigation actions tasks.

  Requires permission to access the
  [ListDetectMitigationActionsTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_detect_mitigation_actions_tasks(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_detect_mitigation_actions_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_detect_mitigation_actions_tasks_errors()}
  def list_detect_mitigation_actions_tasks(
        %Client{} = client,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        options \\ []
      ) do
    url_path = "/detect/mitigationactions/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the set of dimensions that are defined for your Amazon Web Services
  accounts.

  Requires permission to access the
  [ListDimensions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_dimensions(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_dimensions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dimensions_errors()}
  def list_dimensions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/dimensions"
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
  Gets a list of domain configurations for the user.

  This list is sorted
  alphabetically by domain configuration name.

  Requires permission to access the
  [ListDomainConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_domain_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_domain_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_configurations_errors()}
  def list_domain_configurations(
        %Client{} = client,
        marker \\ nil,
        page_size \\ nil,
        service_type \\ nil,
        options \\ []
      ) do
    url_path = "/domainConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_type) do
        [{"serviceType", service_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all your fleet metrics.

  Requires permission to access the
  [ListFleetMetrics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_fleet_metrics(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_fleet_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleet_metrics_errors()}
  def list_fleet_metrics(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/fleet-metrics"
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
  Lists the search indices.

  Requires permission to access the
  [ListIndices](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_indices(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_indices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_indices_errors()}
  def list_indices(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/indices"
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
  Lists the job executions for a job.

  Requires permission to access the
  [ListJobExecutionsForJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_job_executions_for_job(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_job_executions_for_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_executions_for_job_errors()}
  def list_job_executions_for_job(
        %Client{} = client,
        job_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the job executions for the specified thing.

  Requires permission to access the
  [ListJobExecutionsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_job_executions_for_thing(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_job_executions_for_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_executions_for_thing_errors()}
  def list_job_executions_for_thing(
        %Client{} = client,
        thing_name,
        job_id \\ nil,
        max_results \\ nil,
        namespace_id \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      if !is_nil(namespace_id) do
        [{"namespaceId", namespace_id} | query_params]
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
      if !is_nil(job_id) do
        [{"jobId", job_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of job templates.

  Requires permission to access the
  [ListJobTemplates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_job_templates(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_job_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_templates_errors()}
  def list_job_templates(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/job-templates"
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
  Lists jobs.

  Requires permission to access the
  [ListJobs](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_jobs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        max_results \\ nil,
        namespace_id \\ nil,
        next_token \\ nil,
        status \\ nil,
        target_selection \\ nil,
        thing_group_id \\ nil,
        thing_group_name \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_group_name) do
        [{"thingGroupName", thing_group_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_group_id) do
        [{"thingGroupId", thing_group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_selection) do
        [{"targetSelection", target_selection} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      if !is_nil(namespace_id) do
        [{"namespaceId", namespace_id} | query_params]
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
  Returns a list of managed job templates.
  """
  @spec list_managed_job_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_job_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_job_templates_errors()}
  def list_managed_job_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        template_name \\ nil,
        options \\ []
      ) do
    url_path = "/managed-job-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_name) do
        [{"templateName", template_name} | query_params]
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
  Lists the values reported for an IoT Device Defender metric (device-side metric,
  cloud-side metric, or custom metric)
  by the given thing during the specified time period.
  """
  @spec list_metric_values(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_metric_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metric_values_errors()}
  def list_metric_values(
        %Client{} = client,
        dimension_name \\ nil,
        dimension_value_operator \\ nil,
        end_time,
        max_results \\ nil,
        metric_name,
        next_token \\ nil,
        start_time,
        thing_name,
        options \\ []
      ) do
    url_path = "/metric-values"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(metric_name) do
        [{"metricName", metric_name} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dimension_value_operator) do
        [{"dimensionValueOperator", dimension_value_operator} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dimension_name) do
        [{"dimensionName", dimension_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of all mitigation actions that match the specified filter criteria.

  Requires permission to access the
  [ListMitigationActions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_mitigation_actions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_mitigation_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_mitigation_actions_errors()}
  def list_mitigation_actions(
        %Client{} = client,
        action_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/mitigationactions/actions"
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

    query_params =
      if !is_nil(action_type) do
        [{"actionType", action_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists OTA updates.

  Requires permission to access the
  [ListOTAUpdates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_ota_updates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ota_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ota_updates_errors()}
  def list_ota_updates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        ota_update_status \\ nil,
        options \\ []
      ) do
    url_path = "/otaUpdates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(ota_update_status) do
        [{"otaUpdateStatus", ota_update_status} | query_params]
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
  Lists certificates that are being transferred but not yet accepted.

  Requires permission to access the
  [ListOutgoingCertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_outgoing_certificates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_outgoing_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_outgoing_certificates_errors()}
  def list_outgoing_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates-out-going"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the software package versions associated to the account.

  Requires permission to access the
  [ListPackageVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_package_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_package_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_versions_errors()}
  def list_package_versions(
        %Client{} = client,
        package_name,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the software packages associated to the account.

  Requires permission to access the
  [ListPackages](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_packages(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
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
  Lists your policies.

  Requires permission to access the
  [ListPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_policies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the principals associated with the specified policy.

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `ListTargetsForPolicy` instead.

  Requires permission to access the
  [ListPolicyPrincipals](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_policy_principals(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_policy_principals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_principals_errors()}
  def list_policy_principals(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        policy_name,
        options \\ []
      ) do
    url_path = "/policy-principals"
    headers = []

    headers =
      if !is_nil(policy_name) do
        [{"x-amzn-iot-policy", policy_name} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.

  Requires permission to access the
  [ListPolicyVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_policy_versions(map(), String.t() | atom(), list()) ::
          {:ok, list_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_versions_errors()}
  def list_policy_versions(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the policies attached to the specified principal.

  If you use an Cognito
  identity, the ID must be in [AmazonCognito Identity format](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `ListAttachedPolicies` instead.

  Requires permission to access the
  [ListPrincipalPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_principal_policies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_principal_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_principal_policies_errors()}
  def list_principal_policies(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        principal,
        options \\ []
      ) do
    url_path = "/principal-policies"
    headers = []

    headers =
      if !is_nil(principal) do
        [{"x-amzn-iot-principal", principal} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the things associated with the specified principal.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  Requires permission to access the
  [ListPrincipalThings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_principal_things(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_principal_things_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_principal_things_errors()}
  def list_principal_things(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        principal,
        options \\ []
      ) do
    url_path = "/principals/things"
    headers = []

    headers =
      if !is_nil(principal) do
        [{"x-amzn-principal", principal} | headers]
      else
        headers
      end

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
  Lists the things associated with the specified principal.

  A principal can be an X.509
  certificate or an Amazon Cognito ID.

  Requires permission to access the
  [ListPrincipalThings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_principal_things_v2(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_principal_things_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_principal_things_v2_errors()}
  def list_principal_things_v2(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        thing_principal_type \\ nil,
        principal,
        options \\ []
      ) do
    url_path = "/principals/things-v2"
    headers = []

    headers =
      if !is_nil(principal) do
        [{"x-amzn-principal", principal} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(thing_principal_type) do
        [{"thingPrincipalType", thing_principal_type} | query_params]
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
  A list of provisioning template versions.

  Requires permission to access the
  [ListProvisioningTemplateVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_provisioning_template_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_provisioning_template_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_provisioning_template_versions_errors()}
  def list_provisioning_template_versions(
        %Client{} = client,
        template_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions"
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
  Lists the provisioning templates in your Amazon Web Services account.

  Requires permission to access the
  [ListProvisioningTemplates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_provisioning_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_provisioning_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_provisioning_templates_errors()}
  def list_provisioning_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/provisioning-templates"
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
  The related resources of an Audit finding.

  The following resources can be returned from calling this API:

    *
  DEVICE_CERTIFICATE

    *
  CA_CERTIFICATE

    *
  IOT_POLICY

    *
  COGNITO_IDENTITY_POOL

    *
  CLIENT_ID

    *
  ACCOUNT_SETTINGS

    *
  ROLE_ALIAS

    *
  IAM_ROLE

    *
  ISSUER_CERTIFICATE

  This API is similar to DescribeAuditFinding's
  [RelatedResources](https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html) but provides pagination and is not limited to 10 resources.
  When calling
  [DescribeAuditFinding](https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html)
  for the intermediate CA revoked for
  active device certificates check, RelatedResources will not be populated. You
  must use this API, ListRelatedResourcesForAuditFinding, to list the
  certificates.
  """
  @spec list_related_resources_for_audit_finding(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_related_resources_for_audit_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_related_resources_for_audit_finding_errors()}
  def list_related_resources_for_audit_finding(
        %Client{} = client,
        finding_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audit/relatedResources"
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

    query_params =
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the role aliases registered in your account.

  Requires permission to access the
  [ListRoleAliases](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_role_aliases(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_role_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_role_aliases_errors()}
  def list_role_aliases(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/role-aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The validation results for all software bill of materials (SBOM) attached to a
  specific software package version.

  Requires permission to access the
  [ListSbomValidationResults](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_sbom_validation_results(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sbom_validation_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sbom_validation_results_errors()}
  def list_sbom_validation_results(
        %Client{} = client,
        package_name,
        version_name,
        max_results \\ nil,
        next_token \\ nil,
        validation_result \\ nil,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}/sbom-validation-results"

    headers = []
    query_params = []

    query_params =
      if !is_nil(validation_result) do
        [{"validationResult", validation_result} | query_params]
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
  Lists all of your scheduled audits.

  Requires permission to access the
  [ListScheduledAudits](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_scheduled_audits(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_scheduled_audits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scheduled_audits_errors()}
  def list_scheduled_audits(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audit/scheduledaudits"
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
  Lists the Device Defender security profiles
  you've
  created.

  You can filter security profiles by dimension or custom metric.

  Requires permission to access the
  [ListSecurityProfiles](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  `dimensionName` and `metricName` cannot be used in the same request.
  """
  @spec list_security_profiles(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_profiles_errors()}
  def list_security_profiles(
        %Client{} = client,
        dimension_name \\ nil,
        max_results \\ nil,
        metric_name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(metric_name) do
        [{"metricName", metric_name} | query_params]
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
      if !is_nil(dimension_name) do
        [{"dimensionName", dimension_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Device Defender security profiles attached to a target (thing group).

  Requires permission to access the
  [ListSecurityProfilesForTarget](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_security_profiles_for_target(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_security_profiles_for_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_profiles_for_target_errors()}
  def list_security_profiles_for_target(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        recursive \\ nil,
        security_profile_target_arn,
        options \\ []
      ) do
    url_path = "/security-profiles-for-target"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_profile_target_arn) do
        [{"securityProfileTargetArn", security_profile_target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
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
  Lists all of the streams in your Amazon Web Services account.

  Requires permission to access the
  [ListStreams](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_streams(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_streams_errors()}
  def list_streams(
        %Client{} = client,
        ascending_order \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/streams"
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

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.

  Requires permission to access the
  [ListTagsForResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_tags_for_resource(map(), String.t() | atom() | nil, String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, next_token \\ nil, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

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
  List targets for the specified policy.

  Requires permission to access the
  [ListTargetsForPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_targets_for_policy(
          map(),
          String.t() | atom(),
          list_targets_for_policy_request(),
          list()
        ) ::
          {:ok, list_targets_for_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_targets_for_policy_errors()}
  def list_targets_for_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policy-targets/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"}
      ]
      |> Request.build_params(input)

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
  Lists the targets (thing groups) associated with a given Device Defender
  security profile.

  Requires permission to access the
  [ListTargetsForSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_targets_for_security_profile(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_targets_for_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_targets_for_security_profile_errors()}
  def list_targets_for_security_profile(
        %Client{} = client,
        security_profile_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
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
  List the thing groups in your account.

  Requires permission to access the
  [ListThingGroups](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_groups_errors()}
  def list_thing_groups(
        %Client{} = client,
        max_results \\ nil,
        name_prefix_filter \\ nil,
        next_token \\ nil,
        parent_group \\ nil,
        recursive \\ nil,
        options \\ []
      ) do
    url_path = "/thing-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(parent_group) do
        [{"parentGroup", parent_group} | query_params]
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
      if !is_nil(name_prefix_filter) do
        [{"namePrefixFilter", name_prefix_filter} | query_params]
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
  List the thing groups to which the specified thing belongs.

  Requires permission to access the
  [ListThingGroupsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_groups_for_thing(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_groups_for_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_groups_for_thing_errors()}
  def list_thing_groups_for_thing(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/thing-groups"
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
  Lists the principals associated with the specified thing.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  Requires permission to access the
  [ListThingPrincipals](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_principals(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_principals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_principals_errors()}
  def list_thing_principals(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"
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
  Lists the principals associated with the specified thing.

  A principal can be an X.509
  certificate or an Amazon Cognito ID.

  Requires permission to access the
  [ListThingPrincipals](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_principals_v2(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_principals_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_principals_v2_errors()}
  def list_thing_principals_v2(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        next_token \\ nil,
        thing_principal_type \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals-v2"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_principal_type) do
        [{"thingPrincipalType", thing_principal_type} | query_params]
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
  Information about the thing registration tasks.
  """
  @spec list_thing_registration_task_reports(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_thing_registration_task_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_registration_task_reports_errors()}
  def list_thing_registration_task_reports(
        %Client{} = client,
        task_id,
        max_results \\ nil,
        next_token \\ nil,
        report_type,
        options \\ []
      ) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}/reports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_type) do
        [{"reportType", report_type} | query_params]
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
  List bulk thing provisioning tasks.

  Requires permission to access the
  [ListThingRegistrationTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_registration_tasks(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_registration_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_registration_tasks_errors()}
  def list_thing_registration_tasks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/thing-registration-tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the existing thing types.

  Requires permission to access the
  [ListThingTypes](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_thing_types(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_thing_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_thing_types_errors()}
  def list_thing_types(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        thing_type_name \\ nil,
        options \\ []
      ) do
    url_path = "/thing-types"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_type_name) do
        [{"thingTypeName", thing_type_name} | query_params]
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
  Lists your things.

  Use the **attributeName** and **attributeValue** parameters to filter your
  things. For example,
  calling `ListThings` with attributeName=Color and attributeValue=Red
  retrieves all things in the registry that contain an attribute **Color** with
  the value **Red**. For more
  information, see [List Things](https://docs.aws.amazon.com/iot/latest/developerguide/thing-registry.html#list-things)
  from the *Amazon Web Services IoT Core Developer
  Guide*.

  Requires permission to access the
  [ListThings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  You will not be charged for calling this API if an `Access denied` error is
  returned. You will also not be charged if no attributes or pagination token was
  provided in request and no pagination token and no results were returned.
  """
  @spec list_things(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_things_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_things_errors()}
  def list_things(
        %Client{} = client,
        attribute_name \\ nil,
        attribute_value \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        thing_type_name \\ nil,
        use_prefix_attribute_value \\ nil,
        options \\ []
      ) do
    url_path = "/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(use_prefix_attribute_value) do
        [{"usePrefixAttributeValue", use_prefix_attribute_value} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_type_name) do
        [{"thingTypeName", thing_type_name} | query_params]
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
      if !is_nil(attribute_value) do
        [{"attributeValue", attribute_value} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(attribute_name) do
        [{"attributeName", attribute_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the things you have added to the given billing group.

  Requires permission to access the
  [ListThingsInBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_things_in_billing_group(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_things_in_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_things_in_billing_group_errors()}
  def list_things_in_billing_group(
        %Client{} = client,
        billing_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}/things"
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
  Lists the things in the specified group.

  Requires permission to access the
  [ListThingsInThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_things_in_thing_group(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_things_in_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_things_in_thing_group_errors()}
  def list_things_in_thing_group(
        %Client{} = client,
        thing_group_name,
        max_results \\ nil,
        next_token \\ nil,
        recursive \\ nil,
        options \\ []
      ) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
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
  Lists all the topic rule destinations in your Amazon Web Services account.

  Requires permission to access the
  [ListTopicRuleDestinations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_topic_rule_destinations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_topic_rule_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_topic_rule_destinations_errors()}
  def list_topic_rule_destinations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/destinations"
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
  Lists the rules for the specific topic.

  Requires permission to access the
  [ListTopicRules](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_topic_rules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_topic_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_topic_rules_errors()}
  def list_topic_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        rule_disabled \\ nil,
        topic \\ nil,
        options \\ []
      ) do
    url_path = "/rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(topic) do
        [{"topic", topic} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(rule_disabled) do
        [{"ruleDisabled", rule_disabled} | query_params]
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
  Lists logging levels.

  Requires permission to access the
  [ListV2LoggingLevels](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_v2_logging_levels(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_v2_logging_levels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_v2_logging_levels_errors()}
  def list_v2_logging_levels(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_type \\ nil,
        options \\ []
      ) do
    url_path = "/v2LoggingLevel"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_type) do
        [{"targetType", target_type} | query_params]
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
  Lists the Device Defender security profile violations discovered during the
  given time period.

  You can use filters to limit the results to those alerts issued for a particular
  security profile,
  behavior, or thing (device).

  Requires permission to access the
  [ListViolationEvents](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_violation_events(
          map(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_violation_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_violation_events_errors()}
  def list_violation_events(
        %Client{} = client,
        behavior_criteria_type \\ nil,
        end_time,
        list_suppressed_alerts \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        start_time,
        thing_name \\ nil,
        verification_state \\ nil,
        options \\ []
      ) do
    url_path = "/violation-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(verification_state) do
        [{"verificationState", verification_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
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
      if !is_nil(list_suppressed_alerts) do
        [{"listSuppressedAlerts", list_suppressed_alerts} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(behavior_criteria_type) do
        [{"behaviorCriteriaType", behavior_criteria_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Set a verification state and provide a description of that verification state on
  a violation (detect alarm).
  """
  @spec put_verification_state_on_violation(
          map(),
          String.t() | atom(),
          put_verification_state_on_violation_request(),
          list()
        ) ::
          {:ok, put_verification_state_on_violation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_verification_state_on_violation_errors()}
  def put_verification_state_on_violation(%Client{} = client, violation_id, input, options \\ []) do
    url_path = "/violations/verification-state/#{AWS.Util.encode_uri(violation_id)}"
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
  Registers a CA certificate with Amazon Web Services IoT Core.

  There is no limit to the number of CA
  certificates you can register in your Amazon Web Services account. You can
  register up to 10 CA
  certificates with the same `CA subject field` per Amazon Web Services account.

  Requires permission to access the
  [RegisterCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec register_ca_certificate(map(), register_ca_certificate_request(), list()) ::
          {:ok, register_ca_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_ca_certificate_errors()}
  def register_ca_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/cacertificate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"allowAutoRegistration", "allowAutoRegistration"},
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Registers a device certificate with IoT in the same [certificate mode](https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode)
  as the signing CA.

  If you have more than one CA certificate that has the same subject field, you
  must
  specify the CA certificate that was used to sign the device certificate being
  registered.

  Requires permission to access the
  [RegisterCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec register_certificate(map(), register_certificate_request(), list()) ::
          {:ok, register_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_certificate_errors()}
  def register_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Register a certificate that does not have a certificate authority (CA).

  For supported certificates, consult [
  Certificate signing algorithms supported by
  IoT](https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms).
  """
  @spec register_certificate_without_ca(map(), register_certificate_without_ca_request(), list()) ::
          {:ok, register_certificate_without_ca_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_certificate_without_ca_errors()}
  def register_certificate_without_ca(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register-no-ca"
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
  Provisions a thing in the device registry.

  RegisterThing calls other IoT control
  plane APIs. These calls might exceed your account level [
  IoT Throttling
  Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot)
  and cause throttle errors. Please contact [Amazon Web Services Customer Support](https://console.aws.amazon.com/support/home) to raise
  your throttling limits if necessary.

  Requires permission to access the
  [RegisterThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec register_thing(map(), register_thing_request(), list()) ::
          {:ok, register_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_thing_errors()}
  def register_thing(%Client{} = client, input, options \\ []) do
    url_path = "/things"
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
  Rejects a pending certificate transfer.

  After IoT rejects a certificate transfer,
  the certificate status changes from **PENDING_TRANSFER** to
  **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates`
  to enumerate your certificates.

  This operation can only be called by the transfer destination. After it is
  called,
  the certificate will be returned to the source's account in the INACTIVE state.

  Requires permission to access the
  [RejectCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec reject_certificate_transfer(
          map(),
          String.t() | atom(),
          reject_certificate_transfer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_certificate_transfer_errors()}
  def reject_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/reject-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
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
  Removes the given thing from the billing group.

  Requires permission to access the
  [RemoveThingFromBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  This call is asynchronous. It might take several seconds for the detachment to
  propagate.
  """
  @spec remove_thing_from_billing_group(map(), remove_thing_from_billing_group_request(), list()) ::
          {:ok, remove_thing_from_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_thing_from_billing_group_errors()}
  def remove_thing_from_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/removeThingFromBillingGroup"
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
  Remove the specified thing from the specified group.

  You must specify either a `thingGroupArn` or a
  `thingGroupName` to identify the thing group and
  either a `thingArn` or a `thingName` to
  identify the thing to remove from the thing group.

  Requires permission to access the
  [RemoveThingFromThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec remove_thing_from_thing_group(map(), remove_thing_from_thing_group_request(), list()) ::
          {:ok, remove_thing_from_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_thing_from_thing_group_errors()}
  def remove_thing_from_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/removeThingFromThingGroup"
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
  Replaces the rule.

  You must specify all parameters for the new rule. Creating rules
  is an administrator-level action. Any user who has permission to create rules
  will be able
  to access data processed by the rule.

  Requires permission to access the
  [ReplaceTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec replace_topic_rule(map(), String.t() | atom(), replace_topic_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, replace_topic_rule_errors()}
  def replace_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
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
  The query search index.

  Requires permission to access the
  [SearchIndex](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec search_index(map(), search_index_request(), list()) ::
          {:ok, search_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_index_errors()}
  def search_index(%Client{} = client, input, options \\ []) do
    url_path = "/indices/search"
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
  Sets the default authorizer.

  This will be used if a websocket connection is made
  without specifying an authorizer.

  Requires permission to access the
  [SetDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec set_default_authorizer(map(), set_default_authorizer_request(), list()) ::
          {:ok, set_default_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_default_authorizer_errors()}
  def set_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
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
  Sets the specified version of the specified policy as the policy's default
  (operative) version.

  This action affects all certificates to which the policy is attached.
  To list the principals the policy is attached to, use the
  `ListPrincipalPolicies`
  action.

  Requires permission to access the
  [SetDefaultPolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec set_default_policy_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          set_default_policy_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_default_policy_version_errors()}
  def set_default_policy_version(
        %Client{} = client,
        policy_name,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Sets the logging options.

  NOTE: use of this command is not recommended. Use `SetV2LoggingOptions`
  instead.

  Requires permission to access the
  [SetLoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec set_logging_options(map(), set_logging_options_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_logging_options_errors()}
  def set_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/loggingOptions"
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
  Sets the logging level.

  Requires permission to access the
  [SetV2LoggingLevel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec set_v2_logging_level(map(), set_v2_logging_level_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_v2_logging_level_errors()}
  def set_v2_logging_level(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingLevel"
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
  Sets the logging options for the V2 logging service.

  Requires permission to access the
  [SetV2LoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec set_v2_logging_options(map(), set_v2_logging_options_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_v2_logging_options_errors()}
  def set_v2_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingOptions"
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
  Starts a task that applies a set of mitigation actions to the specified target.

  Requires permission to access the
  [StartAuditMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec start_audit_mitigation_actions_task(
          map(),
          String.t() | atom(),
          start_audit_mitigation_actions_task_request(),
          list()
        ) ::
          {:ok, start_audit_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_audit_mitigation_actions_task_errors()}
  def start_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
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

  Starts a Device Defender ML Detect mitigation actions task.

  Requires permission to access the
  [StartDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec start_detect_mitigation_actions_task(
          map(),
          String.t() | atom(),
          start_detect_mitigation_actions_task_request(),
          list()
        ) ::
          {:ok, start_detect_mitigation_actions_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_detect_mitigation_actions_task_errors()}
  def start_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
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
  Starts an on-demand Device Defender audit.

  Requires permission to access the
  [StartOnDemandAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec start_on_demand_audit_task(map(), start_on_demand_audit_task_request(), list()) ::
          {:ok, start_on_demand_audit_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_on_demand_audit_task_errors()}
  def start_on_demand_audit_task(%Client{} = client, input, options \\ []) do
    url_path = "/audit/tasks"
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
  Creates a bulk thing provisioning task.

  Requires permission to access the
  [StartThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec start_thing_registration_task(map(), start_thing_registration_task_request(), list()) ::
          {:ok, start_thing_registration_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_thing_registration_task_errors()}
  def start_thing_registration_task(%Client{} = client, input, options \\ []) do
    url_path = "/thing-registration-tasks"
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
  Cancels a bulk thing provisioning task.

  Requires permission to access the
  [StopThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec stop_thing_registration_task(
          map(),
          String.t() | atom(),
          stop_thing_registration_task_request(),
          list()
        ) ::
          {:ok, stop_thing_registration_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_thing_registration_task_errors()}
  def stop_thing_registration_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be
  used to manage a resource.

  Requires permission to access the
  [TagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
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
  Tests if a specified principal is authorized to perform an IoT action on a
  specified resource.

  Use this to test and debug the authorization behavior of devices that
  connect to the IoT device gateway.

  Requires permission to access the
  [TestAuthorization](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec test_authorization(map(), test_authorization_request(), list()) ::
          {:ok, test_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_authorization_errors()}
  def test_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/test-authorization"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientId", "clientId"}
      ]
      |> Request.build_params(input)

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
  Tests a custom authorization behavior by invoking a specified custom authorizer.

  Use
  this to test and debug the custom authorization behavior of devices that connect
  to the IoT
  device gateway.

  Requires permission to access the
  [TestInvokeAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec test_invoke_authorizer(
          map(),
          String.t() | atom(),
          test_invoke_authorizer_request(),
          list()
        ) ::
          {:ok, test_invoke_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_invoke_authorizer_errors()}
  def test_invoke_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}/test"
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
  Transfers the specified certificate to the specified Amazon Web Services
  account.

  Requires permission to access the
  [TransferCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It's up to the
  caller
  to notify the transfer target.

  The certificate being transferred must not be in the `ACTIVE` state. You can use
  the
  `UpdateCertificate` action to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  `DetachPolicy` action to detach them.

  **Customer managed key behavior:** When you use a customer managed key to secure
  your data and then transfer
  the key to a customer in a different account using the `TransferCertificate`
  operation, the certificates will no longer be protected by their
  customer managed key configuration. During the transfer process, certificates
  are encrypted using IoT owned keys.

  While a certificate is in the **PENDING_TRANSFER** state, it's always protected
  by IoT owned keys, regardless of the customer managed key configuration of
  either the source or destination account.

  Once the transfer is completed through `AcceptCertificateTransfer`,
  `RejectCertificateTransfer`, or
  `CancelCertificateTransfer`, the certificate will be protected by the customer
  managed key configuration of the account that owns
  the certificate after the transfer operation:

    *
  If the transfer is accepted: The certificate is protected by the destination
  account's customer managed key configuration.

    *
  If the transfer is rejected or cancelled: The certificate is protected by the
  source account's customer managed key configuration.
  """
  @spec transfer_certificate(map(), String.t() | atom(), transfer_certificate_request(), list()) ::
          {:ok, transfer_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, transfer_certificate_errors()}
  def transfer_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/transfer-certificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"targetAwsAccount", "targetAwsAccount"}
      ]
      |> Request.build_params(input)

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
  Removes the given tags (metadata) from the resource.

  Requires permission to access the
  [UntagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag"
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
  Configures or reconfigures the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.

  Requires permission to access the
  [UpdateAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_account_audit_configuration(
          map(),
          update_account_audit_configuration_request(),
          list()
        ) ::
          {:ok, update_account_audit_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_audit_configuration_errors()}
  def update_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
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

  Updates a Device Defender audit suppression.
  """
  @spec update_audit_suppression(map(), update_audit_suppression_request(), list()) ::
          {:ok, update_audit_suppression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_audit_suppression_errors()}
  def update_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/update"
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
  Updates an authorizer.

  Requires permission to access the
  [UpdateAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_authorizer(map(), String.t() | atom(), update_authorizer_request(), list()) ::
          {:ok, update_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_authorizer_errors()}
  def update_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
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
  Updates information about the billing group.

  Requires permission to access the
  [UpdateBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_billing_group(map(), String.t() | atom(), update_billing_group_request(), list()) ::
          {:ok, update_billing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_billing_group_errors()}
  def update_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
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
  Updates a registered CA certificate.

  Requires permission to access the
  [UpdateCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_ca_certificate(map(), String.t() | atom(), update_ca_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ca_certificate_errors()}
  def update_ca_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"newAutoRegistrationStatus", "newAutoRegistrationStatus"},
        {"newStatus", "newStatus"}
      ]
      |> Request.build_params(input)

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
  Updates the status of the specified certificate.

  This operation is
  idempotent.

  Requires permission to access the
  [UpdateCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  Certificates must be in the ACTIVE state to authenticate devices that use
  a certificate to connect to IoT.

  Within a few minutes of updating a certificate from the ACTIVE state to any
  other
  state, IoT disconnects all devices that used that certificate to connect.
  Devices cannot
  use a certificate that is not in the ACTIVE state to reconnect.
  """
  @spec update_certificate(map(), String.t() | atom(), update_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_certificate_errors()}
  def update_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"newStatus", "newStatus"}
      ]
      |> Request.build_params(input)

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
  Updates a certificate provider.

  Requires permission to access the
  [UpdateCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_certificate_provider(
          map(),
          String.t() | atom(),
          update_certificate_provider_request(),
          list()
        ) ::
          {:ok, update_certificate_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_certificate_provider_errors()}
  def update_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
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
  Update information about a command or mark a command for deprecation.
  """
  @spec update_command(map(), String.t() | atom(), update_command_request(), list()) ::
          {:ok, update_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_command_errors()}
  def update_command(%Client{} = client, command_id, input, options \\ []) do
    url_path = "/commands/#{AWS.Util.encode_uri(command_id)}"
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
  Updates a
  Device Defender detect custom metric.

  Requires permission to access the
  [UpdateCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_custom_metric(map(), String.t() | atom(), update_custom_metric_request(), list()) ::
          {:ok, update_custom_metric_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_custom_metric_errors()}
  def update_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Updates the definition for a dimension.

  You
  cannot
  change the type of a dimension after
  it is created (you can delete it and
  recreate
  it).

  Requires permission to access the
  [UpdateDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_dimension(map(), String.t() | atom(), update_dimension_request(), list()) ::
          {:ok, update_dimension_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dimension_errors()}
  def update_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Updates values stored in the domain configuration.

  Domain configurations for default
  endpoints can't be updated.

  Requires permission to access the
  [UpdateDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_domain_configuration(
          map(),
          String.t() | atom(),
          update_domain_configuration_request(),
          list()
        ) ::
          {:ok, update_domain_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_configuration_errors()}
  def update_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
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
  Updates a dynamic thing group.

  Requires permission to access the
  [UpdateDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_dynamic_thing_group(
          map(),
          String.t() | atom(),
          update_dynamic_thing_group_request(),
          list()
        ) ::
          {:ok, update_dynamic_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dynamic_thing_group_errors()}
  def update_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Updates the encryption configuration.

  By default, all Amazon Web Services IoT Core data at rest is
  encrypted using Amazon Web Services owned keys. Amazon Web Services IoT Core
  also supports symmetric customer managed keys
  from Amazon Web Services Key Management Service (KMS). With customer managed
  keys, you create, own, and
  manage the KMS keys in your Amazon Web Services account. For more information,
  see [Data encryption](https://docs.aws.amazon.com/iot/latest/developerguide/data-encryption.html)
  in the *Amazon Web Services IoT Core Developer Guide*.
  """
  @spec update_encryption_configuration(map(), update_encryption_configuration_request(), list()) ::
          {:ok, update_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_encryption_configuration_errors()}
  def update_encryption_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/encryption-configuration"
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
  Updates the event configurations.

  Requires permission to access the
  [UpdateEventConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_event_configurations(map(), update_event_configurations_request(), list()) ::
          {:ok, update_event_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_configurations_errors()}
  def update_event_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/event-configurations"
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
  Updates the data for a fleet metric.

  Requires permission to access the
  [UpdateFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_fleet_metric(map(), String.t() | atom(), update_fleet_metric_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_metric_errors()}
  def update_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Updates the search configuration.

  Requires permission to access the
  [UpdateIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_indexing_configuration(map(), update_indexing_configuration_request(), list()) ::
          {:ok, update_indexing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_indexing_configuration_errors()}
  def update_indexing_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/indexing/config"
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
  Updates supported fields of the specified job.

  Requires permission to access the
  [UpdateJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_job(map(), String.t() | atom(), update_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_errors()}
  def update_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

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
  Updates the definition for the specified mitigation action.

  Requires permission to access the
  [UpdateMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_mitigation_action(
          map(),
          String.t() | atom(),
          update_mitigation_action_request(),
          list()
        ) ::
          {:ok, update_mitigation_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_mitigation_action_errors()}
  def update_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Updates the supported fields for a specific software package.

  Requires permission to access the
  [UpdatePackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  @spec update_package(map(), String.t() | atom(), update_package_request(), list()) ::
          {:ok, update_package_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_errors()}
  def update_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates the software package configuration.

  Requires permission to access the
  [UpdatePackageConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [iam:PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
  actions.
  """
  @spec update_package_configuration(map(), update_package_configuration_request(), list()) ::
          {:ok, update_package_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_configuration_errors()}
  def update_package_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/package-configuration"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates the supported fields for a specific package version.

  Requires permission to access the
  [UpdatePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  @spec update_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_package_version_request(),
          list()
        ) ::
          {:ok, update_package_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_version_errors()}
  def update_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates a provisioning template.

  Requires permission to access the
  [UpdateProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_provisioning_template(
          map(),
          String.t() | atom(),
          update_provisioning_template_request(),
          list()
        ) ::
          {:ok, update_provisioning_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_provisioning_template_errors()}
  def update_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
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
  Updates a role alias.

  Requires permission to access the
  [UpdateRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  The value of [
  `credentialDurationSeconds`
  ](https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateRoleAlias.html#iot-UpdateRoleAlias-request-credentialDurationSeconds)
  must be less than or equal to the
  maximum session duration of the IAM role that the role alias references. For
  more
  information, see [ Modifying a role maximum session duration (Amazon Web Services
  API)](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api)
  from the Amazon Web Services
  Identity and Access Management User Guide.
  """
  @spec update_role_alias(map(), String.t() | atom(), update_role_alias_request(), list()) ::
          {:ok, update_role_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_role_alias_errors()}
  def update_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
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
  Updates a scheduled audit, including which checks are performed and
  how often the audit takes place.

  Requires permission to access the
  [UpdateScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_scheduled_audit(
          map(),
          String.t() | atom(),
          update_scheduled_audit_request(),
          list()
        ) ::
          {:ok, update_scheduled_audit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scheduled_audit_errors()}
  def update_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Updates a Device Defender security profile.

  Requires permission to access the
  [UpdateSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_security_profile(
          map(),
          String.t() | atom(),
          update_security_profile_request(),
          list()
        ) ::
          {:ok, update_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_security_profile_errors()}
  def update_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Updates an existing stream.

  The stream version will be incremented by one.

  Requires permission to access the
  [UpdateStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_stream(map(), String.t() | atom(), update_stream_request(), list()) ::
          {:ok, update_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stream_errors()}
  def update_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
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
  Updates the data for a thing.

  Requires permission to access the
  [UpdateThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_thing(map(), String.t() | atom(), update_thing_request(), list()) ::
          {:ok, update_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_thing_errors()}
  def update_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
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
  Update a thing group.

  Requires permission to access the
  [UpdateThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_thing_group(map(), String.t() | atom(), update_thing_group_request(), list()) ::
          {:ok, update_thing_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_thing_group_errors()}
  def update_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Updates the groups to which the thing belongs.

  Requires permission to access the
  [UpdateThingGroupsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_thing_groups_for_thing(map(), update_thing_groups_for_thing_request(), list()) ::
          {:ok, update_thing_groups_for_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_thing_groups_for_thing_errors()}
  def update_thing_groups_for_thing(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/updateThingGroupsForThing"
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
  Updates a thing type.
  """
  @spec update_thing_type(map(), String.t() | atom(), update_thing_type_request(), list()) ::
          {:ok, update_thing_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_thing_type_errors()}
  def update_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
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
  Updates a topic rule destination.

  You use this to change the status, endpoint URL, or
  confirmation URL of the destination.

  Requires permission to access the
  [UpdateTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_topic_rule_destination(map(), update_topic_rule_destination_request(), list()) ::
          {:ok, update_topic_rule_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_topic_rule_destination_errors()}
  def update_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
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
  Validates a Device Defender security profile behaviors specification.

  Requires permission to access the
  [ValidateSecurityProfileBehaviors](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec validate_security_profile_behaviors(
          map(),
          validate_security_profile_behaviors_request(),
          list()
        ) ::
          {:ok, validate_security_profile_behaviors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_security_profile_behaviors_errors()}
  def validate_security_profile_behaviors(%Client{} = client, input, options \\ []) do
    url_path = "/security-profile-behaviors/validate"
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
