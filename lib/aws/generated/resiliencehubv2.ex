# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Resiliencehubv2 do
  @moduledoc """
  The next generation of AWS Resilience Hub is the single location in AWS where
  you assess and improve the resilience of your critical applications.

  It helps Site Reliability Engineers (SREs) and development teams proactively
  reason about resilience at scale — identifying failure modes, discovering hidden
  dependencies, and report on progress across the enterprise.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      service_function_created_metadata() :: %{
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_function_created_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_source_summary() :: %{
        "cfnStackArn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "designFileS3Url" => String.t() | atom(),
        "eks" => eks_source(),
        "inputSourceId" => String.t() | atom(),
        "resourceTags" => list(resource_tag()),
        "tfStateFileUrl" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type input_source_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assessment_summary() :: %{
        "achievability" => achievability(),
        "assessmentCost" => assessment_cost(),
        "assessmentId" => String.t() | atom(),
        "assessmentStatus" => list(any()),
        "assessmentStep" => list(any()),
        "billableAssessmentUnitCount" => [integer()],
        "endedAt" => [non_neg_integer()],
        "errorCode" => list(any()),
        "errorMessage" => [String.t() | atom()],
        "serviceArn" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "totalFindings" => [integer()]
      }

  """
  @type assessment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy() :: %{
        "associatedServiceCount" => [integer()],
        "availabilitySlo" => availability_slo(),
        "createdAt" => [non_neg_integer()],
        "dataRecovery" => data_recovery_targets(),
        "description" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "multiAz" => multi_az_targets(),
        "multiRegion" => multi_region_targets(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disaster_recovery_source() :: %{
        "policyName" => String.t() | atom(),
        "source" => list(any()),
        "value" => [String.t() | atom()]
      }

  """
  @type disaster_recovery_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_input_sources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("type") => list(any()),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_input_sources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_report_response() :: %{
        "reportGenerationResult" => report_generation_result()
      }

  """
  @type create_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_response() :: %{
        "serviceArn" => String.t() | atom()
      }

  """
  @type delete_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_deleted_metadata() :: %{}

  """
  @type system_deleted_metadata() :: %{}

  @typedoc """

  ## Example:

      create_user_journey_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("policyArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("systemArn") => String.t() | atom()
      }

  """
  @type create_user_journey_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_user_journey_request() :: %{
        required("systemArn") => String.t() | atom(),
        required("userJourneyId") => String.t() | atom()
      }

  """
  @type get_user_journey_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_journey_response() :: %{
        "userJourneyId" => String.t() | atom()
      }

  """
  @type delete_user_journey_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_failure_mode_assessments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_failure_mode_assessments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_event_details() :: %{
        "description" => [String.t() | atom()],
        "eventMetadata" => list(),
        "title" => [String.t() | atom()]
      }

  """
  @type service_event_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_event() :: %{
        "actor" => event_actor(),
        "eventDetails" => system_event_details(),
        "eventId" => String.t() | atom(),
        "eventType" => list(any()),
        "systemArn" => String.t() | atom(),
        "timestamp" => [non_neg_integer()]
      }

  """
  @type system_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceFunctionId" => String.t() | atom(),
        "serviceResources" => list(service_resource())
      }

  """
  @type list_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reports_response() :: %{
        "nextToken" => String.t() | atom(),
        "reportGenerationResults" => list(report_generation_result())
      }

  """
  @type list_reports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_user_journey_deleted_metadata() :: %{
        "associatedServicesAtDeletion" => list(service_reference()),
        "userJourneyName" => [String.t() | atom()]
      }

  """
  @type system_user_journey_deleted_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dependency_request() :: %{
        optional("comment") => [String.t() | atom()],
        optional("criticality") => list(any()),
        required("dependencyId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type update_dependency_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_system_response() :: %{
        "system" => system()
      }

  """
  @type update_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_source() :: %{
        "clusterArn" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type eks_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission_model() :: %{
        "crossAccountRoles" => list(cross_account_role()),
        "invokerRoleName" => String.t() | atom()
      }

  """
  @type permission_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_resources_disassociated_metadata() :: %{
        "resourceCount" => [integer()],
        "resourceTypes" => list([String.t() | atom()]())
      }

  """
  @type service_resources_disassociated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_change() :: %{
        "newValue" => [String.t() | atom()],
        "oldValue" => [String.t() | atom()]
      }

  """
  @type string_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_assertion_request() :: %{
        required("assertionId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type delete_assertion_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_input_source_request() :: %{
        required("inputSourceId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type delete_input_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_actor() :: %{
        "accountId" => [String.t() | atom()],
        "principalId" => [String.t() | atom()],
        "type" => list(any()),
        "userName" => [String.t() | atom()]
      }

  """
  @type event_actor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_report_output() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t() | atom()]
      }

  """
  @type failed_report_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_service_disassociated_metadata() :: %{
        "comment" => [String.t() | atom()],
        "serviceArn" => String.t() | atom(),
        "serviceName" => [String.t() | atom()],
        "userJourneysAffected" => list([String.t() | atom()]())
      }

  """
  @type system_service_disassociated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_request() :: %{
        optional("availabilitySlo") => availability_slo(),
        optional("clientToken") => String.t() | atom(),
        optional("dataRecovery") => data_recovery_targets(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("multiAz") => multi_az_targets(),
        optional("multiRegion") => multi_region_targets(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "policy" => policy()
      }

  """
  @type get_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_input_sources_updated_metadata() :: %{}

  """
  @type service_input_sources_updated_metadata() :: %{}

  @typedoc """

  ## Example:

      list_assertions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("source") => list(any()),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_assertions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dependency_summary() :: %{
        "comment" => [String.t() | atom()],
        "criticality" => list(any()),
        "dependencyId" => String.t() | atom(),
        "dependencyName" => [String.t() | atom()],
        "dnsName" => [String.t() | atom()],
        "lastDetectedTime" => [non_neg_integer()],
        "location" => [String.t() | atom()],
        "provider" => [String.t() | atom()],
        "queryRange" => query_range(),
        "serviceArn" => String.t() | atom(),
        "sourceRegions" => list(String.t() | atom())
      }

  """
  @type dependency_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assertions_response() :: %{
        "assertions" => list(assertion()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_assertions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_request() :: %{
        optional("associatedSystems") => list(associated_system()),
        optional("dependencyDiscovery") => list(any()),
        optional("description") => String.t() | atom(),
        optional("permissionModel") => permission_model(),
        optional("policyArn") => String.t() | atom(),
        optional("regions") => list(String.t() | atom()),
        optional("reportConfiguration") => service_report_configuration(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type update_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_function_request() :: %{
        required("serviceArn") => String.t() | atom(),
        required("serviceFunctionId") => String.t() | atom()
      }

  """
  @type delete_service_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_data_point() :: %{
        "queryCount" => [float()],
        "timestamp" => [non_neg_integer()]
      }

  """
  @type query_data_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assertion() :: %{
        "assertionId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "serviceArn" => String.t() | atom(),
        "source" => list(any()),
        "text" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type assertion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_user_journey_updated_metadata() :: %{
        "changes" => user_journey_changes(),
        "userJourneyName" => [String.t() | atom()]
      }

  """
  @type system_user_journey_updated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_request() :: %{
        optional("accountId") => String.t() | atom(),
        optional("assessmentStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("ouId") => String.t() | atom(),
        optional("policyArn") => String.t() | atom(),
        optional("systemArn") => String.t() | atom(),
        optional("userJourneyId") => String.t() | atom()
      }

  """
  @type list_services_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_assertion_response() :: %{
        "assertion" => assertion()
      }

  """
  @type update_assertion_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_failure_mode_finding_request() :: %{
        required("findingId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type get_failure_mode_finding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_response() :: %{
        "policyArn" => String.t() | atom()
      }

  """
  @type delete_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_input_source_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("resourceConfiguration") => list(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type create_input_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_input_sources_response() :: %{
        "inputSourceSummaries" => list(input_source_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_input_sources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_policy_disassociated_metadata() :: %{
        "policyArn" => String.t() | atom(),
        "policyName" => [String.t() | atom()]
      }

  """
  @type system_policy_disassociated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cross_account_role() :: %{
        "crossAccountRoleArn" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }

  """
  @type cross_account_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_functions_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceFunctions" => list(service_function())
      }

  """
  @type list_service_functions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_failure_mode_findings_request() :: %{
        optional("failureCategory") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("severity") => list(any()),
        optional("status") => list(any()),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_failure_mode_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_input_source_response() :: %{
        "inputSourceId" => String.t() | atom(),
        "serviceArn" => String.t() | atom()
      }

  """
  @type delete_input_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_reference_changes() :: %{
        "added" => list(service_reference()),
        "removed" => list(service_reference())
      }

  """
  @type service_reference_changes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "organizationId" => String.t() | atom(),
        "ouId" => String.t() | atom(),
        "sharingEnabled" => [boolean()],
        "systemArn" => String.t() | atom(),
        "systemId" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assertion_updated_metadata() :: %{
        "assertionId" => [String.t() | atom()],
        "assertionName" => [String.t() | atom()]
      }

  """
  @type assertion_updated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_function_resources_request() :: %{
        required("resources") => list([String.t() | atom()]()),
        required("serviceArn") => String.t() | atom(),
        required("serviceFunctionId") => String.t() | atom()
      }

  """
  @type delete_service_function_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "accountId" => String.t() | atom(),
        "achievability" => achievability(),
        "assessmentStatus" => list(any()),
        "associatedSystems" => list(associated_system()),
        "createdAt" => [non_neg_integer()],
        "dependencyDiscovery" => dependency_discovery_config(),
        "description" => String.t() | atom(),
        "effectivePolicyValues" => effective_policy_values(),
        "estimatedAssessmentCost" => assessment_cost(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "openFindingsCount" => [integer()],
        "organizationId" => String.t() | atom(),
        "ouId" => String.t() | atom(),
        "permissionModel" => permission_model(),
        "policyArn" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "reportConfiguration" => service_report_configuration(),
        "rerunAssessment" => [boolean()],
        "resolvedFindingsCount" => [integer()],
        "resourceDiscovery" => resource_discovery_status(),
        "serviceArn" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      infrastructure_and_code_recommendation() :: %{
        "suggestedChanges" => list(String.t() | atom())
      }

  """
  @type infrastructure_and_code_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_report_output_configuration() :: %{
        "bucketOwner" => String.t() | atom(),
        "bucketPath" => String.t() | atom()
      }

  """
  @type s3_report_output_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_journey_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("policyArn") => String.t() | atom(),
        required("systemArn") => String.t() | atom(),
        required("userJourneyId") => String.t() | atom()
      }

  """
  @type update_user_journey_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_report_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("reportType") => list(any()),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type create_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_journey_request() :: %{
        required("systemArn") => String.t() | atom(),
        required("userJourneyId") => String.t() | atom()
      }

  """
  @type delete_user_journey_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_function_resources_request() :: %{
        required("resources") => list([String.t() | atom()]()),
        required("serviceArn") => String.t() | atom(),
        required("serviceFunctionId") => String.t() | atom()
      }

  """
  @type create_service_function_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dependency_response() :: %{
        "comment" => [String.t() | atom()],
        "criticality" => list(any()),
        "dependencyId" => String.t() | atom(),
        "dependencyName" => [String.t() | atom()],
        "location" => [String.t() | atom()],
        "provider" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_dependency_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_app_request() :: %{
        optional("associatedSystems") => list(associated_system()),
        optional("clientToken") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("policyArn") => String.t() | atom(),
        optional("skipManuallyAddedResources") => [boolean()],
        optional("tags") => map(),
        required("v1AppArn") => String.t() | atom()
      }

  """
  @type import_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_workflow_updated_metadata() :: %{
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_workflow_updated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_request() :: %{
        required("serviceArn") => String.t() | atom()
      }

  """
  @type get_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_created_metadata() :: %{}

  """
  @type system_created_metadata() :: %{}

  @typedoc """

  ## Example:

      get_policy_request() :: %{
        required("policyArn") => String.t() | atom()
      }

  """
  @type get_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_system_response() :: %{
        "system" => system()
      }

  """
  @type create_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_functions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_service_functions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      edge_property_summary() :: %{
        "label" => [String.t() | atom()],
        "topologyType" => list(any())
      }

  """
  @type edge_property_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dependency_discovery_config() :: %{
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type dependency_discovery_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_response() :: %{
        "service" => service()
      }

  """
  @type update_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      observability_recommendation() :: %{
        "suggestedChanges" => list(String.t() | atom())
      }

  """
  @type observability_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_source() :: %{
        "policyName" => String.t() | atom(),
        "source" => list(any()),
        "value" => [integer()]
      }

  """
  @type target_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_policy_request() :: %{
        optional("availabilitySlo") => availability_slo(),
        optional("clientToken") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("multiAzDisasterRecoveryApproach") => list(any()),
        optional("multiRegionDisasterRecoveryApproach") => list(any()),
        optional("tags") => map(),
        required("v1PolicyArn") => String.t() | atom()
      }

  """
  @type import_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_policy_disassociated_metadata() :: %{
        "policyArn" => String.t() | atom(),
        "policyName" => [String.t() | atom()]
      }

  """
  @type service_policy_disassociated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tag() :: %{
        "key" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_request() :: %{
        required("policyArn") => String.t() | atom()
      }

  """
  @type delete_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_system_events_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("eventTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startTime") => [non_neg_integer()],
        required("systemArn") => String.t() | atom()
      }

  """
  @type list_system_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_request() :: %{
        optional("associatedSystems") => list(associated_system()),
        optional("clientToken") => String.t() | atom(),
        optional("dependencyDiscovery") => list(any()),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("policyArn") => String.t() | atom(),
        optional("reportConfiguration") => service_report_configuration(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("permissionModel") => permission_model(),
        required("regions") => list(String.t() | atom())
      }

  """
  @type create_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      effective_policy_values() :: %{
        "availabilitySlo" => slo_source(),
        "dataRecoveryTimeBetweenBackups" => target_source(),
        "multiAzDrApproach" => disaster_recovery_source(),
        "multiAzRpo" => target_source(),
        "multiAzRto" => target_source(),
        "multiRegionDrApproach" => disaster_recovery_source(),
        "multiRegionRpo" => target_source(),
        "multiRegionRto" => target_source()
      }

  """
  @type effective_policy_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_resources_associated_metadata() :: %{
        "resourceCount" => [integer()],
        "resourceTypes" => list([String.t() | atom()]())
      }

  """
  @type service_resources_associated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_resource() :: %{
        "inputSource" => input_source(),
        "resource" => resource(),
        "resourceIdentifier" => [String.t() | atom()]
      }

  """
  @type service_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_failure_mode_assessment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type start_failure_mode_assessment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_function_resources_removed_metadata() :: %{
        "resourcesRemoved" => list(String.t() | atom()),
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_function_resources_removed_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_function_resources_response() :: %{
        "resources" => list([String.t() | atom()]()),
        "serviceArn" => String.t() | atom(),
        "serviceFunctionId" => String.t() | atom()
      }

  """
  @type delete_service_function_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_system_associated_metadata() :: %{
        "systemArn" => String.t() | atom(),
        "systemName" => [String.t() | atom()]
      }

  """
  @type service_system_associated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_function_response() :: %{
        "serviceFunction" => service_function()
      }

  """
  @type update_service_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_input_source_response() :: %{
        "inputSourceId" => String.t() | atom(),
        "serviceArn" => String.t() | atom()
      }

  """
  @type create_input_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_system_request() :: %{
        required("systemArn") => String.t() | atom()
      }

  """
  @type delete_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "organizationId" => String.t() | atom(),
        "ouId" => String.t() | atom(),
        "servicesCount" => [integer()],
        "systemArn" => String.t() | atom(),
        "systemId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userJourneysCount" => [integer()]
      }

  """
  @type system_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_response() :: %{
        "policy" => policy()
      }

  """
  @type create_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_achievability_updated_metadata() :: %{
        "assessmentId" => [String.t() | atom()],
        "availabilitySlo" => [String.t() | atom()],
        "multiAzRtoRpo" => [String.t() | atom()],
        "multiRegionRtoRpo" => [String.t() | atom()]
      }

  """
  @type service_achievability_updated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      slo_source() :: %{
        "policyName" => String.t() | atom(),
        "source" => list(any()),
        "value" => [float()]
      }

  """
  @type slo_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_policy_associated_metadata() :: %{
        "policyArn" => String.t() | atom(),
        "policyName" => [String.t() | atom()]
      }

  """
  @type system_policy_associated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_failure_mode_assessments_response() :: %{
        "assessmentSummaries" => list(assessment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_failure_mode_assessments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_failure_mode_finding_response() :: %{
        "finding" => finding()
      }

  """
  @type update_failure_mode_finding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_function_response() :: %{
        "serviceFunction" => service_function()
      }

  """
  @type create_service_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_service_associated_metadata() :: %{
        "serviceArn" => String.t() | atom(),
        "serviceName" => [String.t() | atom()],
        "userJourneys" => list([String.t() | atom()]())
      }

  """
  @type system_service_associated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_user_journey_response() :: %{
        "userJourney" => user_journey()
      }

  """
  @type get_user_journey_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("reportType") => list(any()),
        optional("serviceArn") => String.t() | atom()
      }

  """
  @type list_reports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_function_updated_metadata() :: %{
        "resourcesAdded" => list(String.t() | atom()),
        "resourcesRemoved" => list(String.t() | atom()),
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_function_updated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_function_resources_response() :: %{
        "resources" => list([String.t() | atom()]()),
        "serviceArn" => String.t() | atom(),
        "serviceFunctionId" => String.t() | atom()
      }

  """
  @type create_service_function_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_recovery_targets() :: %{
        "timeBetweenBackupsInMinutes" => [integer()]
      }

  """
  @type data_recovery_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_topology_edges_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_service_topology_edges_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_app_response() :: %{
        "service" => service()
      }

  """
  @type import_app_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceSummaries" => list(service_summary())
      }

  """
  @type list_services_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_system_request() :: %{
        required("systemArn") => String.t() | atom()
      }

  """
  @type get_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_journey_response() :: %{
        "userJourney" => user_journey()
      }

  """
  @type update_user_journey_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_function_request() :: %{
        optional("criticality") => list(any()),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        required("serviceArn") => String.t() | atom(),
        required("serviceFunctionId") => String.t() | atom()
      }

  """
  @type update_service_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_failure_mode_findings_response() :: %{
        "findingsSummary" => list(finding_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_failure_mode_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_event() :: %{
        "actor" => event_actor(),
        "eventDetails" => service_event_details(),
        "eventId" => String.t() | atom(),
        "eventType" => list(any()),
        "serviceArn" => String.t() | atom(),
        "timestamp" => [non_neg_integer()]
      }

  """
  @type service_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_report_configuration() :: %{
        "reportOutputs" => list(list())
      }

  """
  @type service_report_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_discovery_status() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t() | atom()],
        "lastRunAt" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type resource_discovery_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_user_journey_created_metadata() :: %{
        "associatedServices" => list(service_reference()),
        "userJourneyName" => [String.t() | atom()]
      }

  """
  @type system_user_journey_created_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_policy_associated_metadata() :: %{
        "policyArn" => String.t() | atom(),
        "policyName" => [String.t() | atom()]
      }

  """
  @type service_policy_associated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_journeys_response() :: %{
        "nextToken" => String.t() | atom(),
        "userJourneySummaries" => list(user_journey_summary())
      }

  """
  @type list_user_journeys_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_system_response() :: %{
        "systemArn" => String.t() | atom()
      }

  """
  @type delete_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_events_response() :: %{
        "events" => list(service_event()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_service_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_event_details() :: %{
        "description" => [String.t() | atom()],
        "eventMetadata" => list(),
        "title" => [String.t() | atom()]
      }

  """
  @type system_event_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_journeys_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("systemArn") => String.t() | atom()
      }

  """
  @type list_user_journeys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      testing_recommendation() :: %{
        "suggestedChanges" => list(String.t() | atom())
      }

  """
  @type testing_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_policy_response() :: %{
        "policy" => policy()
      }

  """
  @type import_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_system_events_response() :: %{
        "events" => list(system_event()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_system_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_function_deleted_metadata() :: %{
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_function_deleted_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_journey_response() :: %{
        "userJourney" => user_journey()
      }

  """
  @type create_user_journey_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_systems_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("ouId") => String.t() | atom()
      }

  """
  @type list_systems_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      multi_region_targets() :: %{
        "disasterRecoveryApproach" => list(any()),
        "rpoInMinutes" => [integer()],
        "rtoInMinutes" => [integer()]
      }

  """
  @type multi_region_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      multi_az_targets() :: %{
        "disasterRecoveryApproach" => list(any()),
        "rpoInMinutes" => [integer()],
        "rtoInMinutes" => [integer()]
      }

  """
  @type multi_az_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_assertion_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("serviceArn") => String.t() | atom(),
        required("text") => String.t() | atom()
      }

  """
  @type create_assertion_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_system_disassociated_metadata() :: %{
        "systemArn" => String.t() | atom(),
        "systemId" => [String.t() | atom()],
        "systemName" => [String.t() | atom()]
      }

  """
  @type service_system_disassociated_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_response() :: %{
        "service" => service()
      }

  """
  @type get_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      report_generation_result() :: %{
        "assessmentId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "reportOutput" => list(),
        "reportType" => list(any()),
        "serviceArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type report_generation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_events_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("eventTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startTime") => [non_neg_integer()],
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_service_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_journey_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userJourneyId" => String.t() | atom()
      }

  """
  @type user_journey_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_report_output() :: %{
        "s3ObjectKey" => [String.t() | atom()]
      }

  """
  @type s3_report_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_failure_mode_assessment_response() :: %{
        "assessmentId" => String.t() | atom(),
        "assessmentStatus" => list(any()),
        "serviceArn" => String.t() | atom(),
        "startedAt" => [non_neg_integer()]
      }

  """
  @type start_failure_mode_assessment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_function_resources_added_metadata() :: %{
        "resourcesAdded" => list(String.t() | atom()),
        "serviceFunctionId" => [String.t() | atom()],
        "serviceFunctionName" => [String.t() | atom()]
      }

  """
  @type service_function_resources_added_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_request() :: %{
        required("serviceArn") => String.t() | atom()
      }

  """
  @type delete_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_system_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("sharingEnabled") => [boolean()],
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_topology_edges_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceTopologyEdgeSummaries" => list(service_topology_edge_summary())
      }

  """
  @type list_service_topology_edges_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "comment" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "failureCategory" => list(any()),
        "findingId" => String.t() | atom(),
        "infrastructureAndCodeRecommendations" => list(infrastructure_and_code_recommendation()),
        "name" => [String.t() | atom()],
        "observabilityRecommendations" => list(observability_recommendation()),
        "policyComponent" => list(any()),
        "reasoning" => [String.t() | atom()],
        "serviceFunctions" => list(String.t() | atom()),
        "severity" => list(any()),
        "status" => list(any()),
        "testingRecommendations" => list(testing_recommendation()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_journey() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userJourneyId" => String.t() | atom()
      }

  """
  @type user_journey() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_request() :: %{
        optional("awsRegion") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("serviceFunctionId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type list_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_function() :: %{
        "createdAt" => [non_neg_integer()],
        "criticality" => list(any()),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceCount" => [integer()],
        "serviceArn" => String.t() | atom(),
        "serviceFunctionId" => String.t() | atom(),
        "source" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type service_function() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      achievability() :: %{
        "availabilitySlo" => list(any()),
        "multiAzRtoRpo" => list(any()),
        "multiRegionRtoRpo" => list(any())
      }

  """
  @type achievability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_request() :: %{
        optional("availabilitySlo") => availability_slo(),
        optional("dataRecovery") => data_recovery_targets(),
        optional("description") => String.t() | atom(),
        optional("multiAz") => multi_az_targets(),
        optional("multiRegion") => multi_region_targets(),
        required("policyArn") => String.t() | atom()
      }

  """
  @type update_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_systems_response() :: %{
        "nextToken" => String.t() | atom(),
        "systemSummaries" => list(system_summary())
      }

  """
  @type list_systems_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_deleted_metadata() :: %{}

  """
  @type service_deleted_metadata() :: %{}

  @typedoc """

  ## Example:

      create_service_response() :: %{
        "service" => service()
      }

  """
  @type create_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_summary() :: %{
        "accountId" => String.t() | atom(),
        "achievability" => achievability(),
        "assessmentStatus" => list(any()),
        "associatedSystems" => list(associated_system()),
        "createdAt" => [non_neg_integer()],
        "dependencyDiscovery" => dependency_discovery_config(),
        "name" => String.t() | atom(),
        "openFindingsCount" => [integer()],
        "organizationId" => String.t() | atom(),
        "ouId" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "resolvedFindingsCount" => [integer()],
        "serviceArn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type service_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dependencies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("queryRangeEndTime") => [non_neg_integer()],
        optional("queryRangeGranularity") => list(any()),
        optional("queryRangeStartTime") => [non_neg_integer()],
        optional("serviceArn") => String.t() | atom()
      }

  """
  @type list_dependencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_assertion_response() :: %{
        "assertionId" => String.t() | atom()
      }

  """
  @type delete_assertion_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      availability_slo() :: %{
        "target" => [float()]
      }

  """
  @type availability_slo() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_summary() :: %{
        "description" => String.t() | atom(),
        "failureCategory" => list(any()),
        "findingId" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "policyComponent" => list(any()),
        "serviceArn" => String.t() | atom(),
        "severity" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type finding_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assertion_deleted_metadata() :: %{
        "assertionId" => [String.t() | atom()],
        "assertionName" => [String.t() | atom()]
      }

  """
  @type assertion_deleted_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_topology_edge_summary() :: %{
        "destinationResourceIdentifier" => [String.t() | atom()],
        "properties" => list(edge_property_summary()),
        "sourceResourceIdentifier" => [String.t() | atom()]
      }

  """
  @type service_topology_edge_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_function_response() :: %{
        "serviceFunctionId" => String.t() | atom()
      }

  """
  @type delete_service_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_failure_mode_finding_request() :: %{
        optional("comment") => [String.t() | atom()],
        required("findingId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom(),
        required("status") => list(any())
      }

  """
  @type update_failure_mode_finding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsRegion" => String.t() | atom(),
        "identifier" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_failure_mode_finding_response() :: %{
        "finding" => finding()
      }

  """
  @type get_failure_mode_finding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assertion_created_metadata() :: %{
        "assertionId" => [String.t() | atom()],
        "assertionName" => [String.t() | atom()]
      }

  """
  @type assertion_created_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_response() :: %{
        "nextToken" => String.t() | atom(),
        "policySummaries" => list(policy_summary())
      }

  """
  @type list_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_response() :: %{
        "policy" => policy()
      }

  """
  @type update_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_range() :: %{
        "dataPoints" => list(query_data_point()),
        "endTime" => [non_neg_integer()],
        "granularity" => list(any()),
        "startTime" => [non_neg_integer()]
      }

  """
  @type query_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_assertion_response() :: %{
        "assertion" => assertion()
      }

  """
  @type create_assertion_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assessment_cost() :: %{
        "amount" => [float()],
        "currency" => list(any())
      }

  """
  @type assessment_cost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_assertion_request() :: %{
        optional("text") => String.t() | atom(),
        required("assertionId") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type update_assertion_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_created_metadata() :: %{}

  """
  @type service_created_metadata() :: %{}

  @typedoc """

  ## Example:

      update_system_request() :: %{
        optional("description") => String.t() | atom(),
        optional("sharingEnabled") => [boolean()],
        required("systemArn") => String.t() | atom()
      }

  """
  @type update_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_summary() :: %{
        "associatedServiceCount" => [integer()],
        "availabilitySlo" => availability_slo(),
        "createdAt" => [non_neg_integer()],
        "dataRecovery" => data_recovery_targets(),
        "multiAz" => multi_az_targets(),
        "multiRegion" => multi_region_targets(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_source() :: %{
        "identifier" => [String.t() | atom()],
        "type" => list(any())
      }

  """
  @type input_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dependencies_response() :: %{
        "dependencySummaries" => list(dependency_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_dependencies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_system_response() :: %{
        "system" => system()
      }

  """
  @type get_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_journey_changes() :: %{
        "associatedServices" => service_reference_changes(),
        "journeyDescription" => string_change()
      }

  """
  @type user_journey_changes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_function_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("criticality") => list(any()),
        required("name") => String.t() | atom(),
        required("serviceArn") => String.t() | atom()
      }

  """
  @type create_service_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_system() :: %{
        "systemArn" => String.t() | atom(),
        "systemName" => String.t() | atom(),
        "userJourneyIds" => list(String.t() | atom())
      }

  """
  @type associated_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_reference() :: %{
        "serviceId" => [String.t() | atom()],
        "serviceName" => [String.t() | atom()]
      }

  """
  @type service_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @type create_assertion_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_input_source_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_policy_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_report_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_service_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_service_function_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_service_function_resources_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_system_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_user_journey_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_assertion_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_input_source_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_policy_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_service_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_service_function_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_service_function_resources_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_system_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_user_journey_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_failure_mode_finding_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_policy_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_service_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_system_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_user_journey_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type import_app_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type import_policy_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_assertions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_dependencies_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_failure_mode_assessments_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_failure_mode_findings_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_input_sources_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_policies_errors() ::
          internal_server_exception() | validation_exception() | access_denied_exception()

  @type list_reports_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_resources_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_service_events_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_service_functions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_service_topology_edges_errors() ::
          internal_server_exception() | validation_exception() | access_denied_exception()

  @type list_services_errors() ::
          internal_server_exception() | validation_exception() | access_denied_exception()

  @type list_system_events_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_systems_errors() ::
          internal_server_exception() | validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_user_journeys_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type start_failure_mode_assessment_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_assertion_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_dependency_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_failure_mode_finding_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_policy_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_service_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_service_function_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_system_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_user_journey_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-02-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resiliencehub",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "resiliencehubv2",
      signature_version: "v4",
      signing_name: "resiliencehub",
      target_prefix: nil
    }
  end

  @doc """
  Creates a resilience assertion for a service.
  """
  @spec create_assertion(map(), create_assertion_request(), list()) ::
          {:ok, create_assertion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_assertion_errors()}
  def create_assertion(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-assertion"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an input source for a service.
  """
  @spec create_input_source(map(), create_input_source_request(), list()) ::
          {:ok, create_input_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_input_source_errors()}
  def create_input_source(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-input-source"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a resilience policy that defines availability and disaster recovery
  requirements.
  """
  @spec create_policy(map(), create_policy_request(), list()) ::
          {:ok, create_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  On-demand report creation.

  Idempotent — duplicate requests with same clientToken return existing result.
  """
  @spec create_report(map(), create_report_request(), list()) ::
          {:ok, create_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_report_errors()}
  def create_report(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-report"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a service.
  """
  @spec create_service(map(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-service"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a service function within a service.
  """
  @spec create_service_function(map(), create_service_function_request(), list()) ::
          {:ok, create_service_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_function_errors()}
  def create_service_function(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-service-function"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates resources with a service function.
  """
  @spec create_service_function_resources(
          map(),
          create_service_function_resources_request(),
          list()
        ) ::
          {:ok, create_service_function_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_function_resources_errors()}
  def create_service_function_resources(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-service-function-resources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a system that represents a logical grouping of services.
  """
  @spec create_system(map(), create_system_request(), list()) ::
          {:ok, create_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_system_errors()}
  def create_system(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-system"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a user journey within a system.
  """
  @spec create_user_journey(map(), create_user_journey_request(), list()) ::
          {:ok, create_user_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_journey_errors()}
  def create_user_journey(%Client{} = client, input, options \\ []) do
    url_path = "/v2/create-user-journey"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resilience assertion from a service.
  """
  @spec delete_assertion(map(), delete_assertion_request(), list()) ::
          {:ok, delete_assertion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_assertion_errors()}
  def delete_assertion(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-assertion"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an input source.
  """
  @spec delete_input_source(map(), delete_input_source_request(), list()) ::
          {:ok, delete_input_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_input_source_errors()}
  def delete_input_source(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-input-source"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resilience policy.
  """
  @spec delete_policy(map(), delete_policy_request(), list()) ::
          {:ok, delete_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a service.
  """
  @spec delete_service(map(), delete_service_request(), list()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-service"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a service function.
  """
  @spec delete_service_function(map(), delete_service_function_request(), list()) ::
          {:ok, delete_service_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_function_errors()}
  def delete_service_function(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-function"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes resources from a service function.
  """
  @spec delete_service_function_resources(
          map(),
          delete_service_function_resources_request(),
          list()
        ) ::
          {:ok, delete_service_function_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_function_resources_errors()}
  def delete_service_function_resources(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-service-function-resources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a system.
  """
  @spec delete_system(map(), delete_system_request(), list()) ::
          {:ok, delete_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_system_errors()}
  def delete_system(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-system"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a user journey.
  """
  @spec delete_user_journey(map(), delete_user_journey_request(), list()) ::
          {:ok, delete_user_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_journey_errors()}
  def delete_user_journey(%Client{} = client, input, options \\ []) do
    url_path = "/v2/delete-user-journey"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a finding by findingId.
  """
  @spec get_failure_mode_finding(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_failure_mode_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_failure_mode_finding_errors()}
  def get_failure_mode_finding(%Client{} = client, finding_id, service_arn, options \\ []) do
    url_path = "/v2/get-failure-mode-finding"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  Retrieves a resilience policy by ARN.
  """
  @spec get_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, policy_arn, options \\ []) do
    url_path = "/v2/get-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_arn) do
        [{"policyArn", policy_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a service by ARN.
  """
  @spec get_service(map(), String.t() | atom(), list()) ::
          {:ok, get_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, service_arn, options \\ []) do
    url_path = "/v2/get-service"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a system by ARN.
  """
  @spec get_system(map(), String.t() | atom(), list()) ::
          {:ok, get_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_system_errors()}
  def get_system(%Client{} = client, system_arn, options \\ []) do
    url_path = "/v2/get-system"
    headers = []
    query_params = []

    query_params =
      if !is_nil(system_arn) do
        [{"systemArn", system_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a user journey.
  """
  @spec get_user_journey(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_user_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_journey_errors()}
  def get_user_journey(%Client{} = client, system_arn, user_journey_id, options \\ []) do
    url_path = "/v2/get-user-journey"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_journey_id) do
        [{"userJourneyId", user_journey_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(system_arn) do
        [{"systemArn", system_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a V1 app into the V2 resource model, creating a service with the same
  name.
  """
  @spec import_app(map(), import_app_request(), list()) ::
          {:ok, import_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_app_errors()}
  def import_app(%Client{} = client, input, options \\ []) do
    url_path = "/v2/import-app"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Imports a V1 policy into V2, mapping RTO/RPO values from V1 scenarios.
  """
  @spec import_policy(map(), import_policy_request(), list()) ::
          {:ok, import_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_policy_errors()}
  def import_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v2/import-policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists resilience assertions for a service.
  """
  @spec list_assertions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_assertions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_assertions_errors()}
  def list_assertions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        source \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-assertions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source) do
        [{"source", source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  Lists dependencies discovered for services.
  """
  @spec list_dependencies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dependencies_errors()}
  def list_dependencies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        query_range_end_time \\ nil,
        query_range_granularity \\ nil,
        query_range_start_time \\ nil,
        service_arn \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-dependencies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query_range_start_time) do
        [{"queryRangeStartTime", query_range_start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query_range_granularity) do
        [{"queryRangeGranularity", query_range_granularity} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query_range_end_time) do
        [{"queryRangeEndTime", query_range_end_time} | query_params]
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
  Lists failure mode assessments.
  """
  @spec list_failure_mode_assessments(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_failure_mode_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_failure_mode_assessments_errors()}
  def list_failure_mode_assessments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        options \\ []
      ) do
    url_path = "/v2/list-failure-mode-assessments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  List findings.
  """
  @spec list_failure_mode_findings(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_failure_mode_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_failure_mode_findings_errors()}
  def list_failure_mode_findings(
        %Client{} = client,
        failure_category \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        severity \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-failure-mode-findings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(severity) do
        [{"severity", severity} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
      if !is_nil(failure_category) do
        [{"failureCategory", failure_category} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists input sources for a service.
  """
  @spec list_input_sources(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_input_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_input_sources_errors()}
  def list_input_sources(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-input-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  Lists resilience policies.
  """
  @spec list_policies(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/list-policies"
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
  List reports for a service, or all reports owned by the account if serviceArn is
  not provided.
  """
  @spec list_reports(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reports_errors()}
  def list_reports(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        report_type \\ nil,
        service_arn \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-reports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
      else
        query_params
      end

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
  List resources.
  """
  @spec list_resources(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resources_errors()}
  def list_resources(
        %Client{} = client,
        aws_region \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        service_function_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_function_id) do
        [{"serviceFunctionId", service_function_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists events for a service.
  """
  @spec list_service_events(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_service_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_events_errors()}
  def list_service_events(
        %Client{} = client,
        end_time \\ nil,
        event_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-service-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
      if !is_nil(event_types) do
        [{"eventTypes", event_types} | query_params]
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
  Lists service functions for a service.
  """
  @spec list_service_functions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_service_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_functions_errors()}
  def list_service_functions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        options \\ []
      ) do
    url_path = "/v2/list-functions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  Lists topology edges for a service.
  """
  @spec list_service_topology_edges(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_service_topology_edges_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_topology_edges_errors()}
  def list_service_topology_edges(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_arn,
        options \\ []
      ) do
    url_path = "/v2/list-service-topology-edges"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_arn) do
        [{"serviceArn", service_arn} | query_params]
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
  Lists services.
  """
  @spec list_services(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(
        %Client{} = client,
        account_id \\ nil,
        assessment_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        ou_id \\ nil,
        policy_arn \\ nil,
        system_arn \\ nil,
        user_journey_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-services"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_journey_id) do
        [{"userJourneyId", user_journey_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(system_arn) do
        [{"systemArn", system_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(policy_arn) do
        [{"policyArn", policy_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ou_id) do
        [{"ouId", ou_id} | query_params]
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
      if !is_nil(assessment_status) do
        [{"assessmentStatus", assessment_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists events for a system.
  """
  @spec list_system_events(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_system_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_system_events_errors()}
  def list_system_events(
        %Client{} = client,
        end_time \\ nil,
        event_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        system_arn,
        options \\ []
      ) do
    url_path = "/v2/list-system-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(system_arn) do
        [{"systemArn", system_arn} | query_params]
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
      if !is_nil(event_types) do
        [{"eventTypes", event_types} | query_params]
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
  Lists systems.
  """
  @spec list_systems(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_systems_errors()}
  def list_systems(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        ou_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/list-systems"
    headers = []
    query_params = []

    query_params =
      if !is_nil(ou_id) do
        [{"ouId", ou_id} | query_params]
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
  Lists the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists user journeys for a system.
  """
  @spec list_user_journeys(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_user_journeys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_journeys_errors()}
  def list_user_journeys(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        system_arn,
        options \\ []
      ) do
    url_path = "/v2/list-user-journeys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(system_arn) do
        [{"systemArn", system_arn} | query_params]
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
  Start a failure mode assessment.
  """
  @spec start_failure_mode_assessment(map(), start_failure_mode_assessment_request(), list()) ::
          {:ok, start_failure_mode_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_failure_mode_assessment_errors()}
  def start_failure_mode_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/v2/start-failure-mode-assessment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
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
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
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
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates a resilience assertion.
  """
  @spec update_assertion(map(), update_assertion_request(), list()) ::
          {:ok, update_assertion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_assertion_errors()}
  def update_assertion(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-assertion"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a dependency classification.
  """
  @spec update_dependency(map(), update_dependency_request(), list()) ::
          {:ok, update_dependency_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dependency_errors()}
  def update_dependency(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-dependency"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing finding.
  """
  @spec update_failure_mode_finding(map(), update_failure_mode_finding_request(), list()) ::
          {:ok, update_failure_mode_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_failure_mode_finding_errors()}
  def update_failure_mode_finding(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-failure-mode-finding"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing resilience policy.
  """
  @spec update_policy(map(), update_policy_request(), list()) ::
          {:ok, update_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_errors()}
  def update_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing service.
  """
  @spec update_service(map(), update_service_request(), list()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-service"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a service function.
  """
  @spec update_service_function(map(), update_service_function_request(), list()) ::
          {:ok, update_service_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_function_errors()}
  def update_service_function(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-function"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing system.
  """
  @spec update_system(map(), update_system_request(), list()) ::
          {:ok, update_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_system_errors()}
  def update_system(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-system"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing user journey.
  """
  @spec update_user_journey(map(), update_user_journey_request(), list()) ::
          {:ok, update_user_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_journey_errors()}
  def update_user_journey(%Client{} = client, input, options \\ []) do
    url_path = "/v2/update-user-journey"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
