# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Support do
  @moduledoc """
  Amazon Web Services Support

  The *Amazon Web Services Support API Reference* is intended for programmers who
  need detailed
  information about the Amazon Web Services Support operations and data types.

  You can use the API to manage
  your support cases programmatically. The Amazon Web Services Support API uses
  HTTP methods that return
  results in JSON format.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  You can also use the Amazon Web Services Support API to access features for
  [Trusted Advisor](http://aws.amazon.com/premiumsupport/trustedadvisor/). You can return a list of
  checks and their descriptions, get check results, specify checks to refresh, and
  get the
  refresh status of checks.

  You can manage your support cases with the following Amazon Web Services Support
  API operations:

    *
  The `CreateCase`, `DescribeCases`, `DescribeAttachment`, and `ResolveCase`
  operations
  create Amazon Web Services Support cases, retrieve information about cases, and
  resolve cases.

    *
  The `DescribeCommunications`, `AddCommunicationToCase`, and
  `AddAttachmentsToSet` operations retrieve and add communications and attachments
  to Amazon Web Services Support
  cases.

    *
  The `DescribeServices` and `DescribeSeverityLevels` operations return Amazon Web
  Services service names, service codes, service categories, and problem
  severity levels. You use these values when you call the `CreateCase` operation.

  You can also use the Amazon Web Services Support API to call the Trusted Advisor
  operations. For more
  information, see [Trusted
  Advisor](https://docs.aws.amazon.com/awssupport/latest/user/trusted-advisor.html)
  in the
  *Amazon Web Services Support User Guide*.

  For authentication of requests, Amazon Web Services Support uses [Signature Version 4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For more information about this service and the endpoints to use, see [About the Amazon Web Services Support
  API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html)
  in the *Amazon Web Services Support User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      add_attachments_to_set_request() :: %{
        optional("attachmentSetId") => String.t() | atom(),
        optional("dryRun") => boolean(),
        required("attachments") => list(attachment())
      }
      
  """
  @type add_attachments_to_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_attachments_to_set_response() :: %{
        "attachmentSetId" => String.t() | atom(),
        "expiryTime" => String.t() | atom()
      }
      
  """
  @type add_attachments_to_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_communication_to_case_request() :: %{
        optional("attachmentSetId") => String.t() | atom(),
        optional("caseId") => String.t() | atom(),
        optional("ccEmailAddresses") => list(String.t() | atom()),
        optional("dryRun") => boolean(),
        optional("uploadIds") => list(String.t() | atom()),
        required("communicationBody") => String.t() | atom()
      }
      
  """
  @type add_communication_to_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_communication_to_case_response() :: %{
        "result" => boolean()
      }
      
  """
  @type add_communication_to_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment() :: %{
        "data" => binary(),
        "fileName" => String.t() | atom()
      }
      
  """
  @type attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_details() :: %{
        "attachmentId" => String.t() | atom(),
        "fileName" => String.t() | atom()
      }
      
  """
  @type attachment_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_id_not_found() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attachment_id_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_limit_exceeded() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attachment_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_set_expired() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attachment_set_expired() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_set_id_not_found() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attachment_set_id_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_set_size_limit_exceeded() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attachment_set_size_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      case_creation_limit_exceeded() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type case_creation_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      case_details() :: %{
        "caseId" => String.t() | atom(),
        "categoryCode" => String.t() | atom(),
        "ccEmailAddresses" => list(String.t() | atom()),
        "displayId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "recentCommunications" => recent_case_communications(),
        "serviceCode" => String.t() | atom(),
        "severityCode" => String.t() | atom(),
        "status" => String.t() | atom(),
        "subject" => String.t() | atom(),
        "submittedBy" => String.t() | atom(),
        "timeCreated" => String.t() | atom()
      }
      
  """
  @type case_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      case_id_not_found() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type case_id_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      category() :: %{
        "code" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      communication() :: %{
        "attachmentSet" => list(attachment_details()),
        "attachments" => list(attachment_details()),
        "body" => String.t() | atom(),
        "caseId" => String.t() | atom(),
        "submittedBy" => String.t() | atom(),
        "timeCreated" => String.t() | atom()
      }
      
  """
  @type communication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      communication_type_options() :: %{
        "datesWithoutSupport" => list(date_interval()),
        "supportedHours" => list(supported_hour()),
        "type" => String.t() | atom()
      }
      
  """
  @type communication_type_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_attachment_upload_request() :: %{
        optional("dryRun") => boolean(),
        required("completedUploads") => list(completed_upload()),
        required("uploadId") => String.t() | atom()
      }
      
  """
  @type complete_attachment_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_attachment_upload_response() :: %{
        "uploadStatus" => list(any())
      }
      
  """
  @type complete_attachment_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      completed_upload() :: %{
        "eTag" => String.t() | atom(),
        "partIndex" => integer()
      }
      
  """
  @type completed_upload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_case_request() :: %{
        optional("attachmentSetId") => String.t() | atom(),
        optional("categoryCode") => String.t() | atom(),
        optional("ccEmailAddresses") => list(String.t() | atom()),
        optional("dryRun") => boolean(),
        optional("issueType") => String.t() | atom(),
        optional("language") => String.t() | atom(),
        optional("serviceCode") => String.t() | atom(),
        optional("severityCode") => String.t() | atom(),
        optional("uploadIds") => list(String.t() | atom()),
        required("communicationBody") => String.t() | atom(),
        required("subject") => String.t() | atom()
      }
      
  """
  @type create_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_case_response() :: %{
        "caseId" => String.t() | atom()
      }
      
  """
  @type create_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_interval() :: %{
        "endDateTime" => String.t() | atom(),
        "startDateTime" => String.t() | atom()
      }
      
  """
  @type date_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_limit_exceeded() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type describe_attachment_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_request() :: %{
        optional("dryRun") => boolean(),
        required("attachmentId") => String.t() | atom()
      }
      
  """
  @type describe_attachment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_response() :: %{
        "attachment" => attachment()
      }
      
  """
  @type describe_attachment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_upload_status_request() :: %{
        optional("dryRun") => boolean(),
        required("uploadId") => String.t() | atom()
      }
      
  """
  @type describe_attachment_upload_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_attachment_upload_status_response() :: %{
        "fileName" => String.t() | atom(),
        "uploadProgress" => upload_progress(),
        "uploadStatus" => list(any())
      }
      
  """
  @type describe_attachment_upload_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cases_request() :: %{
        optional("afterTime") => String.t() | atom(),
        optional("beforeTime") => String.t() | atom(),
        optional("caseIdList") => list(String.t() | atom()),
        optional("displayId") => String.t() | atom(),
        optional("dryRun") => boolean(),
        optional("includeCommunications") => boolean(),
        optional("includeResolvedCases") => boolean(),
        optional("language") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type describe_cases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cases_response() :: %{
        "cases" => list(case_details()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type describe_cases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_communications_request() :: %{
        optional("afterTime") => String.t() | atom(),
        optional("beforeTime") => String.t() | atom(),
        optional("dryRun") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("caseId") => String.t() | atom()
      }
      
  """
  @type describe_communications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_communications_response() :: %{
        "communications" => list(communication()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type describe_communications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_create_case_options_request() :: %{
        optional("dryRun") => boolean(),
        required("categoryCode") => String.t() | atom(),
        required("issueType") => String.t() | atom(),
        required("language") => String.t() | atom(),
        required("serviceCode") => String.t() | atom()
      }
      
  """
  @type describe_create_case_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_create_case_options_response() :: %{
        "communicationTypes" => list(communication_type_options()),
        "languageAvailability" => String.t() | atom()
      }
      
  """
  @type describe_create_case_options_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_services_request() :: %{
        optional("dryRun") => boolean(),
        optional("language") => String.t() | atom(),
        optional("serviceCodeList") => list(String.t() | atom())
      }
      
  """
  @type describe_services_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_services_response() :: %{
        "services" => list(service())
      }
      
  """
  @type describe_services_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_severity_levels_request() :: %{
        optional("dryRun") => boolean(),
        optional("language") => String.t() | atom()
      }
      
  """
  @type describe_severity_levels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_severity_levels_response() :: %{
        "severityLevels" => list(severity_level())
      }
      
  """
  @type describe_severity_levels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_supported_languages_request() :: %{
        optional("dryRun") => boolean(),
        required("categoryCode") => String.t() | atom(),
        required("issueType") => String.t() | atom(),
        required("serviceCode") => String.t() | atom()
      }
      
  """
  @type describe_supported_languages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_supported_languages_response() :: %{
        "supportedLanguages" => list(supported_language())
      }
      
  """
  @type describe_supported_languages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_refresh_statuses_request() :: %{
        required("checkIds") => list(String.t() | atom())
      }
      
  """
  @type describe_trusted_advisor_check_refresh_statuses_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_refresh_statuses_response() :: %{
        "statuses" => list(trusted_advisor_check_refresh_status())
      }
      
  """
  @type describe_trusted_advisor_check_refresh_statuses_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_result_request() :: %{
        optional("language") => String.t() | atom(),
        required("checkId") => String.t() | atom()
      }
      
  """
  @type describe_trusted_advisor_check_result_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_result_response() :: %{
        "result" => trusted_advisor_check_result()
      }
      
  """
  @type describe_trusted_advisor_check_result_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_summaries_request() :: %{
        required("checkIds") => list(String.t() | atom())
      }
      
  """
  @type describe_trusted_advisor_check_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_check_summaries_response() :: %{
        "summaries" => list(trusted_advisor_check_summary())
      }
      
  """
  @type describe_trusted_advisor_check_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_checks_request() :: %{
        required("language") => String.t() | atom()
      }
      
  """
  @type describe_trusted_advisor_checks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_advisor_checks_response() :: %{
        "checks" => list(trusted_advisor_check_description())
      }
      
  """
  @type describe_trusted_advisor_checks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      download_url() :: %{
        "expiryDate" => String.t() | atom(),
        "url" => String.t() | atom()
      }
      
  """
  @type download_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dry_run_operation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type dry_run_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_attachment_download_link_request() :: %{
        optional("dryRun") => boolean(),
        required("attachmentId") => String.t() | atom()
      }
      
  """
  @type get_attachment_download_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_attachment_download_link_response() :: %{
        "downloadUrl" => download_url(),
        "fileName" => String.t() | atom()
      }
      
  """
  @type get_attachment_download_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_attachment_upload_links_request() :: %{
        optional("dryRun") => boolean(),
        optional("fileSizeBytes") => float(),
        optional("uploadId") => String.t() | atom(),
        optional("uploadRange") => upload_range(),
        required("fileName") => String.t() | atom()
      }
      
  """
  @type get_attachment_upload_links_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_attachment_upload_links_response() :: %{
        "nextIndex" => integer(),
        "partSizeBytes" => float(),
        "totalParts" => integer(),
        "uploadId" => String.t() | atom(),
        "uploadUrls" => list(upload_url())
      }
      
  """
  @type get_attachment_upload_links_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recent_case_communications() :: %{
        "communications" => list(communication()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type recent_case_communications() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_trusted_advisor_check_request() :: %{
        required("checkId") => String.t() | atom()
      }
      
  """
  @type refresh_trusted_advisor_check_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_trusted_advisor_check_response() :: %{
        "status" => trusted_advisor_check_refresh_status()
      }
      
  """
  @type refresh_trusted_advisor_check_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_case_request() :: %{
        optional("caseId") => String.t() | atom(),
        optional("dryRun") => boolean()
      }
      
  """
  @type resolve_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_case_response() :: %{
        "finalCaseStatus" => String.t() | atom(),
        "initialCaseStatus" => String.t() | atom()
      }
      
  """
  @type resolve_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "categories" => list(category()),
        "code" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      severity_level() :: %{
        "code" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type severity_level() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      supported_hour() :: %{
        "endTime" => String.t() | atom(),
        "startTime" => String.t() | atom()
      }
      
  """
  @type supported_hour() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      supported_language() :: %{
        "code" => String.t() | atom(),
        "display" => String.t() | atom(),
        "language" => String.t() | atom()
      }
      
  """
  @type supported_language() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "throttlingReasons" => list(throttling_reason())
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_reason() :: %{
        "reason" => String.t() | atom(),
        "resource" => String.t() | atom()
      }
      
  """
  @type throttling_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_category_specific_summary() :: %{
        "costOptimizing" => trusted_advisor_cost_optimizing_summary()
      }
      
  """
  @type trusted_advisor_category_specific_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_description() :: %{
        "category" => String.t() | atom(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => list(String.t() | atom()),
        "name" => String.t() | atom()
      }
      
  """
  @type trusted_advisor_check_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_refresh_status() :: %{
        "checkId" => String.t() | atom(),
        "millisUntilNextRefreshable" => float(),
        "status" => String.t() | atom()
      }
      
  """
  @type trusted_advisor_check_refresh_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_result() :: %{
        "categorySpecificSummary" => trusted_advisor_category_specific_summary(),
        "checkId" => String.t() | atom(),
        "flaggedResources" => list(trusted_advisor_resource_detail()),
        "resourcesSummary" => trusted_advisor_resources_summary(),
        "status" => String.t() | atom(),
        "timestamp" => String.t() | atom()
      }
      
  """
  @type trusted_advisor_check_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_check_summary() :: %{
        "categorySpecificSummary" => trusted_advisor_category_specific_summary(),
        "checkId" => String.t() | atom(),
        "hasFlaggedResources" => boolean(),
        "resourcesSummary" => trusted_advisor_resources_summary(),
        "status" => String.t() | atom(),
        "timestamp" => String.t() | atom()
      }
      
  """
  @type trusted_advisor_check_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_cost_optimizing_summary() :: %{
        "estimatedMonthlySavings" => float(),
        "estimatedPercentMonthlySavings" => float()
      }
      
  """
  @type trusted_advisor_cost_optimizing_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_resource_detail() :: %{
        "isSuppressed" => boolean(),
        "metadata" => list(String.t() | atom()),
        "region" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type trusted_advisor_resource_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_advisor_resources_summary() :: %{
        "resourcesFlagged" => float(),
        "resourcesIgnored" => float(),
        "resourcesProcessed" => float(),
        "resourcesSuppressed" => float()
      }
      
  """
  @type trusted_advisor_resources_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upload_id_not_found() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type upload_id_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upload_progress() :: %{
        "completedPartsCount" => integer(),
        "totalParts" => integer()
      }
      
  """
  @type upload_progress() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upload_range() :: %{
        "endIndex" => integer(),
        "startIndex" => integer()
      }
      
  """
  @type upload_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upload_url() :: %{
        "expiryDate" => String.t() | atom(),
        "partIndex" => integer(),
        "url" => String.t() | atom()
      }
      
  """
  @type upload_url() :: %{(String.t() | atom()) => any()}

  @type add_attachments_to_set_errors() ::
          internal_server_error()
          | dry_run_operation_exception()
          | attachment_set_size_limit_exceeded()
          | attachment_set_id_not_found()
          | attachment_set_expired()
          | attachment_limit_exceeded()

  @type add_communication_to_case_errors() ::
          internal_server_error()
          | dry_run_operation_exception()
          | case_id_not_found()
          | attachment_set_id_not_found()
          | attachment_set_expired()

  @type complete_attachment_upload_errors() ::
          upload_id_not_found() | internal_server_error() | dry_run_operation_exception()

  @type create_case_errors() ::
          internal_server_error()
          | dry_run_operation_exception()
          | case_creation_limit_exceeded()
          | attachment_set_id_not_found()
          | attachment_set_expired()

  @type describe_attachment_errors() ::
          internal_server_error()
          | dry_run_operation_exception()
          | describe_attachment_limit_exceeded()
          | attachment_id_not_found()

  @type describe_attachment_upload_status_errors() ::
          upload_id_not_found() | internal_server_error() | dry_run_operation_exception()

  @type describe_cases_errors() ::
          internal_server_error() | dry_run_operation_exception() | case_id_not_found()

  @type describe_communications_errors() ::
          internal_server_error() | dry_run_operation_exception() | case_id_not_found()

  @type describe_create_case_options_errors() ::
          throttling_exception() | internal_server_error() | dry_run_operation_exception()

  @type describe_services_errors() :: internal_server_error() | dry_run_operation_exception()

  @type describe_severity_levels_errors() ::
          internal_server_error() | dry_run_operation_exception()

  @type describe_supported_languages_errors() ::
          throttling_exception() | internal_server_error() | dry_run_operation_exception()

  @type describe_trusted_advisor_check_refresh_statuses_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_check_result_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_check_summaries_errors() ::
          throttling_exception() | internal_server_error()

  @type describe_trusted_advisor_checks_errors() ::
          throttling_exception() | internal_server_error()

  @type get_attachment_download_link_errors() ::
          internal_server_error() | dry_run_operation_exception() | attachment_id_not_found()

  @type get_attachment_upload_links_errors() ::
          upload_id_not_found() | internal_server_error() | dry_run_operation_exception()

  @type refresh_trusted_advisor_check_errors() :: internal_server_error()

  @type resolve_case_errors() ::
          internal_server_error() | dry_run_operation_exception() | case_id_not_found()

  def metadata do
    %{
      api_version: "2013-04-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "support",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Support",
      signature_version: "v4",
      signing_name: "support",
      target_prefix: "AWSSupport_20130415"
    }
  end

  @doc """
  Adds one or more attachments to an attachment set.

  An attachment set is a temporary container for attachments that you add to a
  case or
  case communication. The set is available for 1 hour after it's created. The
  `expiryTime` returned in the response is when the set expires.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec add_attachments_to_set(map(), add_attachments_to_set_request(), list()) ::
          {:ok, add_attachments_to_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_attachments_to_set_errors()}
  def add_attachments_to_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddAttachmentsToSet", input, options)
  end

  @doc """
  Adds additional customer communication to a Amazon Web Services Support case.

  Use the `caseId`
  parameter to identify the case to which to add communication. To list a set of
  email addresses to copy on the communication, use the `ccEmailAddresses`
  parameter. The `communicationBody` value contains the text of the
  communication.

  To attach files larger than 5 MB to the communication, use the `uploadIds`
  parameter.

  Amazon Web Services Support automatically redacts sensitive information from
  support cases to protect your data. The following information is replaced with
  `[REDACTED_BY_Amazon Web Services]` and is not stored: 
    
  Amazon Web Services secret keys - The complete key is replaced. Example:
  `[REDACTED_BY_Amazon Web Services]`

    
  Private keys - The complete key is replaced. Example: `[REDACTED_BY_Amazon Web Services]`

    
  Credit card numbers - The number is redacted, but the last 4 digits remain.
  Example: `[REDACTED_BY_Amazon Web Services]-7016` 

  This sensitive information is never required by Amazon Web Services Support.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec add_communication_to_case(map(), add_communication_to_case_request(), list()) ::
          {:ok, add_communication_to_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_communication_to_case_errors()}
  def add_communication_to_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCommunicationToCase", input, options)
  end

  @doc """
  Completes an attachment upload that was started with `GetAttachmentUploadLinks`.

  After you upload a part of the file to its
  presigned Amazon S3 URL, call `CompleteAttachmentUpload` with the
  `partIndex` and `eTag` of that part. You can include one part per
  call, or multiple parts in a single call. After `CompleteAttachmentUpload` has
  been called for every part of the file, the service processes the upload
  asynchronously. The
  `attachment-ready` status might not be reflected immediately. Use
  `DescribeAttachmentUploadStatus` to poll for the `uploadStatus` to
  become `attachment-ready` before passing the `uploadId` to `CreateCase` or
  `AddCommunicationToCase`.
  """
  @spec complete_attachment_upload(map(), complete_attachment_upload_request(), list()) ::
          {:ok, complete_attachment_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_attachment_upload_errors()}
  def complete_attachment_upload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CompleteAttachmentUpload", input, options)
  end

  @doc """
  Creates a case in the Amazon Web Services Support Center.

  This operation is similar to how you create a case
  in the Amazon Web Services Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.

  The Amazon Web Services Support API doesn't support requesting service limit
  increases. You can submit a
  service limit increase in the following ways:

    *
  Submit a request from the Amazon Web Services Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.

    *
  Use the Service Quotas
  [RequestServiceQuotaIncrease](https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html) operation.

  Amazon Web Services Support automatically redacts sensitive information from
  support cases to protect your data. The following information is replaced with
  `[REDACTED_BY_Amazon Web Services]` and is not stored:

    
  Amazon Web Services secret keys - The complete key is replaced. Example:
  `[REDACTED_BY_Amazon Web Services]` 

    
  Private keys - The complete key is replaced. Example: `[REDACTED_BY_Amazon Web
  Services]`

    
  Credit card numbers - The number is redacted, but the last 4 digits remain.
  Example: `[REDACTED_BY_Amazon Web Services]-7016` 

  This sensitive information is never required by Amazon Web Services Support.

  A successful `CreateCase` request returns a Amazon Web Services Support case
  number. You can use
  the `DescribeCases` operation and specify the case number to get
  existing Amazon Web Services Support cases. After you create a case, use the
  `AddCommunicationToCase` operation to add additional communication or
  attachments to an existing case.

  The `caseId` is separate from the `displayId` that appears in
  the [Amazon Web Services Support
  Center](https://console.aws.amazon.com/support). Use the `DescribeCases`
  operation to get the `displayId`.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec create_case(map(), create_case_request(), list()) ::
          {:ok, create_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_case_errors()}
  def create_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCase", input, options)
  end

  @doc """
  Returns the attachment that has the specified ID.

  Attachments can include screenshots,
  error logs, or other files that describe your issue. Attachment IDs are
  generated by the
  case management system when you add an attachment to a case or case
  communication.
  Attachment IDs are returned in the `AttachmentDetails` objects that are
  returned by the `DescribeCommunications` operation.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  `DescribeAttachment` can't return attachments larger than 5 MB. If the
  specified `attachmentId` refers to an attachment larger than 5 MB, the
  request fails with `InvalidParameterValueException`.

  To download an attachment of any size, including attachments larger than 5 MB,
  use
  `GetAttachmentDownloadLink`.
  `GetAttachmentDownloadLink` returns an Amazon S3 presigned URL that you can
  use to download the attachment directly.
  """
  @spec describe_attachment(map(), describe_attachment_request(), list()) ::
          {:ok, describe_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_attachment_errors()}
  def describe_attachment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAttachment", input, options)
  end

  @doc """
  Returns the current status, file name, and progress of a multipart attachment
  upload that
  was started with `GetAttachmentUploadLinks`.

  Use this operation to track
  where an upload is in the workflow. While parts are still being uploaded and
  reported through
  `CompleteAttachmentUpload`, the `uploadStatus` is
  `attachment-not-ready` and `uploadProgress` reports the total number
  of parts and how many have been completed so far. After every part has been
  reported and the
  service finishes processing the upload asynchronously, the `uploadStatus`
  becomes
  `attachment-ready` and the `uploadId` can be attached to a case
  through `CreateCase` or `AddCommunicationToCase`.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec describe_attachment_upload_status(
          map(),
          describe_attachment_upload_status_request(),
          list()
        ) ::
          {:ok, describe_attachment_upload_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_attachment_upload_status_errors()}
  def describe_attachment_upload_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAttachmentUploadStatus", input, options)
  end

  @doc """
  Returns a list of cases that you specify by passing one or more case IDs.

  You can use
  the `afterTime` and `beforeTime` parameters to filter the cases by
  date. You can set values for the `includeResolvedCases` and
  `includeCommunications` parameters to specify how much information to
  return.

  The response returns the following in JSON format:

    *
  One or more
  [CaseDetails](https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html) data types.

    *
  One or more `nextToken` values, which specify where to paginate the
  returned records represented by the `CaseDetails` objects.

  Case data is available for 24 months after creation. If a case was created more
  than
  24 months ago, a request might return an error.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/).

  Each `Communication` returned by this operation includes
  attachment information in two fields:

    

  `attachmentSet`: returns only attachments that are 5 MB or
  smaller. Attachments larger than 5 MB are not included in this field.

    

  `attachments`: returns all attachments regardless of size.

  Amazon Web Services recommends that you use the `attachments` field and download
  each
  attachment with `GetAttachmentDownloadLink`, which supports
  attachments of any size. The `attachmentSet` field and `DescribeAttachment`
  return only attachments that are 5 MB or
  smaller.
  """
  @spec describe_cases(map(), describe_cases_request(), list()) ::
          {:ok, describe_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cases_errors()}
  def describe_cases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCases", input, options)
  end

  @doc """
  Returns communications and attachments for one or more support cases.

  Use the
  `afterTime` and `beforeTime` parameters to filter by date. You
  can use the `caseId` parameter to restrict the results to a specific
  case.

  Case data is available for 24 months after creation. If a case was created more
  than
  24 months ago, a request for data might cause an error.

  You can use the `maxResults` and `nextToken` parameters to
  control the pagination of the results. Set `maxResults` to the number of
  cases that you want to display on each page, and use `nextToken` to specify
  the resumption of pagination.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  Each `Communication` returned by this operation includes
  attachment information in two fields:

    

  `attachmentSet`: returns only attachments that are 5 MB or
  smaller. Attachments larger than 5 MB are not included in this field.

    

  `attachments`: returns all attachments regardless of size.

  Amazon Web Services recommends that you use the `attachments` field and download
  each
  attachment with `GetAttachmentDownloadLink`, which supports
  attachments of any size. The `attachmentSet` field and `DescribeAttachment`
  return only attachments that are 5 MB or
  smaller.
  """
  @spec describe_communications(map(), describe_communications_request(), list()) ::
          {:ok, describe_communications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_communications_errors()}
  def describe_communications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCommunications", input, options)
  end

  @doc """
  Returns a list of CreateCaseOption types along with the
  corresponding supported hours and language availability.

  You can specify the `language`
  `categoryCode`,
  `issueType` and `serviceCode` used to retrieve the CreateCaseOptions.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec describe_create_case_options(map(), describe_create_case_options_request(), list()) ::
          {:ok, describe_create_case_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_create_case_options_errors()}
  def describe_create_case_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCreateCaseOptions", input, options)
  end

  @doc """
  Returns the current list of Amazon Web Services services and a list of service
  categories for each
  service.

  You then use service names and categories in your `CreateCase`
  requests. Each Amazon Web Services service has its own set of categories.

  The service codes and category codes correspond to the values that appear in the
  **Service** and **Category** lists on the Amazon Web Services Support Center
  [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. The values in those fields
  don't necessarily match the service codes and categories returned by the
  `DescribeServices` operation. Always use the service codes and categories
  that the `DescribeServices` operation returns, so that you have the most
  recent set of service and category codes.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec describe_services(map(), describe_services_request(), list()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_services_errors()}
  def describe_services(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Returns the list of severity levels that you can assign to a support case.

  The
  severity level for a case is also a field in the `CaseDetails` data type
  that you include for a `CreateCase` request.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec describe_severity_levels(map(), describe_severity_levels_request(), list()) ::
          {:ok, describe_severity_levels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_severity_levels_errors()}
  def describe_severity_levels(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSeverityLevels", input, options)
  end

  @doc """
  Returns a list of supported languages for a specified `categoryCode`,
  `issueType` and `serviceCode`.

  The returned supported languages will
  include a ISO 639-1 code for the `language`, and the language display name.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec describe_supported_languages(map(), describe_supported_languages_request(), list()) ::
          {:ok, describe_supported_languages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_supported_languages_errors()}
  def describe_supported_languages(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSupportedLanguages", input, options)
  end

  @doc """
  Returns the refresh status of the Trusted Advisor checks that have the specified
  check
  IDs.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  Some checks are refreshed automatically, and you can't return their refresh
  statuses
  by using the `DescribeTrustedAdvisorCheckRefreshStatuses` operation. If you
  call this operation for these checks, you might see an
  `InvalidParameterValue` error.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  To call the Trusted Advisor operations in
  the Amazon Web Services Support API, you must use the US East (N. Virginia)
  endpoint. Currently, the US West (Oregon) and Europe (Ireland)
  endpoints don't support the Trusted Advisor operations. For more information,
  see [About the Amazon Web Services Support API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
  in the *Amazon Web Services Support User Guide*.
  """
  @spec describe_trusted_advisor_check_refresh_statuses(
          map(),
          describe_trusted_advisor_check_refresh_statuses_request(),
          list()
        ) ::
          {:ok, describe_trusted_advisor_check_refresh_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusted_advisor_check_refresh_statuses_errors()}
  def describe_trusted_advisor_check_refresh_statuses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeTrustedAdvisorCheckRefreshStatuses",
      input,
      options
    )
  end

  @doc """
  Returns the results of the Trusted Advisor check that has the specified check
  ID.

  You
  can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  The response contains a `TrustedAdvisorCheckResult` object, which
  contains these three objects:

    *

  `TrustedAdvisorCategorySpecificSummary`

    *

  `TrustedAdvisorResourceDetail`

    *

  `TrustedAdvisorResourcesSummary`

  In addition, the response contains these fields:

    *

  **status** - The alert status of the check
  can be `ok` (green), `warning` (yellow),
  `error` (red), or `not_available`.

    *

  **timestamp** - The time of the last refresh
  of the check.

    *

  **checkId** - The unique identifier for the
  check.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  To call the Trusted Advisor operations in
  the Amazon Web Services Support API, you must use the US East (N. Virginia)
  endpoint. Currently, the US West (Oregon) and Europe (Ireland)
  endpoints don't support the Trusted Advisor operations. For more information,
  see [About the Amazon Web Services Support API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
  in the *Amazon Web Services Support User Guide*.
  """
  @spec describe_trusted_advisor_check_result(
          map(),
          describe_trusted_advisor_check_result_request(),
          list()
        ) ::
          {:ok, describe_trusted_advisor_check_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusted_advisor_check_result_errors()}
  def describe_trusted_advisor_check_result(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorCheckResult", input, options)
  end

  @doc """
  Returns the results for the Trusted Advisor check summaries for the check IDs
  that you
  specified.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  The response contains an array of `TrustedAdvisorCheckSummary`
  objects.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  To call the Trusted Advisor operations in
  the Amazon Web Services Support API, you must use the US East (N. Virginia)
  endpoint. Currently, the US West (Oregon) and Europe (Ireland)
  endpoints don't support the Trusted Advisor operations. For more information,
  see [About the Amazon Web Services Support API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
  in the *Amazon Web Services Support User Guide*.

  ## Understanding the Trusted Advisor Resources processed value

  The **Resources processed** value, `resourcesProcessed`, usually shows both
  flagged resources (those with warnings or errors) and resources in good standing
  (ok status resources). However, some checks report flagged resources only. To
  understand what a specific check reports, review the detailed check information
  in the [Trusted Advisor check reference](https://docs.aws.amazon.com/awssupport/latest/user/trusted-advisor-check-reference.html).
  If you see a **Green** criterion listed in the **Alert criteria**, then the
  check reports all resources. If there's no **Green** criterion listed in the
  **Alert criteria**, then the check reports only flagged resources. For example,
  the [Amazon EC2 Reserved Instance optimization check (cX3c2R1chu)](https://docs.aws.amazon.com/awssupport/latest/user/cost-optimization-checks.html#amazon-ec2-reserved-instances-optimization)
  doesn't list a **Green** criterion in the **Alert criteria**. So, this check
  only reports flagged resources.
  """
  @spec describe_trusted_advisor_check_summaries(
          map(),
          describe_trusted_advisor_check_summaries_request(),
          list()
        ) ::
          {:ok, describe_trusted_advisor_check_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusted_advisor_check_summaries_errors()}
  def describe_trusted_advisor_check_summaries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorCheckSummaries", input, options)
  end

  @doc """
  Returns information about all available Trusted Advisor checks, including the
  name, ID,
  category, description, and metadata.

  You must specify a language code.

  The response contains a `TrustedAdvisorCheckDescription` object for
  each check. You must set the Amazon Web Services Region to us-east-1.

    
  You must have a Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support API.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have a
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error
  message appears. For information about changing your support plan, see
  [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/). 
    
  The names and descriptions for Trusted Advisor checks are subject to change. We
  recommend that you specify the check ID in your code to uniquely identify a
  check.

  To call the Trusted Advisor operations in
  the Amazon Web Services Support API, you must use the US East (N. Virginia)
  endpoint. Currently, the US West (Oregon) and Europe (Ireland)
  endpoints don't support the Trusted Advisor operations. For more information,
  see [About the Amazon Web Services Support
  API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
  in the *Amazon Web Services Support User Guide*.
  """
  @spec describe_trusted_advisor_checks(map(), describe_trusted_advisor_checks_request(), list()) ::
          {:ok, describe_trusted_advisor_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusted_advisor_checks_errors()}
  def describe_trusted_advisor_checks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedAdvisorChecks", input, options)
  end

  @doc """
  Returns a presigned download URL for an attachment that is associated with a
  case
  communication.

  The download link works for an attachment of any size, including attachments
  added through `AddAttachmentsToSet` and attachments uploaded through
  `GetAttachmentUploadLinks`. The download URL is time-limited and expires at the
  date and time indicated in the `downloadUrl` response field. Download the
  attachment from the URL before it expires.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec get_attachment_download_link(map(), get_attachment_download_link_request(), list()) ::
          {:ok, get_attachment_download_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_attachment_download_link_errors()}
  def get_attachment_download_link(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAttachmentDownloadLink", input, options)
  end

  @doc """
  Returns one or more presigned upload URLs for uploading a large file attachment
  to a
  support case by using a multipart upload workflow.

  The maximum file size that you can upload
  with this workflow is 150 MB, and parts can be up to 100 MB each. Initiate a new
  upload by
  providing `fileName` and `fileSizeBytes`; the response returns a unique
  `uploadId`, the part size, the total number of parts, and a list of presigned
  upload URLs for the requested range of parts. A maximum of 10 upload URLs are
  returned per
  call. To retrieve more upload URLs for an upload
  that's already in progress, call `GetAttachmentUploadLinks` again with the
  existing
  `uploadId` and a new `uploadRange`.

  Upload each part to its presigned URL by using HTTP `PUT` and capture the ETag
  from the response. After you upload all parts, call `CompleteAttachmentUpload`
  with the `uploadId` and the list of part indexes and ETags to finalize the
  upload.
  You can then attach the upload to a case by passing the `uploadId` in the
  `uploadIds` parameter of `CreateCase` or `AddCommunicationToCase`. To monitor
  progress before completion, call `DescribeAttachmentUploadStatus`.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec get_attachment_upload_links(map(), get_attachment_upload_links_request(), list()) ::
          {:ok, get_attachment_upload_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_attachment_upload_links_errors()}
  def get_attachment_upload_links(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAttachmentUploadLinks", input, options)
  end

  @doc """
  Refreshes the Trusted Advisor check that you specify using the check ID.

  You can get the
  check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  Some checks are refreshed automatically. If you call the
  `RefreshTrustedAdvisorCheck` operation to refresh them, you might see
  the `InvalidParameterValue` error.

  The response contains a `TrustedAdvisorCheckRefreshStatus`
  object.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  To call the Trusted Advisor operations in
  the Amazon Web Services Support API, you must use the US East (N. Virginia)
  endpoint. Currently, the US West (Oregon) and Europe (Ireland)
  endpoints don't support the Trusted Advisor operations. For more information,
  see [About the Amazon Web Services Support API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
  in the *Amazon Web Services Support User Guide*.
  """
  @spec refresh_trusted_advisor_check(map(), refresh_trusted_advisor_check_request(), list()) ::
          {:ok, refresh_trusted_advisor_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, refresh_trusted_advisor_check_errors()}
  def refresh_trusted_advisor_check(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RefreshTrustedAdvisorCheck", input, options)
  end

  @doc """
  Resolves a support case.

  This operation takes a `caseId` and returns the
  initial and final state of the case.

    
  You must have an Amazon Web Services Business Support+, Amazon Web Services
  Enterprise Support, or Amazon Web Services Unified Operations plan to use the
  Amazon Web Services Support
  API. If you're in an Amazon Web Services Region that doesn't offer one of these
  Amazon Web Services Support plans, or if you haven't transitioned to one of
  these plans, you can use the Amazon Web Services Support API with a Business,
  Enterprise On-Ramp, or Enterprise Support plan.

    
  If you call the Amazon Web Services Support API from an account that doesn't
  have an
  Amazon Web Services Business Support+, Amazon Web Services Enterprise Support,
  or Amazon Web Services Unified Operations plan, the
  `SubscriptionRequiredException` error message appears. For
  information about changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  @spec resolve_case(map(), resolve_case_request(), list()) ::
          {:ok, resolve_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resolve_case_errors()}
  def resolve_case(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResolveCase", input, options)
  end
end
