# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMIncidents do
  @moduledoc """
  Systems Manager Incident Manager is an incident management console designed to
  help users
  mitigate and recover from incidents affecting their Amazon Web Services-hosted
  applications.

  An
  incident is any unplanned interruption or reduction in quality of services.

  Incident Manager increases incident resolution by notifying responders of
  impact,
  highlighting relevant troubleshooting data, and providing collaboration tools to
  get services
  back up and running. To achieve the primary goal of reducing the
  time-to-resolution of
  critical incidents, Incident Manager automates response plans and enables
  responder
  team escalation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_resource_policies_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("resourcePolicies") => list(resource_policy())
      }

  """
  @type get_resource_policies_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_response_plan_output() :: %{}

  """
  @type update_response_plan_output() :: %{}

  @typedoc """

  ## Example:

      list_timeline_events_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("eventSummaries") => list(event_summary())
      }

  """
  @type list_timeline_events_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_incident_findings_error() :: %{
        "code" => [String.t() | Atom.t()],
        "findingId" => String.t() | Atom.t(),
        "message" => [String.t() | Atom.t()]
      }

  """
  @type batch_get_incident_findings_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_replication_set_output() :: %{}

  """
  @type delete_replication_set_output() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_related_items_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type list_related_items_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_timeline_event_output() :: %{}

  """
  @type delete_timeline_event_output() :: %{}

  @typedoc """

  ## Example:

      list_replication_sets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_replication_sets_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      related_item() :: %{
        "generatedId" => String.t() | Atom.t(),
        "identifier" => item_identifier(),
        "title" => [String.t() | Atom.t()]
      }

  """
  @type related_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      incident_record_source() :: %{
        "createdBy" => String.t() | Atom.t(),
        "invokedBy" => String.t() | Atom.t(),
        "resourceArn" => String.t() | Atom.t(),
        "source" => String.t() | Atom.t()
      }

  """
  @type incident_record_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      start_incident_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("impact") => integer(),
        optional("relatedItems") => list(related_item()),
        optional("title") => String.t() | Atom.t(),
        optional("triggerDetails") => trigger_details(),
        required("responsePlanArn") => String.t() | Atom.t()
      }

  """
  @type start_incident_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_incident_record_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type delete_incident_record_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_deletion_protection_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("arn") => String.t() | Atom.t(),
        required("deletionProtected") => [boolean()]
      }

  """
  @type update_deletion_protection_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_incident_findings_output() :: %{
        "errors" => list(batch_get_incident_findings_error()),
        "findings" => list(finding())
      }

  """
  @type batch_get_incident_findings_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_region_action() :: %{
        "regionName" => String.t() | Atom.t()
      }

  """
  @type delete_region_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding_summary() :: %{
        "id" => String.t() | Atom.t(),
        "lastModifiedTime" => [non_neg_integer()]
      }

  """
  @type finding_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_response_plan_output() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type create_response_plan_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_incident_findings_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type list_incident_findings_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_response_plan_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type delete_response_plan_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_incident_output() :: %{
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type start_incident_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_output() :: %{
        required("policyId") => String.t() | Atom.t()
      }

  """
  @type put_resource_policy_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      timeline_event() :: %{
        "eventData" => String.t() | Atom.t(),
        "eventId" => String.t() | Atom.t(),
        "eventReferences" => list(list()),
        "eventTime" => [non_neg_integer()],
        "eventType" => String.t() | Atom.t(),
        "eventUpdatedTime" => [non_neg_integer()],
        "incidentRecordArn" => String.t() | Atom.t()
      }

  """
  @type timeline_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_replication_set_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type get_replication_set_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_input() :: %{
        required("policyId") => String.t() | Atom.t(),
        required("resourceArn") => String.t() | Atom.t()
      }

  """
  @type delete_resource_policy_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_deletion_protection_output() :: %{}

  """
  @type update_deletion_protection_output() :: %{}

  @typedoc """

  ## Example:

      pager_duty_incident_detail() :: %{
        "autoResolve" => [boolean()],
        "id" => [String.t() | Atom.t()],
        "secretId" => [String.t() | Atom.t()]
      }

  """
  @type pager_duty_incident_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_replication_set_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("actions") => list(list()),
        required("arn") => String.t() | Atom.t()
      }

  """
  @type update_replication_set_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_incident_findings_input() :: %{
        required("findingIds") => list(String.t() | Atom.t()),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type batch_get_incident_findings_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      code_deploy_deployment() :: %{
        "deploymentGroupArn" => String.t() | Atom.t(),
        "deploymentId" => [String.t() | Atom.t()],
        "endTime" => [non_neg_integer()],
        "startTime" => [non_neg_integer()]
      }

  """
  @type code_deploy_deployment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_incident_records_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("incidentRecordSummaries") => list(incident_record_summary())
      }

  """
  @type list_incident_records_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_incident_record_output() :: %{}

  """
  @type update_incident_record_output() :: %{}

  @typedoc """

  ## Example:

      update_response_plan_input() :: %{
        optional("actions") => list(list()),
        optional("chatChannel") => list(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("displayName") => String.t() | Atom.t(),
        optional("engagements") => list(String.t() | Atom.t()),
        optional("incidentTemplateDedupeString") => String.t() | Atom.t(),
        optional("incidentTemplateImpact") => integer(),
        optional("incidentTemplateNotificationTargets") => list(list()),
        optional("incidentTemplateSummary") => String.t() | Atom.t(),
        optional("incidentTemplateTags") => map(),
        optional("incidentTemplateTitle") => String.t() | Atom.t(),
        optional("integrations") => list(list()),
        required("arn") => String.t() | Atom.t()
      }

  """
  @type update_response_plan_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      replication_set() :: %{
        "arn" => String.t() | Atom.t(),
        "createdBy" => String.t() | Atom.t(),
        "createdTime" => [non_neg_integer()],
        "deletionProtected" => [boolean()],
        "lastModifiedBy" => String.t() | Atom.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "regionMap" => map(),
        "status" => String.t() | Atom.t()
      }

  """
  @type replication_set() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceIdentifier" => [String.t() | Atom.t()],
        "resourceType" => String.t() | Atom.t(),
        "retryAfter" => [non_neg_integer()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceIdentifier" => [String.t() | Atom.t()],
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_incident_record_output() :: %{
        required("incidentRecord") => incident_record()
      }

  """
  @type get_incident_record_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_input() :: %{
        required("policy") => String.t() | Atom.t(),
        required("resourceArn") => String.t() | Atom.t()
      }

  """
  @type put_resource_policy_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policies_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("resourceArn") => String.t() | Atom.t()
      }

  """
  @type get_resource_policies_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      item_identifier() :: %{
        "type" => String.t() | Atom.t(),
        "value" => list()
      }

  """
  @type item_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_replication_sets_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("replicationSetArns") => list(String.t() | Atom.t())
      }

  """
  @type list_replication_sets_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => [String.t() | Atom.t()],
        "resourceIdentifier" => [String.t() | Atom.t()],
        "resourceType" => String.t() | Atom.t(),
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_incident_findings_output() :: %{
        "findings" => list(finding_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_incident_findings_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pager_duty_incident_configuration() :: %{
        "serviceId" => [String.t() | Atom.t()]
      }

  """
  @type pager_duty_incident_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_timeline_event_output() :: %{}

  """
  @type update_timeline_event_output() :: %{}

  @typedoc """

  ## Example:

      update_incident_record_input() :: %{
        optional("chatChannel") => list(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("impact") => integer(),
        optional("notificationTargets") => list(list()),
        optional("status") => String.t() | Atom.t(),
        optional("summary") => String.t() | Atom.t(),
        optional("title") => String.t() | Atom.t(),
        required("arn") => String.t() | Atom.t()
      }

  """
  @type update_incident_record_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "creationTime" => [non_neg_integer()],
        "details" => list(),
        "id" => String.t() | Atom.t(),
        "lastModifiedTime" => [non_neg_integer()]
      }

  """
  @type finding() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_related_items_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t(),
        required("relatedItemsUpdate") => list()
      }

  """
  @type update_related_items_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pager_duty_configuration() :: %{
        "name" => [String.t() | Atom.t()],
        "pagerDutyIncidentConfiguration" => pager_duty_incident_configuration(),
        "secretId" => [String.t() | Atom.t()]
      }

  """
  @type pager_duty_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      trigger_details() :: %{
        "rawData" => String.t() | Atom.t(),
        "source" => String.t() | Atom.t(),
        "timestamp" => [non_neg_integer()],
        "triggerArn" => String.t() | Atom.t()
      }

  """
  @type trigger_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_timeline_event_input() :: %{
        required("eventId") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type get_timeline_event_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_response_plans_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_response_plans_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "condition" => list(),
        "key" => [String.t() | Atom.t()]
      }

  """
  @type filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      event_summary() :: %{
        "eventId" => String.t() | Atom.t(),
        "eventReferences" => list(list()),
        "eventTime" => [non_neg_integer()],
        "eventType" => String.t() | Atom.t(),
        "eventUpdatedTime" => [non_neg_integer()],
        "incidentRecordArn" => String.t() | Atom.t()
      }

  """
  @type event_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_policy() :: %{
        "policyDocument" => String.t() | Atom.t(),
        "policyId" => String.t() | Atom.t(),
        "ramResourceShareRegion" => [String.t() | Atom.t()]
      }

  """
  @type resource_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_timeline_event_output() :: %{
        required("event") => timeline_event()
      }

  """
  @type get_timeline_event_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_output() :: %{}

  """
  @type delete_resource_policy_output() :: %{}

  @typedoc """

  ## Example:

      get_response_plan_output() :: %{
        optional("actions") => list(list()),
        optional("chatChannel") => list(),
        optional("displayName") => String.t() | Atom.t(),
        optional("engagements") => list(String.t() | Atom.t()),
        optional("integrations") => list(list()),
        required("arn") => String.t() | Atom.t(),
        required("incidentTemplate") => incident_template(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type get_response_plan_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_timeline_events_input() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => String.t() | Atom.t(),
        optional("sortOrder") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type list_timeline_events_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      incident_record_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "creationTime" => [non_neg_integer()],
        "impact" => integer(),
        "incidentRecordSource" => incident_record_source(),
        "resolvedTime" => [non_neg_integer()],
        "status" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t()
      }

  """
  @type incident_record_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_related_items_output() :: %{}

  """
  @type update_related_items_output() :: %{}

  @typedoc """

  ## Example:

      region_info() :: %{
        "sseKmsKeyId" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "statusMessage" => [String.t() | Atom.t()],
        "statusUpdateDateTime" => [non_neg_integer()]
      }

  """
  @type region_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ssm_automation() :: %{
        "documentName" => [String.t() | Atom.t()],
        "documentVersion" => [String.t() | Atom.t()],
        "dynamicParameters" => map(),
        "parameters" => map(),
        "roleArn" => String.t() | Atom.t(),
        "targetAccount" => String.t() | Atom.t()
      }

  """
  @type ssm_automation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      region_map_input_value() :: %{
        "sseKmsKeyId" => String.t() | Atom.t()
      }

  """
  @type region_map_input_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | Atom.t()
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

      create_replication_set_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("regions") => map()
      }

  """
  @type create_replication_set_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_timeline_event_output() :: %{
        required("eventId") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type create_timeline_event_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => [String.t() | Atom.t()],
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      incident_template() :: %{
        "dedupeString" => String.t() | Atom.t(),
        "impact" => integer(),
        "incidentTags" => map(),
        "notificationTargets" => list(list()),
        "summary" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t()
      }

  """
  @type incident_template() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_incident_records_input() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_incident_records_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      response_plan_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "displayName" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type response_plan_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_region_action() :: %{
        "regionName" => String.t() | Atom.t(),
        "sseKmsKeyId" => String.t() | Atom.t()
      }

  """
  @type add_region_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_response_plan_output() :: %{}

  """
  @type delete_response_plan_output() :: %{}

  @typedoc """

  ## Example:

      list_response_plans_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("responsePlanSummaries") => list(response_plan_summary())
      }

  """
  @type list_response_plans_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_response_plan_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type get_response_plan_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_timeline_event_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("eventData") => String.t() | Atom.t(),
        optional("eventReferences") => list(list()),
        optional("eventTime") => [non_neg_integer()],
        optional("eventType") => String.t() | Atom.t(),
        required("eventId") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type update_timeline_event_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_replication_set_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type delete_replication_set_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_related_items_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("relatedItems") => list(related_item())
      }

  """
  @type list_related_items_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_replication_set_output() :: %{}

  """
  @type update_replication_set_output() :: %{}

  @typedoc """

  ## Example:

      create_timeline_event_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("eventReferences") => list(list()),
        required("eventData") => String.t() | Atom.t(),
        required("eventTime") => [non_neg_integer()],
        required("eventType") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type create_timeline_event_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_replication_set_output() :: %{
        required("replicationSet") => replication_set()
      }

  """
  @type get_replication_set_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_incident_record_input() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type get_incident_record_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_response_plan_input() :: %{
        optional("actions") => list(list()),
        optional("chatChannel") => list(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("displayName") => String.t() | Atom.t(),
        optional("engagements") => list(String.t() | Atom.t()),
        optional("integrations") => list(list()),
        optional("tags") => map(),
        required("incidentTemplate") => incident_template(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type create_response_plan_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      empty_chat_channel() :: %{}

  """
  @type empty_chat_channel() :: %{}

  @typedoc """

  ## Example:

      cloud_formation_stack_update() :: %{
        "endTime" => [non_neg_integer()],
        "stackArn" => String.t() | Atom.t(),
        "startTime" => [non_neg_integer()]
      }

  """
  @type cloud_formation_stack_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_replication_set_output() :: %{
        required("arn") => String.t() | Atom.t()
      }

  """
  @type create_replication_set_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      incident_record() :: %{
        "arn" => String.t() | Atom.t(),
        "automationExecutions" => list(list()),
        "chatChannel" => list(),
        "creationTime" => [non_neg_integer()],
        "dedupeString" => String.t() | Atom.t(),
        "impact" => integer(),
        "incidentRecordSource" => incident_record_source(),
        "lastModifiedBy" => String.t() | Atom.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "notificationTargets" => list(list()),
        "resolvedTime" => [non_neg_integer()],
        "status" => String.t() | Atom.t(),
        "summary" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t()
      }

  """
  @type incident_record() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_incident_record_output() :: %{}

  """
  @type delete_incident_record_output() :: %{}

  @typedoc """

  ## Example:

      delete_timeline_event_input() :: %{
        required("eventId") => String.t() | Atom.t(),
        required("incidentRecordArn") => String.t() | Atom.t()
      }

  """
  @type delete_timeline_event_input() :: %{String.t() | Atom.t() => any()}

  @type batch_get_incident_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_incident_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_incident_records_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_related_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_replication_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_response_plans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_timeline_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_incident_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_deletion_protection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_related_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-incidents",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSM Incidents",
      signature_version: "v4",
      signing_name: "ssm-incidents",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves details about all specified findings for an incident, including
  descriptive details about each finding.

  A finding
  represents a recent application environment change made by an CodeDeploy
  deployment or an CloudFormation stack creation or update that can be
  investigated as a
  potential cause of the incident.
  """
  @spec batch_get_incident_findings(map(), batch_get_incident_findings_input(), list()) ::
          {:ok, batch_get_incident_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_incident_findings_errors()}
  def batch_get_incident_findings(%Client{} = client, input, options \\ []) do
    url_path = "/batchGetIncidentFindings"
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
  A replication set replicates and encrypts your data to the provided Regions with
  the
  provided KMS key.
  """
  @spec create_replication_set(map(), create_replication_set_input(), list()) ::
          {:ok, create_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_replication_set_errors()}
  def create_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/createReplicationSet"
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
      201
    )
  end

  @doc """
  Creates a response plan that automates the initial response to incidents.

  A response plan
  engages contacts, starts chat channel collaboration, and initiates runbooks at
  the beginning
  of an incident.
  """
  @spec create_response_plan(map(), create_response_plan_input(), list()) ::
          {:ok, create_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_response_plan_errors()}
  def create_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/createResponsePlan"
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
      201
    )
  end

  @doc """
  Creates a custom timeline event on the incident details page of an incident
  record.

  Incident Manager automatically creates timeline events that mark key moments
  during an incident.
  You can create custom timeline events to mark important events that Incident
  Manager can detect
  automatically.
  """
  @spec create_timeline_event(map(), create_timeline_event_input(), list()) ::
          {:ok, create_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_timeline_event_errors()}
  def create_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/createTimelineEvent"
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
      201
    )
  end

  @doc """
  Delete an incident record from Incident Manager.
  """
  @spec delete_incident_record(map(), delete_incident_record_input(), list()) ::
          {:ok, delete_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_incident_record_errors()}
  def delete_incident_record(%Client{} = client, input, options \\ []) do
    url_path = "/deleteIncidentRecord"
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
  Deletes all Regions in your replication set.

  Deleting the replication set deletes all
  Incident Manager data.
  """
  @spec delete_replication_set(map(), delete_replication_set_input(), list()) ::
          {:ok, delete_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_replication_set_errors()}
  def delete_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/deleteReplicationSet"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"arn", "arn"}
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
      204
    )
  end

  @doc """
  Deletes the resource policy that Resource Access Manager uses to share your
  Incident Manager
  resource.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_input(), list()) ::
          {:ok, delete_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/deleteResourcePolicy"
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
  Deletes the specified response plan.

  Deleting a response plan stops all linked CloudWatch alarms and EventBridge
  events from creating an incident with this response
  plan.
  """
  @spec delete_response_plan(map(), delete_response_plan_input(), list()) ::
          {:ok, delete_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_response_plan_errors()}
  def delete_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/deleteResponsePlan"
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
  Deletes a timeline event from an incident.
  """
  @spec delete_timeline_event(map(), delete_timeline_event_input(), list()) ::
          {:ok, delete_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_timeline_event_errors()}
  def delete_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/deleteTimelineEvent"
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
  Returns the details for the specified incident record.
  """
  @spec get_incident_record(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_incident_record_errors()}
  def get_incident_record(%Client{} = client, arn, options \\ []) do
    url_path = "/getIncidentRecord"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve your Incident Manager replication set.
  """
  @spec get_replication_set(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_replication_set_errors()}
  def get_replication_set(%Client{} = client, arn, options \\ []) do
    url_path = "/getReplicationSet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the resource policies attached to the specified response plan.
  """
  @spec get_resource_policies(map(), get_resource_policies_input(), list()) ::
          {:ok, get_resource_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policies_errors()}
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    url_path = "/getResourcePolicies"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
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
  Retrieves the details of the specified response plan.
  """
  @spec get_response_plan(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_response_plan_errors()}
  def get_response_plan(%Client{} = client, arn, options \\ []) do
    url_path = "/getResponsePlan"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a timeline event based on its ID and incident record.
  """
  @spec get_timeline_event(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_timeline_event_errors()}
  def get_timeline_event(%Client{} = client, event_id, incident_record_arn, options \\ []) do
    url_path = "/getTimelineEvent"
    headers = []
    query_params = []

    query_params =
      if !is_nil(incident_record_arn) do
        [{"incidentRecordArn", incident_record_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_id) do
        [{"eventId", event_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the IDs of findings, plus their last modified times, that
  have been
  identified for a specified incident.

  A finding represents a recent application environment
  change made by an CloudFormation stack creation or update or an CodeDeploy
  deployment that can be investigated as a potential cause of the incident.
  """
  @spec list_incident_findings(map(), list_incident_findings_input(), list()) ::
          {:ok, list_incident_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_incident_findings_errors()}
  def list_incident_findings(%Client{} = client, input, options \\ []) do
    url_path = "/listIncidentFindings"
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
  Lists all incident records in your account.

  Use this command to retrieve the Amazon
  Resource Name (ARN) of the incident record you want to update.
  """
  @spec list_incident_records(map(), list_incident_records_input(), list()) ::
          {:ok, list_incident_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_incident_records_errors()}
  def list_incident_records(%Client{} = client, input, options \\ []) do
    url_path = "/listIncidentRecords"
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
  List all related items for an incident record.
  """
  @spec list_related_items(map(), list_related_items_input(), list()) ::
          {:ok, list_related_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_related_items_errors()}
  def list_related_items(%Client{} = client, input, options \\ []) do
    url_path = "/listRelatedItems"
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
  Lists details about the replication set configured in your account.
  """
  @spec list_replication_sets(map(), list_replication_sets_input(), list()) ::
          {:ok, list_replication_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_replication_sets_errors()}
  def list_replication_sets(%Client{} = client, input, options \\ []) do
    url_path = "/listReplicationSets"
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
  Lists all response plans in your account.
  """
  @spec list_response_plans(map(), list_response_plans_input(), list()) ::
          {:ok, list_response_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_response_plans_errors()}
  def list_response_plans(%Client{} = client, input, options \\ []) do
    url_path = "/listResponsePlans"
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
  Lists the tags that are attached to the specified response plan or incident.
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
  Lists timeline events for the specified incident record.
  """
  @spec list_timeline_events(map(), list_timeline_events_input(), list()) ::
          {:ok, list_timeline_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_timeline_events_errors()}
  def list_timeline_events(%Client{} = client, input, options \\ []) do
    url_path = "/listTimelineEvents"
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
  Adds a resource policy to the specified response plan.

  The resource policy is used to
  share the response plan using Resource Access Manager (RAM). For more
  information about cross-account sharing, see [Cross-Region and cross-account incident
  management](https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html).
  """
  @spec put_resource_policy(map(), put_resource_policy_input(), list()) ::
          {:ok, put_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/putResourcePolicy"
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
  Used to start an incident from CloudWatch alarms, EventBridge events, or
  manually.
  """
  @spec start_incident(map(), start_incident_input(), list()) ::
          {:ok, start_incident_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_incident_errors()}
  def start_incident(%Client{} = client, input, options \\ []) do
    url_path = "/startIncident"
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
  Adds a tag to a response plan.
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
      204
    )
  end

  @doc """
  Removes a tag from a resource.
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
        {"tagKeys", "tagKeys"}
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
  Update deletion protection to either allow or deny deletion of the final Region
  in a
  replication set.
  """
  @spec update_deletion_protection(map(), update_deletion_protection_input(), list()) ::
          {:ok, update_deletion_protection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deletion_protection_errors()}
  def update_deletion_protection(%Client{} = client, input, options \\ []) do
    url_path = "/updateDeletionProtection"
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
  Update the details of an incident record.

  You can use this operation to update an incident
  record from the defined chat channel. For more information about using actions
  in chat
  channels, see [Interacting through chat](https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).
  """
  @spec update_incident_record(map(), update_incident_record_input(), list()) ::
          {:ok, update_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_incident_record_errors()}
  def update_incident_record(%Client{} = client, input, options \\ []) do
    url_path = "/updateIncidentRecord"
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
  Add or remove related items from the related items tab of an incident record.
  """
  @spec update_related_items(map(), update_related_items_input(), list()) ::
          {:ok, update_related_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_related_items_errors()}
  def update_related_items(%Client{} = client, input, options \\ []) do
    url_path = "/updateRelatedItems"
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
  Add or delete Regions from your replication set.
  """
  @spec update_replication_set(map(), update_replication_set_input(), list()) ::
          {:ok, update_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_replication_set_errors()}
  def update_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/updateReplicationSet"
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
  Updates the specified response plan.
  """
  @spec update_response_plan(map(), update_response_plan_input(), list()) ::
          {:ok, update_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_response_plan_errors()}
  def update_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/updateResponsePlan"
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
  Updates a timeline event.

  You can update events of type `Custom Event`.
  """
  @spec update_timeline_event(map(), update_timeline_event_input(), list()) ::
          {:ok, update_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_timeline_event_errors()}
  def update_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/updateTimelineEvent"
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
end
