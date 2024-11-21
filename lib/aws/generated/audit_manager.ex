# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AuditManager do
  @moduledoc """
  Welcome to the Audit Manager API reference.

  This guide is for developers who
  need detailed information about the Audit Manager API operations, data types,
  and
  errors.

  Audit Manager is a service that provides automated evidence collection so that
  you
  can continually audit your Amazon Web Services usage. You can use it to assess
  the
  effectiveness of your controls, manage risk, and simplify compliance.

  Audit Manager provides prebuilt frameworks that structure and automate
  assessments
  for a given compliance standard. Frameworks include a prebuilt collection of
  controls with
  descriptions and testing procedures. These controls are grouped according to the
  requirements of the specified compliance standard or regulation. You can also
  customize
  frameworks and controls to support internal audits with specific requirements.

  Use the following links to get started with the Audit Manager API:

    *

  [Actions](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html): An
  alphabetical list of all Audit Manager API operations.

    *

  [Data
  types](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
  An alphabetical list of all Audit Manager data
  types.

    *

  [Common parameters](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
  Parameters that all operations can use.

    *

  [Common errors](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
  Client and server errors that all operations can return.

  If you're new to Audit Manager, we recommend that you review the [
  Audit Manager User
  Guide](https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_assessment_response() :: %{
        "assessment" => assessment()
      }

  """
  @type update_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      framework_metadata() :: %{
        "complianceType" => String.t(),
        "description" => String.t(),
        "logo" => String.t(),
        "name" => String.t()
      }

  """
  @type framework_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessments_response() :: %{
        "assessmentMetadata" => list(assessment_metadata_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_delegations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_delegations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_control_response() :: %{
        "control" => control()
      }

  """
  @type update_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_domain_insights() :: %{
        "controlsCountByNoncompliantEvidence" => integer(),
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "totalControlsCount" => integer()
      }

  """
  @type control_domain_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_settings_request() :: %{}

  """
  @type get_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_insights_request() :: %{}

  """
  @type get_insights_request() :: %{}

  @typedoc """

  ## Example:

      aws_account() :: %{
        "emailAddress" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type aws_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_framework_share_request() :: %{
        required("action") => list(any()),
        required("requestType") => list(any())
      }

  """
  @type update_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_delegation_by_assessment_response() :: %{
        "errors" => list(batch_delete_delegation_by_assessment_error()())
      }

  """
  @type batch_delete_delegation_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_control_response() :: %{}

  """
  @type delete_control_response() :: %{}

  @typedoc """

  ## Example:

      delete_assessment_framework_response() :: %{}

  """
  @type delete_assessment_framework_response() :: %{}

  @typedoc """

  ## Example:

      create_assessment_report_response() :: %{
        "assessmentReport" => assessment_report()
      }

  """
  @type create_assessment_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assessment_response() :: %{
        "assessment" => assessment()
      }

  """
  @type create_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_framework_request() :: %{}

  """
  @type delete_assessment_framework_request() :: %{}

  @typedoc """

  ## Example:

      list_assessment_reports_response() :: %{
        "assessmentReports" => list(assessment_report_metadata()()),
        "nextToken" => String.t()
      }

  """
  @type list_assessment_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_by_evidence_folder_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_evidence_by_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notifications_response() :: %{
        "nextToken" => String.t(),
        "notifications" => list(notification()())
      }

  """
  @type list_notifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_account_response() :: %{
        "status" => list(any())
      }

  """
  @type register_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      assessment_evidence_folder() :: %{
        "assessmentId" => String.t(),
        "assessmentReportSelectionCount" => integer(),
        "author" => String.t(),
        "controlId" => String.t(),
        "controlName" => String.t(),
        "controlSetId" => String.t(),
        "dataSource" => String.t(),
        "date" => non_neg_integer(),
        "evidenceAwsServiceSourceCount" => integer(),
        "evidenceByTypeComplianceCheckCount" => integer(),
        "evidenceByTypeComplianceCheckIssuesCount" => integer(),
        "evidenceByTypeConfigurationDataCount" => integer(),
        "evidenceByTypeManualCount" => integer(),
        "evidenceByTypeUserActivityCount" => integer(),
        "evidenceResourcesIncludedCount" => integer(),
        "id" => String.t(),
        "name" => String.t(),
        "totalEvidence" => integer()
      }

  """
  @type assessment_evidence_folder() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_account_request() :: %{
        optional("delegatedAdminAccount") => String.t(),
        optional("kmsKey") => String.t()
      }

  """
  @type register_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_account_request() :: %{}

  """
  @type deregister_account_request() :: %{}

  @typedoc """

  ## Example:

      assessment_reports_destination() :: %{
        "destination" => String.t(),
        "destinationType" => list(any())
      }

  """
  @type assessment_reports_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_insights_by_control_domain_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("controlDomainId") => String.t()
      }

  """
  @type list_control_insights_by_control_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_set() :: %{
        "controls" => list(control()()),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folders_by_assessment_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_evidence_folders_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assessment_framework_control() :: %{
        "id" => String.t()
      }

  """
  @type create_assessment_framework_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregistration_policy() :: %{
        "deleteResources" => list(any())
      }

  """
  @type deregistration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_metadata() :: %{
        "category" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "name" => String.t()
      }

  """
  @type service_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_metadata_item() :: %{
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "delegations" => list(delegation()()),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "roles" => list(role()()),
        "status" => list(any())
      }

  """
  @type assessment_metadata_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_control_mapping_source() :: %{
        "sourceDescription" => String.t(),
        "sourceFrequency" => list(any()),
        "sourceKeyword" => source_keyword(),
        "sourceName" => String.t(),
        "sourceSetUpOption" => list(any()),
        "sourceType" => list(any()),
        "troubleshootingText" => String.t()
      }

  """
  @type create_control_mapping_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      role() :: %{
        "roleArn" => String.t(),
        "roleType" => list(any())
      }

  """
  @type role() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_organization_admin_account_response() :: %{}

  """
  @type deregister_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      update_settings_response() :: %{
        "settings" => settings()
      }

  """
  @type update_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_control_set_status_request() :: %{
        required("comment") => String.t(),
        required("status") => list(any())
      }

  """
  @type update_assessment_control_set_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control() :: %{
        "actionPlanInstructions" => String.t(),
        "actionPlanTitle" => String.t(),
        "arn" => String.t(),
        "controlMappingSources" => list(control_mapping_source()()),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "testingInformation" => String.t(),
        "type" => list(any())
      }

  """
  @type control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_request() :: %{}

  """
  @type get_control_request() :: %{}

  @typedoc """

  ## Example:

      list_control_insights_by_control_domain_response() :: %{
        "controlInsightsMetadata" => list(control_insights_metadata_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_control_insights_by_control_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_framework_request() :: %{}

  """
  @type get_assessment_framework_request() :: %{}

  @typedoc """

  ## Example:

      control_comment() :: %{
        "authorName" => String.t(),
        "commentBody" => String.t(),
        "postedDate" => non_neg_integer()
      }

  """
  @type control_comment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_metadata() :: %{
        "assessmentReportsDestination" => assessment_reports_destination(),
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "delegations" => list(delegation()()),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "roles" => list(role()()),
        "scope" => scope(),
        "status" => list(any())
      }

  """
  @type assessment_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_assessment_report_evidence_request() :: %{
        required("evidenceFolderId") => String.t(),
        required("evidenceIds") => list(String.t()())
      }

  """
  @type batch_disassociate_assessment_report_evidence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_control() :: %{
        "assessmentReportEvidenceCount" => integer(),
        "comments" => list(control_comment()()),
        "description" => String.t(),
        "evidenceCount" => integer(),
        "evidenceSources" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "response" => list(any()),
        "status" => list(any())
      }

  """
  @type assessment_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insights_by_assessment_request() :: %{}

  """
  @type get_insights_by_assessment_request() :: %{}

  @typedoc """

  ## Example:

      update_assessment_status_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_assessment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manual_evidence() :: %{
        "evidenceFileName" => String.t(),
        "s3ResourcePath" => String.t(),
        "textResponse" => String.t()
      }

  """
  @type manual_evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_controls_response() :: %{
        "controlMetadataList" => list(control_metadata()()),
        "nextToken" => String.t()
      }

  """
  @type list_controls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keywords_for_data_source_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("source") => list(any())
      }

  """
  @type list_keywords_for_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_organization_admin_account_request() :: %{
        optional("adminAccountId") => String.t()
      }

  """
  @type deregister_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_assessment_report_evidence_request() :: %{
        required("evidenceFolderId") => String.t(),
        required("evidenceIds") => list(String.t()())
      }

  """
  @type batch_associate_assessment_report_evidence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assessment_framework_response() :: %{
        "framework" => framework()
      }

  """
  @type create_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_domain_insights_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_control_domain_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folder_request() :: %{}

  """
  @type get_evidence_folder_request() :: %{}

  @typedoc """

  ## Example:

      list_control_domain_insights_by_assessment_response() :: %{
        "controlDomainInsights" => list(control_domain_insights()()),
        "nextToken" => String.t()
      }

  """
  @type list_control_domain_insights_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assessment_framework_control_set() :: %{
        "controls" => list(create_assessment_framework_control()()),
        "name" => String.t()
      }

  """
  @type create_assessment_framework_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_control_response() :: %{
        "control" => control()
      }

  """
  @type create_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_change_logs_response() :: %{
        "changeLogs" => list(change_log()()),
        "nextToken" => String.t()
      }

  """
  @type get_change_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_organization_admin_account_request() :: %{}

  """
  @type get_organization_admin_account_request() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_organization_admin_account_response() :: %{
        "adminAccountId" => String.t(),
        "organizationId" => String.t()
      }

  """
  @type get_organization_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_delegation_by_assessment_request() :: %{
        required("createDelegationRequests") => list(create_delegation_request()())
      }

  """
  @type batch_create_delegation_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evidence_insights() :: %{
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "noncompliantEvidenceCount" => integer()
      }

  """
  @type evidence_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_service() :: %{
        "serviceName" => String.t()
      }

  """
  @type aws_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assessment_framework_request() :: %{
        optional("complianceType") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("controlSets") => list(create_assessment_framework_control_set()()),
        required("name") => String.t()
      }

  """
  @type create_assessment_framework_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_frameworks_response() :: %{
        "frameworkMetadataList" => list(assessment_framework_metadata()()),
        "nextToken" => String.t()
      }

  """
  @type list_assessment_frameworks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_metadata() :: %{
        "arn" => String.t(),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type control_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_framework_share_requests_response() :: %{
        "assessmentFrameworkShareRequests" => list(assessment_framework_share_request()()),
        "nextToken" => String.t()
      }

  """
  @type list_assessment_framework_share_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_control_insights_by_control_domain_response() :: %{
        "controlInsightsByAssessment" => list(control_insights_metadata_by_assessment_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_assessment_control_insights_by_control_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_control_set_status_response() :: %{
        "controlSet" => assessment_control_set()
      }

  """
  @type update_assessment_control_set_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notifications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_notifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insights_by_assessment_response() :: %{
        "insights" => insights_by_assessment()
      }

  """
  @type get_insights_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_framework_request() :: %{
        optional("complianceType") => String.t(),
        optional("description") => String.t(),
        required("controlSets") => list(update_assessment_framework_control_set()()),
        required("name") => String.t()
      }

  """
  @type update_assessment_framework_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_delegation_by_assessment_error() :: %{
        "delegationId" => String.t(),
        "errorCode" => String.t(),
        "errorMessage" => String.t()
      }

  """
  @type batch_delete_delegation_by_assessment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_framework_share_request() :: %{
        required("requestType") => list(any())
      }

  """
  @type delete_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_export_destination() :: %{
        "destination" => String.t(),
        "destinationType" => list(any())
      }

  """
  @type default_export_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_report_request() :: %{}

  """
  @type delete_assessment_report_request() :: %{}

  @typedoc """

  ## Example:

      associate_assessment_report_evidence_folder_response() :: %{}

  """
  @type associate_assessment_report_evidence_folder_response() :: %{}

  @typedoc """

  ## Example:

      list_assessment_control_insights_by_control_domain_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentId") => String.t(),
        required("controlDomainId") => String.t()
      }

  """
  @type list_assessment_control_insights_by_control_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_control_set() :: %{
        "controls" => list(assessment_control()()),
        "delegations" => list(delegation()()),
        "description" => String.t(),
        "id" => String.t(),
        "manualEvidenceCount" => integer(),
        "roles" => list(role()()),
        "status" => list(any()),
        "systemEvidenceCount" => integer()
      }

  """
  @type assessment_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_report_evidence_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "evidenceId" => String.t()
      }

  """
  @type assessment_report_evidence_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      settings() :: %{
        "defaultAssessmentReportsDestination" => assessment_reports_destination(),
        "defaultExportDestination" => default_export_destination(),
        "defaultProcessOwners" => list(role()()),
        "deregistrationPolicy" => deregistration_policy(),
        "evidenceFinderEnablement" => evidence_finder_enablement(),
        "isAwsOrgEnabled" => boolean(),
        "kmsKey" => String.t(),
        "snsTopic" => String.t()
      }

  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_services_in_scope_response() :: %{
        "serviceMetadata" => list(service_metadata()())
      }

  """
  @type get_services_in_scope_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_assessments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_domain_insights_by_assessment_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentId") => String.t()
      }

  """
  @type list_control_domain_insights_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_response() :: %{}

  """
  @type delete_assessment_response() :: %{}

  @typedoc """

  ## Example:

      batch_associate_assessment_report_evidence_response() :: %{
        "errors" => list(assessment_report_evidence_error()()),
        "evidenceIds" => list(String.t()())
      }

  """
  @type batch_associate_assessment_report_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_settings_request() :: %{
        optional("defaultAssessmentReportsDestination") => assessment_reports_destination(),
        optional("defaultExportDestination") => default_export_destination(),
        optional("defaultProcessOwners") => list(role()()),
        optional("deregistrationPolicy") => deregistration_policy(),
        optional("evidenceFinderEnabled") => boolean(),
        optional("kmsKey") => String.t(),
        optional("snsTopic") => String.t()
      }

  """
  @type update_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folders_by_assessment_control_response() :: %{
        "evidenceFolders" => list(assessment_evidence_folder()()),
        "nextToken" => String.t()
      }

  """
  @type get_evidence_folders_by_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_change_logs_request() :: %{
        optional("controlId") => String.t(),
        optional("controlSetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_change_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_organization_admin_account_request() :: %{
        required("adminAccountId") => String.t()
      }

  """
  @type register_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_controls_request() :: %{
        optional("controlCatalogId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("controlType") => list(any())
      }

  """
  @type list_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insights() :: %{
        "activeAssessmentsCount" => integer(),
        "assessmentControlsCountByNoncompliantEvidence" => integer(),
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "lastUpdated" => non_neg_integer(),
        "noncompliantEvidenceCount" => integer(),
        "totalAssessmentControlsCount" => integer()
      }

  """
  @type insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_request() :: %{
        optional("assessmentDescription") => String.t(),
        optional("assessmentName") => String.t(),
        optional("assessmentReportsDestination") => assessment_reports_destination(),
        optional("roles") => list(role()()),
        required("scope") => scope()
      }

  """
  @type update_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment() :: %{
        "arn" => String.t(),
        "awsAccount" => aws_account(),
        "framework" => assessment_framework(),
        "metadata" => assessment_metadata(),
        "tags" => map()
      }

  """
  @type assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_import_evidence_to_assessment_control_request() :: %{
        required("manualEvidence") => list(manual_evidence()())
      }

  """
  @type batch_import_evidence_to_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insights_response() :: %{
        "insights" => insights()
      }

  """
  @type get_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_settings_response() :: %{
        "settings" => settings()
      }

  """
  @type get_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folders_by_assessment_response() :: %{
        "evidenceFolders" => list(assessment_evidence_folder()()),
        "nextToken" => String.t()
      }

  """
  @type get_evidence_folders_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_file_upload_url_request() :: %{
        required("fileName") => String.t()
      }

  """
  @type get_evidence_file_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_file_upload_url_response() :: %{
        "evidenceFileName" => String.t(),
        "uploadUrl" => String.t()
      }

  """
  @type get_evidence_file_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_request() :: %{}

  """
  @type get_assessment_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_assessment_report_evidence_folder_response() :: %{}

  """
  @type disassociate_assessment_report_evidence_folder_response() :: %{}

  @typedoc """

  ## Example:

      scope() :: %{
        "awsAccounts" => list(aws_account()()),
        "awsServices" => list(aws_service()())
      }

  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_delegation_by_assessment_request() :: %{
        required("delegationIds") => list(String.t()())
      }

  """
  @type batch_delete_delegation_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      framework() :: %{
        "arn" => String.t(),
        "complianceType" => String.t(),
        "controlSets" => list(control_set()()),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "logo" => String.t(),
        "name" => String.t(),
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_assessment_report_integrity_request() :: %{
        required("s3RelativePath") => String.t()
      }

  """
  @type validate_assessment_report_integrity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_delegations_response() :: %{
        "delegations" => list(delegation_metadata()()),
        "nextToken" => String.t()
      }

  """
  @type get_delegations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_framework_share_requests_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("requestType") => list(any())
      }

  """
  @type list_assessment_framework_share_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_report_metadata() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "author" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type assessment_report_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_framework_control_set() :: %{
        "controls" => list(create_assessment_framework_control()()),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type update_assessment_framework_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_response() :: %{
        "assessment" => assessment(),
        "userRole" => role()
      }

  """
  @type get_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_domain_insights_response() :: %{
        "controlDomainInsights" => list(control_domain_insights()()),
        "nextToken" => String.t()
      }

  """
  @type list_control_domain_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_account_response() :: %{
        "status" => list(any())
      }

  """
  @type deregister_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_assessment_report_evidence_folder_request() :: %{
        required("evidenceFolderId") => String.t()
      }

  """
  @type associate_assessment_report_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_import_evidence_to_assessment_control_response() :: %{
        "errors" => list(batch_import_evidence_to_assessment_control_error()())
      }

  """
  @type batch_import_evidence_to_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_insights_metadata_by_assessment_item() :: %{
        "controlSetName" => String.t(),
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type control_insights_metadata_by_assessment_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validate_assessment_report_integrity_response() :: %{
        "signatureAlgorithm" => String.t(),
        "signatureDateTime" => String.t(),
        "signatureKeyId" => String.t(),
        "signatureValid" => boolean(),
        "validationErrors" => list(String.t()())
      }

  """
  @type validate_assessment_report_integrity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_framework_metadata() :: %{
        "arn" => String.t(),
        "complianceType" => String.t(),
        "controlSetsCount" => integer(),
        "controlsCount" => integer(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "logo" => String.t(),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type assessment_framework_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_control_request() :: %{
        optional("actionPlanInstructions") => String.t(),
        optional("actionPlanTitle") => String.t(),
        optional("description") => String.t(),
        optional("testingInformation") => String.t(),
        required("controlMappingSources") => list(control_mapping_source()()),
        required("name") => String.t()
      }

  """
  @type update_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_framework_share_response() :: %{}

  """
  @type delete_assessment_framework_share_response() :: %{}

  @typedoc """

  ## Example:

      update_assessment_framework_response() :: %{
        "framework" => framework()
      }

  """
  @type update_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_delegation_by_assessment_error() :: %{
        "createDelegationRequest" => create_delegation_request(),
        "errorCode" => String.t(),
        "errorMessage" => String.t()
      }

  """
  @type batch_create_delegation_by_assessment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      batch_create_delegation_by_assessment_response() :: %{
        "delegations" => list(delegation()()),
        "errors" => list(batch_create_delegation_by_assessment_error()())
      }

  """
  @type batch_create_delegation_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evidence_finder_enablement() :: %{
        "backfillStatus" => list(any()),
        "enablementStatus" => list(any()),
        "error" => String.t(),
        "eventDataStoreArn" => String.t()
      }

  """
  @type evidence_finder_enablement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_control_request() :: %{}

  """
  @type delete_control_request() :: %{}

  @typedoc """

  ## Example:

      url() :: %{
        "hyperlinkName" => String.t(),
        "link" => String.t()
      }

  """
  @type url() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evidence() :: %{
        "assessmentReportSelection" => String.t(),
        "attributes" => map(),
        "awsAccountId" => String.t(),
        "awsOrganization" => String.t(),
        "complianceCheck" => String.t(),
        "dataSource" => String.t(),
        "eventName" => String.t(),
        "eventSource" => String.t(),
        "evidenceAwsAccountId" => String.t(),
        "evidenceByType" => String.t(),
        "evidenceFolderId" => String.t(),
        "iamId" => String.t(),
        "id" => String.t(),
        "resourcesIncluded" => list(resource()()),
        "time" => non_neg_integer()
      }

  """
  @type evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_framework_share_request() :: %{
        "comment" => String.t(),
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "customControlsCount" => integer(),
        "destinationAccount" => String.t(),
        "destinationRegion" => String.t(),
        "expirationTime" => non_neg_integer(),
        "frameworkDescription" => String.t(),
        "frameworkId" => String.t(),
        "frameworkName" => String.t(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "sourceAccount" => String.t(),
        "standardControlsCount" => integer(),
        "status" => list(any())
      }

  """
  @type assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_by_evidence_folder_response() :: %{
        "evidence" => list(evidence()()),
        "nextToken" => String.t()
      }

  """
  @type get_evidence_by_evidence_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_request() :: %{}

  """
  @type get_evidence_request() :: %{}

  @typedoc """

  ## Example:

      update_assessment_control_response() :: %{
        "control" => assessment_control()
      }

  """
  @type update_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "comment" => String.t(),
        "controlSetId" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "roleArn" => String.t(),
        "roleType" => list(any()),
        "status" => list(any())
      }

  """
  @type delegation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_keywords_for_data_source_response() :: %{
        "keywords" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_keywords_for_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_organization_admin_account_response() :: %{
        "adminAccountId" => String.t(),
        "organizationId" => String.t()
      }

  """
  @type register_organization_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_response() :: %{
        "evidence" => evidence()
      }

  """
  @type get_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "controlSetId" => String.t(),
        "controlSetName" => String.t(),
        "description" => String.t(),
        "eventTime" => non_neg_integer(),
        "id" => String.t(),
        "source" => String.t()
      }

  """
  @type notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_assessment_framework_share_request() :: %{
        optional("comment") => String.t(),
        required("destinationAccount") => String.t(),
        required("destinationRegion") => String.t()
      }

  """
  @type start_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_control_request() :: %{
        optional("commentBody") => String.t(),
        optional("controlStatus") => list(any())
      }

  """
  @type update_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_frameworks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("frameworkType") => list(any())
      }

  """
  @type list_assessment_frameworks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folder_response() :: %{
        "evidenceFolder" => assessment_evidence_folder()
      }

  """
  @type get_evidence_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_assessment_report_evidence_folder_request() :: %{
        required("evidenceFolderId") => String.t()
      }

  """
  @type disassociate_assessment_report_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_assessment_framework_share_response() :: %{
        "assessmentFrameworkShareRequest" => assessment_framework_share_request()
      }

  """
  @type start_assessment_framework_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_report() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "author" => String.t(),
        "awsAccountId" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type assessment_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_response() :: %{
        "control" => control()
      }

  """
  @type get_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_report_url_request() :: %{}

  """
  @type get_assessment_report_url_request() :: %{}

  @typedoc """

  ## Example:

      create_assessment_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("assessmentReportsDestination") => assessment_reports_destination(),
        required("frameworkId") => String.t(),
        required("name") => String.t(),
        required("roles") => list(role()()),
        required("scope") => scope()
      }

  """
  @type create_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_assessment_report_evidence_response() :: %{
        "errors" => list(assessment_report_evidence_error()()),
        "evidenceIds" => list(String.t()())
      }

  """
  @type batch_disassociate_assessment_report_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_control_request() :: %{
        optional("actionPlanInstructions") => String.t(),
        optional("actionPlanTitle") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        optional("testingInformation") => String.t(),
        required("controlMappingSources") => list(create_control_mapping_source()()),
        required("name") => String.t()
      }

  """
  @type create_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_import_evidence_to_assessment_control_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "manualEvidence" => manual_evidence()
      }

  """
  @type batch_import_evidence_to_assessment_control_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insights_by_assessment() :: %{
        "assessmentControlsCountByNoncompliantEvidence" => integer(),
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "lastUpdated" => non_neg_integer(),
        "noncompliantEvidenceCount" => integer(),
        "totalAssessmentControlsCount" => integer()
      }

  """
  @type insights_by_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_keyword() :: %{
        "keywordInputType" => list(any()),
        "keywordValue" => String.t()
      }

  """
  @type source_keyword() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_delegation_request() :: %{
        "comment" => String.t(),
        "controlSetId" => String.t(),
        "roleArn" => String.t(),
        "roleType" => list(any())
      }

  """
  @type create_delegation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_request() :: %{}

  """
  @type delete_assessment_request() :: %{}

  @typedoc """

  ## Example:

      get_services_in_scope_request() :: %{}

  """
  @type get_services_in_scope_request() :: %{}

  @typedoc """

  ## Example:

      update_assessment_status_response() :: %{
        "assessment" => assessment()
      }

  """
  @type update_assessment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_log() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "objectName" => String.t(),
        "objectType" => list(any())
      }

  """
  @type change_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_mapping_source() :: %{
        "sourceDescription" => String.t(),
        "sourceFrequency" => list(any()),
        "sourceId" => String.t(),
        "sourceKeyword" => source_keyword(),
        "sourceName" => String.t(),
        "sourceSetUpOption" => list(any()),
        "sourceType" => list(any()),
        "troubleshootingText" => String.t()
      }

  """
  @type control_mapping_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assessment_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_assessment_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assessment_report_response() :: %{}

  """
  @type delete_assessment_report_response() :: %{}

  @typedoc """

  ## Example:

      create_assessment_report_request() :: %{
        optional("description") => String.t(),
        optional("queryStatement") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_assessment_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_status_request() :: %{}

  """
  @type get_account_status_request() :: %{}

  @typedoc """

  ## Example:

      get_assessment_framework_response() :: %{
        "framework" => framework()
      }

  """
  @type get_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evidence_folders_by_assessment_control_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_evidence_folders_by_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_framework() :: %{
        "arn" => String.t(),
        "controlSets" => list(assessment_control_set()()),
        "id" => String.t(),
        "metadata" => framework_metadata()
      }

  """
  @type assessment_framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assessment_framework_share_response() :: %{
        "assessmentFrameworkShareRequest" => assessment_framework_share_request()
      }

  """
  @type update_assessment_framework_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegation_metadata() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "controlSetName" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any())
      }

  """
  @type delegation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_insights_metadata_item() :: %{
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type control_insights_metadata_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_status_response() :: %{
        "status" => list(any())
      }

  """
  @type get_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_report_url_response() :: %{
        "preSignedUrl" => url()
      }

  """
  @type get_assessment_report_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "arn" => String.t(),
        "complianceCheck" => String.t(),
        "value" => String.t()
      }

  """
  @type resource() :: %{String.t() => any()}

  @type associate_assessment_report_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_associate_assessment_report_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_create_delegation_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_delete_delegation_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_disassociate_assessment_report_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_import_evidence_to_assessment_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_assessment_report_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_report_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_assessment_report_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_account_status_errors() :: internal_server_exception()

  @type get_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_assessment_report_url_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_change_logs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_delegations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type get_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_by_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_file_upload_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_folders_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_folders_by_assessment_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_insights_errors() :: access_denied_exception() | internal_server_exception()

  @type get_insights_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_services_in_scope_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type get_settings_errors() :: access_denied_exception() | internal_server_exception()

  @type list_assessment_control_insights_by_control_domain_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_assessment_framework_share_requests_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessment_frameworks_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessment_reports_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessments_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_control_domain_insights_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_control_domain_insights_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_control_insights_by_control_domain_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_controls_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_keywords_for_data_source_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_notifications_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type register_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type register_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_control_set_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_assessment_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_settings_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type validate_assessment_report_integrity_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "auditmanager",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AuditManager",
      signature_version: "v4",
      signing_name: "auditmanager",
      target_prefix: nil
    }
  end

  @doc """
  Associates an evidence folder to an assessment report in an Audit Manager
  assessment.
  """
  @spec associate_assessment_report_evidence_folder(
          map(),
          String.t(),
          associate_assessment_report_evidence_folder_request(),
          list()
        ) ::
          {:ok, associate_assessment_report_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_assessment_report_evidence_folder_errors()}
  def associate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/associateToAssessmentReport"
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
  Associates a list of evidence to an assessment report in an Audit Manager
  assessment.
  """
  @spec batch_associate_assessment_report_evidence(
          map(),
          String.t(),
          batch_associate_assessment_report_evidence_request(),
          list()
        ) ::
          {:ok, batch_associate_assessment_report_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_assessment_report_evidence_errors()}
  def batch_associate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchAssociateToAssessmentReport"

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
  Creates a batch of delegations for an assessment in Audit Manager.
  """
  @spec batch_create_delegation_by_assessment(
          map(),
          String.t(),
          batch_create_delegation_by_assessment_request(),
          list()
        ) ::
          {:ok, batch_create_delegation_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_delegation_by_assessment_errors()}
  def batch_create_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Deletes a batch of delegations for an assessment in Audit Manager.
  """
  @spec batch_delete_delegation_by_assessment(
          map(),
          String.t(),
          batch_delete_delegation_by_assessment_request(),
          list()
        ) ::
          {:ok, batch_delete_delegation_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_delegation_by_assessment_errors()}
  def batch_delete_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"
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
  Disassociates a list of evidence from an assessment report in Audit Manager.
  """
  @spec batch_disassociate_assessment_report_evidence(
          map(),
          String.t(),
          batch_disassociate_assessment_report_evidence_request(),
          list()
        ) ::
          {:ok, batch_disassociate_assessment_report_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_assessment_report_evidence_errors()}
  def batch_disassociate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchDisassociateFromAssessmentReport"

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
  Adds one or more pieces of evidence to a control in an Audit Manager assessment.

  You can import manual evidence from any S3 bucket by specifying the S3 URI of
  the
  object. You can also upload a file from your browser, or enter plain text in
  response to a
  risk assessment question.

  The following restrictions apply to this action:

    *

  `manualEvidence` can be only one of the following:
  `evidenceFileName`, `s3ResourcePath`, or
  `textResponse`

    *
  Maximum size of an individual evidence file: 100 MB

    *
  Number of daily manual evidence uploads per control: 100

    *
  Supported file formats: See [Supported file types for manual evidence](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
  in the *Audit Manager User Guide*

  For more information about Audit Manager service restrictions, see [Quotas and restrictions for Audit
  Manager](https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).
  """
  @spec batch_import_evidence_to_assessment_control(
          map(),
          String.t(),
          String.t(),
          String.t(),
          batch_import_evidence_to_assessment_control_request(),
          list()
        ) ::
          {:ok, batch_import_evidence_to_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_import_evidence_to_assessment_control_errors()}
  def batch_import_evidence_to_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}/evidence"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates an assessment in Audit Manager.
  """
  @spec create_assessment(map(), create_assessment_request(), list()) ::
          {:ok, create_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_errors()}
  def create_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/assessments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates a custom framework in Audit Manager.
  """
  @spec create_assessment_framework(map(), create_assessment_framework_request(), list()) ::
          {:ok, create_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_framework_errors()}
  def create_assessment_framework(%Client{} = client, input, options \\ []) do
    url_path = "/assessmentFrameworks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates an assessment report for the specified assessment.
  """
  @spec create_assessment_report(map(), String.t(), create_assessment_report_request(), list()) ::
          {:ok, create_assessment_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_report_errors()}
  def create_assessment_report(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates a new custom control in Audit Manager.
  """
  @spec create_control(map(), create_control_request(), list()) ::
          {:ok, create_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_control_errors()}
  def create_control(%Client{} = client, input, options \\ []) do
    url_path = "/controls"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Deletes an assessment in Audit Manager.
  """
  @spec delete_assessment(map(), String.t(), delete_assessment_request(), list()) ::
          {:ok, delete_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_errors()}
  def delete_assessment(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
  Deletes a custom framework in Audit Manager.
  """
  @spec delete_assessment_framework(
          map(),
          String.t(),
          delete_assessment_framework_request(),
          list()
        ) ::
          {:ok, delete_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_framework_errors()}
  def delete_assessment_framework(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
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
  Deletes a share request for a custom framework in Audit Manager.
  """
  @spec delete_assessment_framework_share(
          map(),
          String.t(),
          delete_assessment_framework_share_request(),
          list()
        ) ::
          {:ok, delete_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_framework_share_errors()}
  def delete_assessment_framework_share(%Client{} = client, request_id, input, options \\ []) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"requestType", "requestType"}
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
  Deletes an assessment report in Audit Manager.

  When you run the `DeleteAssessmentReport` operation, Audit Manager
  attempts to delete the following data:

    1.
  The specified assessment report that’s stored in your S3 bucket

    2.
  The associated metadata that’s stored in Audit Manager

  If Audit Manager can’t access the assessment report in your S3 bucket, the
  report
  isn’t deleted. In this event, the `DeleteAssessmentReport` operation doesn’t
  fail. Instead, it proceeds to delete the associated metadata only. You must then
  delete the
  assessment report from the S3 bucket yourself.

  This scenario happens when Audit Manager receives a `403 (Forbidden)` or
  `404 (Not Found)` error from Amazon S3. To avoid this, make sure that
  your S3 bucket is available, and that you configured the correct permissions for
  Audit Manager to delete resources in your S3 bucket. For an example permissions
  policy that
  you can use, see [Assessment report destination permissions](https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination)
  in the *Audit Manager User Guide*. For information about the issues that could
  cause a

  ```
  403
  (Forbidden)
  ```

  or `404 (Not Found`) error from Amazon S3, see
  [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList)
  in the *Amazon Simple Storage Service API
  Reference*.
  """
  @spec delete_assessment_report(
          map(),
          String.t(),
          String.t(),
          delete_assessment_report_request(),
          list()
        ) ::
          {:ok, delete_assessment_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_report_errors()}
  def delete_assessment_report(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}"

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
  Deletes a custom control in Audit Manager.

  When you invoke this operation, the custom control is deleted from any
  frameworks or
  assessments that it’s currently part of. As a result, Audit Manager will stop
  collecting evidence for that custom control in all of your assessments. This
  includes
  assessments that you previously created before you deleted the custom control.
  """
  @spec delete_control(map(), String.t(), delete_control_request(), list()) ::
          {:ok, delete_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_control_errors()}
  def delete_control(%Client{} = client, control_id, input, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
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
  Deregisters an account in Audit Manager.

  Before you deregister, you can use the
  [UpdateSettings](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_UpdateSettings.html) API operation to set your preferred data retention policy. By
  default, Audit Manager retains your data. If you want to delete your data, you
  can
  use the `DeregistrationPolicy` attribute to request the deletion of your
  data.

  For more information about data retention, see [Data
  Protection](https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html)
  in the *Audit Manager User Guide*.
  """
  @spec deregister_account(map(), deregister_account_request(), list()) ::
          {:ok, deregister_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_account_errors()}
  def deregister_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterAccount"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Removes the specified Amazon Web Services account as a delegated administrator
  for
  Audit Manager.

  When you remove a delegated administrator from your Audit Manager settings, you
  continue to have access to the evidence that you previously collected under that
  account.
  This is also the case when you deregister a delegated administrator from
  Organizations. However, Audit Manager stops collecting and attaching evidence to
  that delegated administrator account moving forward.

  Keep in mind the following cleanup task if you use evidence finder:

  Before you use your management account to remove a delegated administrator, make
  sure
  that the current delegated administrator account signs in to Audit Manager and
  disables evidence finder first. Disabling evidence finder automatically deletes
  the
  event data store that was created in their account when they enabled evidence
  finder. If
  this task isn’t completed, the event data store remains in their account. In
  this case,
  we recommend that the original delegated administrator goes to CloudTrail Lake
  and manually [deletes the event data
  store](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-eds-disable-termination.html).

  This cleanup task is necessary to ensure that you don't end up with multiple
  event
  data stores. Audit Manager ignores an unused event data store after you remove
  or
  change a delegated administrator account. However, the unused event data store
  continues
  to incur storage costs from CloudTrail Lake if you don't delete it.

  When you deregister a delegated administrator account for Audit Manager, the
  data
  for that account isn’t deleted. If you want to delete resource data for a
  delegated
  administrator account, you must perform that task separately before you
  deregister the
  account. Either, you can do this in the Audit Manager console. Or, you can use
  one of
  the delete API operations that are provided by Audit Manager.

  To delete your Audit Manager resource data, see the following instructions:

    *

  [DeleteAssessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html) (see also: [Deleting an
  assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html)
  in the *Audit Manager User
  Guide*)

    *

  [DeleteAssessmentFramework](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html) (see also: [Deleting a
  custom
  framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html)
  in the *Audit Manager User
  Guide*)

    *

  [DeleteAssessmentFrameworkShare](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html) (see also: [Deleting a share
  request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html)
  in the *Audit Manager User
  Guide*)

    *

  [DeleteAssessmentReport](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html) (see also: [Deleting an assessment
  report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps)
  in the *Audit Manager User
  Guide*)

    *

  [DeleteControl](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html) (see also: [Deleting a custom
  control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html)
  in the *Audit Manager User
  Guide*)

  At this time, Audit Manager doesn't provide an option to delete evidence for a
  specific delegated administrator. Instead, when your management account
  deregisters Audit Manager, we perform a cleanup for the current delegated
  administrator account at the
  time of deregistration.
  """
  @spec deregister_organization_admin_account(
          map(),
          deregister_organization_admin_account_request(),
          list()
        ) ::
          {:ok, deregister_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_organization_admin_account_errors()}
  def deregister_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterOrganizationAdminAccount"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Disassociates an evidence folder from the specified assessment report in Audit
  Manager.
  """
  @spec disassociate_assessment_report_evidence_folder(
          map(),
          String.t(),
          disassociate_assessment_report_evidence_folder_request(),
          list()
        ) ::
          {:ok, disassociate_assessment_report_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_assessment_report_evidence_folder_errors()}
  def disassociate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/disassociateFromAssessmentReport"

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
  Gets the registration status of an account in Audit Manager.
  """
  @spec get_account_status(map(), list()) ::
          {:ok, get_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_status_errors()}
  def get_account_status(%Client{} = client, options \\ []) do
    url_path = "/account/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified assessment.
  """
  @spec get_assessment(map(), String.t(), list()) ::
          {:ok, get_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_errors()}
  def get_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified framework.
  """
  @spec get_assessment_framework(map(), String.t(), list()) ::
          {:ok, get_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_framework_errors()}
  def get_assessment_framework(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the URL of an assessment report in Audit Manager.
  """
  @spec get_assessment_report_url(map(), String.t(), String.t(), list()) ::
          {:ok, get_assessment_report_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_report_url_errors()}
  def get_assessment_report_url(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}/url"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of changelogs from Audit Manager.
  """
  @spec get_change_logs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_change_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_change_logs_errors()}
  def get_change_logs(
        %Client{} = client,
        assessment_id,
        control_id \\ nil,
        control_set_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/changelogs"
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
      if !is_nil(control_set_id) do
        [{"controlSetId", control_set_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(control_id) do
        [{"controlId", control_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified control.
  """
  @spec get_control(map(), String.t(), list()) ::
          {:ok, get_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_control_errors()}
  def get_control(%Client{} = client, control_id, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of delegations from an audit owner to a delegate.
  """
  @spec get_delegations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_delegations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delegations_errors()}
  def get_delegations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/delegations"
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
  Gets information about a specified evidence item.
  """
  @spec get_evidence(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_errors()}
  def get_evidence(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        evidence_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence/#{AWS.Util.encode_uri(evidence_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all evidence from a specified evidence folder in Audit Manager.
  """
  @spec get_evidence_by_evidence_folder(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_evidence_by_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_by_evidence_folder_errors()}
  def get_evidence_by_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence"

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
  Creates a presigned Amazon S3 URL that can be used to upload a file as manual
  evidence.

  For instructions on how to use this operation, see [Upload a file from your browser
  ](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#how-to-upload-manual-evidence-files)
  in the *Audit Manager User
  Guide*.

  The following restrictions apply to this operation:

    *
  Maximum size of an individual evidence file: 100 MB

    *
  Number of daily manual evidence uploads per control: 100

    *
  Supported file formats: See [Supported file types for manual evidence](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
  in the *Audit Manager User Guide*

  For more information about Audit Manager service restrictions, see [Quotas and restrictions for Audit
  Manager](https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).
  """
  @spec get_evidence_file_upload_url(map(), String.t(), list()) ::
          {:ok, get_evidence_file_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_file_upload_url_errors()}
  def get_evidence_file_upload_url(%Client{} = client, file_name, options \\ []) do
    url_path = "/evidenceFileUploadUrl"
    headers = []
    query_params = []

    query_params =
      if !is_nil(file_name) do
        [{"fileName", file_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an evidence folder from a specified assessment in Audit Manager.
  """
  @spec get_evidence_folder(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folder_errors()}
  def get_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the evidence folders from a specified assessment in Audit Manager.
  """
  @spec get_evidence_folders_by_assessment(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_evidence_folders_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folders_by_assessment_errors()}
  def get_evidence_folders_by_assessment(
        %Client{} = client,
        assessment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders"
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
  Gets a list of evidence folders that are associated with a specified control in
  an
  Audit Manager assessment.
  """
  @spec get_evidence_folders_by_assessment_control(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_evidence_folders_by_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folders_by_assessment_control_errors()}
  def get_evidence_folders_by_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders-by-assessment-control/#{AWS.Util.encode_uri(control_set_id)}/#{AWS.Util.encode_uri(control_id)}"

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
  Gets the latest analytics data for all your current active assessments.
  """
  @spec get_insights(map(), list()) ::
          {:ok, get_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insights_errors()}
  def get_insights(%Client{} = client, options \\ []) do
    url_path = "/insights"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the latest analytics data for a specific active assessment.
  """
  @spec get_insights_by_assessment(map(), String.t(), list()) ::
          {:ok, get_insights_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insights_by_assessment_errors()}
  def get_insights_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/insights/assessments/#{AWS.Util.encode_uri(assessment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the name of the delegated Amazon Web Services administrator account for a
  specified
  organization.
  """
  @spec get_organization_admin_account(map(), list()) ::
          {:ok, get_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_admin_account_errors()}
  def get_organization_admin_account(%Client{} = client, options \\ []) do
    url_path = "/account/organizationAdminAccount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the Amazon Web Services from which Audit Manager can collect
  evidence.

  Audit Manager defines which Amazon Web Services are in scope for an
  assessment. Audit Manager infers this scope by examining the assessment’s
  controls and
  their data sources, and then mapping this information to one or more of the
  corresponding
  Amazon Web Services that are in this list.

  For information about why it's no longer possible to specify services in scope
  manually, see
  [I can't edit the services in scope for my assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-collection-issues.html#unable-to-edit-services)
  in
  the *Troubleshooting* section of the Audit Manager user
  guide.
  """
  @spec get_services_in_scope(map(), list()) ::
          {:ok, get_services_in_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_services_in_scope_errors()}
  def get_services_in_scope(%Client{} = client, options \\ []) do
    url_path = "/services"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the settings for a specified Amazon Web Services account.
  """
  @spec get_settings(map(), String.t(), list()) ::
          {:ok, get_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_settings_errors()}
  def get_settings(%Client{} = client, attribute, options \\ []) do
    url_path = "/settings/#{AWS.Util.encode_uri(attribute)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the latest analytics data for controls within a specific control domain
  and a
  specific active assessment.

  Control insights are listed only if the control belongs to the control domain
  and
  assessment that was specified. Moreover, the control must have collected
  evidence on the
  `lastUpdated` date of `controlInsightsByAssessment`. If neither
  of these conditions are met, no data is listed for that control.
  """
  @spec list_assessment_control_insights_by_control_domain(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_assessment_control_insights_by_control_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_control_insights_by_control_domain_errors()}
  def list_assessment_control_insights_by_control_domain(
        %Client{} = client,
        assessment_id,
        control_domain_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/controls-by-assessment"
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
      if !is_nil(control_domain_id) do
        [{"controlDomainId", control_domain_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(assessment_id) do
        [{"assessmentId", assessment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of sent or received share requests for custom frameworks in Audit
  Manager.
  """
  @spec list_assessment_framework_share_requests(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_assessment_framework_share_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_framework_share_requests_errors()}
  def list_assessment_framework_share_requests(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        request_type,
        options \\ []
      ) do
    url_path = "/assessmentFrameworkShareRequests"
    headers = []
    query_params = []

    query_params =
      if !is_nil(request_type) do
        [{"requestType", request_type} | query_params]
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
  Returns a list of the frameworks that are available in the Audit Manager
  framework
  library.
  """
  @spec list_assessment_frameworks(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assessment_frameworks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_frameworks_errors()}
  def list_assessment_frameworks(
        %Client{} = client,
        framework_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessmentFrameworks"
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
      if !is_nil(framework_type) do
        [{"frameworkType", framework_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of assessment reports created in Audit Manager.
  """
  @spec list_assessment_reports(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assessment_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_reports_errors()}
  def list_assessment_reports(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessmentReports"
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
  Returns a list of current and past assessments from Audit Manager.
  """
  @spec list_assessments(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessments_errors()}
  def list_assessments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/assessments"
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
  Lists the latest analytics data for control domains across all of your active
  assessments.

  Audit Manager supports the control domains that are provided by Amazon Web
  Services
  Control Catalog. For information about how to find a list of available control
  domains, see
  [
  `ListDomains`
  ](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
  in the Amazon Web Services Control
  Catalog API Reference.

  A control domain is listed only if at least one of the controls within that
  domain
  collected evidence on the `lastUpdated` date of
  `controlDomainInsights`. If this condition isn’t met, no data is listed
  for that control domain.
  """
  @spec list_control_domain_insights(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_control_domain_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_domain_insights_errors()}
  def list_control_domain_insights(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/control-domains"
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
  Lists analytics data for control domains within a specified active assessment.

  Audit Manager supports the control domains that are provided by Amazon Web
  Services
  Control Catalog. For information about how to find a list of available control
  domains, see
  [
  `ListDomains`
  ](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
  in the Amazon Web Services Control
  Catalog API Reference.

  A control domain is listed only if at least one of the controls within that
  domain
  collected evidence on the `lastUpdated` date of
  `controlDomainInsights`. If this condition isn’t met, no data is listed
  for that domain.
  """
  @spec list_control_domain_insights_by_assessment(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_control_domain_insights_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_domain_insights_by_assessment_errors()}
  def list_control_domain_insights_by_assessment(
        %Client{} = client,
        assessment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/control-domains-by-assessment"
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
      if !is_nil(assessment_id) do
        [{"assessmentId", assessment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the latest analytics data for controls within a specific control domain
  across all
  active assessments.

  Control insights are listed only if the control belongs to the control domain
  that
  was specified and the control collected evidence on the `lastUpdated` date of
  `controlInsightsMetadata`. If neither of these conditions are met, no data
  is listed for that control.
  """
  @spec list_control_insights_by_control_domain(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_control_insights_by_control_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_insights_by_control_domain_errors()}
  def list_control_insights_by_control_domain(
        %Client{} = client,
        control_domain_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/controls"
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
      if !is_nil(control_domain_id) do
        [{"controlDomainId", control_domain_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of controls from Audit Manager.
  """
  @spec list_controls(
          map(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_controls_errors()}
  def list_controls(
        %Client{} = client,
        control_catalog_id \\ nil,
        control_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/controls"
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
      if !is_nil(control_type) do
        [{"controlType", control_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(control_catalog_id) do
        [{"controlCatalogId", control_catalog_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of keywords that are pre-mapped to the specified control data
  source.
  """
  @spec list_keywords_for_data_source(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_keywords_for_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keywords_for_data_source_errors()}
  def list_keywords_for_data_source(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        source,
        options \\ []
      ) do
    url_path = "/dataSourceKeywords"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source) do
        [{"source", source} | query_params]
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
  Returns a list of all Audit Manager notifications.
  """
  @spec list_notifications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_notifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}
  def list_notifications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/notifications"
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
  Returns a list of tags for the specified resource in Audit Manager.
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
  Enables Audit Manager for the specified Amazon Web Services account.
  """
  @spec register_account(map(), register_account_request(), list()) ::
          {:ok, register_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_account_errors()}
  def register_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/registerAccount"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Enables an Amazon Web Services account within the organization as the delegated
  administrator for Audit Manager.
  """
  @spec register_organization_admin_account(
          map(),
          register_organization_admin_account_request(),
          list()
        ) ::
          {:ok, register_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_organization_admin_account_errors()}
  def register_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/registerOrganizationAdminAccount"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates a share request for a custom framework in Audit Manager.

  The share request specifies a recipient and notifies them that a custom
  framework is
  available. Recipients have 120 days to accept or decline the request. If no
  action is
  taken, the share request expires.

  When you create a share request, Audit Manager stores a snapshot of your custom
  framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager
  also
  stores a backup of the same snapshot in the US West (Oregon) Amazon Web Services
  Region.

  Audit Manager deletes the snapshot and the backup snapshot when one of the
  following
  events occurs:

    *
  The sender revokes the share request.

    *
  The recipient declines the share request.

    *
  The recipient encounters an error and doesn't successfully accept the share
  request.

    *
  The share request expires before the recipient responds to the request.

  When a sender [resends a share request](https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend),
  the snapshot is replaced with an updated version that
  corresponds with the latest version of the custom framework.

  When a recipient accepts a share request, the snapshot is replicated into their
  Amazon Web Services account under the Amazon Web Services Region that was
  specified in the share
  request.

  When you invoke the `StartAssessmentFrameworkShare` API, you are about to
  share a custom framework with another Amazon Web Services account. You may not
  share a
  custom framework that is derived from a standard framework if the standard
  framework is
  designated as not eligible for sharing by Amazon Web Services, unless you have
  obtained
  permission to do so from the owner of the standard framework. To learn more
  about which
  standard frameworks are eligible for sharing, see [Framework sharing eligibility](https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility)
  in the *Audit Manager User
  Guide*.
  """
  @spec start_assessment_framework_share(
          map(),
          String.t(),
          start_assessment_framework_share_request(),
          list()
        ) ::
          {:ok, start_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_assessment_framework_share_errors()}
  def start_assessment_framework_share(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}/shareRequests"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Tags the specified resource in Audit Manager.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Removes a tag from a resource in Audit Manager.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """
  Edits an Audit Manager assessment.
  """
  @spec update_assessment(map(), String.t(), update_assessment_request(), list()) ::
          {:ok, update_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_errors()}
  def update_assessment(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
  Updates a control within an assessment in Audit Manager.
  """
  @spec update_assessment_control(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_assessment_control_request(),
          list()
        ) ::
          {:ok, update_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_control_errors()}
  def update_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}"

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
  Updates the status of a control set in an Audit Manager assessment.
  """
  @spec update_assessment_control_set_status(
          map(),
          String.t(),
          String.t(),
          update_assessment_control_set_status_request(),
          list()
        ) ::
          {:ok, update_assessment_control_set_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_control_set_status_errors()}
  def update_assessment_control_set_status(
        %Client{} = client,
        assessment_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/status"

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
  Updates a custom framework in Audit Manager.
  """
  @spec update_assessment_framework(
          map(),
          String.t(),
          update_assessment_framework_request(),
          list()
        ) ::
          {:ok, update_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_framework_errors()}
  def update_assessment_framework(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
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
  Updates a share request for a custom framework in Audit Manager.
  """
  @spec update_assessment_framework_share(
          map(),
          String.t(),
          update_assessment_framework_share_request(),
          list()
        ) ::
          {:ok, update_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_framework_share_errors()}
  def update_assessment_framework_share(%Client{} = client, request_id, input, options \\ []) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"
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
  Updates the status of an assessment in Audit Manager.
  """
  @spec update_assessment_status(map(), String.t(), update_assessment_status_request(), list()) ::
          {:ok, update_assessment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_status_errors()}
  def update_assessment_status(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/status"
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
  Updates a custom control in Audit Manager.
  """
  @spec update_control(map(), String.t(), update_control_request(), list()) ::
          {:ok, update_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_control_errors()}
  def update_control(%Client{} = client, control_id, input, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
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
  Updates Audit Manager settings for the current account.
  """
  @spec update_settings(map(), update_settings_request(), list()) ::
          {:ok, update_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_settings_errors()}
  def update_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
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
  Validates the integrity of an assessment report in Audit Manager.
  """
  @spec validate_assessment_report_integrity(
          map(),
          validate_assessment_report_integrity_request(),
          list()
        ) ::
          {:ok, validate_assessment_report_integrity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_assessment_report_integrity_errors()}
  def validate_assessment_report_integrity(%Client{} = client, input, options \\ []) do
    url_path = "/assessmentReports/integrity"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
