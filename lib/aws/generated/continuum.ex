# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Continuum do
  @moduledoc """
  AWS Continuum finds, validates, prioritizes, and remediates code vulnerabilities
  across the source repositories and AWS resources in your environments.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      affected_package() :: %{
        "fixedInVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "packageManager" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type affected_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_collector_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("collectorArn") => String.t() | atom(),
        required("collectorDataAccessRoleArn") => String.t() | atom()
      }

  """
  @type associate_collector_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_collector_output() :: %{
        "associatedCollector" => associated_collector(),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom()
      }

  """
  @type associate_collector_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_collector() :: %{
        "collectorArn" => String.t() | atom(),
        "collectorId" => String.t() | atom()
      }

  """
  @type associated_collector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_environment() :: %{
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type associated_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_configuration_details() :: %{
        "collectorDetails" => collector_details(),
        "environmentConfiguration" => environment_configuration(),
        "latestScan" => code_scan_summary(),
        "sourceConfiguration" => environment_source_configuration()
      }

  """
  @type code_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_scan_data() :: %{
        "completedAt" => [non_neg_integer()],
        "createdAt" => [non_neg_integer()],
        "failureMessage" => String.t() | atom(),
        "failureStage" => list(any()),
        "origin" => list(any()),
        "scanRunId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type code_scan_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_scan_summary() :: %{
        "completedAt" => [non_neg_integer()],
        "createdAt" => [non_neg_integer()],
        "failureMessage" => String.t() | atom(),
        "failureStage" => list(any()),
        "origin" => list(any()),
        "scanRunId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type code_scan_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collector_details() :: %{
        "collectorDataAccessRoleArn" => String.t() | atom()
      }

  """
  @type collector_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collector_summary() :: %{
        "collectorArn" => String.t() | atom(),
        "collectorId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type collector_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_configuration() :: %{
        "environmentConfiguration" => environment_configuration(),
        "sourceConfiguration" => environment_source_configuration()
      }

  """
  @type create_code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_finding_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("ocsfDocument") => [any()]
      }

  """
  @type create_code_finding_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_finding_output() :: %{
        "createdAt" => [non_neg_integer()],
        "findingArn" => String.t() | atom(),
        "findingId" => String.t() | atom(),
        "status" => list(any()),
        "title" => String.t() | atom()
      }

  """
  @type create_code_finding_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_scan_input() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type create_code_scan_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_scan_output() :: %{
        "scan" => code_scan_summary()
      }

  """
  @type create_code_scan_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_collector_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("kubernetesClusterRole") => kubernetes_cluster_role_configuration(),
        optional("type") => list(any())
      }

  """
  @type create_collector_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_collector_output() :: %{
        "collectorArn" => String.t() | atom(),
        "collectorId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type create_collector_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_configuration() :: %{
        "codeConfiguration" => create_code_configuration()
      }

  """
  @type create_environment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_input() :: %{
        optional("configuration") => create_environment_configuration(),
        required("name") => String.t() | atom()
      }

  """
  @type create_environment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_output() :: %{
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("providerConfiguration") => list()
      }

  """
  @type create_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "integrationId" => String.t() | atom()
      }

  """
  @type create_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_collector_input() :: %{}

  """
  @type delete_collector_input() :: %{}

  @typedoc """

  ## Example:

      delete_environment_input() :: %{}

  """
  @type delete_environment_input() :: %{}

  @typedoc """

  ## Example:

      delete_integration_input() :: %{}

  """
  @type delete_integration_input() :: %{}

  @typedoc """

  ## Example:

      disassociate_collector_input() :: %{
        required("collectorArn") => String.t() | atom()
      }

  """
  @type disassociate_collector_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_configuration() :: %{
        "network" => environment_network_configuration(),
        "patchCreationPolicy" => list(any()),
        "scanFrequency" => String.t() | atom()
      }

  """
  @type environment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_configuration_details() :: %{
        "codeConfiguration" => code_configuration_details()
      }

  """
  @type environment_configuration_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_list_entry() :: %{
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type environment_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_network_configuration() :: %{
        "allowedDomains" => list(String.t() | atom())
      }

  """
  @type environment_network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_repository_source() :: %{
        "defaultBranch" => String.t() | atom(),
        "integrationId" => String.t() | atom(),
        "repository" => String.t() | atom()
      }

  """
  @type environment_repository_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_s3_integration_source() :: %{
        "codePrefix" => String.t() | atom(),
        "contextPrefix" => String.t() | atom(),
        "integrationId" => String.t() | atom()
      }

  """
  @type environment_s3_integration_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_source_configuration() :: %{
        "repositorySources" => list(environment_repository_source()),
        "s3Sources" => list(environment_s3_integration_source())
      }

  """
  @type environment_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_compliance_check() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "uid" => String.t() | atom()
      }

  """
  @type finding_compliance_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_evidence() :: %{
        "file" => String.t() | atom(),
        "line" => [integer()],
        "snippet" => String.t() | atom()
      }

  """
  @type finding_evidence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_location() :: %{
        "endLine" => [integer()],
        "filePath" => String.t() | atom(),
        "startLine" => [integer()]
      }

  """
  @type finding_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_posture() :: %{
        "application" => String.t() | atom(),
        "applicationUid" => String.t() | atom(),
        "applicationVersion" => String.t() | atom(),
        "checks" => list(finding_compliance_check()),
        "control" => String.t() | atom(),
        "description" => String.t() | atom(),
        "remediation" => String.t() | atom(),
        "remediationReferences" => list(String.t() | atom()),
        "requirements" => list(String.t() | atom()),
        "standards" => list(String.t() | atom()),
        "status" => String.t() | atom(),
        "statusId" => [integer()]
      }

  """
  @type finding_posture() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_resource() :: %{
        "name" => String.t() | atom(),
        "region" => String.t() | atom(),
        "type" => String.t() | atom(),
        "uid" => String.t() | atom()
      }

  """
  @type finding_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_summary() :: %{
        "category" => String.t() | atom(),
        "completedAt" => [non_neg_integer()],
        "createdAt" => [non_neg_integer()],
        "createdIssueId" => String.t() | atom(),
        "discardReason" => list(any()),
        "discardReasoning" => String.t() | atom(),
        "duplicateOfIssueId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "filePath" => String.t() | atom(),
        "findingArn" => String.t() | atom(),
        "findingId" => String.t() | atom(),
        "reportedAt" => [non_neg_integer()],
        "scanRunId" => String.t() | atom(),
        "severity" => list(any()),
        "source" => String.t() | atom(),
        "sourceFindingId" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusUpdatedAt" => [non_neg_integer()],
        "title" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type finding_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_validation() :: %{
        "blockingReason" => list(any()),
        "confidence" => [float()],
        "evidence" => list(finding_evidence()),
        "mitigatingControls" => list(String.t() | atom()),
        "preconditions" => list(String.t() | atom()),
        "rationale" => String.t() | atom(),
        "severityAdjustment" => list(any()),
        "verdict" => list(any())
      }

  """
  @type finding_validation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_vulnerability() :: %{
        "additionalCweIds" => list(String.t() | atom()),
        "affectedPackages" => list(affected_package()),
        "code" => String.t() | atom(),
        "cveId" => String.t() | atom(),
        "cvssBaseScore" => [float()],
        "cweCaption" => String.t() | atom(),
        "cweId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "details" => String.t() | atom(),
        "fixCoverage" => String.t() | atom(),
        "fixCoverageId" => [integer()],
        "locations" => list(finding_location()),
        "remediation" => String.t() | atom(),
        "remediationReferences" => list(String.t() | atom()),
        "title" => String.t() | atom()
      }

  """
  @type finding_vulnerability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow_verdict() :: %{
        "confidence" => float(),
        "evidence" => list(String.t() | atom()),
        "flowId" => String.t() | atom(),
        "verdict" => list(any())
      }

  """
  @type flow_verdict() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_finding_input() :: %{}

  """
  @type get_code_finding_input() :: %{}

  @typedoc """

  ## Example:

      get_code_finding_output() :: %{
        "affectedPackages" => list(affected_package()),
        "category" => String.t() | atom(),
        "completedAt" => [non_neg_integer()],
        "createdAt" => [non_neg_integer()],
        "createdIssueId" => String.t() | atom(),
        "cveId" => String.t() | atom(),
        "cvssBaseScore" => [float()],
        "cweIds" => list(String.t() | atom()),
        "detailedDescription" => String.t() | atom(),
        "discardReason" => list(any()),
        "discardReasoning" => String.t() | atom(),
        "duplicateOfIssueId" => String.t() | atom(),
        "endLine" => [integer()],
        "environmentId" => String.t() | atom(),
        "filePath" => String.t() | atom(),
        "findingArn" => String.t() | atom(),
        "findingId" => String.t() | atom(),
        "findingTypes" => list(String.t() | atom()),
        "firstSeenAt" => [non_neg_integer()],
        "lineNumber" => [integer()],
        "mitigation" => String.t() | atom(),
        "mitreTechniques" => list(String.t() | atom()),
        "ocsfClass" => list(any()),
        "ocsfSchemaVersion" => String.t() | atom(),
        "owaspCategory" => String.t() | atom(),
        "posture" => finding_posture(),
        "productName" => String.t() | atom(),
        "productVendorName" => String.t() | atom(),
        "productVersion" => String.t() | atom(),
        "relevantInputs" => list(String.t() | atom()),
        "remediationReferences" => list(String.t() | atom()),
        "reportedAt" => [non_neg_integer()],
        "resources" => list(finding_resource()),
        "scanRunId" => String.t() | atom(),
        "severity" => list(any()),
        "source" => String.t() | atom(),
        "sourceFindingId" => String.t() | atom(),
        "sourceStatus" => String.t() | atom(),
        "sourceStatusId" => [integer()],
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusUpdatedAt" => [non_neg_integer()],
        "stepsToReproduce" => list(String.t() | atom()),
        "subCategory" => String.t() | atom(),
        "summary" => String.t() | atom(),
        "title" => String.t() | atom(),
        "type" => list(any()),
        "validation" => finding_validation(),
        "vulnerabilities" => list(finding_vulnerability()),
        "vulnerableCode" => String.t() | atom()
      }

  """
  @type get_code_finding_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_issue_artifact_input() :: %{}

  """
  @type get_code_issue_artifact_input() :: %{}

  @typedoc """

  ## Example:

      get_code_issue_artifact_output() :: %{
        "artifactId" => String.t() | atom(),
        "artifactType" => list(any()),
        "body" => list(),
        "createdAt" => [non_neg_integer()],
        "mediaType" => String.t() | atom(),
        "metadata" => [any()],
        "producer" => issue_artifact_producer_summary()
      }

  """
  @type get_code_issue_artifact_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_issue_input() :: %{}

  """
  @type get_code_issue_input() :: %{}

  @typedoc """

  ## Example:

      get_code_issue_output() :: %{
        "confidence" => integer(),
        "createdAt" => [non_neg_integer()],
        "evidenceAvailability" => list(any()),
        "findingIds" => list(String.t() | atom()),
        "issueArn" => String.t() | atom(),
        "issueId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "patchDelivery" => issue_patch_delivery(),
        "phase" => list(any()),
        "severity" => list(any()),
        "severityReasoning" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusReason" => list(any()),
        "statusUpdatedAt" => [non_neg_integer()],
        "summary" => String.t() | atom(),
        "synopsis" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_code_issue_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_scan_input() :: %{}

  """
  @type get_code_scan_input() :: %{}

  @typedoc """

  ## Example:

      get_code_scan_output() :: %{
        "scan" => code_scan_data()
      }

  """
  @type get_code_scan_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collector_data_access_authorization_input() :: %{
        optional("environmentArn") => String.t() | atom(),
        required("accountId") => String.t() | atom()
      }

  """
  @type get_collector_data_access_authorization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collector_data_access_authorization_output() :: %{}

  """
  @type get_collector_data_access_authorization_output() :: %{}

  @typedoc """

  ## Example:

      get_collector_input() :: %{}

  """
  @type get_collector_input() :: %{}

  @typedoc """

  ## Example:

      get_collector_output() :: %{
        "collectorArn" => String.t() | atom(),
        "collectorId" => String.t() | atom(),
        "configRecorderArn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "kubernetesClusterRoleArn" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_collector_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_input() :: %{}

  """
  @type get_environment_input() :: %{}

  @typedoc """

  ## Example:

      get_environment_output() :: %{
        "configuration" => environment_configuration_details(),
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusUpdatedAt" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_input() :: %{}

  """
  @type get_integration_input() :: %{}

  @typedoc """

  ## Example:

      get_integration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "integrationId" => String.t() | atom(),
        "integrationType" => list(any()),
        "name" => String.t() | atom(),
        "providerDetails" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_input() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type get_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_output() :: %{
        "arn" => String.t() | atom(),
        "policy" => String.t() | atom(),
        "revisionId" => String.t() | atom()
      }

  """
  @type get_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_authorization_configuration() :: %{
        "authorizationCode" => String.t() | atom(),
        "redirectUrl" => String.t() | atom(),
        "state" => String.t() | atom()
      }

  """
  @type git_hub_authorization_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_configuration() :: %{
        "authorization" => git_hub_authorization_configuration(),
        "organizationName" => String.t() | atom()
      }

  """
  @type git_hub_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_details() :: %{
        "organizationName" => String.t() | atom()
      }

  """
  @type git_hub_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_target() :: %{
        "headSha" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "pullRequestNumber" => float(),
        "repository" => String.t() | atom()
      }

  """
  @type git_hub_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_lab_configuration() :: %{
        "accessToken" => String.t() | atom(),
        "instanceUrl" => String.t() | atom(),
        "targetPath" => String.t() | atom(),
        "targetType" => list(any())
      }

  """
  @type git_lab_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_lab_details() :: %{
        "expiresAt" => [non_neg_integer()],
        "instanceUrl" => String.t() | atom(),
        "targetPath" => String.t() | atom(),
        "targetType" => list(any()),
        "tokenRotation" => list(any())
      }

  """
  @type git_lab_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "integrationId" => String.t() | atom(),
        "integrationType" => list(any()),
        "name" => String.t() | atom(),
        "providerDetails" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type integration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      issue_artifact_item() :: %{
        "artifactId" => String.t() | atom(),
        "artifactType" => list(any()),
        "contentSizeBytes" => [float()],
        "createdAt" => [non_neg_integer()],
        "mediaType" => String.t() | atom(),
        "producer" => issue_artifact_producer_summary()
      }

  """
  @type issue_artifact_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      issue_artifact_producer_summary() :: %{
        "agent" => String.t() | atom()
      }

  """
  @type issue_artifact_producer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      issue_patch_delivery() :: %{
        "failedCount" => integer(),
        "failureReasons" => list(list(any())()),
        "patchCount" => integer(),
        "status" => list(any()),
        "succeededCount" => integer()
      }

  """
  @type issue_patch_delivery() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      issue_summary() :: %{
        "confidence" => integer(),
        "createdAt" => [non_neg_integer()],
        "issueArn" => String.t() | atom(),
        "issueId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "phase" => list(any()),
        "severity" => list(any()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusReason" => list(any()),
        "statusUpdatedAt" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type issue_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kubernetes_cluster_role_configuration() :: %{
        "externalId" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type kubernetes_cluster_role_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_collectors_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_associated_collectors_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_collectors_output() :: %{
        "associatedCollectors" => list(associated_collector()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_associated_collectors_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_environments_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_associated_environments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_environments_output() :: %{
        "associatedEnvironments" => list(associated_environment()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_associated_environments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_findings_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_code_findings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_findings_output() :: %{
        "items" => list(finding_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_findings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_issue_artifacts_input() :: %{
        optional("artifactType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_code_issue_artifacts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_issue_artifacts_output() :: %{
        "items" => list(issue_artifact_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_issue_artifacts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_issues_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_code_issues_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_issues_output() :: %{
        "items" => list(issue_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_issues_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_scans_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_code_scans_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_scans_output() :: %{
        "nextToken" => String.t() | atom(),
        "scans" => list(code_scan_summary())
      }

  """
  @type list_code_scans_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collectors_input() :: %{}

  """
  @type list_collectors_input() :: %{}

  @typedoc """

  ## Example:

      list_collectors_output() :: %{
        "items" => list(collector_summary())
      }

  """
  @type list_collectors_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_output() :: %{
        "items" => list(environment_list_entry()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_integrations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrations_output() :: %{
        "items" => list(integration_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_integrations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      patch_body() :: %{
        "delivery" => patch_delivery(),
        "format" => list(any()),
        "patch" => String.t() | atom(),
        "patchSha256" => String.t() | atom(),
        "repositoryName" => String.t() | atom(),
        "sizeBytes" => [float()]
      }

  """
  @type patch_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      patch_delivery() :: %{
        "status" => list(any()),
        "target" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type patch_delivery() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      per_finding_result() :: %{
        "confidence" => float(),
        "exploitArtifact" => validation_exploit_artifact(),
        "exploitable" => list(any()),
        "findingId" => String.t() | atom(),
        "flowVerdicts" => list(flow_verdict()),
        "reasoningChain" => list(reasoning_step())
      }

  """
  @type per_finding_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prevalidation_signal() :: %{
        "computed" => signal_computation(),
        "conclusion" => String.t() | atom(),
        "confidence" => float(),
        "confidenceReasoning" => signal_confidence_reasoning(),
        "dimension" => list(any()),
        "exploitability" => signal_exploitability(),
        "impactDimensions" => signal_impact_dimensions(),
        "preconditions" => signal_preconditions(),
        "producerId" => String.t() | atom(),
        "producerVersion" => String.t() | atom(),
        "signalStrength" => list(any()),
        "subjectRef" => String.t() | atom()
      }

  """
  @type prevalidation_signal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prevalidation_signals_body() :: %{
        "producedBy" => String.t() | atom(),
        "signals" => list(prevalidation_signal())
      }

  """
  @type prevalidation_signals_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_input() :: %{
        optional("expectedRevisionId") => String.t() | atom(),
        optional("policy") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }

  """
  @type put_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_output() :: %{
        "arn" => String.t() | atom(),
        "policy" => String.t() | atom(),
        "revisionId" => String.t() | atom()
      }

  """
  @type put_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reasoning_step() :: %{
        "claim" => String.t() | atom(),
        "confidence" => float(),
        "source" => String.t() | atom(),
        "step" => [integer()]
      }

  """
  @type reasoning_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation_proposal_body() :: %{
        "filename" => String.t() | atom(),
        "format" => list(any()),
        "patch" => String.t() | atom(),
        "patchSha256" => String.t() | atom()
      }

  """
  @type remediation_proposal_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_kubernetes_cluster_role() :: %{}

  """
  @type remove_kubernetes_cluster_role() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_configuration() :: %{
        "bucket" => String.t() | atom(),
        "externalId" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_details() :: %{
        "bucket" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type s3_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_target() :: %{
        "bucket" => String.t() | atom(),
        "key" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type s3_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_access_precondition() :: %{
        "basis" => list(any()),
        "missingInfo" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "value" => list(any())
      }

  """
  @type signal_access_precondition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_attacker_gains_dimension() :: %{
        "basis" => list(any()),
        "missingInfo" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "value" => list(any())
      }

  """
  @type signal_attacker_gains_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_blast_radius_dimension() :: %{
        "basis" => list(any()),
        "missingInfo" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "value" => list(any())
      }

  """
  @type signal_blast_radius_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_computation() :: %{
        "barriers" => [integer()],
        "impactBand" => list(any()),
        "likelihoodBand" => list(any())
      }

  """
  @type signal_computation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_confidence_reasoning() :: %{
        "factors" => list(String.t() | atom()),
        "summary" => String.t() | atom()
      }

  """
  @type signal_confidence_reasoning() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_exploitability() :: %{
        "confidenceTier" => list(any()),
        "highestLayerReached" => [integer()],
        "reachedCrownJewels" => [boolean()],
        "scriptable" => [boolean()],
        "sourceValidationArtifactId" => String.t() | atom(),
        "verdict" => list(any())
      }

  """
  @type signal_exploitability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_impact_dimensions() :: %{
        "attackerGains" => signal_attacker_gains_dimension(),
        "blastRadius" => signal_blast_radius_dimension(),
        "targetValue" => signal_target_value_dimension()
      }

  """
  @type signal_impact_dimensions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_precondition() :: %{
        "basis" => list(any()),
        "missingInfo" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "value" => [boolean()]
      }

  """
  @type signal_precondition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_preconditions() :: %{
        "accessLevel" => signal_access_precondition(),
        "configurationNeeded" => signal_precondition(),
        "reachableFromAttacker" => signal_precondition(),
        "userInteractionRequired" => signal_precondition()
      }

  """
  @type signal_preconditions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signal_target_value_dimension() :: %{
        "basis" => list(any()),
        "missingInfo" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "value" => list(any())
      }

  """
  @type signal_target_value_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_integration_authorization_input() :: %{
        optional("name") => String.t() | atom(),
        required("providerType") => list(any())
      }

  """
  @type start_integration_authorization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_integration_authorization_output() :: %{
        "codeChallenge" => String.t() | atom(),
        "codeChallengeMethod" => list(any()),
        "expiresAt" => [non_neg_integer()],
        "state" => String.t() | atom()
      }

  """
  @type start_integration_authorization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_configuration() :: %{
        "environmentConfiguration" => environment_configuration(),
        "sourceConfiguration" => environment_source_configuration()
      }

  """
  @type update_code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_collector_input() :: %{
        optional("kubernetesClusterRole") => list(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_collector_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_collector_output() :: %{
        "collectorArn" => String.t() | atom(),
        "collectorId" => String.t() | atom(),
        "configRecorderArn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "kubernetesClusterRoleArn" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_collector_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_configuration() :: %{
        "codeConfiguration" => update_code_configuration()
      }

  """
  @type update_environment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_input() :: %{
        optional("configuration") => update_environment_configuration(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_environment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_output() :: %{
        "configuration" => environment_configuration_details(),
        "createdAt" => [non_neg_integer()],
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "statusUpdatedAt" => [non_neg_integer()]
      }

  """
  @type update_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_input() :: %{
        required("providerConfiguration") => list()
      }

  """
  @type update_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "integrationId" => String.t() | atom(),
        "integrationType" => list(any()),
        "name" => String.t() | atom(),
        "providerDetails" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_s3_configuration() :: %{
        "externalId" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }

  """
  @type update_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_evidence_body() :: %{
        "attackFlowsConfirmed" => list(String.t() | atom()),
        "executedProof" => validation_executed_proof(),
        "exploitArtifact" => validation_exploit_artifact(),
        "exploitable" => list(any()),
        "flowVerdicts" => list(flow_verdict()),
        "perFindingResults" => list(per_finding_result()),
        "sourceAnalysis" => validation_source_analysis(),
        "terminalStatus" => list(any())
      }

  """
  @type validation_evidence_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        required("message") => [String.t() | atom()],
        required("path") => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_executed_proof() :: %{
        "code" => validation_proof_code(),
        "observedEffect" => list(any()),
        "output" => validation_proof_output()
      }

  """
  @type validation_executed_proof() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exploit_artifact() :: %{
        "effect" => list(any()),
        "headers" => map(),
        "httpMethod" => list(any()),
        "payload" => String.t() | atom(),
        "responseSnippet" => String.t() | atom(),
        "responseStatus" => [integer()],
        "targetUrl" => String.t() | atom()
      }

  """
  @type validation_exploit_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_proof_code() :: %{
        "proofCode" => list(validation_proof_material())
      }

  """
  @type validation_proof_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_proof_material() :: %{
        "content" => String.t() | atom()
      }

  """
  @type validation_proof_material() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_proof_output() :: %{
        "consoleOutput" => String.t() | atom()
      }

  """
  @type validation_proof_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_source_analysis() :: %{
        "inferredEffect" => list(any()),
        "summary" => String.t() | atom()
      }

  """
  @type validation_source_analysis() :: %{(String.t() | atom()) => any()}

  @type associate_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_code_finding_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_code_scan_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_environment_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_integration_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_environment_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_integration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type disassociate_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_code_finding_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_code_issue_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_code_issue_artifact_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_code_scan_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_collector_data_access_authorization_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_environment_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_integration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_resource_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_associated_collectors_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_associated_environments_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_code_findings_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_code_issue_artifacts_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_code_issues_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_code_scans_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_collectors_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_environments_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_integrations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_resource_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type start_integration_authorization_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_collector_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_environment_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_integration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "continuum",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Continuum",
      signature_version: "v4",
      signing_name: "continuum",
      target_prefix: nil
    }
  end

  @doc """
  Associates one Collector with this Environment and configures the customer role
  Continuum uses to authorize access to associated Collector data.

  The caller must have permission on the Environment and permission to pass the
  role. Continuum assumes the supplied role and calls
  GetCollectorDataAccessAuthorization on the requested Collector; only a
  successful authorization response permits the association. The caller does not
  need Collector data-access permission. The Environment retains its other
  Collector associations. Calling again with an existing association is safe and
  does not create a duplicate.
  """
  @spec associate_collector(map(), String.t() | atom(), associate_collector_input(), list()) ::
          {:ok, associate_collector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_collector_errors()}
  def associate_collector(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/collectors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Ingests a customer-supplied security finding into an environment.

  Continuum validates the document synchronously against the required overlay
  fields for the declared format; invalid documents are rejected with a
  ValidationException. The maximum accepted document size is 256 KB. The
  environment must have a source configured, and the finding must identify a code
  location so Continuum can tie it to a repository in the environment's build.
  Continuum assigns a findingId and stores the verbatim document. When no
  successful build yet contains the finding's repository, the finding stays
  SUBMITTED until the next successful build; if that build does not contain it
  either, the finding is DISCARDED with discardReason SOURCE_REPO_NOT_FOUND.
  """
  @spec create_code_finding(map(), String.t() | atom(), create_code_finding_input(), list()) ::
          {:ok, create_code_finding_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_finding_errors()}
  def create_code_finding(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/code-findings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates an explicit scan request for one environment.

  CP creates durable work before
  any queue delivery occurs.

  Retrying a request that succeeded, with the same clientToken on the same
  environment,
  returns the original scan instead of starting another one. Token handling is not
  yet
  atomic: requests with the same token that run at the same time, or a retry after
  a
  request that failed partway through, can leave an additional scan, which may end
  in
  the FAILED state with a message that it was superseded. Deleting the environment
  makes its tokens unusable; a later request with one of them returns
  ResourceNotFoundException.

  Each environment can have a limited number of scans in progress at the same
  time.
  Once that limit is enforced, a request that would exceed it returns
  ServiceQuotaExceededException; wait for a scan to finish (ListCodeScans shows
  each
  scan's status), then retry.
  """
  @spec create_code_scan(map(), String.t() | atom(), create_code_scan_input(), list()) ::
          {:ok, create_code_scan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_scan_errors()}
  def create_code_scan(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/code-scans"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates the Collector for the caller's account.

  Provisions an AWS Config service-linked recorder using the caller's federated
  access session and begins recording infrastructure changes.
  """
  @spec create_collector(map(), create_collector_input(), list()) ::
          {:ok, create_collector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_collector_errors()}
  def create_collector(%Client{} = client, input, options \\ []) do
    url_path = "/collectors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates an environment and starts its validation and any requested provisioning.

  Storage provisioning and dependency checks may continue after the initial 201
  response; use GetEnvironment to observe completion.
  """
  @spec create_environment(map(), create_environment_input(), list()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Creates a new integration with an external source provider.

  Repeating an identical
  request with the same clientToken returns the original integrationId,
  integrationArn,
  and createdAt. Token records are retained for eight hours after success or
  terminal failure,
  including after the integration is deleted; replaying a deleted integration's
  token
  does not recreate it. An identical request with a retained terminal failure
  returns
  the recorded error.

  Reusing a token with different parameters returns ValidationException. A fresh
  token
  starts a new create attempt; if the name is already owned by another
  integration,
  ConflictException includes that integration's identifier. An attempt still in
  progress
  may return ThrottlingException with retryAfterSeconds set to 1; retry with the
  same token
  and identical parameters.

  GitHub authorization codes are single use. Retry an unresolved attempt with its
  original token and unchanged parameters first. If the service reports a terminal
  failure, an expired attempt, or a successful token exchange whose integration
  could
  not be saved, restart GitHub authorization with a fresh token and authorization
  code.
  The service does not checkpoint provider results for recovery by another
  request.
  """
  @spec create_integration(map(), create_integration_input(), list()) ::
          {:ok, create_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, input, options \\ []) do
    url_path = "/integrations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Deletes the Collector for the caller's account.

  The Collector first enters PENDING_DELETION, then the service removes its
  schedule, AWS Config service-linked recorder, versioned S3 bucket, KMS key, and
  persisted record.
  """
  @spec delete_collector(map(), String.t() | atom(), delete_collector_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_collector_errors()}
  def delete_collector(%Client{} = client, collector_id, input, options \\ []) do
    url_path = "/collectors/#{AWS.Util.encode_uri(collector_id)}"
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
      204
    )
  end

  @doc """
  Deletes an environment and its associated resources.
  """
  @spec delete_environment(map(), String.t() | atom(), delete_environment_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
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
      204
    )
  end

  @doc """
  Deletes an integration and releases its name and account quota.

  Its retained
  CreateIntegration token receipt can still replay the original result without
  recreating the integration. Shared provider registrations are retained: deleting
  one integration does not remove provider access used by another integration.
  A fresh GitHub CreateIntegration attempt requires a fresh OAuth authorization
  code and a new clientToken.
  """
  @spec delete_integration(map(), String.t() | atom(), delete_integration_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, integration_id, input, options \\ []) do
    url_path = "/integrations/#{AWS.Util.encode_uri(integration_id)}"
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
      204
    )
  end

  @doc """
  Removes one Collector association from this Environment, preserving its other
  associations.

  The stored Collector data-access role is cleared when no Collector associations
  remain. The Environment owner must have permission to disassociate. A current
  Collector access grant is not required, and the Collector does not need to
  remain active or present, so stale or revoked associations can be cleaned up.
  """
  @spec disassociate_collector(map(), String.t() | atom(), disassociate_collector_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_collector_errors()}
  def disassociate_collector(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/collectors/disassociate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Retrieves the current state and details of a finding.
  """
  @spec get_code_finding(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_code_finding_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_finding_errors()}
  def get_code_finding(%Client{} = client, environment_id, finding_id, options \\ []) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_id)}/code-findings/#{AWS.Util.encode_uri(finding_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state and details of an issue.
  """
  @spec get_code_issue(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_code_issue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_issue_errors()}
  def get_code_issue(%Client{} = client, environment_id, issue_id, options \\ []) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_id)}/code-issues/#{AWS.Util.encode_uri(issue_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves one immutable artifact attached to an issue, including its content.
  """
  @spec get_code_issue_artifact(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_code_issue_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_issue_artifact_errors()}
  def get_code_issue_artifact(
        %Client{} = client,
        artifact_id,
        environment_id,
        issue_id,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_id)}/code-issues/#{AWS.Util.encode_uri(issue_id)}/artifacts/#{AWS.Util.encode_uri(artifact_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves one customer-visible environment scan.
  """
  @spec get_code_scan(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_code_scan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_scan_errors()}
  def get_code_scan(%Client{} = client, environment_id, scan_run_id, options \\ []) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_id)}/code-scans/#{AWS.Util.encode_uri(scan_run_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state of the Collector for the caller's account.
  """
  @spec get_collector(map(), String.t() | atom(), list()) ::
          {:ok, get_collector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collector_errors()}
  def get_collector(%Client{} = client, collector_id, options \\ []) do
    url_path = "/collectors/#{AWS.Util.encode_uri(collector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Authorizes an Environment's access to a Collector's data.

  Continuum calls this
  operation with the Environment's Collector data-access role before it reads the
  Collector's inventory, so grant continuum:GetCollectorDataAccessAuthorization to
  that role and, for a Collector in another account, in the Collector's resource
  policy. The operation evaluates the action against the exact Collector ARN and
  the Collector's current resource policy using IAM and the caller's authenticated
  request context, with environmentArn as the continuum:EnvironmentArn condition
  key. A successful request returns HTTP 200 with no response members. If access
  is not granted, the operation returns AccessDeniedException without disclosing
  Collector existence, ownership, or the policy layer that denied access. The
  service does not reinterpret the policy using only an account ID.
  """
  @spec get_collector_data_access_authorization(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_collector_data_access_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collector_data_access_authorization_errors()}
  def get_collector_data_access_authorization(
        %Client{} = client,
        collector_id,
        account_id,
        environment_arn \\ nil,
        options \\ []
      ) do
    url_path = "/collectors/#{AWS.Util.encode_uri(collector_id)}/data-access-authorization"
    headers = []
    query_params = []

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(environment_arn) do
        [{"environmentArn", environment_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state and configuration of an environment.
  """
  @spec get_environment(map(), String.t() | atom(), list()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an integration.
  """
  @spec get_integration(map(), String.t() | atom(), list()) ::
          {:ok, get_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, integration_id, options \\ []) do
    url_path = "/integrations/#{AWS.Util.encode_uri(integration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the resource policy attached to a Continuum resource.
  """
  @spec get_resource_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, arn, options \\ []) do
    url_path = "/resourcepolicy"
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
  Lists the Collectors currently associated with one Environment in ascending
  collectorId order.

  Each entry carries the Collector ARN, so a listed association can be passed
  straight to DisassociateCollector, including when the Collector belongs to
  another account. An association recorded before Continuum persisted the ARN is
  omitted from the response, because without the ARN it cannot be acted on.
  """
  @spec list_associated_collectors(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_associated_collectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_collectors_errors()}
  def list_associated_collectors(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/collectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists the Environments currently associated with one Collector in
  lexicographically ascending environmentArn order.

  The ARN identifies each Environment across accounts within the Collector's
  Region.
  """
  @spec list_associated_environments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_associated_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_environments_errors()}
  def list_associated_environments(
        %Client{} = client,
        collector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collectors/#{AWS.Util.encode_uri(collector_id)}/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists the findings in an environment in descending findingId order.
  """
  @spec list_code_findings(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_code_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_findings_errors()}
  def list_code_findings(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/code-findings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists the artifacts attached to an issue in descending artifactId order.

  Content is returned by GetCodeIssueArtifact.
  """
  @spec list_code_issue_artifacts(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_code_issue_artifacts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_issue_artifacts_errors()}
  def list_code_issue_artifacts(
        %Client{} = client,
        environment_id,
        issue_id,
        artifact_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_id)}/code-issues/#{AWS.Util.encode_uri(issue_id)}/artifacts"

    headers = []
    query_params = []

    query_params =
      if !is_nil(artifact_type) do
        [{"artifactType", artifact_type} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the issues in an environment in descending issueId order.
  """
  @spec list_code_issues(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_code_issues_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_issues_errors()}
  def list_code_issues(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/code-issues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists customer-visible scans for one environment in descending scanRunId order.
  """
  @spec list_code_scans(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_code_scans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_scans_errors()}
  def list_code_scans(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}/code-scans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists the Collectors owned by the authenticated caller's account, including a
  Collector whose deletion is in progress.

  A Collector that is still being created is omitted. The account-scoped Collector
  quota currently permits at most one result, so no result ordering applies.
  """
  @spec list_collectors(map(), list()) ::
          {:ok, list_collectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collectors_errors()}
  def list_collectors(%Client{} = client, options \\ []) do
    url_path = "/collectors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all environments in your account in descending environmentId order.

  This complete-inventory operation intentionally has no response filters; see the
  input documentation for the API standards justification.
  """
  @spec list_environments(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Lists the integrations in your account in descending integrationId order.
  """
  @spec list_integrations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_integrations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_integrations_errors()}
  def list_integrations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/integrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Creates or replaces the resource policy attached to a Continuum resource.
  """
  @spec put_resource_policy(map(), put_resource_policy_input(), list()) ::
          {:ok, put_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/resourcepolicy"
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
  Starts an OAuth authorization for a new integration and returns the values the
  caller sends to the provider's authorization endpoint.

  The authorization belongs to the calling AWS account, can be redeemed once by
  CreateIntegration from that same account, and expires after ten minutes.
  """
  @spec start_integration_authorization(map(), start_integration_authorization_input(), list()) ::
          {:ok, start_integration_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_integration_authorization_errors()}
  def start_integration_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/integration-authorizations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Updates the customer-controlled mutable properties of a Collector.

  Only the name and Kubernetes cluster IAM role can be changed.
  """
  @spec update_collector(map(), String.t() | atom(), update_collector_input(), list()) ::
          {:ok, update_collector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_collector_errors()}
  def update_collector(%Client{} = client, collector_id, input, options \\ []) do
    url_path = "/collectors/#{AWS.Util.encode_uri(collector_id)}"
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
  Updates the customer-controlled mutable properties of an environment.

  Only the name, the environment's S3 integration source and repository
  selections, its scan frequency, its network policy, and its patch creation
  policy can be changed.
  """
  @spec update_environment(map(), String.t() | atom(), update_environment_input(), list()) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
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
  Rotates the credentials used by an Amazon S3 integration.

  Only S3 integrations can
  be updated; GitHub integrations cannot be modified. The integration's name,
  provider type, and bucket remain fixed.

  The caller must have iam:PassRole permission for the supplied role, including
  when only the external ID changes. Continuum verifies that the role can be
  assumed with the requested external ID and can access the existing bucket before
  saving both credentials atomically. Omitting externalId preserves its current
  value. Repeating both current credentials leaves updatedAt unchanged, but still
  requires authorization and access validation.
  """
  @spec update_integration(map(), String.t() | atom(), update_integration_input(), list()) ::
          {:ok, update_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_errors()}
  def update_integration(%Client{} = client, integration_id, input, options \\ []) do
    url_path = "/integrations/#{AWS.Util.encode_uri(integration_id)}"
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
