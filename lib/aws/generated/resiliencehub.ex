# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Resiliencehub do
  @moduledoc """
  Resilience Hub helps you proactively prepare and protect your Amazon Web
  Services applications from
  disruptions.

  It offers continual resiliency assessment and validation that integrates
  into your software development lifecycle. This enables you to uncover resiliency
  weaknesses,
  ensure recovery time objective (RTO) and recovery point objective (RPO) targets
  for your
  applications are met, and resolve issues before they are released into
  production.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      app() :: %{
        "appArn" => String.t() | Atom.t(),
        "assessmentSchedule" => list(any()),
        "awsApplicationArn" => String.t() | Atom.t(),
        "complianceStatus" => list(any()),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "driftStatus" => list(any()),
        "eventSubscriptions" => list(event_subscription()),
        "lastAppComplianceEvaluationTime" => non_neg_integer(),
        "lastDriftEvaluationTime" => non_neg_integer(),
        "lastResiliencyScoreEvaluationTime" => non_neg_integer(),
        "name" => String.t() | Atom.t(),
        "permissionModel" => permission_model(),
        "policyArn" => String.t() | Atom.t(),
        "resiliencyScore" => float(),
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type app() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("requestEntries") => list(update_recommendation_status_request_entry())
      }

  """
  @type batch_update_recommendation_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_compliances_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("componentCompliances") => list(app_component_compliance())
      }

  """
  @type list_app_component_compliances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resources_resolution_status_request() :: %{
        optional("resolutionId") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_resources_resolution_status_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_apps_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("appSummaries") => list(app_summary())
      }

  """
  @type list_apps_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_resource_grouping_recommendation_task_response() :: %{
        "errorMessage" => String.t() | Atom.t(),
        "groupingId" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type describe_resource_grouping_recommendation_task_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_recommendations_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("componentRecommendations") => list(component_recommendation())
      }

  """
  @type list_app_component_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resource_request() :: %{
        optional("awsAccountId") => String.t() | Atom.t(),
        optional("awsRegion") => String.t() | Atom.t(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t() | Atom.t(),
        optional("resourceName") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_metrics_export_response() :: %{
        "errorMessage" => String.t() | Atom.t(),
        "exportLocation" => s3_location(),
        "metricsExportId" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type describe_metrics_export_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_app_component_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_draft_app_version_resource_mappings_response() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("resourceMappings") => list(resource_mapping())
      }

  """
  @type add_draft_app_version_resource_mappings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_request() :: %{
        optional("assessmentSchedule") => list(any()),
        optional("awsApplicationArn") => String.t() | Atom.t(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("eventSubscriptions") => list(event_subscription()),
        optional("permissionModel") => permission_model(),
        optional("policyArn") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type create_app_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resources_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("physicalResources") => list(physical_resource()),
        required("resolutionId") => String.t() | Atom.t()
      }

  """
  @type list_app_version_resources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_response() :: %{
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type delete_app_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type create_app_version_app_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessments_request() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("assessmentName") => String.t() | Atom.t(),
        optional("assessmentStatus") => list(list(any())()),
        optional("complianceStatus") => list(any()),
        optional("invoker") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("reverseOrder") => boolean()
      }

  """
  @type list_app_assessments_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_versions_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("appVersions") => list(app_version_summary())
      }

  """
  @type list_app_versions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_draft_app_version_resource_mappings_response() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("appVersion") => String.t() | Atom.t()
      }

  """
  @type remove_draft_app_version_resource_mappings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resolve_app_version_resources_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type resolve_app_version_resources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_app_version_app_component_request() :: %{
        optional("additionalInfo") => map(),
        optional("name") => String.t() | Atom.t(),
        optional("type") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("id") => String.t() | Atom.t()
      }

  """
  @type update_app_version_app_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_draft_app_version_template_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appTemplateBody") => String.t() | Atom.t()
      }

  """
  @type put_draft_app_version_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_mapping() :: %{
        "appRegistryAppName" => String.t() | Atom.t(),
        "eksSourceName" => String.t() | Atom.t(),
        "logicalStackName" => String.t() | Atom.t(),
        "mappingType" => list(any()),
        "physicalResourceId" => physical_resource_id(),
        "resourceGroupName" => String.t() | Atom.t(),
        "resourceName" => String.t() | Atom.t(),
        "terraformSourceName" => String.t() | Atom.t()
      }

  """
  @type resource_mapping() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_unsupported_app_version_resources_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("resolutionId") => String.t() | Atom.t(),
        required("unsupportedResources") => list(unsupported_resource())
      }

  """
  @type list_unsupported_app_version_resources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resiliency_score() :: %{
        "componentScore" => map(),
        "disruptionScore" => map(),
        "score" => float()
      }

  """
  @type resiliency_score() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unsupported_resource() :: %{
        "logicalResourceId" => logical_resource_id(),
        "physicalResourceId" => physical_resource_id(),
        "resourceType" => String.t() | Atom.t(),
        "unsupportedResourceStatus" => String.t() | Atom.t()
      }

  """
  @type unsupported_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_resource_request() :: %{
        optional("additionalInfo") => map(),
        optional("awsAccountId") => String.t() | Atom.t(),
        optional("awsRegion") => String.t() | Atom.t(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("resourceName") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appComponents") => list(String.t() | Atom.t()),
        required("logicalResourceId") => logical_resource_id(),
        required("physicalResourceId") => String.t() | Atom.t(),
        required("resourceType") => String.t() | Atom.t()
      }

  """
  @type create_app_version_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_resource_grouping_recommendation_task_request() :: %{
        optional("groupingId") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type describe_resource_grouping_recommendation_task_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      alarm() :: %{
        "alarmArn" => String.t() | Atom.t(),
        "source" => String.t() | Atom.t()
      }

  """
  @type alarm() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      config_recommendation() :: %{
        "appComponentName" => String.t() | Atom.t(),
        "compliance" => map(),
        "cost" => cost(),
        "description" => String.t() | Atom.t(),
        "haArchitecture" => list(any()),
        "name" => String.t() | Atom.t(),
        "optimizationType" => list(any()),
        "recommendationCompliance" => map(),
        "referenceId" => String.t() | Atom.t(),
        "suggestedChanges" => list(String.t() | Atom.t())
      }

  """
  @type config_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      event_subscription() :: %{
        "eventType" => list(any()),
        "name" => String.t() | Atom.t(),
        "snsTopicArn" => String.t() | Atom.t()
      }

  """
  @type event_subscription() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_template_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_resource_grouping_recommendation_task_response() :: %{
        "appArn" => String.t() | Atom.t(),
        "errorMessage" => String.t() | Atom.t(),
        "groupingId" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type start_resource_grouping_recommendation_task_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      import_resources_to_draft_app_version_request() :: %{
        optional("eksSources") => list(eks_source()),
        optional("importStrategy") => list(any()),
        optional("sourceArns") => list(String.t() | Atom.t()),
        optional("terraformSources") => list(terraform_source()),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type import_resources_to_draft_app_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_input_source_response() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("appInputSource") => app_input_source()
      }

  """
  @type delete_app_input_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_app_assessment_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("assessmentName") => String.t() | Atom.t()
      }

  """
  @type start_app_assessment_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_app_components_response() :: %{
        optional("appComponents") => list(app_component()),
        optional("nextToken") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_app_version_app_components_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_response() :: %{
        "appArn" => String.t() | Atom.t(),
        "failedEntries" => list(batch_update_recommendation_status_failed_entry()),
        "successfulEntries" => list(batch_update_recommendation_status_successful_entry())
      }

  """
  @type batch_update_recommendation_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_unsupported_app_version_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("resolutionId") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_unsupported_app_version_resources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_input_sources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_app_input_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_test_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failure_policy() :: %{
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer()
      }

  """
  @type failure_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_recommendation_template_response() :: %{
        optional("recommendationTemplate") => recommendation_template()
      }

  """
  @type create_recommendation_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_response() :: %{
        required("app") => app()
      }

  """
  @type describe_app_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disruption_compliance() :: %{
        "achievableRpoInSecs" => integer(),
        "achievableRtoInSecs" => integer(),
        "complianceStatus" => list(any()),
        "currentRpoInSecs" => integer(),
        "currentRtoInSecs" => integer(),
        "message" => String.t() | Atom.t(),
        "rpoDescription" => String.t() | Atom.t(),
        "rpoReferenceId" => String.t() | Atom.t(),
        "rtoDescription" => String.t() | Atom.t(),
        "rtoReferenceId" => String.t() | Atom.t()
      }

  """
  @type disruption_compliance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resiliency_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("policyName") => String.t() | Atom.t()
      }

  """
  @type list_resiliency_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_recommendation_status_request_entry() :: %{
        "appComponentId" => String.t() | Atom.t(),
        "entryId" => String.t() | Atom.t(),
        "excludeReason" => list(any()),
        "excluded" => boolean(),
        "item" => update_recommendation_status_item(),
        "referenceId" => String.t() | Atom.t()
      }

  """
  @type update_recommendation_status_request_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      terraform_source() :: %{
        "s3StateFileUrl" => String.t() | Atom.t()
      }

  """
  @type terraform_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("resolutionId") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_app_version_resources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_errors_details() :: %{
        "hasMoreErrors" => boolean(),
        "resourceErrors" => list(resource_error())
      }

  """
  @type resource_errors_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_recommendation() :: %{
        "appComponentName" => String.t() | Atom.t(),
        "configRecommendations" => list(config_recommendation()),
        "recommendationStatus" => list(any())
      }

  """
  @type component_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      assessment_risk_recommendation() :: %{
        "appComponents" => list(String.t() | Atom.t()),
        "recommendation" => String.t() | Atom.t(),
        "risk" => String.t() | Atom.t()
      }

  """
  @type assessment_risk_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type create_app_version_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      logical_resource_id() :: %{
        "eksSourceName" => String.t() | Atom.t(),
        "identifier" => String.t() | Atom.t(),
        "logicalStackName" => String.t() | Atom.t(),
        "resourceGroupName" => String.t() | Atom.t(),
        "terraformSourceName" => String.t() | Atom.t()
      }

  """
  @type logical_resource_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type delete_app_version_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_assessment_request() :: %{
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type describe_app_assessment_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recommendation_item() :: %{
        "alreadyImplemented" => boolean(),
        "discoveredAlarm" => alarm(),
        "excludeReason" => list(any()),
        "excluded" => boolean(),
        "latestDiscoveredExperiment" => experiment(),
        "resourceId" => String.t() | Atom.t(),
        "targetAccountId" => String.t() | Atom.t(),
        "targetRegion" => String.t() | Atom.t()
      }

  """
  @type recommendation_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resource_mappings_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("resourceMappings") => list(resource_mapping())
      }

  """
  @type list_app_version_resource_mappings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_draft_app_version_template_response() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("appVersion") => String.t() | Atom.t()
      }

  """
  @type put_draft_app_version_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_compliance_drifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_app_assessment_compliance_drifts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_input_source_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("eksSourceClusterNamespace") => eks_source_cluster_namespace(),
        optional("sourceArn") => String.t() | Atom.t(),
        optional("terraformSource") => terraform_source(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type delete_app_input_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_suggested_resiliency_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_suggested_resiliency_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_failed_entry() :: %{
        "entryId" => String.t() | Atom.t(),
        "errorMessage" => String.t() | Atom.t()
      }

  """
  @type batch_update_recommendation_status_failed_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      alarm_recommendation() :: %{
        "appComponentName" => String.t() | Atom.t(),
        "appComponentNames" => list(String.t() | Atom.t()),
        "description" => String.t() | Atom.t(),
        "items" => list(recommendation_item()),
        "name" => String.t() | Atom.t(),
        "prerequisite" => String.t() | Atom.t(),
        "recommendationId" => String.t() | Atom.t(),
        "recommendationStatus" => list(any()),
        "referenceId" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type alarm_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_templates_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("recommendationTemplates") => list(recommendation_template())
      }

  """
  @type list_recommendation_templates_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_metrics_export_response() :: %{
        "metricsExportId" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type start_metrics_export_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scoring_component_resiliency_score() :: %{
        "excludedCount" => float(),
        "outstandingCount" => float(),
        "possibleScore" => float(),
        "score" => float()
      }

  """
  @type scoring_component_resiliency_score() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_identifier() :: %{
        "logicalResourceId" => logical_resource_id(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type resource_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_resource_grouping_recommendations_response() :: %{
        "appArn" => String.t() | Atom.t(),
        "failedEntries" => list(failed_grouping_recommendation_entry())
      }

  """
  @type accept_resource_grouping_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_resiliency_policy_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("dataLocationConstraint") => list(any()),
        optional("policyDescription") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("policy") => map(),
        required("policyName") => String.t() | Atom.t(),
        required("tier") => list(any())
      }

  """
  @type create_resiliency_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessments_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentSummaries") => list(app_assessment_summary())
      }

  """
  @type list_app_assessments_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_sop_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_sop_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_resource_grouping_recommendations_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("entries") => list(accept_grouping_recommendation_entry())
      }

  """
  @type accept_resource_grouping_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resource_mappings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_app_version_resource_mappings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_draft_app_version_resource_mappings_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("resourceMappings") => list(resource_mapping())
      }

  """
  @type add_draft_app_version_resource_mappings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_metrics_export_request() :: %{
        required("metricsExportId") => String.t() | Atom.t()
      }

  """
  @type describe_metrics_export_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_app_component_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("id") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_app_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type update_resiliency_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      publish_app_version_response() :: %{
        optional("appVersion") => String.t() | Atom.t(),
        optional("identifier") => float(),
        optional("versionName") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type publish_app_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type update_app_version_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_successful_entry() :: %{
        "appComponentId" => String.t() | Atom.t(),
        "entryId" => String.t() | Atom.t(),
        "excludeReason" => list(any()),
        "excluded" => boolean(),
        "item" => update_recommendation_status_item(),
        "referenceId" => String.t() | Atom.t()
      }

  """
  @type batch_update_recommendation_status_successful_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type create_resiliency_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_response() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type update_app_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      field() :: %{
        "aggregation" => list(any()),
        "name" => String.t() | Atom.t()
      }

  """
  @type field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reject_grouping_recommendation_entry() :: %{
        "groupingRecommendationId" => String.t() | Atom.t(),
        "rejectionReason" => list(any())
      }

  """
  @type reject_grouping_recommendation_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_metrics_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "rows" => list(list(String.t() | Atom.t())())
      }

  """
  @type list_metrics_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_alarm_recommendations_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("alarmRecommendations") => list(alarm_recommendation())
      }

  """
  @type list_alarm_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      eks_source_cluster_namespace() :: %{
        "eksClusterArn" => String.t() | Atom.t(),
        "namespace" => String.t() | Atom.t()
      }

  """
  @type eks_source_cluster_namespace() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_draft_app_version_resources_import_status_request() :: %{
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type describe_draft_app_version_resources_import_status_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      describe_app_version_template_response() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appTemplateBody") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type describe_resiliency_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_component() :: %{
        "additionalInfo" => map(),
        "id" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "type" => String.t() | Atom.t()
      }

  """
  @type app_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recommendation_disruption_compliance() :: %{
        "expectedComplianceStatus" => list(any()),
        "expectedRpoDescription" => String.t() | Atom.t(),
        "expectedRpoInSecs" => integer(),
        "expectedRtoDescription" => String.t() | Atom.t(),
        "expectedRtoInSecs" => integer()
      }

  """
  @type recommendation_disruption_compliance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_suggested_resiliency_policies_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("resiliencyPolicies") => list(resiliency_policy())
      }

  """
  @type list_suggested_resiliency_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_error() :: %{
        "logicalResourceId" => String.t() | Atom.t(),
        "physicalResourceId" => String.t() | Atom.t(),
        "reason" => String.t() | Atom.t()
      }

  """
  @type resource_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_grouping_recommendation_entry() :: %{
        "groupingRecommendationId" => String.t() | Atom.t()
      }

  """
  @type accept_grouping_recommendation_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "field" => String.t() | Atom.t(),
        "operator" => list(any()),
        "value" => String.t() | Atom.t()
      }

  """
  @type condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type s3_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resolve_app_version_resources_response() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("resolutionId") => String.t() | Atom.t(),
        required("status") => list(any())
      }

  """
  @type resolve_app_version_resources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_input_source() :: %{
        "eksSourceClusterNamespace" => eks_source_cluster_namespace(),
        "importType" => list(any()),
        "resourceCount" => integer(),
        "sourceArn" => String.t() | Atom.t(),
        "sourceName" => String.t() | Atom.t(),
        "terraformSource" => terraform_source()
      }

  """
  @type app_input_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_recommendation_template_response() :: %{
        required("recommendationTemplateArn") => String.t() | Atom.t(),
        required("status") => list(any())
      }

  """
  @type delete_recommendation_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      physical_resource() :: %{
        "additionalInfo" => map(),
        "appComponents" => list(app_component()),
        "excluded" => boolean(),
        "logicalResourceId" => logical_resource_id(),
        "parentResourceName" => String.t() | Atom.t(),
        "physicalResourceId" => physical_resource_id(),
        "resourceName" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t(),
        "sourceType" => list(any())
      }

  """
  @type physical_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sort() :: %{
        "ascending" => boolean(),
        "field" => String.t() | Atom.t()
      }

  """
  @type sort() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_summary() :: %{
        "appArn" => String.t() | Atom.t(),
        "assessmentSchedule" => list(any()),
        "awsApplicationArn" => String.t() | Atom.t(),
        "complianceStatus" => list(any()),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "driftStatus" => list(any()),
        "lastAppComplianceEvaluationTime" => non_neg_integer(),
        "name" => String.t() | Atom.t(),
        "resiliencyScore" => float(),
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer(),
        "status" => list(any())
      }

  """
  @type app_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reject_resource_grouping_recommendations_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("entries") => list(reject_grouping_recommendation_entry())
      }

  """
  @type reject_resource_grouping_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_recommendations_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("testRecommendations") => list(test_recommendation())
      }

  """
  @type list_test_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_response() :: %{
        required("app") => app()
      }

  """
  @type update_app_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_drift() :: %{
        "appArn" => String.t() | Atom.t(),
        "appVersion" => String.t() | Atom.t(),
        "diffType" => list(any()),
        "referenceId" => String.t() | Atom.t(),
        "resourceIdentifier" => resource_identifier()
      }

  """
  @type resource_drift() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_assessment_summary() :: %{
        "appArn" => String.t() | Atom.t(),
        "appVersion" => String.t() | Atom.t(),
        "assessmentArn" => String.t() | Atom.t(),
        "assessmentName" => String.t() | Atom.t(),
        "assessmentStatus" => list(any()),
        "complianceStatus" => list(any()),
        "cost" => cost(),
        "driftStatus" => list(any()),
        "endTime" => non_neg_integer(),
        "invoker" => list(any()),
        "message" => String.t() | Atom.t(),
        "resiliencyScore" => float(),
        "startTime" => non_neg_integer(),
        "versionName" => String.t() | Atom.t()
      }

  """
  @type app_assessment_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      eks_source() :: %{
        "eksClusterArn" => String.t() | Atom.t(),
        "namespaces" => list(String.t() | Atom.t())
      }

  """
  @type eks_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("forceDelete") => boolean(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type delete_app_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_resource_drifts_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "resourceDrifts" => list(resource_drift())
      }

  """
  @type list_app_assessment_resource_drifts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_resource_request() :: %{
        optional("additionalInfo") => map(),
        optional("appComponents") => list(String.t() | Atom.t()),
        optional("awsAccountId") => String.t() | Atom.t(),
        optional("awsRegion") => String.t() | Atom.t(),
        optional("excluded") => boolean(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t() | Atom.t(),
        optional("resourceName") => String.t() | Atom.t(),
        optional("resourceType") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type update_app_version_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      publish_app_version_request() :: %{
        optional("versionName") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type publish_app_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_request() :: %{
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type describe_app_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "errorMessage" => String.t() | Atom.t()
      }

  """
  @type error_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_grouping_recommendations_response() :: %{
        "groupingRecommendations" => list(grouping_recommendation()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_resource_grouping_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resiliency_policy_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("policyArn") => String.t() | Atom.t()
      }

  """
  @type delete_resiliency_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_compliance_drifts_response() :: %{
        "complianceDrifts" => list(compliance_drift()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_app_assessment_compliance_drifts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type delete_app_version_app_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_app_version_app_component_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("id") => String.t() | Atom.t()
      }

  """
  @type delete_app_version_app_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_resources_to_draft_app_version_response() :: %{
        optional("eksSources") => list(eks_source()),
        optional("sourceArns") => list(String.t() | Atom.t()),
        optional("terraformSources") => list(terraform_source()),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("status") => list(any())
      }

  """
  @type import_resources_to_draft_app_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_version_summary() :: %{
        "appVersion" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "identifier" => float(),
        "versionName" => String.t() | Atom.t()
      }

  """
  @type app_version_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_app_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type list_app_version_app_components_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      permission_model() :: %{
        "crossAccountRoleArns" => list(String.t() | Atom.t()),
        "invokerRoleName" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type permission_model() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_resiliency_policy_request() :: %{
        optional("dataLocationConstraint") => list(any()),
        optional("policy") => map(),
        optional("policyDescription") => String.t() | Atom.t(),
        optional("policyName") => String.t() | Atom.t(),
        optional("tier") => list(any()),
        required("policyArn") => String.t() | Atom.t()
      }

  """
  @type update_resiliency_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_input_sources_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("appInputSources") => list(app_input_source())
      }

  """
  @type list_app_input_sources_response() :: %{String.t() | Atom.t() => any()}

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

      resiliency_policy() :: %{
        "creationTime" => non_neg_integer(),
        "dataLocationConstraint" => list(any()),
        "estimatedCostTier" => list(any()),
        "policy" => map(),
        "policyArn" => String.t() | Atom.t(),
        "policyDescription" => String.t() | Atom.t(),
        "policyName" => String.t() | Atom.t(),
        "tags" => map(),
        "tier" => list(any())
      }

  """
  @type resiliency_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_request() :: %{
        optional("assessmentSchedule") => list(any()),
        optional("clearResiliencyPolicyArn") => boolean(),
        optional("description") => String.t() | Atom.t(),
        optional("eventSubscriptions") => list(event_subscription()),
        optional("permissionModel") => permission_model(),
        optional("policyArn") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type update_app_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_assessment() :: %{
        "appArn" => String.t() | Atom.t(),
        "appVersion" => String.t() | Atom.t(),
        "assessmentArn" => String.t() | Atom.t(),
        "assessmentName" => String.t() | Atom.t(),
        "assessmentStatus" => list(any()),
        "compliance" => map(),
        "complianceStatus" => list(any()),
        "cost" => cost(),
        "driftStatus" => list(any()),
        "endTime" => non_neg_integer(),
        "invoker" => list(any()),
        "message" => String.t() | Atom.t(),
        "policy" => resiliency_policy(),
        "resiliencyScore" => resiliency_score(),
        "resourceErrorsDetails" => resource_errors_details(),
        "startTime" => non_neg_integer(),
        "summary" => assessment_summary(),
        "tags" => map(),
        "versionName" => String.t() | Atom.t()
      }

  """
  @type app_assessment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_recommendation() :: %{
        "appComponentId" => String.t() | Atom.t(),
        "appComponentName" => String.t() | Atom.t(),
        "dependsOnAlarms" => list(String.t() | Atom.t()),
        "description" => String.t() | Atom.t(),
        "intent" => String.t() | Atom.t(),
        "items" => list(recommendation_item()),
        "name" => String.t() | Atom.t(),
        "prerequisite" => String.t() | Atom.t(),
        "recommendationId" => String.t() | Atom.t(),
        "recommendationStatus" => list(any()),
        "referenceId" => String.t() | Atom.t(),
        "risk" => list(any()),
        "type" => list(any())
      }

  """
  @type test_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_templates_request() :: %{
        optional("assessmentArn") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("recommendationTemplateArn") => String.t() | Atom.t(),
        optional("reverseOrder") => boolean(),
        optional("status") => list(list(any())())
      }

  """
  @type list_recommendation_templates_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_app_assessment_response() :: %{
        required("assessment") => app_assessment()
      }

  """
  @type start_app_assessment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_recommendation_status_item() :: %{
        "resourceId" => String.t() | Atom.t(),
        "targetAccountId" => String.t() | Atom.t(),
        "targetRegion" => String.t() | Atom.t()
      }

  """
  @type update_recommendation_status_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_alarm_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_alarm_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_resource_grouping_recommendation_task_request() :: %{
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type start_resource_grouping_recommendation_task_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_request() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type update_app_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_resiliency_policy_request() :: %{
        required("policyArn") => String.t() | Atom.t()
      }

  """
  @type describe_resiliency_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_assessment_response() :: %{
        required("assessment") => app_assessment()
      }

  """
  @type describe_app_assessment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_app_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_apps_request() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("awsApplicationArn") => String.t() | Atom.t(),
        optional("fromLastAssessmentTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("name") => String.t() | Atom.t(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("reverseOrder") => boolean(),
        optional("toLastAssessmentTime") => non_neg_integer()
      }

  """
  @type list_apps_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type update_app_version_app_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recommendation_template() :: %{
        "appArn" => String.t() | Atom.t(),
        "assessmentArn" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "format" => list(any()),
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "needsReplacements" => boolean(),
        "recommendationIds" => list(String.t() | Atom.t()),
        "recommendationTemplateArn" => String.t() | Atom.t(),
        "recommendationTypes" => list(list(any())()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "tags" => map(),
        "templatesLocation" => s3_location()
      }

  """
  @type recommendation_template() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_metrics_request() :: %{
        optional("conditions") => list(condition()),
        optional("dataSource") => String.t() | Atom.t(),
        optional("fields") => list(field()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sorts") => list(sort())
      }

  """
  @type list_metrics_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resiliency_policy_response() :: %{
        required("policyArn") => String.t() | Atom.t()
      }

  """
  @type delete_resiliency_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_resource_request() :: %{
        optional("awsAccountId") => String.t() | Atom.t(),
        optional("awsRegion") => String.t() | Atom.t(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t() | Atom.t(),
        optional("resourceName") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type delete_app_version_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_sop_recommendations_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("sopRecommendations") => list(sop_recommendation())
      }

  """
  @type list_sop_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_assessment_response() :: %{
        required("assessmentArn") => String.t() | Atom.t(),
        required("assessmentStatus") => list(any())
      }

  """
  @type delete_app_assessment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      physical_resource_id() :: %{
        "awsAccountId" => String.t() | Atom.t(),
        "awsRegion" => String.t() | Atom.t(),
        "identifier" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type physical_resource_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment() :: %{
        "experimentArn" => String.t() | Atom.t(),
        "experimentTemplateId" => String.t() | Atom.t()
      }

  """
  @type experiment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_response() :: %{
        required("app") => app()
      }

  """
  @type create_app_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_compliances_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_app_component_compliances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_versions_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("startTime") => non_neg_integer(),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type list_app_versions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compliance_drift() :: %{
        "actualReferenceId" => String.t() | Atom.t(),
        "actualValue" => map(),
        "appId" => String.t() | Atom.t(),
        "appVersion" => String.t() | Atom.t(),
        "diffType" => list(any()),
        "driftType" => list(any()),
        "entityId" => String.t() | Atom.t(),
        "entityType" => String.t() | Atom.t(),
        "expectedReferenceId" => String.t() | Atom.t(),
        "expectedValue" => map()
      }

  """
  @type compliance_drift() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_app_component_request() :: %{
        optional("additionalInfo") => map(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("id") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t(),
        required("type") => String.t() | Atom.t()
      }

  """
  @type create_app_version_app_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grouping_app_component() :: %{
        "appComponentId" => String.t() | Atom.t(),
        "appComponentName" => String.t() | Atom.t(),
        "appComponentType" => String.t() | Atom.t()
      }

  """
  @type grouping_app_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_recommendation_template_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("recommendationTemplateArn") => String.t() | Atom.t()
      }

  """
  @type delete_recommendation_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_resource_drifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type list_app_assessment_resource_drifts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_grouping_recommendations_request() :: %{
        optional("appArn") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_resource_grouping_recommendations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cost() :: %{
        "amount" => float(),
        "currency" => String.t() | Atom.t(),
        "frequency" => list(any())
      }

  """
  @type cost() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resources_resolution_status_response() :: %{
        optional("errorMessage") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("resolutionId") => String.t() | Atom.t(),
        required("status") => list(any())
      }

  """
  @type describe_app_version_resources_resolution_status_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_resiliency_policies_response() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        required("resiliencyPolicies") => list(resiliency_policy())
      }

  """
  @type list_resiliency_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      assessment_summary() :: %{
        "riskRecommendations" => list(assessment_risk_recommendation()),
        "summary" => String.t() | Atom.t()
      }

  """
  @type assessment_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reject_resource_grouping_recommendations_response() :: %{
        "appArn" => String.t() | Atom.t(),
        "failedEntries" => list(failed_grouping_recommendation_entry())
      }

  """
  @type reject_resource_grouping_recommendations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_draft_app_version_resource_mappings_request() :: %{
        optional("appRegistryAppNames") => list(String.t() | Atom.t()),
        optional("eksSourceNames") => list(String.t() | Atom.t()),
        optional("logicalStackNames") => list(String.t() | Atom.t()),
        optional("resourceGroupNames") => list(String.t() | Atom.t()),
        optional("resourceNames") => list(String.t() | Atom.t()),
        optional("terraformSourceNames") => list(String.t() | Atom.t()),
        required("appArn") => String.t() | Atom.t()
      }

  """
  @type remove_draft_app_version_resource_mappings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grouping_resource() :: %{
        "logicalResourceId" => logical_resource_id(),
        "physicalResourceId" => physical_resource_id(),
        "resourceName" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t(),
        "sourceAppComponentIds" => list(String.t() | Atom.t())
      }

  """
  @type grouping_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failed_grouping_recommendation_entry() :: %{
        "errorMessage" => String.t() | Atom.t(),
        "groupingRecommendationId" => String.t() | Atom.t()
      }

  """
  @type failed_grouping_recommendation_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_metrics_export_request() :: %{
        optional("bucketName") => String.t() | Atom.t(),
        optional("clientToken") => String.t() | Atom.t()
      }

  """
  @type start_metrics_export_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sop_recommendation() :: %{
        "appComponentName" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "items" => list(recommendation_item()),
        "name" => String.t() | Atom.t(),
        "prerequisite" => String.t() | Atom.t(),
        "recommendationId" => String.t() | Atom.t(),
        "recommendationStatus" => list(any()),
        "referenceId" => String.t() | Atom.t(),
        "serviceType" => list(any())
      }

  """
  @type sop_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_component_compliance() :: %{
        "appComponentName" => String.t() | Atom.t(),
        "compliance" => map(),
        "cost" => cost(),
        "message" => String.t() | Atom.t(),
        "resiliencyScore" => resiliency_score(),
        "status" => list(any())
      }

  """
  @type app_component_compliance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_assessment_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        required("assessmentArn") => String.t() | Atom.t()
      }

  """
  @type delete_app_assessment_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_recommendation_template_request() :: %{
        optional("bucketName") => String.t() | Atom.t(),
        optional("clientToken") => String.t() | Atom.t(),
        optional("format") => list(any()),
        optional("recommendationIds") => list(String.t() | Atom.t()),
        optional("recommendationTypes") => list(list(any())()),
        optional("tags") => map(),
        required("assessmentArn") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type create_recommendation_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_request() :: %{
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grouping_recommendation() :: %{
        "confidenceLevel" => list(any()),
        "creationTime" => non_neg_integer(),
        "groupingAppComponent" => grouping_app_component(),
        "groupingRecommendationId" => String.t() | Atom.t(),
        "recommendationReasons" => list(String.t() | Atom.t()),
        "rejectionReason" => list(any()),
        "resources" => list(grouping_resource()),
        "score" => float(),
        "status" => list(any())
      }

  """
  @type grouping_recommendation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_draft_app_version_resources_import_status_response() :: %{
        optional("errorDetails") => list(error_detail()),
        optional("errorMessage") => String.t() | Atom.t(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t(),
        required("status") => list(any()),
        required("statusChangeTime") => non_neg_integer()
      }

  """
  @type describe_draft_app_version_resources_import_status_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      describe_app_version_response() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t() | Atom.t(),
        required("appVersion") => String.t() | Atom.t()
      }

  """
  @type describe_app_version_response() :: %{String.t() | Atom.t() => any()}

  @type accept_resource_grouping_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type add_draft_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_update_recommendation_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_recommendation_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_app_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_input_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_recommendation_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_version_resources_resolution_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_draft_app_version_resources_import_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_metrics_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_resource_grouping_recommendation_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_resources_to_draft_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_alarm_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_assessment_compliance_drifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_app_assessment_resource_drifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_app_assessments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_component_compliances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_component_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_input_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_version_app_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_app_versions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_apps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_metrics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_resiliency_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resource_grouping_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_sop_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_suggested_resiliency_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_unsupported_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type publish_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_draft_app_version_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_resource_grouping_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type remove_draft_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type resolve_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_metrics_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_resource_grouping_recommendation_task_errors() ::
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
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resiliencehub",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "resiliencehub",
      signature_version: "v4",
      signing_name: "resiliencehub",
      target_prefix: nil
    }
  end

  @doc """
  Accepts the resource grouping recommendations suggested by Resilience Hub for
  your application.
  """
  @spec accept_resource_grouping_recommendations(
          map(),
          accept_resource_grouping_recommendations_request(),
          list()
        ) ::
          {:ok, accept_resource_grouping_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_resource_grouping_recommendations_errors()}
  def accept_resource_grouping_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/accept-resource-grouping-recommendations"
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
  Adds the source of resource-maps to the draft version of an application.

  During
  assessment, Resilience Hub will use these resource-maps to resolve the latest
  physical
  ID for each resource in the application template. For more information about
  different types
  of resources supported by Resilience Hub and how to add them in your
  application, see
  [Step 2: How is your application
  managed?](https://docs.aws.amazon.com/resilience-hub/latest/userguide/how-app-manage.html)
  in the Resilience Hub User Guide.
  """
  @spec add_draft_app_version_resource_mappings(
          map(),
          add_draft_app_version_resource_mappings_request(),
          list()
        ) ::
          {:ok, add_draft_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_draft_app_version_resource_mappings_errors()}
  def add_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/add-draft-app-version-resource-mappings"
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
  Enables you to include or exclude one or more operational recommendations.
  """
  @spec batch_update_recommendation_status(
          map(),
          batch_update_recommendation_status_request(),
          list()
        ) ::
          {:ok, batch_update_recommendation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_recommendation_status_errors()}
  def batch_update_recommendation_status(%Client{} = client, input, options \\ []) do
    url_path = "/batch-update-recommendation-status"
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
  Creates an Resilience Hub application.

  An Resilience Hub application is a
  collection of Amazon Web Services resources structured to prevent and recover
  Amazon Web Services application disruptions. To describe a Resilience Hub
  application, you provide an
  application name, resources from one or more CloudFormation stacks, Resource
  Groups, Terraform state files, AppRegistry applications, and an appropriate
  resiliency policy. In addition, you can also add resources that are located on
  Amazon Elastic Kubernetes Service (Amazon EKS) clusters as optional resources.
  For more information
  about the number of resources supported per application, see [Service quotas](https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub).

  After you create an Resilience Hub application, you publish it so that you can
  run
  a resiliency assessment on it. You can then use recommendations from the
  assessment to improve
  resiliency by running another assessment, comparing results, and then iterating
  the process
  until you achieve your goals for recovery time objective (RTO) and recovery
  point objective
  (RPO).
  """
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/create-app"
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
  Creates a new Application Component in the Resilience Hub application.

  This API updates the Resilience Hub application draft version. To use this
  Application Component for running assessments, you must publish the Resilience
  Hub
  application using the `PublishAppVersion` API.
  """
  @spec create_app_version_app_component(
          map(),
          create_app_version_app_component_request(),
          list()
        ) ::
          {:ok, create_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_version_app_component_errors()}
  def create_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-app-component"
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
  Adds a resource to the Resilience Hub application and assigns it to the
  specified
  Application Components.

  If you specify a new Application Component, Resilience Hub will
  automatically create the Application Component.

    
  This action has no effect outside Resilience Hub.

    
  This API updates the Resilience Hub application draft version. To use this
  resource for running resiliency assessments, you must publish the Resilience Hub
  application using the `PublishAppVersion` API.

    
  To update application version with new `physicalResourceID`, you must
  call `ResolveAppVersionResources` API.
  """
  @spec create_app_version_resource(map(), create_app_version_resource_request(), list()) ::
          {:ok, create_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_version_resource_errors()}
  def create_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-resource"
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
  Creates a new recommendation template for the Resilience Hub application.
  """
  @spec create_recommendation_template(map(), create_recommendation_template_request(), list()) ::
          {:ok, create_recommendation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_recommendation_template_errors()}
  def create_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/create-recommendation-template"
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
  Creates a resiliency policy for an application.

  Resilience Hub allows you to provide a value of zero for `rtoInSecs`
  and `rpoInSecs` of your resiliency policy. But, while assessing your
  application,
  the lowest possible assessment result is near zero. Hence, if you provide value
  zero for
  `rtoInSecs` and `rpoInSecs`, the estimated workload RTO and
  estimated workload RPO result will be near zero and the **Compliance
  status** for your application will be set to **Policy
  breached**.
  """
  @spec create_resiliency_policy(map(), create_resiliency_policy_request(), list()) ::
          {:ok, create_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resiliency_policy_errors()}
  def create_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/create-resiliency-policy"
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
  Deletes an Resilience Hub application.

  This is a destructive action that can't be
  undone.
  """
  @spec delete_app(map(), delete_app_request(), list()) ::
          {:ok, delete_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app"
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
  Deletes an Resilience Hub application assessment.

  This is a destructive action
  that can't be undone.
  """
  @spec delete_app_assessment(map(), delete_app_assessment_request(), list()) ::
          {:ok, delete_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_assessment_errors()}
  def delete_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-assessment"
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
  Deletes the input source and all of its imported resources from the Resilience
  Hub
  application.
  """
  @spec delete_app_input_source(map(), delete_app_input_source_request(), list()) ::
          {:ok, delete_app_input_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_input_source_errors()}
  def delete_app_input_source(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-input-source"
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
  Deletes an Application Component from the Resilience Hub application.

    
  This API updates the Resilience Hub application draft version. To use this
  Application Component for running assessments, you must publish the Resilience
  Hub
  application using the `PublishAppVersion` API.

    
  You will not be able to delete an Application Component if it has resources
  associated
  with it.
  """
  @spec delete_app_version_app_component(
          map(),
          delete_app_version_app_component_request(),
          list()
        ) ::
          {:ok, delete_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_version_app_component_errors()}
  def delete_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-app-component"
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
  Deletes a resource from the Resilience Hub application.

    
  You can only delete a manually added resource. To exclude non-manually added
  resources, use the `UpdateAppVersionResource` API.

    
  This action has no effect outside Resilience Hub.

    
  This API updates the Resilience Hub application draft version. To use this
  resource for running resiliency assessments, you must publish the Resilience Hub
  application using the `PublishAppVersion` API.
  """
  @spec delete_app_version_resource(map(), delete_app_version_resource_request(), list()) ::
          {:ok, delete_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_version_resource_errors()}
  def delete_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-resource"
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
  Deletes a recommendation template.

  This is a destructive action that can't be
  undone.
  """
  @spec delete_recommendation_template(map(), delete_recommendation_template_request(), list()) ::
          {:ok, delete_recommendation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recommendation_template_errors()}
  def delete_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/delete-recommendation-template"
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
  Deletes a resiliency policy.

  This is a destructive action that can't be undone.
  """
  @spec delete_resiliency_policy(map(), delete_resiliency_policy_request(), list()) ::
          {:ok, delete_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resiliency_policy_errors()}
  def delete_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resiliency-policy"
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
  Describes an Resilience Hub application.
  """
  @spec describe_app(map(), describe_app_request(), list()) ::
          {:ok, describe_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_errors()}
  def describe_app(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app"
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
  Describes an assessment for an Resilience Hub application.
  """
  @spec describe_app_assessment(map(), describe_app_assessment_request(), list()) ::
          {:ok, describe_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_assessment_errors()}
  def describe_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-assessment"
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
  Describes the Resilience Hub application version.
  """
  @spec describe_app_version(map(), describe_app_version_request(), list()) ::
          {:ok, describe_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_version_errors()}
  def describe_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version"
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
  Describes an Application Component in the Resilience Hub application.
  """
  @spec describe_app_version_app_component(
          map(),
          describe_app_version_app_component_request(),
          list()
        ) ::
          {:ok, describe_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_version_app_component_errors()}
  def describe_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-app-component"
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
  Describes a resource of the Resilience Hub application.

  This API accepts only one of the following parameters to describe the resource:

    

  `resourceName`

    

  `logicalResourceId`

    

  `physicalResourceId` (Along with `physicalResourceId`, you can
  also provide `awsAccountId`, and `awsRegion`)
  """
  @spec describe_app_version_resource(map(), describe_app_version_resource_request(), list()) ::
          {:ok, describe_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_version_resource_errors()}
  def describe_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resource"
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
  Returns the resolution status for the specified resolution identifier for an
  application
  version.

  If `resolutionId` is not specified, the current resolution status is
  returned.
  """
  @spec describe_app_version_resources_resolution_status(
          map(),
          describe_app_version_resources_resolution_status_request(),
          list()
        ) ::
          {:ok, describe_app_version_resources_resolution_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_version_resources_resolution_status_errors()}
  def describe_app_version_resources_resolution_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resources-resolution-status"
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
  Describes details about an Resilience Hub application.
  """
  @spec describe_app_version_template(map(), describe_app_version_template_request(), list()) ::
          {:ok, describe_app_version_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_version_template_errors()}
  def describe_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-template"
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
  Describes the status of importing resources to an application version.

  If you get a 404 error with
  `ResourceImportStatusNotFoundAppMetadataException`, you must call
  `importResourcesToDraftAppVersion` after creating the application and before
  calling `describeDraftAppVersionResourcesImportStatus` to obtain the
  status.
  """
  @spec describe_draft_app_version_resources_import_status(
          map(),
          describe_draft_app_version_resources_import_status_request(),
          list()
        ) ::
          {:ok, describe_draft_app_version_resources_import_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_draft_app_version_resources_import_status_errors()}
  def describe_draft_app_version_resources_import_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-draft-app-version-resources-import-status"
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
  Describes the metrics of the application configuration being exported.
  """
  @spec describe_metrics_export(map(), describe_metrics_export_request(), list()) ::
          {:ok, describe_metrics_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_metrics_export_errors()}
  def describe_metrics_export(%Client{} = client, input, options \\ []) do
    url_path = "/describe-metrics-export"
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
  Describes a specified resiliency policy for an Resilience Hub application.

  The
  returned policy object includes creation time, data location constraints, the
  Amazon Resource
  Name (ARN) for the policy, tags, tier, and more.
  """
  @spec describe_resiliency_policy(map(), describe_resiliency_policy_request(), list()) ::
          {:ok, describe_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resiliency_policy_errors()}
  def describe_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/describe-resiliency-policy"
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
  Describes the resource grouping recommendation tasks run by Resilience Hub for
  your application.
  """
  @spec describe_resource_grouping_recommendation_task(
          map(),
          describe_resource_grouping_recommendation_task_request(),
          list()
        ) ::
          {:ok, describe_resource_grouping_recommendation_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_grouping_recommendation_task_errors()}
  def describe_resource_grouping_recommendation_task(%Client{} = client, input, options \\ []) do
    url_path = "/describe-resource-grouping-recommendation-task"
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
  Imports resources to Resilience Hub application draft version from different
  input
  sources.

  For more information about the input sources supported by Resilience Hub, see
  [Discover the structure and describe your Resilience Hub application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).
  """
  @spec import_resources_to_draft_app_version(
          map(),
          import_resources_to_draft_app_version_request(),
          list()
        ) ::
          {:ok, import_resources_to_draft_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_resources_to_draft_app_version_errors()}
  def import_resources_to_draft_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/import-resources-to-draft-app-version"
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
  Lists the alarm recommendations for an Resilience Hub application.
  """
  @spec list_alarm_recommendations(map(), list_alarm_recommendations_request(), list()) ::
          {:ok, list_alarm_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_alarm_recommendations_errors()}
  def list_alarm_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-alarm-recommendations"
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
  List of compliance drifts that were detected while running an
  assessment.
  """
  @spec list_app_assessment_compliance_drifts(
          map(),
          list_app_assessment_compliance_drifts_request(),
          list()
        ) ::
          {:ok, list_app_assessment_compliance_drifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_assessment_compliance_drifts_errors()}
  def list_app_assessment_compliance_drifts(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-assessment-compliance-drifts"
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
  List of resource drifts that were detected while running an
  assessment.
  """
  @spec list_app_assessment_resource_drifts(
          map(),
          list_app_assessment_resource_drifts_request(),
          list()
        ) ::
          {:ok, list_app_assessment_resource_drifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_assessment_resource_drifts_errors()}
  def list_app_assessment_resource_drifts(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-assessment-resource-drifts"
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
  Lists the assessments for an Resilience Hub application.

  You can use request
  parameters to refine the results for the response object.
  """
  @spec list_app_assessments(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_app_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_assessments_errors()}
  def list_app_assessments(
        %Client{} = client,
        app_arn \\ nil,
        assessment_name \\ nil,
        assessment_status \\ nil,
        compliance_status \\ nil,
        invoker \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        reverse_order \\ nil,
        options \\ []
      ) do
    url_path = "/list-app-assessments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
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
      if !is_nil(invoker) do
        [{"invoker", invoker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compliance_status) do
        [{"complianceStatus", compliance_status} | query_params]
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
      if !is_nil(assessment_name) do
        [{"assessmentName", assessment_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the compliances for an Resilience Hub Application Component.
  """
  @spec list_app_component_compliances(map(), list_app_component_compliances_request(), list()) ::
          {:ok, list_app_component_compliances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_component_compliances_errors()}
  def list_app_component_compliances(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-compliances"
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
  Lists the recommendations for an Resilience Hub Application Component.
  """
  @spec list_app_component_recommendations(
          map(),
          list_app_component_recommendations_request(),
          list()
        ) ::
          {:ok, list_app_component_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_component_recommendations_errors()}
  def list_app_component_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-recommendations"
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
  Lists all the input sources of the Resilience Hub application.

  For more
  information about the input sources supported by Resilience Hub, see [Discover the structure and describe your Resilience Hub
  application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).
  """
  @spec list_app_input_sources(map(), list_app_input_sources_request(), list()) ::
          {:ok, list_app_input_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_input_sources_errors()}
  def list_app_input_sources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-input-sources"
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
  Lists all the Application Components in the Resilience Hub application.
  """
  @spec list_app_version_app_components(map(), list_app_version_app_components_request(), list()) ::
          {:ok, list_app_version_app_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_version_app_components_errors()}
  def list_app_version_app_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-app-components"
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
  Lists how the resources in an application version are mapped/sourced from.

  Mappings can be
  physical resource identifiers, CloudFormation stacks, resource-groups, or an
  application registry
  app.
  """
  @spec list_app_version_resource_mappings(
          map(),
          list_app_version_resource_mappings_request(),
          list()
        ) ::
          {:ok, list_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_version_resource_mappings_errors()}
  def list_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resource-mappings"
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
  Lists all the resources in an Resilience Hub application.
  """
  @spec list_app_version_resources(map(), list_app_version_resources_request(), list()) ::
          {:ok, list_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_version_resources_errors()}
  def list_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resources"
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
  Lists the different versions for the Resilience Hub applications.
  """
  @spec list_app_versions(map(), list_app_versions_request(), list()) ::
          {:ok, list_app_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_versions_errors()}
  def list_app_versions(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-versions"
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
  Lists your Resilience Hub applications.

  You can filter applications using only one filter at a time or without using any
  filter.
  If you try to filter applications using multiple filters, you will get the
  following
  error:

  ```
  An error occurred (ValidationException) when calling the ListApps operation:
  Only
  one filter is supported for this operation.
  ```
  """
  @spec list_apps(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_apps_errors()}
  def list_apps(
        %Client{} = client,
        app_arn \\ nil,
        aws_application_arn \\ nil,
        from_last_assessment_time \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        reverse_order \\ nil,
        to_last_assessment_time \\ nil,
        options \\ []
      ) do
    url_path = "/list-apps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(to_last_assessment_time) do
        [{"toLastAssessmentTime", to_last_assessment_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(from_last_assessment_time) do
        [{"fromLastAssessmentTime", from_last_assessment_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_application_arn) do
        [{"awsApplicationArn", aws_application_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the metrics that can be exported.
  """
  @spec list_metrics(map(), list_metrics_request(), list()) ::
          {:ok, list_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metrics_errors()}
  def list_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/list-metrics"
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
  Lists the recommendation templates for the Resilience Hub applications.
  """
  @spec list_recommendation_templates(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_recommendation_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendation_templates_errors()}
  def list_recommendation_templates(
        %Client{} = client,
        assessment_arn \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        recommendation_template_arn \\ nil,
        reverse_order \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/list-recommendation-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recommendation_template_arn) do
        [{"recommendationTemplateArn", recommendation_template_arn} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(assessment_arn) do
        [{"assessmentArn", assessment_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resiliency policies for the Resilience Hub applications.
  """
  @spec list_resiliency_policies(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_resiliency_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resiliency_policies_errors()}
  def list_resiliency_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        policy_name \\ nil,
        options \\ []
      ) do
    url_path = "/list-resiliency-policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_name) do
        [{"policyName", policy_name} | query_params]
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
  Lists the resource grouping recommendations suggested by Resilience Hub for your
  application.
  """
  @spec list_resource_grouping_recommendations(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_resource_grouping_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_grouping_recommendations_errors()}
  def list_resource_grouping_recommendations(
        %Client{} = client,
        app_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-resource-grouping-recommendations"
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
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the standard operating procedure (SOP) recommendations for the Resilience
  Hub applications.
  """
  @spec list_sop_recommendations(map(), list_sop_recommendations_request(), list()) ::
          {:ok, list_sop_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sop_recommendations_errors()}
  def list_sop_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-sop-recommendations"
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
  Lists the suggested resiliency policies for the Resilience Hub
  applications.
  """
  @spec list_suggested_resiliency_policies(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_suggested_resiliency_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_suggested_resiliency_policies_errors()}
  def list_suggested_resiliency_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-suggested-resiliency-policies"
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
  Lists the tags for your resources in your Resilience Hub applications.
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
  Lists the test recommendations for the Resilience Hub application.
  """
  @spec list_test_recommendations(map(), list_test_recommendations_request(), list()) ::
          {:ok, list_test_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_recommendations_errors()}
  def list_test_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-test-recommendations"
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
  Lists the resources that are not currently supported in Resilience Hub.

  An
  unsupported resource is a resource that exists in the object that was used to
  create an app,
  but is not supported by Resilience Hub.
  """
  @spec list_unsupported_app_version_resources(
          map(),
          list_unsupported_app_version_resources_request(),
          list()
        ) ::
          {:ok, list_unsupported_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_unsupported_app_version_resources_errors()}
  def list_unsupported_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-unsupported-app-version-resources"
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
  Publishes a new version of a specific Resilience Hub application.
  """
  @spec publish_app_version(map(), publish_app_version_request(), list()) ::
          {:ok, publish_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_app_version_errors()}
  def publish_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/publish-app-version"
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
  Adds or updates the app template for an Resilience Hub application draft
  version.
  """
  @spec put_draft_app_version_template(map(), put_draft_app_version_template_request(), list()) ::
          {:ok, put_draft_app_version_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_draft_app_version_template_errors()}
  def put_draft_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/put-draft-app-version-template"
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
  Rejects resource grouping recommendations.
  """
  @spec reject_resource_grouping_recommendations(
          map(),
          reject_resource_grouping_recommendations_request(),
          list()
        ) ::
          {:ok, reject_resource_grouping_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_resource_grouping_recommendations_errors()}
  def reject_resource_grouping_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/reject-resource-grouping-recommendations"
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
  Removes resource mappings from a draft application version.
  """
  @spec remove_draft_app_version_resource_mappings(
          map(),
          remove_draft_app_version_resource_mappings_request(),
          list()
        ) ::
          {:ok, remove_draft_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_draft_app_version_resource_mappings_errors()}
  def remove_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/remove-draft-app-version-resource-mappings"
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
  Resolves the resources for an application version.
  """
  @spec resolve_app_version_resources(map(), resolve_app_version_resources_request(), list()) ::
          {:ok, resolve_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resolve_app_version_resources_errors()}
  def resolve_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resolve-app-version-resources"
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
  Creates a new application assessment for an application.
  """
  @spec start_app_assessment(map(), start_app_assessment_request(), list()) ::
          {:ok, start_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_app_assessment_errors()}
  def start_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/start-app-assessment"
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
  Initiates the export task of metrics.
  """
  @spec start_metrics_export(map(), start_metrics_export_request(), list()) ::
          {:ok, start_metrics_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_metrics_export_errors()}
  def start_metrics_export(%Client{} = client, input, options \\ []) do
    url_path = "/start-metrics-export"
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
  Starts grouping recommendation task.
  """
  @spec start_resource_grouping_recommendation_task(
          map(),
          start_resource_grouping_recommendation_task_request(),
          list()
        ) ::
          {:ok, start_resource_grouping_recommendation_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_resource_grouping_recommendation_task_errors()}
  def start_resource_grouping_recommendation_task(%Client{} = client, input, options \\ []) do
    url_path = "/start-resource-grouping-recommendation-task"
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
  Applies one or more tags to a resource.
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
  Updates an application.
  """
  @spec update_app(map(), update_app_request(), list()) ::
          {:ok, update_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_errors()}
  def update_app(%Client{} = client, input, options \\ []) do
    url_path = "/update-app"
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
  Updates the Resilience Hub application version.

  This API updates the Resilience Hub application draft version. To use this
  information for running resiliency assessments, you must publish the Resilience
  Hub
  application using the `PublishAppVersion` API.
  """
  @spec update_app_version(map(), update_app_version_request(), list()) ::
          {:ok, update_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_version_errors()}
  def update_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version"
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
  Updates an existing Application Component in the Resilience Hub application.

  This API updates the Resilience Hub application draft version. To use this
  Application Component for running assessments, you must publish the Resilience
  Hub
  application using the `PublishAppVersion` API.
  """
  @spec update_app_version_app_component(
          map(),
          update_app_version_app_component_request(),
          list()
        ) ::
          {:ok, update_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_version_app_component_errors()}
  def update_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-app-component"
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
  Updates the resource details in the Resilience Hub application.

    
  This action has no effect outside Resilience Hub.

    
  This API updates the Resilience Hub application draft version. To use this
  resource for running resiliency assessments, you must publish the Resilience Hub
  application using the `PublishAppVersion` API.

    
  To update application version with new `physicalResourceID`, you must
  call `ResolveAppVersionResources` API.
  """
  @spec update_app_version_resource(map(), update_app_version_resource_request(), list()) ::
          {:ok, update_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_version_resource_errors()}
  def update_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-resource"
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
  Updates a resiliency policy.

  Resilience Hub allows you to provide a value of zero for `rtoInSecs`
  and `rpoInSecs` of your resiliency policy. But, while assessing your
  application,
  the lowest possible assessment result is near zero. Hence, if you provide value
  zero for
  `rtoInSecs` and `rpoInSecs`, the estimated workload RTO and
  estimated workload RPO result will be near zero and the **Compliance
  status** for your application will be set to **Policy
  breached**.
  """
  @spec update_resiliency_policy(map(), update_resiliency_policy_request(), list()) ::
          {:ok, update_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resiliency_policy_errors()}
  def update_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/update-resiliency-policy"
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
